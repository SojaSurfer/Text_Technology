MERGE (d:Debate {date: '2018-10-10', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#LynBrown'})
ON CREATE SET s0.name = 'Lyn Brown', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#AlistairBurt'})
ON CREATE SET s1.name = 'Alistair Burt', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 8
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#StephenKerr'})
ON CREATE SET s2.name = 'Stephen Kerr', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#StephenTwigg'})
ON CREATE SET s3.name = 'Stephen Twigg', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#KevinFoster'})
ON CREATE SET s4.name = 'Kevin Foster', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#KeithVaz'})
ON CREATE SET s5.name = 'Keith Vaz', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s6.name = 'Alison Thewliss', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#PreetGill'})
ON CREATE SET s7.name = 'Preet Gill', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d);