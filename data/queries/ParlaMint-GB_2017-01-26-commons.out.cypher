MERGE (d:Debate {date: '2017-01-26', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Liberal Democrat'})
MERGE (p1:Party {name: 'Democratic Unionist Party'})
MERGE (p2:Party {name: 'Labour'})
MERGE (p3:Party {name: 'Conservative'})
MERGE (p4:Party {name: 'Scottish National Party'})
MERGE (p5:Party {name: 'Plaid Cymru'})

MERGE (s0:Speaker {id: '#TasminaAhmedSheikh'})
ON CREATE SET s0.name = 'Tasmina Ahmed-Sheikh', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p4)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s1.name = 'Tobias Ellwood', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 31
MERGE (s1)-[:MEMBER_OF]->(p3)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JohnBercow'})
ON CREATE SET s2.name = 'John Bercow', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 3
MERGE (s2)-[:MEMBER_OF]->(p3)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#RobertStewart'})
ON CREATE SET s3.name = 'Robert Stewart', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p3)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s4.name = 'Emily Thornberry', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p2)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#MichaelGove'})
ON CREATE SET s5.name = 'Michael Gove', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p3)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#StephenTwigg'})
ON CREATE SET s6.name = 'Stephen Twigg', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#DesmondSwayne'})
ON CREATE SET s7.name = 'Desmond Swayne', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p3)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#AlexanderSalmond'})
ON CREATE SET s8.name = 'Alexander Salmond', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p4)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s9.name = 'Felicia Drummond', s9.sex = 'F', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p3)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#JohnSpellar'})
ON CREATE SET s10.name = 'John Spellar', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p2)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#JeremyLefroy'})
ON CREATE SET s11.name = 'Jeremy Lefroy', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p3)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#ThomasBrake'})
ON CREATE SET s12.name = 'Thomas Brake', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p0)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#ChristopherDavies'})
ON CREATE SET s13.name = 'Christopher Davies', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p3)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#AnnClwyd'})
ON CREATE SET s14.name = 'Ann Clwyd', s14.sex = 'F', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p2)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#NigelHuddleston'})
ON CREATE SET s15.name = 'Nigel Huddleston', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p3)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#LizSavilleRoberts'})
ON CREATE SET s16.name = 'Liz Saville Roberts', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p5)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#PhilipHollobone'})
ON CREATE SET s17.name = 'Philip Hollobone', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p3)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#AlisonMcGovern'})
ON CREATE SET s18.name = 'Alison McGovern', s18.sex = 'F', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p2)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#RobertCourts'})
ON CREATE SET s19.name = 'Robert Courts', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p3)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#PatrickGrady'})
ON CREATE SET s20.name = 'Patrick Grady', s20.sex = 'M', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p4)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#ThomasPursglove'})
ON CREATE SET s21.name = 'Thomas Pursglove', s21.sex = 'M', s21.parliament = 'House of Commons', s21.contributions = 1
MERGE (s21)-[:MEMBER_OF]->(p3)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#MichaelGapes'})
ON CREATE SET s22.name = 'Michael Gapes', s22.sex = 'M', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p2)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#PeterGrant'})
ON CREATE SET s23.name = 'Peter Grant', s23.sex = 'M', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p4)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#StephenDoughty'})
ON CREATE SET s24.name = 'Stephen Doughty', s24.sex = 'M', s24.parliament = 'House of Commons', s24.contributions = 1
MERGE (s24)-[:MEMBER_OF]->(p2)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#NicholasSmith'})
ON CREATE SET s25.name = 'Nicholas Smith', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p2)
MERGE (s25)-[:PARTICIPATED_IN]->(d)

MERGE (s26:Speaker {id: '#MargaretFerrier'})
ON CREATE SET s26.name = 'Margaret Ferrier', s26.sex = 'F', s26.parliament = 'House of Commons', s26.contributions = 1
MERGE (s26)-[:MEMBER_OF]->(p4)
MERGE (s26)-[:PARTICIPATED_IN]->(d)

MERGE (s27:Speaker {id: '#DianaJohnson'})
ON CREATE SET s27.name = 'Diana Johnson', s27.sex = 'F', s27.parliament = 'House of Commons', s27.contributions = 1
MERGE (s27)-[:MEMBER_OF]->(p2)
MERGE (s27)-[:PARTICIPATED_IN]->(d)

MERGE (s28:Speaker {id: '#RichardShannon'})
ON CREATE SET s28.name = 'Richard Shannon', s28.sex = 'M', s28.parliament = 'House of Commons', s28.contributions = 1
MERGE (s28)-[:MEMBER_OF]->(p1)
MERGE (s28)-[:PARTICIPATED_IN]->(d)

MERGE (s29:Speaker {id: '#GrahamJones'})
ON CREATE SET s29.name = 'Graham Jones', s29.sex = 'M', s29.parliament = 'House of Commons', s29.contributions = 1
MERGE (s29)-[:MEMBER_OF]->(p2)
MERGE (s29)-[:PARTICIPATED_IN]->(d)

MERGE (s30:Speaker {id: '#NicklausThomasSymonds'})
ON CREATE SET s30.name = 'Nicklaus Thomas-Symonds', s30.sex = 'M', s30.parliament = 'House of Commons', s30.contributions = 1
MERGE (s30)-[:MEMBER_OF]->(p2)
MERGE (s30)-[:PARTICIPATED_IN]->(d);