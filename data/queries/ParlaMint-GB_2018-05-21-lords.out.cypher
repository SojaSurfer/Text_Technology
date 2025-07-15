MERGE (d:Debate {date: '2018-05-21', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Crossbench'})
MERGE (p1:Party {name: 'Liberal Democrat'})
MERGE (p2:Party {name: 'Labour'})
MERGE (p3:Party {name: 'Conservative'})
MERGE (p4:Party {name: 'Bishops'})

MERGE (s0:Speaker {id: '#NazirAhmed'})
ON CREATE SET s0.name = 'Nazir Ahmed', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TariqAhmad'})
ON CREATE SET s1.name = 'Tariq Ahmad', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 7
MERGE (s1)-[:MEMBER_OF]->(p3)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JohnGeoffrey'})
ON CREATE SET s2.name = 'John Geoffrey', s2.sex = 'M', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p4)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#LindsayGranshaw'})
ON CREATE SET s3.name = 'Lindsay Granshaw', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#HalehAfshar'})
ON CREATE SET s4.name = 'Haleh Afshar', s4.sex = 'F', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#RaymondCollins'})
ON CREATE SET s5.name = 'Raymond Collins', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p2)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#JohnAnderson'})
ON CREATE SET s6.name = 'John Anderson', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d);