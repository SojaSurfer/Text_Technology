MERGE (d:Debate {date: '2018-11-21', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Liberal Democrat'})
MERGE (p1:Party {name: 'Democratic Unionist Party'})
MERGE (p2:Party {name: 'Labour'})
MERGE (p3:Party {name: 'Conservative'})
MERGE (p4:Party {name: 'Scottish National Party'})
MERGE (p5:Party {name: 'Plaid Cymru'})

MERGE (s0:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s0.name = 'Emily Thornberry', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 5
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#JeremyHunt'})
ON CREATE SET s1.name = 'Jeremy Hunt', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 29
MERGE (s1)-[:MEMBER_OF]->(p3)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#ThomasTugendhat'})
ON CREATE SET s2.name = 'Thomas Tugendhat', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p3)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#StephenGethins'})
ON CREATE SET s3.name = 'Stephen Gethins', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p4)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s4.name = 'Andrew Mitchell', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p3)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#HilaryBenn'})
ON CREATE SET s5.name = 'Hilary Benn', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p2)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#PritiPatel'})
ON CREATE SET s6.name = 'Priti Patel', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p3)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#AnnClwyd'})
ON CREATE SET s7.name = 'Ann Clwyd', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p2)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#DesmondSwayne'})
ON CREATE SET s8.name = 'Desmond Swayne', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p3)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#KeithVaz'})
ON CREATE SET s9.name = 'Keith Vaz', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p2)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#LeoDocherty'})
ON CREATE SET s10.name = 'Leo Docherty', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p3)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#ChristineJardine'})
ON CREATE SET s11.name = 'Christine Jardine', s11.sex = 'F', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p0)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#MarkPritchard'})
ON CREATE SET s12.name = 'Mark Pritchard', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p3)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#StephenDoughty'})
ON CREATE SET s13.name = 'Stephen Doughty', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p2)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#PaulMasterton'})
ON CREATE SET s14.name = 'Paul Masterton', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p3)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#RichardBurden'})
ON CREATE SET s15.name = 'Richard Burden', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p2)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#RobertBlackman'})
ON CREATE SET s16.name = 'Robert Blackman', s16.sex = 'M', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p3)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s17.name = 'Alison Thewliss', s17.sex = 'F', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p4)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#RossThomson'})
ON CREATE SET s18.name = 'Ross Thomson', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p3)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#IanMurray'})
ON CREATE SET s19.name = 'Ian Murray', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p2)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#GrahamJones'})
ON CREATE SET s20.name = 'Graham Jones', s20.sex = 'M', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p2)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#MatthewPerkins'})
ON CREATE SET s21.name = 'Matthew Perkins', s21.sex = 'M', s21.parliament = 'House of Commons', s21.contributions = 1
MERGE (s21)-[:MEMBER_OF]->(p2)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#HywelWilliams'})
ON CREATE SET s22.name = 'Hywel Williams', s22.sex = 'M', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p5)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#KevinBrennan'})
ON CREATE SET s23.name = 'Kevin Brennan', s23.sex = 'M', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p2)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#PaulSweeney'})
ON CREATE SET s24.name = 'Paul Sweeney', s24.sex = 'M', s24.parliament = 'House of Commons', s24.contributions = 1
MERGE (s24)-[:MEMBER_OF]->(p2)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#RichardShannon'})
ON CREATE SET s25.name = 'Richard Shannon', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p1)
MERGE (s25)-[:PARTICIPATED_IN]->(d);