MERGE (d:Debate {date: '2015-07-21', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})

MERGE (s0:Speaker {id: '#LucianaGoldsmithBerger'})
ON CREATE SET s0.name = 'Luciana Goldsmith (Berger)', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 1
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#LouiseEllman'})
ON CREATE SET s1.name = 'Louise Ellman', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d);