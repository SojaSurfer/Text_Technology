MERGE (d:Debate {date: '2016-09-05', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#JoyceAnelay'})
ON CREATE SET s0.name = 'Joyce Anelay', s0.sex = 'F', s0.parliament = 'House of Lords', s0.contributions = 6
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#RaymondCollins'})
ON CREATE SET s1.name = 'Raymond Collins', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#WilliamWallace'})
ON CREATE SET s2.name = 'William Wallace', s2.sex = 'M', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#DavidHowell'})
ON CREATE SET s3.name = 'David Howell', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#PeterHain'})
ON CREATE SET s4.name = 'Peter Hain', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#DavidLea'})
ON CREATE SET s5.name = 'David Lea', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d);