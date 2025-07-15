MERGE (d:Debate {date: '2018-04-24', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#MichaelBates'})
ON CREATE SET s0.name = 'Michael Bates', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 3
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#RaymondCollins'})
ON CREATE SET s1.name = 'Raymond Collins', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#WilliamWallace'})
ON CREATE SET s2.name = 'William Wallace', s2.sex = 'M', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d);