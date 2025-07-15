MERGE (d:Debate {date: '2016-05-11', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#StewartWood'})
ON CREATE SET s0.name = 'Stewart Wood', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#FrederickCurzon'})
ON CREATE SET s1.name = 'Frederick Curzon', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 7
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#RaymondJolliffe'})
ON CREATE SET s2.name = 'Raymond Jolliffe', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#GlenysKinnock'})
ON CREATE SET s3.name = 'Glenys Kinnock', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#ThomasKing'})
ON CREATE SET s4.name = 'Thomas King', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p2)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#JudithJolly'})
ON CREATE SET s5.name = 'Judith Jolly', s5.sex = 'F', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p3)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#JamesTouhig'})
ON CREATE SET s6.name = 'James Touhig', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d);