MERGE (d:Debate {date: '2018-12-19', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Liberal Democrat'})
MERGE (p1:Party {name: 'Labour'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Scottish National Party'})
MERGE (p4:Party {name: 'Democratic Unionist Party'})

MERGE (s0:Speaker {id: '#JeremyHunt'})
ON CREATE SET s0.name = 'Jeremy Hunt', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 27
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s1.name = 'Emily Thornberry', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s2.name = 'Andrew Mitchell', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#StephenGethins'})
ON CREATE SET s3.name = 'Stephen Gethins', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p3)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#ThomasTugendhat'})
ON CREATE SET s4.name = 'Thomas Tugendhat', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p2)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#StephenTwigg'})
ON CREATE SET s5.name = 'Stephen Twigg', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#RobertStewart'})
ON CREATE SET s6.name = 'Robert Stewart', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#HilaryBenn'})
ON CREATE SET s7.name = 'Hilary Benn', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#RichardGraham'})
ON CREATE SET s8.name = 'Richard Graham', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p2)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#KevinBrennan'})
ON CREATE SET s9.name = 'Kevin Brennan', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p1)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#RobertBlackman'})
ON CREATE SET s10.name = 'Robert Blackman', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p2)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#WeraHobhouse'})
ON CREATE SET s11.name = 'Wera Hobhouse', s11.sex = 'F', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p0)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#KevinFoster'})
ON CREATE SET s12.name = 'Kevin Foster', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p2)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#JohnWoodcock'})
ON CREATE SET s13.name = 'John Woodcock', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p1)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#WilliamGrant'})
ON CREATE SET s14.name = 'William Grant', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p2)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s15.name = 'Alison Thewliss', s15.sex = 'F', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p3)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#ChristopherLaw'})
ON CREATE SET s16.name = 'Christopher Law', s16.sex = 'M', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p3)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#LaylaMoran'})
ON CREATE SET s17.name = 'Layla Moran', s17.sex = 'F', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p0)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#NicklausThomasSymonds'})
ON CREATE SET s18.name = 'Nicklaus Thomas-Symonds', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p1)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#MichaelGapes'})
ON CREATE SET s19.name = 'Michael Gapes', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p1)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#PaulSweeney'})
ON CREATE SET s20.name = 'Paul Sweeney', s20.sex = 'M', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p1)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#ThangamDebbonaire'})
ON CREATE SET s21.name = 'Thangam Debbonaire', s21.sex = 'F', s21.parliament = 'House of Commons', s21.contributions = 1
MERGE (s21)-[:MEMBER_OF]->(p1)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#IanMurray'})
ON CREATE SET s22.name = 'Ian Murray', s22.sex = 'M', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p1)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#GrahamJones'})
ON CREATE SET s23.name = 'Graham Jones', s23.sex = 'M', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p1)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#LloydRussellMoyle'})
ON CREATE SET s24.name = 'Lloyd Russell-Moyle', s24.sex = 'M', s24.parliament = 'House of Commons', s24.contributions = 1
MERGE (s24)-[:MEMBER_OF]->(p1)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#LisaCameron'})
ON CREATE SET s25.name = 'Lisa Cameron', s25.sex = 'F', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p3)
MERGE (s25)-[:PARTICIPATED_IN]->(d)

MERGE (s26:Speaker {id: '#RichardShannon'})
ON CREATE SET s26.name = 'Richard Shannon', s26.sex = 'M', s26.parliament = 'House of Commons', s26.contributions = 1
MERGE (s26)-[:MEMBER_OF]->(p4)
MERGE (s26)-[:PARTICIPATED_IN]->(d);