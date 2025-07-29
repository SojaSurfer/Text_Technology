"""The script is belongs to the database part of the project. It creates and saves the Cypher queries from the XML files."""

import sys
import xml.etree.ElementTree as ET
from pathlib import Path
from xml.etree.ElementTree import Element


def save_query(queries:list[str], xml_path:Path) -> None:
    """Save multiple queries into one Cypher query file."""

    path = xml_path.parent.parent / "queries" / f"{xml_path.stem}.cypher"

    with path.open("w") as file:
        file.write("\n".join(queries))
        
    return None


def get_clean_text(element:Element, tag:str) -> str:
    """Clean the XML text by removing the single quotation marks since they interfere with Cypher."""

    text = element.find(tag).text

    if text:
        return text.replace("'", " ")
    else:
        return ""


def create_query(filepath:str|Path) -> list[str]:
    """Create a cypher queries from one XML file."""

    speakers = []
    parties = set()
    party_mapping = {}
    queries = []
    debate = {}
    speaker_property_names = ("id", "name", "sex", "parliament", "party", "contributions")
    speaker_relations_names = ("MEMBER_OF", "PARTICIPATED_IN")

    tree = ET.parse(filepath)
    root = tree.getroot()


    # Clean the text and populate the containers for parties & speakers
    for speaker in root.findall("speaker"):
        speaker_properties = {name: get_clean_text(speaker, name) for name in speaker_property_names}

        parties.add(speaker_properties["party"])
        speakers.append(speaker_properties)

    # Generate Cypher statement for the Debate node
    debate["date"] = root.find("date").text
    debate["chamber"] = root.find("chamber").text

    debate_node = f"Debate {{date: '{debate['date']}', chamber: '{debate['chamber']}'}}"
    query = f"MERGE (d:{debate_node})"
    queries.append(query)

    # Generate Cypher statements for the Party nodes
    for i, party in enumerate(parties):
        var = f"p{i}"
        party_mapping[party] = var

        query = f"MERGE ({var}:Party {{name: '{party}'}})"
        queries.append(query)

    # Generate Cypher statements for the Speaker nodes and relationships
    for i, s in enumerate(speakers):
        var = f"s{i}"
        
        query = (
            "\n"
            f"MERGE ({var}:Speaker {{id: '{s['id']}'}})"
            f"\nON CREATE SET {var}.name = '{s['name']}', {var}.sex = '{s['sex']}', {var}.parliament = '{s['parliament']}', {var}.contributions = {s['contributions']}"
            f"\nMERGE ({var})-[:{speaker_relations_names[0]}]->({party_mapping[s['party']]})"
            f"\nMERGE ({var})-[:{speaker_relations_names[1]}]->(d)"
        )

        queries.append(query)

    if queries:
        # add a semicolon at the last query statement to denote end of the query
        queries[-1] += ";"
    return queries


def create_all_queries(directory:Path) -> None:
    """Create and save all cypher queries for all available XML files."""
    
    for xml_path in directory.glob("*.xml"):
        queries = create_query(xml_path)
        save_query(queries, xml_path)

    return None



if __name__ == "__main__":
    
    xml_directory = Path("data/xml")

    create_all_queries(xml_directory)

