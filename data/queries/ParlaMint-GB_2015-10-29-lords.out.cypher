MERGE (d:Debate {date: '2015-10-29', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Crossbench'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#EricLubbock'})
ON CREATE SET s0.name = 'Eric Lubbock', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p3)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#JamesStopford'})
ON CREATE SET s1.name = 'James Stopford', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 9
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#DonaldAnderson'})
ON CREATE SET s2.name = 'Donald Anderson', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#SayeedaWarsi'})
ON CREATE SET s3.name = 'Sayeeda Warsi', s3.sex = 'F', s3.parliament = 'House of Lords', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#GlenysKinnock'})
ON CREATE SET s4.name = 'Glenys Kinnock', s4.sex = 'F', s4.parliament = 'House of Lords', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#AndrewFleming'})
ON CREATE SET s5.name = 'Andrew Fleming', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#NazirAhmed'})
ON CREATE SET s6.name = 'Nazir Ahmed', s6.sex = 'M', s6.parliament = 'House of Lords', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#WilliamWallace'})
ON CREATE SET s7.name = 'William Wallace', s7.sex = 'M', s7.parliament = 'House of Lords', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p3)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#RaymondCollins'})
ON CREATE SET s8.name = 'Raymond Collins', s8.sex = 'M', s8.parliament = 'House of Lords', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p0)
MERGE (s8)-[:PARTICIPATED_IN]->(d);