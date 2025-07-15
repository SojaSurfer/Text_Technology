MERGE (d:Debate {date: '2019-03-26', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Liberal Democrat'})
MERGE (p1:Party {name: 'Labour'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Scottish National Party'})
MERGE (p4:Party {name: 'Plaid Cymru'})

MERGE (s0:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s0.name = 'Emily Thornberry', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 4
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#MarkField'})
ON CREATE SET s1.name = 'Mark Field', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 31
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JohnBercow'})
ON CREATE SET s2.name = 'John Bercow', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s3.name = 'Andrew Mitchell', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p2)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#StephenGethins'})
ON CREATE SET s4.name = 'Stephen Gethins', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p3)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#DesmondSwayne'})
ON CREATE SET s5.name = 'Desmond Swayne', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p2)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#StephenTwigg'})
ON CREATE SET s6.name = 'Stephen Twigg', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#MaryRobinson'})
ON CREATE SET s7.name = 'Mary Robinson', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p2)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#KeithVaz'})
ON CREATE SET s8.name = 'Keith Vaz', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#JulianLewis'})
ON CREATE SET s9.name = 'Julian Lewis', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p2)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#JoanneSwinson'})
ON CREATE SET s10.name = 'Joanne Swinson', s10.sex = 'F', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p0)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#RobertStewart'})
ON CREATE SET s11.name = 'Robert Stewart', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p2)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#CatherineWest'})
ON CREATE SET s12.name = 'Catherine West', s12.sex = 'F', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p1)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#PhilipHollobone'})
ON CREATE SET s13.name = 'Philip Hollobone', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p2)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#RichardBurden'})
ON CREATE SET s14.name = 'Richard Burden', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p1)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#RobertBlackman'})
ON CREATE SET s15.name = 'Robert Blackman', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p2)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#MartinWhitfield'})
ON CREATE SET s16.name = 'Martin Whitfield', s16.sex = 'M', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p1)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#JuliaLopez'})
ON CREATE SET s17.name = 'Julia Lopez', s17.sex = 'F', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p2)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#GrahamJones'})
ON CREATE SET s18.name = 'Graham Jones', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p1)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#JohnHowell'})
ON CREATE SET s19.name = 'John Howell', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p2)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#DianaJohnson'})
ON CREATE SET s20.name = 'Diana Johnson', s20.sex = 'F', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p1)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#KevinFoster'})
ON CREATE SET s21.name = 'Kevin Foster', s21.sex = 'M', s21.parliament = 'House of Commons', s21.contributions = 1
MERGE (s21)-[:MEMBER_OF]->(p2)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#KevinBrennan'})
ON CREATE SET s22.name = 'Kevin Brennan', s22.sex = 'M', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p1)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s23.name = 'Alison Thewliss', s23.sex = 'F', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p3)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#CliveLewis'})
ON CREATE SET s24.name = 'Clive Lewis', s24.sex = 'M', s24.parliament = 'House of Commons', s24.contributions = 1
MERGE (s24)-[:MEMBER_OF]->(p1)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#DavidEdwards'})
ON CREATE SET s25.name = 'David Edwards', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p4)
MERGE (s25)-[:PARTICIPATED_IN]->(d)

MERGE (s26:Speaker {id: '#PaulSweeney'})
ON CREATE SET s26.name = 'Paul Sweeney', s26.sex = 'M', s26.parliament = 'House of Commons', s26.contributions = 1
MERGE (s26)-[:MEMBER_OF]->(p1)
MERGE (s26)-[:PARTICIPATED_IN]->(d)

MERGE (s27:Speaker {id: '#EmmaLewellBuck'})
ON CREATE SET s27.name = 'Emma Lewell-Buck', s27.sex = 'F', s27.parliament = 'House of Commons', s27.contributions = 1
MERGE (s27)-[:MEMBER_OF]->(p1)
MERGE (s27)-[:PARTICIPATED_IN]->(d)

MERGE (s28:Speaker {id: '#LloydRussellMoyle'})
ON CREATE SET s28.name = 'Lloyd Russell-Moyle', s28.sex = 'M', s28.parliament = 'House of Commons', s28.contributions = 1
MERGE (s28)-[:MEMBER_OF]->(p1)
MERGE (s28)-[:PARTICIPATED_IN]->(d)

MERGE (s29:Speaker {id: '#DouglasChapman'})
ON CREATE SET s29.name = 'Douglas Chapman', s29.sex = 'M', s29.parliament = 'House of Commons', s29.contributions = 1
MERGE (s29)-[:MEMBER_OF]->(p3)
MERGE (s29)-[:PARTICIPATED_IN]->(d);