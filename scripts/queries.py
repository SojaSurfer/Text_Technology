"""The script creates and saves the Cypher queries from the XML files."""
# problems: name: 'Brendan O'Hara'

import sys
import xml.etree.ElementTree as ET
from pathlib import Path


def save_query(queries:list[str], xml_path:Path) -> None:

    path = xml_path.parent.parent / "queries" / f"{xml_path.stem}.cypher"

    with path.open("w") as file:
        file.write("\n".join(queries))
        
    return None


def get_clean_text(element, tag) -> str:
    text = element.find(tag).text
    return text.replace("'", " ")


def create_query(filepath:str|Path) -> list[str]:
    
    speakers = []
    parties = set()
    party_mapping = {}
    queries = []
    debate = {}
    speaker_property_names = ("id", "name", "sex", "parliament", "party", "contributions")
    speaker_relations_names = ("MEMBER_OF", "PARTICIPATED_IN")

    tree = ET.parse(filepath)
    root = tree.getroot()

    debate["date"] = root.find("date").text
    debate["chamber"] = root.find("chamber").text

    debate_node = f"Debate {{date: '{debate['date']}', chamber: '{debate['chamber']}'}}"
    query = f"MERGE (d:{debate_node})"

    queries.append(query)

    for speaker in root.findall("speaker"):

        speaker_properties = {name: get_clean_text(speaker, name) for name in speaker_property_names}

        parties.add(speaker_properties["party"])
        speakers.append(speaker_properties)

    # Generate Cypher for Party nodes
    for i, party in enumerate(parties):
        var = f"p{i}"
        party_mapping[party] = var

        query = f"MERGE ({var}:Party {{name: '{party}'}})"
        queries.append(query)


    # Generate Cypher for Speaker nodes and relationships
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
        queries[-1] += ";"
    return queries


def create_all_queries(directory:Path) -> None:
    
    for xml_path in directory.glob("*.xml"):
        queries = create_query(xml_path)
        save_query(queries, xml_path)

    return None



if __name__ == "__main__":
    
    # path = Path("data/xml/ParlaMint-GB_2015-11-24-commons.out.xml")
    directory = Path("data/xml")

    create_all_queries(directory)




