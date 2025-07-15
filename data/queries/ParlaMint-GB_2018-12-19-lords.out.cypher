MERGE (d:Debate {date: '2018-12-19', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Liberal'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Liberal Democrat'})
MERGE (p3:Party {name: 'Labour'})
MERGE (p4:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#TariqAhmad'})
ON CREATE SET s0.name = 'Tariq Ahmad', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 12
MERGE (s0)-[:MEMBER_OF]->(p4)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#RaymondCollins'})
ON CREATE SET s1.name = 'Raymond Collins', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p3)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#LindsayGranshaw'})
ON CREATE SET s2.name = 'Lindsay Granshaw', s2.sex = 'F', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#TessaBlackstone'})
ON CREATE SET s3.name = 'Tessa Blackstone', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p3)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#DavidHannay'})
ON CREATE SET s4.name = 'David Hannay', s4.sex = 'M', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#MenziesCampbell'})
ON CREATE SET s5.name = 'Menzies Campbell', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#DavidLea'})
ON CREATE SET s6.name = 'David Lea', s6.sex = 'M', s6.parliament = 'House of Lords', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p3)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#HeleneHayman'})
ON CREATE SET s7.name = 'Helene Hayman', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p3)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#JohnMontagu'})
ON CREATE SET s8.name = 'John Montagu', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#FrancesDSouza'})
ON CREATE SET s9.name = 'Frances D Souza', s9.sex = 'F', s9.parliament = 'House of Lords', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p1)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#JeremyBeecham'})
ON CREATE SET s10.name = 'Jeremy Beecham', s10.sex = 'M', s10.parliament = 'House of Lords', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p3)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#AndrewAdonis'})
ON CREATE SET s11.name = 'Andrew Adonis', s11.sex = 'M', s11.parliament = 'House of Lords', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p3)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#JohnAnderson'})
ON CREATE SET s12.name = 'John Anderson', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p1)
MERGE (s12)-[:PARTICIPATED_IN]->(d);