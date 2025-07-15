MERGE (d:Debate {date: '2016-09-05', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#HilaryBenn'})
ON CREATE SET s0.name = 'Hilary Benn', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s1.name = 'Tobias Ellwood', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 34
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#CrispinBlunt'})
ON CREATE SET s2.name = 'Crispin Blunt', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s3.name = 'Emily Thornberry', s3.sex = 'F', s3.parliament = 'House of Commons', s3.contributions = 2
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#RobertStewart'})
ON CREATE SET s4.name = 'Robert Stewart', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#TasminaAhmedSheikh'})
ON CREATE SET s5.name = 'Tasmina Ahmed-Sheikh', s5.sex = 'F', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p2)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#CherylGillan'})
ON CREATE SET s6.name = 'Cheryl Gillan', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#KeithVaz'})
ON CREATE SET s7.name = 'Keith Vaz', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s8.name = 'Felicia Drummond', s8.sex = 'F', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#GillianFurniss'})
ON CREATE SET s9.name = 'Gillian Furniss', s9.sex = 'F', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#NigelHuddleston'})
ON CREATE SET s10.name = 'Nigel Huddleston', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p1)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#LucianaGoldsmithBerger'})
ON CREATE SET s11.name = 'Luciana Goldsmith (Berger)', s11.sex = 'F', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p0)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#SeemaKennedy'})
ON CREATE SET s12.name = 'Seema Kennedy', s12.sex = 'F', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p1)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#MargaretFerrier'})
ON CREATE SET s13.name = 'Margaret Ferrier', s13.sex = 'F', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p2)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#MarkPritchard'})
ON CREATE SET s14.name = 'Mark Pritchard', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p1)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#KevanJones'})
ON CREATE SET s15.name = 'Kevan Jones', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p0)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#ThomasTugendhat'})
ON CREATE SET s16.name = 'Thomas Tugendhat', s16.sex = 'M', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p1)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#ThomasBrake'})
ON CREATE SET s17.name = 'Thomas Brake', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p3)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#EdwardLeigh'})
ON CREATE SET s18.name = 'Edward Leigh', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p1)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#StephenDoughty'})
ON CREATE SET s19.name = 'Stephen Doughty', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p0)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#KevinFoster'})
ON CREATE SET s20.name = 'Kevin Foster', s20.sex = 'M', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p1)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s21.name = 'Alison Thewliss', s21.sex = 'F', s21.parliament = 'House of Commons', s21.contributions = 2
MERGE (s21)-[:MEMBER_OF]->(p2)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#JohnBercow'})
ON CREATE SET s22.name = 'John Bercow', s22.sex = 'M', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p1)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#MichaelWood'})
ON CREATE SET s23.name = 'Michael Wood', s23.sex = 'M', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p1)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#ThangamDebbonaire'})
ON CREATE SET s24.name = 'Thangam Debbonaire', s24.sex = 'F', s24.parliament = 'House of Commons', s24.contributions = 1
MERGE (s24)-[:MEMBER_OF]->(p0)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#PhilipHollobone'})
ON CREATE SET s25.name = 'Philip Hollobone', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p1)
MERGE (s25)-[:PARTICIPATED_IN]->(d)

MERGE (s26:Speaker {id: '#AndrewGwynne'})
ON CREATE SET s26.name = 'Andrew Gwynne', s26.sex = 'M', s26.parliament = 'House of Commons', s26.contributions = 1
MERGE (s26)-[:MEMBER_OF]->(p0)
MERGE (s26)-[:PARTICIPATED_IN]->(d)

MERGE (s27:Speaker {id: '#NigelEvans'})
ON CREATE SET s27.name = 'Nigel Evans', s27.sex = 'M', s27.parliament = 'House of Commons', s27.contributions = 1
MERGE (s27)-[:MEMBER_OF]->(p1)
MERGE (s27)-[:PARTICIPATED_IN]->(d)

MERGE (s28:Speaker {id: '#DouglasChapman'})
ON CREATE SET s28.name = 'Douglas Chapman', s28.sex = 'M', s28.parliament = 'House of Commons', s28.contributions = 1
MERGE (s28)-[:MEMBER_OF]->(p2)
MERGE (s28)-[:PARTICIPATED_IN]->(d)

MERGE (s29:Speaker {id: '#NicklausThomasSymonds'})
ON CREATE SET s29.name = 'Nicklaus Thomas-Symonds', s29.sex = 'M', s29.parliament = 'House of Commons', s29.contributions = 1
MERGE (s29)-[:MEMBER_OF]->(p0)
MERGE (s29)-[:PARTICIPATED_IN]->(d)

MERGE (s30:Speaker {id: '#BrendanOHara'})
ON CREATE SET s30.name = 'Brendan O Hara', s30.sex = 'M', s30.parliament = 'House of Commons', s30.contributions = 1
MERGE (s30)-[:MEMBER_OF]->(p2)
MERGE (s30)-[:PARTICIPATED_IN]->(d)

MERGE (s31:Speaker {id: '#DianaJohnson'})
ON CREATE SET s31.name = 'Diana Johnson', s31.sex = 'F', s31.parliament = 'House of Commons', s31.contributions = 1
MERGE (s31)-[:MEMBER_OF]->(p0)
MERGE (s31)-[:PARTICIPATED_IN]->(d)

MERGE (s32:Speaker {id: '#PatrickGrady'})
ON CREATE SET s32.name = 'Patrick Grady', s32.sex = 'M', s32.parliament = 'House of Commons', s32.contributions = 1
MERGE (s32)-[:MEMBER_OF]->(p2)
MERGE (s32)-[:PARTICIPATED_IN]->(d);