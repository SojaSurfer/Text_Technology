"""The Script is used to visualize the Neo4j DB."""

from itertools import count

from neo4j import GraphDatabase
from pyvis.network import Network
from rich import print, traceback

traceback.install()

URI = "neo4j://localhost:7687"
AUTH = ("neo4j", "stuttgart")

driver = GraphDatabase.driver(URI, auth=AUTH)


def fetch_all(tx):
    return tx.run("MATCH (a)-[r]->(b) RETURN a, r, b").data()

with driver.session() as sess:
    records = sess.execute_read(fetch_all)

# Build PyVis network
net = Network(height="800px", width="100%", directed=True)
net.force_atlas_2based()  # better layout for large graphs


id_generator = count(start=0)

for rec in records:
    a_node = rec["a"]        # a_node is a neo4j.graph.Node
    b_node = rec["b"]        # b_node is a neo4j.graph.Node
    rel    = rec["r"]        # rel is a neo4j.graph.Relationship

    # Add nodes (title=property‐dict for hover)
    id_value = next(id_generator)
    net.add_node(id_value, label=":".join(str(val) for val in a_node.values()), title=a_node["name"])
    net.add_node(next(id_generator), label=":".join(val for val in b_node.values()), title=dict(b_node))

    # Add the edge
    net.add_edge(id_value, id_value+1, title=rel)

# Close driver explicitly to avoid that __del__ error
# driver.close()

# Export and view
net.show("neo4j_graph.html", notebook=False)
print("Open neo4j_graph.html in your browser.")

net.generate_html("neo4j.html")