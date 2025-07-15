MERGE (d:Debate {date: '2018-12-04', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#LeoDocherty'})
ON CREATE SET s0.name = 'Leo Docherty', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#HannahBardell'})
ON CREATE SET s1.name = 'Hannah Bardell', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#GeoffreyCliftonBrown'})
ON CREATE SET s2.name = 'Geoffrey Clifton-Brown', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 2
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#RossThomson'})
ON CREATE SET s3.name = 'Ross Thomson', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 2
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#GavinNewlands'})
ON CREATE SET s4.name = 'Gavin Newlands', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 2
MERGE (s4)-[:MEMBER_OF]->(p2)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#JeremyHunt'})
ON CREATE SET s5.name = 'Jeremy Hunt', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 13
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#PaulineLatham'})
ON CREATE SET s6.name = 'Pauline Latham', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#MatthewWarman'})
ON CREATE SET s7.name = 'Matthew Warman', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#StephenTwigg'})
ON CREATE SET s8.name = 'Stephen Twigg', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p0)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#KeithVaz'})
ON CREATE SET s9.name = 'Keith Vaz', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#JohnCable'})
ON CREATE SET s10.name = 'John Cable', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p3)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s11.name = 'Emily Thornberry', s11.sex = 'F', s11.parliament = 'House of Commons', s11.contributions = 2
MERGE (s11)-[:MEMBER_OF]->(p0)
MERGE (s11)-[:PARTICIPATED_IN]->(d);