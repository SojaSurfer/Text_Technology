MERGE (d:Debate {date: '2019-05-23', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#KeithVaz'})
ON CREATE SET s0.name = 'Keith Vaz', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 3
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s1.name = 'Andrew Mitchell', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 5
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#DouglasChapman'})
ON CREATE SET s2.name = 'Douglas Chapman', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 3
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#StephenTwigg'})
ON CREATE SET s3.name = 'Stephen Twigg', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 2
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#TanmanjeetDhesi'})
ON CREATE SET s4.name = 'Tanmanjeet Dhesi', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#JohnHowell'})
ON CREATE SET s5.name = 'John Howell', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 2
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#MichaelGapes'})
ON CREATE SET s6.name = 'Michael Gapes', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 2
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#VictoriaPrentis'})
ON CREATE SET s7.name = 'Victoria Prentis', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#RobertSeely'})
ON CREATE SET s8.name = 'Robert Seely', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 2
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#LindsayHoyle'})
ON CREATE SET s9.name = 'Lindsay Hoyle', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#FabianHamilton'})
ON CREATE SET s10.name = 'Fabian Hamilton', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 2
MERGE (s10)-[:MEMBER_OF]->(p0)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#AndrewMurrison'})
ON CREATE SET s11.name = 'Andrew Murrison', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 2
MERGE (s11)-[:MEMBER_OF]->(p1)
MERGE (s11)-[:PARTICIPATED_IN]->(d);