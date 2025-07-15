MERGE (d:Debate {date: '2017-01-12', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#StephenTwigg'})
ON CREATE SET s0.name = 'Stephen Twigg', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 23
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#KeithVaz'})
ON CREATE SET s1.name = 'Keith Vaz', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 8
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#RobertStewart'})
ON CREATE SET s2.name = 'Robert Stewart', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 8
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#StephenDoughty'})
ON CREATE SET s3.name = 'Stephen Doughty', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 9
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#AnnClwyd'})
ON CREATE SET s4.name = 'Ann Clwyd', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#MichaelGapes'})
ON CREATE SET s5.name = 'Michael Gapes', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 2
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#FionaBruce'})
ON CREATE SET s6.name = 'Fiona Bruce', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#GrahamJones'})
ON CREATE SET s7.name = 'Graham Jones', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 20
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s8.name = 'Tobias Ellwood', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 20
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#JohnSpellar'})
ON CREATE SET s9.name = 'John Spellar', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#SeemaKennedy'})
ON CREATE SET s10.name = 'Seema Kennedy', s10.sex = 'F', s10.parliament = 'House of Commons', s10.contributions = 7
MERGE (s10)-[:MEMBER_OF]->(p1)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#ThomasBrake'})
ON CREATE SET s11.name = 'Thomas Brake', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 6
MERGE (s11)-[:MEMBER_OF]->(p3)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#EleanorLaing'})
ON CREATE SET s12.name = 'Eleanor Laing', s12.sex = 'F', s12.parliament = 'House of Commons', s12.contributions = 2
MERGE (s12)-[:MEMBER_OF]->(p1)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#AlistairBurt'})
ON CREATE SET s13.name = 'Alistair Burt', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 5
MERGE (s13)-[:MEMBER_OF]->(p1)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#GeorgeKerevan'})
ON CREATE SET s14.name = 'George Kerevan', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 7
MERGE (s14)-[:MEMBER_OF]->(p2)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#DesmondSwayne'})
ON CREATE SET s15.name = 'Desmond Swayne', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p1)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s16.name = 'Emily Thornberry', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 15
MERGE (s16)-[:MEMBER_OF]->(p0)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#ChrisWhite'})
ON CREATE SET s17.name = 'Chris White', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 7
MERGE (s17)-[:MEMBER_OF]->(p1)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#PaulMonaghan'})
ON CREATE SET s18.name = 'Paul Monaghan', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 2
MERGE (s18)-[:MEMBER_OF]->(p2)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#MadeleineMoon'})
ON CREATE SET s19.name = 'Madeleine Moon', s19.sex = 'F', s19.parliament = 'House of Commons', s19.contributions = 5
MERGE (s19)-[:MEMBER_OF]->(p0)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#KirstenOswald'})
ON CREATE SET s20.name = 'Kirsten Oswald', s20.sex = 'F', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p2)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s21.name = 'Felicia Drummond', s21.sex = 'F', s21.parliament = 'House of Commons', s21.contributions = 2
MERGE (s21)-[:MEMBER_OF]->(p1)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#WendyMorton'})
ON CREATE SET s22.name = 'Wendy Morton', s22.sex = 'F', s22.parliament = 'House of Commons', s22.contributions = 3
MERGE (s22)-[:MEMBER_OF]->(p1)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#EdwardArgar'})
ON CREATE SET s23.name = 'Edward Argar', s23.sex = 'M', s23.parliament = 'House of Commons', s23.contributions = 3
MERGE (s23)-[:MEMBER_OF]->(p1)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#MargaretFerrier'})
ON CREATE SET s24.name = 'Margaret Ferrier', s24.sex = 'F', s24.parliament = 'House of Commons', s24.contributions = 1
MERGE (s24)-[:MEMBER_OF]->(p2)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#KevinFoster'})
ON CREATE SET s25.name = 'Kevin Foster', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p1)
MERGE (s25)-[:PARTICIPATED_IN]->(d)

MERGE (s26:Speaker {id: '#TasminaAhmedSheikh'})
ON CREATE SET s26.name = 'Tasmina Ahmed-Sheikh', s26.sex = 'F', s26.parliament = 'House of Commons', s26.contributions = 4
MERGE (s26)-[:MEMBER_OF]->(p2)
MERGE (s26)-[:PARTICIPATED_IN]->(d)

MERGE (s27:Speaker {id: '#PatrickGrady'})
ON CREATE SET s27.name = 'Patrick Grady', s27.sex = 'M', s27.parliament = 'House of Commons', s27.contributions = 1
MERGE (s27)-[:MEMBER_OF]->(p2)
MERGE (s27)-[:PARTICIPATED_IN]->(d)

MERGE (s28:Speaker {id: '#NataschaEngel'})
ON CREATE SET s28.name = 'Natascha Engel', s28.sex = 'F', s28.parliament = 'House of Commons', s28.contributions = 1
MERGE (s28)-[:MEMBER_OF]->(p0)
MERGE (s28)-[:PARTICIPATED_IN]->(d)

MERGE (s29:Speaker {id: '#NicholasSmith'})
ON CREATE SET s29.name = 'Nicholas Smith', s29.sex = 'M', s29.parliament = 'House of Commons', s29.contributions = 1
MERGE (s29)-[:MEMBER_OF]->(p0)
MERGE (s29)-[:PARTICIPATED_IN]->(d)

MERGE (s30:Speaker {id: '#LindsayHoyle'})
ON CREATE SET s30.name = 'Lindsay Hoyle', s30.sex = 'M', s30.parliament = 'House of Commons', s30.contributions = 3
MERGE (s30)-[:MEMBER_OF]->(p0)
MERGE (s30)-[:PARTICIPATED_IN]->(d);