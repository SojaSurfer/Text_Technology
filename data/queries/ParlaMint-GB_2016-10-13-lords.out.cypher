MERGE (d:Debate {date: '2016-10-13', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Liberal'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Liberal Democrat'})
MERGE (p3:Party {name: 'Labour'})
MERGE (p4:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#DavidAlton'})
ON CREATE SET s0.name = 'David Alton', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#JoyceAnelay'})
ON CREATE SET s1.name = 'Joyce Anelay', s1.sex = 'F', s1.parliament = 'House of Lords', s1.contributions = 5
MERGE (s1)-[:MEMBER_OF]->(p4)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#DaleCampbellSavours'})
ON CREATE SET s2.name = 'Dale Campbell-Savours', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p3)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#WilliamWallace'})
ON CREATE SET s3.name = 'William Wallace', s3.sex = 'M', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#IndarjitSingh'})
ON CREATE SET s4.name = 'Indarjit Singh', s4.sex = 'M', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d);