"""The Script creates all nodes & edges by executing all Cypher query files."""

from pathlib import Path

import tqdm
from neo4j import Driver, EagerResult, GraphDatabase


def load_query(cypher_path:Path) -> str:
    """Read & return the contents of a Cypher query file."""

    with cypher_path.open("r") as file:
        query = file.read()
        
    return query


def delete(driver:Driver) -> EagerResult:
    """Delete all nodes & relationships in the Neo4j database."""

    result = driver.execute_query(""" 
        MATCH (n)
        DETACH DELETE n  
        """)
    return result


    
if __name__ == "__main__":

    directory = Path("data/queries")

    # Note: Since this is only a local database, its ok to include the user & password here
    URI = "neo4j://localhost:7687"
    AUTH = ("neo4j", "stuttgart")

    # Connect to Neo4j & populate the databse
    with GraphDatabase.driver(URI, auth=AUTH) as driver:
        delete(driver)  # Ensure that we start with an empty database

        # Load and execute each Cypher query file in the directory
        for filepath in tqdm.tqdm(directory.glob("*.cypher"), desc="Executing Query", ncols=80):
            query = load_query(filepath)
            
            driver.execute_query(query)
