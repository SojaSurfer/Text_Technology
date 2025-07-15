MERGE (d:Debate {date: '2019-04-01', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Liberal'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Liberal Democrat'})
MERGE (p3:Party {name: 'Labour'})
MERGE (p4:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#DavidHowell'})
ON CREATE SET s0.name = 'David Howell', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 3
MERGE (s0)-[:MEMBER_OF]->(p4)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#ValerieAmos'})
ON CREATE SET s1.name = 'Valerie Amos', s1.sex = 'F', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p3)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#RichardLuce'})
ON CREATE SET s2.name = 'Richard Luce', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p4)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#JulieSmith'})
ON CREATE SET s3.name = 'Julie Smith', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#JoyceAnelay'})
ON CREATE SET s4.name = 'Joyce Anelay', s4.sex = 'F', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p4)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#DavidHannay'})
ON CREATE SET s5.name = 'David Hannay', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#JeanCoussins'})
ON CREATE SET s6.name = 'Jean Coussins', s6.sex = 'F', s6.parliament = 'House of Lords', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#ThomasJopling'})
ON CREATE SET s7.name = 'Thomas Jopling', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p4)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#FrankJudd'})
ON CREATE SET s8.name = 'Frank Judd', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p3)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#DavidAlton'})
ON CREATE SET s9.name = 'David Alton', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#JohnAnderson'})
ON CREATE SET s10.name = 'John Anderson', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p1)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#JeremyPurvis'})
ON CREATE SET s11.name = 'Jeremy Purvis', s11.sex = 'M', s11.parliament = 'House of Lords', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p2)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#RaymondCollins'})
ON CREATE SET s12.name = 'Raymond Collins', s12.sex = 'M', s12.parliament = 'House of Lords', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p3)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#TariqAhmad'})
ON CREATE SET s13.name = 'Tariq Ahmad', s13.sex = 'M', s13.parliament = 'House of Lords', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p4)
MERGE (s13)-[:PARTICIPATED_IN]->(d);