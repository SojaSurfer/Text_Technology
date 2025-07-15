MERGE (d:Debate {date: '2017-11-30', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s0.name = 'Andrew Mitchell', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 16
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#HilaryBenn'})
ON CREATE SET s1.name = 'Hilary Benn', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 4
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#GrahamJones'})
ON CREATE SET s2.name = 'Graham Jones', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 8
MERGE (s2)-[:MEMBER_OF]->(p0)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#JohnSpellar'})
ON CREATE SET s3.name = 'John Spellar', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#RobertStewart'})
ON CREATE SET s4.name = 'Robert Stewart', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 2
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#KeithVaz'})
ON CREATE SET s5.name = 'Keith Vaz', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 5
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#ThomasTugendhat'})
ON CREATE SET s6.name = 'Thomas Tugendhat', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 3
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#AlistairBurt'})
ON CREATE SET s7.name = 'Alistair Burt', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 18
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s8.name = 'Emily Thornberry', s8.sex = 'F', s8.parliament = 'House of Commons', s8.contributions = 6
MERGE (s8)-[:MEMBER_OF]->(p0)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#StephenTwigg'})
ON CREATE SET s9.name = 'Stephen Twigg', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 3
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s10.name = 'Alison Thewliss', s10.sex = 'F', s10.parliament = 'House of Commons', s10.contributions = 4
MERGE (s10)-[:MEMBER_OF]->(p2)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#MichaelGapes'})
ON CREATE SET s11.name = 'Michael Gapes', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p0)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#StephenDoughty'})
ON CREATE SET s12.name = 'Stephen Doughty', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p0)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#JeremyLefroy'})
ON CREATE SET s13.name = 'Jeremy Lefroy', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 2
MERGE (s13)-[:MEMBER_OF]->(p1)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#JamesCunningham'})
ON CREATE SET s14.name = 'James Cunningham', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p0)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#RossThomson'})
ON CREATE SET s15.name = 'Ross Thomson', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 2
MERGE (s15)-[:MEMBER_OF]->(p1)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#CliveLewis'})
ON CREATE SET s16.name = 'Clive Lewis', s16.sex = 'M', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p0)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#LindsayHoyle'})
ON CREATE SET s17.name = 'Lindsay Hoyle', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 2
MERGE (s17)-[:MEMBER_OF]->(p0)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#RobertaBlackmanWoods'})
ON CREATE SET s18.name = 'Roberta Blackman-Woods', s18.sex = 'F', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p0)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#StewartMcDonald'})
ON CREATE SET s19.name = 'Stewart McDonald', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 2
MERGE (s19)-[:MEMBER_OF]->(p2)
MERGE (s19)-[:PARTICIPATED_IN]->(d);