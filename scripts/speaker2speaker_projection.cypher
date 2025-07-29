// The Cypher query converts the bipartite graph into unipartite space by applying a speaker-to-speaker projection.

// Drop the old projection if you want a clean rebuild (optional)
// MATCH ()-[r:CO_DEBATED_WITH]-() DELETE r;

// Pattern Speaker → Debate ← Speaker
MATCH (s1:Speaker)-[:PARTICIPATED_IN]->(d:Debate)<-[:PARTICIPATED_IN]-(s2:Speaker)
WHERE elementId(s1) < elementId(s2)         // avoid self-loops and duplicate pairs

// Aggregate and create edges
WITH s1, s2, count(d) AS overlap
MERGE (s1)-[r:CO_DEBATED_WITH]-(s2)
SET   r.shared_debates = overlap;

// Query speaker-2-speaker projection
MATCH (s1:Speaker)-[r:CO_DEBATED_WITH]->(s2:Speaker)
RETURN s1, r, s2