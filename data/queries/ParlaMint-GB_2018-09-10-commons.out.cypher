MERGE (d:Debate {date: '2018-09-10', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#JohnBercow'})
ON CREATE SET s0.name = 'John Bercow', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 3
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#StephenTwigg'})
ON CREATE SET s1.name = 'Stephen Twigg', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d);