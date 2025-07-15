MERGE (d:Debate {date: '2020-11-24', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#AdamHolloway'})
ON CREATE SET s0.name = 'Adam Holloway', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#JamesCleverly'})
ON CREATE SET s1.name = 'James Cleverly', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d);