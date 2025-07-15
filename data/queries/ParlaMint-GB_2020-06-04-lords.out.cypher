MERGE (d:Debate {date: '2020-06-04', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Crossbench'})
MERGE (p1:Party {name: 'Non-affiliated'})
MERGE (p2:Party {name: 'Liberal Democrat'})
MERGE (p3:Party {name: 'Labour'})
MERGE (p4:Party {name: 'Conservative'})

MERGE (s0:Speaker {id: '#RaymondCollins'})
ON CREATE SET s0.name = 'Raymond Collins', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p3)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TariqAhmad'})
ON CREATE SET s1.name = 'Tariq Ahmad', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 11
MERGE (s1)-[:MEMBER_OF]->(p4)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#RobertHayward'})
ON CREATE SET s2.name = 'Robert Hayward', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p4)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#JulieSmith'})
ON CREATE SET s3.name = 'Julie Smith', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#IndarjitSingh'})
ON CREATE SET s4.name = 'Indarjit Singh', s4.sex = 'M', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#TessaBlackstone'})
ON CREATE SET s5.name = 'Tessa Blackstone', s5.sex = 'F', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p3)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#ChristopherHolmes'})
ON CREATE SET s6.name = 'Christopher Holmes', s6.sex = 'M', s6.parliament = 'House of Lords', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#MichaelGerman'})
ON CREATE SET s7.name = 'Michael German', s7.sex = 'M', s7.parliament = 'House of Lords', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p2)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#JohnMcFall'})
ON CREATE SET s8.name = 'John McFall', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 2
MERGE (s8)-[:MEMBER_OF]->(p3)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#JohnReid'})
ON CREATE SET s9.name = 'John Reid', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p3)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#PeterHain'})
ON CREATE SET s10.name = 'Peter Hain', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p3)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#GeorgeFoulkes'})
ON CREATE SET s11.name = 'George Foulkes', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p3)
MERGE (s11)-[:PARTICIPATED_IN]->(d);