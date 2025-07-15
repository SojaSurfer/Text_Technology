MERGE (d:Debate {date: '2019-10-30', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Liberal'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Bishops'})

MERGE (s0:Speaker {id: '#AlanSmith'})
ON CREATE SET s0.name = 'Alan Smith', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 1
MERGE (s0)-[:MEMBER_OF]->(p3)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#PaulButler'})
ON CREATE SET s1.name = 'Paul Butler', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p3)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JamesStopford'})
ON CREATE SET s2.name = 'James Stopford', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 5
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#RaymondCollins'})
ON CREATE SET s3.name = 'Raymond Collins', s3.sex = 'M', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#SayeedaWarsi'})
ON CREATE SET s4.name = 'Sayeeda Warsi', s4.sex = 'F', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p2)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#MenziesCampbell'})
ON CREATE SET s5.name = 'Menzies Campbell', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d);