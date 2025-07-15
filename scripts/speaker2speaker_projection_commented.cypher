// 0. (optional) drop the old projection if you want a clean rebuild
// MATCH ()-[r:CO_DEBATED_WITH]-() DELETE r;

// 1. walk the two-hop pattern Speaker → Debate ← Speaker
MATCH (s1:Speaker)-[:PARTICIPATED_IN]->(d:Debate)<-[:PARTICIPATED_IN]-(s2:Speaker)
WHERE elementId(s1) < elementId(s2)         // avoid self-loops and duplicate pairs

// 2. aggregate – how many debates do (s1,s2) share?
WITH s1, s2, count(d) AS overlap

// 3. create or update the 1-mode edge
MERGE (s1)-[r:CO_DEBATED_WITH]-(s2)
SET   r.shared_debates = overlap;

MATCH (s1:Speaker)-[r:CO_DEBATED_WITH]->(s2:Speaker)
RETURN s1, r, s2