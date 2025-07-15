MERGE (d:Debate {date: '2019-03-07', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#HeleneHayman'})
ON CREATE SET s0.name = 'Helene Hayman', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TariqAhmad'})
ON CREATE SET s1.name = 'Tariq Ahmad', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 6
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#RaymondCollins'})
ON CREATE SET s2.name = 'Raymond Collins', s2.sex = 'M', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#KishwerFalkner'})
ON CREATE SET s3.name = 'Kishwer Falkner', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#AlanWest'})
ON CREATE SET s4.name = 'Alan West', s4.sex = 'M', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#FionaHodgson'})
ON CREATE SET s5.name = 'Fiona Hodgson', s5.sex = 'F', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d);