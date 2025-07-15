"""The Script creates all nodes & edges by executing all cypher query files."""

from pathlib import Path

import tqdm
from neo4j import Driver, EagerResult, GraphDatabase


def load_query(xml_path:Path) -> str:

    path = xml_path.parent.parent / "queries" / f"{xml_path.stem}.cypher"

    with path.open("r") as file:
        query = file.read()
        
    return query


def delete(driver:Driver) -> EagerResult:
    result = driver.execute_query(""" 
        MATCH (n)
        DETACH DELETE n  
        """)
    return result


    

if __name__ == "__main__":
    URI = "neo4j://localhost:7687"
    AUTH = ("neo4j", "stuttgart")

    directory = Path("data/queries")


    with GraphDatabase.driver(URI, auth=AUTH) as driver:
        delete(driver) 

        for filepath in tqdm.tqdm(directory.glob("*.cypher"), desc="Executing Query", ncols=80):
            query = load_query(filepath)

            driver.execute_query(query)

