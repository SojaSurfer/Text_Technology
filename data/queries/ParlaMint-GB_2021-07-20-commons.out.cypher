MERGE (d:Debate {date: '2021-07-20', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#PaulBlomfield'})
ON CREATE SET s0.name = 'Paul Blomfield', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#JamesCleverly'})
ON CREATE SET s1.name = 'James Cleverly', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 3
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#WayneDavid'})
ON CREATE SET s2.name = 'Wayne David', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d);