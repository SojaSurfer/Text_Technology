MERGE (d:Debate {date: '2016-02-03', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#LaurenceRobertson'})
ON CREATE SET s0.name = 'Laurence Robertson', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#DesmondSwayne'})
ON CREATE SET s1.name = 'Desmond Swayne', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 9
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#StephenTwigg'})
ON CREATE SET s2.name = 'Stephen Twigg', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#HelenGrant'})
ON CREATE SET s3.name = 'Helen Grant', s3.sex = 'F', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#GiselaStuart'})
ON CREATE SET s4.name = 'Gisela Stuart', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#DianeAbbott'})
ON CREATE SET s5.name = 'Diane Abbott', s5.sex = 'F', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#TasminaAhmedSheikh'})
ON CREATE SET s6.name = 'Tasmina Ahmed-Sheikh', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 2
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#AlanDuncan'})
ON CREATE SET s7.name = 'Alan Duncan', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d);