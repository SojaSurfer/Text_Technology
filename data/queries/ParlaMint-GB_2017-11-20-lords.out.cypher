MERGE (d:Debate {date: '2017-11-20', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Crossbench'})
MERGE (p1:Party {name: 'Liberal Democrat'})
MERGE (p2:Party {name: 'Labour'})
MERGE (p3:Party {name: 'Conservative'})
MERGE (p4:Party {name: 'Bishops'})

MERGE (s0:Speaker {id: '#TariqAhmad'})
ON CREATE SET s0.name = 'Tariq Ahmad', s0.sex = 'M', s0.parliament = 'House of Lords', s0.contributions = 11
MERGE (s0)-[:MEMBER_OF]->(p3)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#RaymondCollins'})
ON CREATE SET s1.name = 'Raymond Collins', s1.sex = 'M', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#LindsayGranshaw'})
ON CREATE SET s2.name = 'Lindsay Granshaw', s2.sex = 'F', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#MarkSchreiber'})
ON CREATE SET s3.name = 'Mark Schreiber', s3.sex = 'M', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p3)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#PeterHain'})
ON CREATE SET s4.name = 'Peter Hain', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p2)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#NicholasBaines'})
ON CREATE SET s5.name = 'Nicholas Baines', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p4)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#DavidHannay'})
ON CREATE SET s6.name = 'David Hannay', s6.sex = 'M', s6.parliament = 'House of Lords', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#KishwerFalkner'})
ON CREATE SET s7.name = 'Kishwer Falkner', s7.sex = 'F', s7.parliament = 'House of Lords', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#MaryGoudie'})
ON CREATE SET s8.name = 'Mary Goudie', s8.sex = 'F', s8.parliament = 'House of Lords', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p2)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#HeleneHayman'})
ON CREATE SET s9.name = 'Helene Hayman', s9.sex = 'F', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p2)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#DavidLea'})
ON CREATE SET s10.name = 'David Lea', s10.sex = 'M', s10.parliament = 'House of Lords', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p2)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#DafyddElystanMorgan'})
ON CREATE SET s11.name = 'Dafydd Elystan-Morgan', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p2)
MERGE (s11)-[:PARTICIPATED_IN]->(d);