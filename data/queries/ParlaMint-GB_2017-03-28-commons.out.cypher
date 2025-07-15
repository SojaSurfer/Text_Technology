MERGE (d:Debate {date: '2017-03-28', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#KeithVaz'})
ON CREATE SET s0.name = 'Keith Vaz', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 6
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#StephenDoughty'})
ON CREATE SET s1.name = 'Stephen Doughty', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 3
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#GeorgeKerevan'})
ON CREATE SET s2.name = 'George Kerevan', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 3
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#JamesHowarth'})
ON CREATE SET s3.name = 'James Howarth', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 3
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#EleanorLaing'})
ON CREATE SET s4.name = 'Eleanor Laing', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 3
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s5.name = 'Andrew Mitchell', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 7
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#StephenTwigg'})
ON CREATE SET s6.name = 'Stephen Twigg', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 3
MERGE (s6)-[:MEMBER_OF]->(p0)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#JamesCunningham'})
ON CREATE SET s7.name = 'James Cunningham', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#SeemaKennedy'})
ON CREATE SET s8.name = 'Seema Kennedy', s8.sex = 'F', s8.parliament = 'House of Commons', s8.contributions = 4
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#GrahamJones'})
ON CREATE SET s9.name = 'Graham Jones', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 4
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s10.name = 'Alison Thewliss', s10.sex = 'F', s10.parliament = 'House of Commons', s10.contributions = 3
MERGE (s10)-[:MEMBER_OF]->(p2)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#BrendanOHara'})
ON CREATE SET s11.name = 'Brendan O Hara', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p2)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s12.name = 'Felicia Drummond', s12.sex = 'F', s12.parliament = 'House of Commons', s12.contributions = 2
MERGE (s12)-[:MEMBER_OF]->(p1)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#CliveLewis'})
ON CREATE SET s13.name = 'Clive Lewis', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 2
MERGE (s13)-[:MEMBER_OF]->(p0)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s14.name = 'Tobias Ellwood', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 5
MERGE (s14)-[:MEMBER_OF]->(p1)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#ChristopherEvans'})
ON CREATE SET s15.name = 'Christopher Evans', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 3
MERGE (s15)-[:MEMBER_OF]->(p0)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#GillianFurniss'})
ON CREATE SET s16.name = 'Gillian Furniss', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p0)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#MargaretFerrier'})
ON CREATE SET s17.name = 'Margaret Ferrier', s17.sex = 'F', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p2)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#DouglasChapman'})
ON CREATE SET s18.name = 'Douglas Chapman', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 2
MERGE (s18)-[:MEMBER_OF]->(p2)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s19.name = 'Emily Thornberry', s19.sex = 'F', s19.parliament = 'House of Commons', s19.contributions = 2
MERGE (s19)-[:MEMBER_OF]->(p0)
MERGE (s19)-[:PARTICIPATED_IN]->(d);