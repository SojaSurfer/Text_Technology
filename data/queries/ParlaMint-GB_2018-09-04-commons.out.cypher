MERGE (d:Debate {date: '2018-09-04', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#PeterGrant'})
ON CREATE SET s0.name = 'Peter Grant', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#DouglasChapman'})
ON CREATE SET s1.name = 'Douglas Chapman', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#GillianFurniss'})
ON CREATE SET s2.name = 'Gillian Furniss', s2.sex = 'F', s2.parliament = 'House of Commons', s2.contributions = 2
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#RonnieCampbell'})
ON CREATE SET s3.name = 'Ronnie Campbell', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 2
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#AlistairBurt'})
ON CREATE SET s4.name = 'Alistair Burt', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 7
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#DanielKawczynski'})
ON CREATE SET s5.name = 'Daniel Kawczynski', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#FabianHamilton'})
ON CREATE SET s6.name = 'Fabian Hamilton', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d);