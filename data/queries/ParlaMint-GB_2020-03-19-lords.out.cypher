MERGE (d:Debate {date: '2020-03-19', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Liberal'})
MERGE (p1:Party {name: 'Liberal Democrat'})
MERGE (p2:Party {name: 'Labour'})
MERGE (p3:Party {name: 'Conservative'})
MERGE (p4:Party {name: 'Bishops'})

MERGE (s0:Speaker {id: '#AlanSmith'})
ON CREATE SET s0.name = 'Alan Smith', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p4)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TariqAhmad'})
ON CREATE SET s1.name = 'Tariq Ahmad', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 6
MERGE (s1)-[:MEMBER_OF]->(p3)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#RaymondCollins'})
ON CREATE SET s2.name = 'Raymond Collins', s2.sex = 'M', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#ShaistaSheehan'})
ON CREATE SET s3.name = 'Shaista Sheehan', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#DavidAlton'})
ON CREATE SET s4.name = 'David Alton', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#AndrewAdonis'})
ON CREATE SET s5.name = 'Andrew Adonis', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p2)
MERGE (s5)-[:PARTICIPATED_IN]->(d);