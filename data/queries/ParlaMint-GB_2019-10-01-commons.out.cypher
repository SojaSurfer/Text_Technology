MERGE (d:Debate {date: '2019-10-01', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Liberal Democrat'})
MERGE (p1:Party {name: 'Labour'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Scottish National Party'})
MERGE (p4:Party {name: 'Plaid Cymru'})

MERGE (s0:Speaker {id: '#StephenTwigg'})
ON CREATE SET s0.name = 'Stephen Twigg', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#JohnBercow'})
ON CREATE SET s1.name = 'John Bercow', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 2
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#AndrewStephenson'})
ON CREATE SET s2.name = 'Andrew Stephenson', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 25
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#ThomasTugendhat'})
ON CREATE SET s3.name = 'Thomas Tugendhat', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s4.name = 'Emily Thornberry', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#HenryBellingham'})
ON CREATE SET s5.name = 'Henry Bellingham', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p2)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#StephenGethins'})
ON CREATE SET s6.name = 'Stephen Gethins', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p3)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#AttaUrRehmanChishti'})
ON CREATE SET s7.name = 'Atta-Ur-Rehman Chishti', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p2)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#AnnClwyd'})
ON CREATE SET s8.name = 'Ann Clwyd', s8.sex = 'F', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#PaulineLatham'})
ON CREATE SET s9.name = 'Pauline Latham', s9.sex = 'F', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p2)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#RichardBurden'})
ON CREATE SET s10.name = 'Richard Burden', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p1)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#MariaCaulfield'})
ON CREATE SET s11.name = 'Maria Caulfield', s11.sex = 'F', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p2)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#JaneDodds'})
ON CREATE SET s12.name = 'Jane Dodds', s12.sex = 'F', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p0)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#TimothyLoughton'})
ON CREATE SET s13.name = 'Timothy Loughton', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p2)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#DavidDrew'})
ON CREATE SET s14.name = 'David Drew', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p1)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#JohnRedwood'})
ON CREATE SET s15.name = 'John Redwood', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p2)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#PatriciaGibson'})
ON CREATE SET s16.name = 'Patricia Gibson', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p3)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#PhilipHollobone'})
ON CREATE SET s17.name = 'Philip Hollobone', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p2)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#MichaelGapes'})
ON CREATE SET s18.name = 'Michael Gapes', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p1)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#DavidEdwards'})
ON CREATE SET s19.name = 'David Edwards', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p4)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#StuartMcDonald'})
ON CREATE SET s20.name = 'Stuart McDonald', s20.sex = 'M', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p3)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#MatthewPerkins'})
ON CREATE SET s21.name = 'Matthew Perkins', s21.sex = 'M', s21.parliament = 'House of Commons', s21.contributions = 1
MERGE (s21)-[:MEMBER_OF]->(p1)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#NicklausThomasSymonds'})
ON CREATE SET s22.name = 'Nicklaus Thomas-Symonds', s22.sex = 'M', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p1)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s23.name = 'Alison Thewliss', s23.sex = 'F', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p3)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#BrendanOHara'})
ON CREATE SET s24.name = 'Brendan O Hara', s24.sex = 'M', s24.parliament = 'House of Commons', s24.contributions = 1
MERGE (s24)-[:MEMBER_OF]->(p3)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#LloydRussellMoyle'})
ON CREATE SET s25.name = 'Lloyd Russell-Moyle', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p1)
MERGE (s25)-[:PARTICIPATED_IN]->(d);