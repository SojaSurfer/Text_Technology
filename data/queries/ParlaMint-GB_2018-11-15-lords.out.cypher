MERGE (d:Debate {date: '2018-11-15', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#RichardLuce'})
ON CREATE SET s0.name = 'Richard Luce', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#ArminkaHelic'})
ON CREATE SET s1.name = 'Arminka Helic', s1.sex = 'F', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#TessaBlackstone'})
ON CREATE SET s2.name = 'Tessa Blackstone', s2.sex = 'F', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#JohnMontagu'})
ON CREATE SET s3.name = 'John Montagu', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#DavidHannay'})
ON CREATE SET s4.name = 'David Hannay', s4.sex = 'M', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#RaymondCollins'})
ON CREATE SET s5.name = 'Raymond Collins', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#TariqAhmad'})
ON CREATE SET s6.name = 'Tariq Ahmad', s6.sex = 'M', s6.parliament = 'House of Lords', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d);