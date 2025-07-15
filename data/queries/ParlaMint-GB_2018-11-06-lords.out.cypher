MERGE (d:Debate {date: '2018-11-06', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Crossbench'})
MERGE (p1:Party {name: 'Liberal Democrat'})
MERGE (p2:Party {name: 'Labour'})
MERGE (p3:Party {name: 'Conservative'})
MERGE (p4:Party {name: 'Bishops'})

MERGE (s0:Speaker {id: '#JohnMontagu'})
ON CREATE SET s0.name = 'John Montagu', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#MichaelBates'})
ON CREATE SET s1.name = 'Michael Bates', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 6
MERGE (s1)-[:MEMBER_OF]->(p3)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#AndrewRobathan'})
ON CREATE SET s2.name = 'Andrew Robathan', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p3)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#RaymondCollins'})
ON CREATE SET s3.name = 'Raymond Collins', s3.sex = 'M', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#ShaistaSheehan'})
ON CREATE SET s4.name = 'Shaista Sheehan', s4.sex = 'F', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#AlanSmith'})
ON CREATE SET s5.name = 'Alan Smith', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p4)
MERGE (s5)-[:PARTICIPATED_IN]->(d);