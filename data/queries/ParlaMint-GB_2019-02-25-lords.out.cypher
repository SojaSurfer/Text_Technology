MERGE (d:Debate {date: '2019-02-25', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#JoyceAnelay'})
ON CREATE SET s0.name = 'Joyce Anelay', s0.sex = 'F', s0.parliament = 'House of Lords', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#AnnabelGoldie'})
ON CREATE SET s1.name = 'Annabel Goldie', s1.sex = 'F', s1.parliament = 'House of Lords', s1.contributions = 6
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#LindsayGranshaw'})
ON CREATE SET s2.name = 'Lindsay Granshaw', s2.sex = 'F', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p3)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#DavidHannay'})
ON CREATE SET s3.name = 'David Hannay', s3.sex = 'M', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#FrankJudd'})
ON CREATE SET s4.name = 'Frank Judd', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#JohnRoberts'})
ON CREATE SET s5.name = 'John Roberts', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p3)
MERGE (s5)-[:PARTICIPATED_IN]->(d);