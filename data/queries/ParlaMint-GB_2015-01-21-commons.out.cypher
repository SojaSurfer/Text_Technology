MERGE (d:Debate {date: '2015-01-21', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Liberal Democrat'})
MERGE (p3:Party {name: 'Democratic Unionist Party'})

MERGE (s0:Speaker {id: '#KeithVaz'})
ON CREATE SET s0.name = 'Keith Vaz', s0.sex = 'M', 
    s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s1.name = 'Tobias Ellwood', s1.sex = 'M', 
    s1.parliament = 'House of Commons', s1.contributions = 13
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

...


MERGE (s2:Speaker {id: '#RichardOttaway'})
ON CREATE SET s2.name = 'Richard Ottaway', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#JeremyCorbyn'})
ON CREATE SET s3.name = 'Jeremy Corbyn', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#AlanDuncan'})
ON CREATE SET s4.name = 'Alan Duncan', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#JohnSpellar'})
ON CREATE SET s5.name = 'John Spellar', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#TimothyFarron'})
ON CREATE SET s6.name = 'Timothy Farron', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#StephenDoughty'})
ON CREATE SET s7.name = 'Stephen Doughty', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#PeterLuff'})
ON CREATE SET s8.name = 'Peter Luff', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#StephenMcCabe'})
ON CREATE SET s9.name = 'Stephen McCabe', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#RobertBlackman'})
ON CREATE SET s10.name = 'Robert Blackman', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p1)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#MarkReckless'})
ON CREATE SET s11.name = 'Mark Reckless', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p1)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#RichardShannon'})
ON CREATE SET s12.name = 'Richard Shannon', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p3)
MERGE (s12)-[:PARTICIPATED_IN]->(d);