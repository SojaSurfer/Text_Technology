MERGE (d:Debate {date: '2021-02-10', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Liberal'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Liberal Democrat'})
MERGE (p3:Party {name: 'Labour'})
MERGE (p4:Party {name: 'Conservative'})
MERGE (p5:Party {name: 'Bishops'})

MERGE (s0:Speaker {id: '#RaymondCollins'})
ON CREATE SET s0.name = 'Raymond Collins', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 1
MERGE (s0)-[:MEMBER_OF]->(p3)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TariqAhmad'})
ON CREATE SET s1.name = 'Tariq Ahmad', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 9
MERGE (s1)-[:MEMBER_OF]->(p4)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#MenziesCampbell'})
ON CREATE SET s2.name = 'Menzies Campbell', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#ArminkaHelic'})
ON CREATE SET s3.name = 'Arminka Helic', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p4)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#JohnAnderson'})
ON CREATE SET s4.name = 'John Anderson', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#ChristopherCocksworth'})
ON CREATE SET s5.name = 'Christopher Cocksworth', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p5)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#KatyClark'})
ON CREATE SET s6.name = 'Katy Clark', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p3)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#EmmaNicholson'})
ON CREATE SET s7.name = 'Emma Nicholson', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p4)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#AndrewFleming'})
ON CREATE SET s8.name = 'Andrew Fleming', s8.sex = 'M', s8.parliament = 'House of Lords', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#FrankJudd'})
ON CREATE SET s9.name = 'Frank Judd', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p3)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#ElizabethBarker'})
ON CREATE SET s10.name = 'Elizabeth Barker', s10.sex = 'F', s10.parliament = 'House of Lords', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p2)
MERGE (s10)-[:PARTICIPATED_IN]->(d);