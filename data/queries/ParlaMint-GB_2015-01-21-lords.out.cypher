MERGE (d:Debate {date: '2015-01-21', chamber: 'House of Lords'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#JoyceAnelay'})
ON CREATE SET s0.name = 'Joyce Anelay', s0.sex = 'F', s0.parliament = 'House of Lords', s0.contributions = 8
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#MairMorgan'})
ON CREATE SET s1.name = 'Mair Morgan', s1.sex = 'F', s1.parliament = 'House of Lords', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#KishwerFalkner'})
ON CREATE SET s2.name = 'Kishwer Falkner', s2.sex = 'F', s2.parliament = 'House of Lords', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#DonaldAnderson'})
ON CREATE SET s3.name = 'Donald Anderson', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#DavidHowell'})
ON CREATE SET s4.name = 'David Howell', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#AlanWest'})
ON CREATE SET s5.name = 'Alan West', s5.sex = 'M', s5.parliament = 'House of Lords', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#DavidLea'})
ON CREATE SET s6.name = 'David Lea', s6.sex = 'M', s6.parliament = 'House of Lords', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#ElizabethSymons'})
ON CREATE SET s7.name = 'Elizabeth Symons', s7.sex = 'F', s7.parliament = 'House of Lords', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d);