MERGE (d:Debate {date: '2016-10-26', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Liberal Democrat'})
MERGE (p1:Party {name: 'Labour'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Scottish National Party'})
MERGE (p4:Party {name: 'Democratic Unionist Party'})

MERGE (s0:Speaker {id: '#LindsayHoyle'})
ON CREATE SET s0.name = 'Lindsay Hoyle', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 9
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s1.name = 'Emily Thornberry', s1.sex = 'F', s1.parliament = 'House of Commons', s1.contributions = 22
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#KeithVaz'})
ON CREATE SET s2.name = 'Keith Vaz', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 7
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#MatthewPerkins'})
ON CREATE SET s3.name = 'Matthew Perkins', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 3
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#KevanJones'})
ON CREATE SET s4.name = 'Kevan Jones', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 15
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#JohnWoodcock'})
ON CREATE SET s5.name = 'John Woodcock', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 4
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#CrispinBlunt'})
ON CREATE SET s6.name = 'Crispin Blunt', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 7
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#BrendanOHara'})
ON CREATE SET s7.name = 'Brendan O Hara', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p3)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#StephenDoughty'})
ON CREATE SET s8.name = 'Stephen Doughty', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 4
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#StephenTwigg'})
ON CREATE SET s9.name = 'Stephen Twigg', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 7
MERGE (s9)-[:MEMBER_OF]->(p1)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#AlexanderSalmond'})
ON CREATE SET s10.name = 'Alexander Salmond', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 2
MERGE (s10)-[:MEMBER_OF]->(p3)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#JamesHowarth'})
ON CREATE SET s11.name = 'James Howarth', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 3
MERGE (s11)-[:MEMBER_OF]->(p2)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#JulianBrazier'})
ON CREATE SET s12.name = 'Julian Brazier', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p2)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#AlexanderJohnson'})
ON CREATE SET s13.name = 'Alexander Johnson', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 12
MERGE (s13)-[:MEMBER_OF]->(p2)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s14.name = 'Felicia Drummond', s14.sex = 'F', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p2)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#GeorgeKerevan'})
ON CREATE SET s15.name = 'George Kerevan', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 3
MERGE (s15)-[:MEMBER_OF]->(p3)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#SueHayman'})
ON CREATE SET s16.name = 'Sue Hayman', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p1)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#TasminaAhmedSheikh'})
ON CREATE SET s17.name = 'Tasmina Ahmed-Sheikh', s17.sex = 'F', s17.parliament = 'House of Commons', s17.contributions = 19
MERGE (s17)-[:MEMBER_OF]->(p3)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#RobertStewart'})
ON CREATE SET s18.name = 'Robert Stewart', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p2)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#ThomasTugendhat'})
ON CREATE SET s19.name = 'Thomas Tugendhat', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 4
MERGE (s19)-[:MEMBER_OF]->(p2)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#DanielKawczynski'})
ON CREATE SET s20.name = 'Daniel Kawczynski', s20.sex = 'M', s20.parliament = 'House of Commons', s20.contributions = 2
MERGE (s20)-[:MEMBER_OF]->(p2)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#WendyMorton'})
ON CREATE SET s21.name = 'Wendy Morton', s21.sex = 'F', s21.parliament = 'House of Commons', s21.contributions = 4
MERGE (s21)-[:MEMBER_OF]->(p2)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#TaniaMathias'})
ON CREATE SET s22.name = 'Tania Mathias', s22.sex = 'F', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p2)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#KirstenOswald'})
ON CREATE SET s23.name = 'Kirsten Oswald', s23.sex = 'F', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p3)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#MarkHendrick'})
ON CREATE SET s24.name = 'Mark Hendrick', s24.sex = 'M', s24.parliament = 'House of Commons', s24.contributions = 3
MERGE (s24)-[:MEMBER_OF]->(p1)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#AlistairBurt'})
ON CREATE SET s25.name = 'Alistair Burt', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 2
MERGE (s25)-[:MEMBER_OF]->(p2)
MERGE (s25)-[:PARTICIPATED_IN]->(d)

MERGE (s26:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s26.name = 'Alison Thewliss', s26.sex = 'F', s26.parliament = 'House of Commons', s26.contributions = 1
MERGE (s26)-[:MEMBER_OF]->(p3)
MERGE (s26)-[:PARTICIPATED_IN]->(d)

MERGE (s27:Speaker {id: '#NadhimZahawi'})
ON CREATE SET s27.name = 'Nadhim Zahawi', s27.sex = 'M', s27.parliament = 'House of Commons', s27.contributions = 1
MERGE (s27)-[:MEMBER_OF]->(p2)
MERGE (s27)-[:PARTICIPATED_IN]->(d)

MERGE (s28:Speaker {id: '#ChristianMatheson'})
ON CREATE SET s28.name = 'Christian Matheson', s28.sex = 'M', s28.parliament = 'House of Commons', s28.contributions = 1
MERGE (s28)-[:MEMBER_OF]->(p1)
MERGE (s28)-[:PARTICIPATED_IN]->(d)

MERGE (s29:Speaker {id: '#JohnBercow'})
ON CREATE SET s29.name = 'John Bercow', s29.sex = 'M', s29.parliament = 'House of Commons', s29.contributions = 2
MERGE (s29)-[:MEMBER_OF]->(p2)
MERGE (s29)-[:PARTICIPATED_IN]->(d)

MERGE (s30:Speaker {id: '#DouglasChapman'})
ON CREATE SET s30.name = 'Douglas Chapman', s30.sex = 'M', s30.parliament = 'House of Commons', s30.contributions = 1
MERGE (s30)-[:MEMBER_OF]->(p3)
MERGE (s30)-[:PARTICIPATED_IN]->(d)

MERGE (s31:Speaker {id: '#MarkMenzies'})
ON CREATE SET s31.name = 'Mark Menzies', s31.sex = 'M', s31.parliament = 'House of Commons', s31.contributions = 1
MERGE (s31)-[:MEMBER_OF]->(p2)
MERGE (s31)-[:PARTICIPATED_IN]->(d)

MERGE (s32:Speaker {id: '#ThomasBrake'})
ON CREATE SET s32.name = 'Thomas Brake', s32.sex = 'M', s32.parliament = 'House of Commons', s32.contributions = 1
MERGE (s32)-[:MEMBER_OF]->(p0)
MERGE (s32)-[:PARTICIPATED_IN]->(d)

MERGE (s33:Speaker {id: '#SeemaKennedy'})
ON CREATE SET s33.name = 'Seema Kennedy', s33.sex = 'F', s33.parliament = 'House of Commons', s33.contributions = 1
MERGE (s33)-[:MEMBER_OF]->(p2)
MERGE (s33)-[:PARTICIPATED_IN]->(d)

MERGE (s34:Speaker {id: '#MargaretFerrier'})
ON CREATE SET s34.name = 'Margaret Ferrier', s34.sex = 'F', s34.parliament = 'House of Commons', s34.contributions = 2
MERGE (s34)-[:MEMBER_OF]->(p3)
MERGE (s34)-[:PARTICIPATED_IN]->(d)

MERGE (s35:Speaker {id: '#LisaCameron'})
ON CREATE SET s35.name = 'Lisa Cameron', s35.sex = 'F', s35.parliament = 'House of Commons', s35.contributions = 2
MERGE (s35)-[:MEMBER_OF]->(p3)
MERGE (s35)-[:PARTICIPATED_IN]->(d)

MERGE (s36:Speaker {id: '#KwasiKwarteng'})
ON CREATE SET s36.name = 'Kwasi Kwarteng', s36.sex = 'M', s36.parliament = 'House of Commons', s36.contributions = 2
MERGE (s36)-[:MEMBER_OF]->(p2)
MERGE (s36)-[:PARTICIPATED_IN]->(d)

MERGE (s37:Speaker {id: '#NusratUlGhani'})
ON CREATE SET s37.name = 'Nusrat Ul-Ghani', s37.sex = 'F', s37.parliament = 'House of Commons', s37.contributions = 1
MERGE (s37)-[:MEMBER_OF]->(p2)
MERGE (s37)-[:PARTICIPATED_IN]->(d)

MERGE (s38:Speaker {id: '#RichardShannon'})
ON CREATE SET s38.name = 'Richard Shannon', s38.sex = 'M', s38.parliament = 'House of Commons', s38.contributions = 1
MERGE (s38)-[:MEMBER_OF]->(p4)
MERGE (s38)-[:PARTICIPATED_IN]->(d)

MERGE (s39:Speaker {id: '#KevinFoster'})
ON CREATE SET s39.name = 'Kevin Foster', s39.sex = 'M', s39.parliament = 'House of Commons', s39.contributions = 4
MERGE (s39)-[:MEMBER_OF]->(p2)
MERGE (s39)-[:PARTICIPATED_IN]->(d)

MERGE (s40:Speaker {id: '#PeterGrant'})
ON CREATE SET s40.name = 'Peter Grant', s40.sex = 'M', s40.parliament = 'House of Commons', s40.contributions = 1
MERGE (s40)-[:MEMBER_OF]->(p3)
MERGE (s40)-[:PARTICIPATED_IN]->(d)

MERGE (s41:Speaker {id: '#ChrisWhite'})
ON CREATE SET s41.name = 'Chris White', s41.sex = 'M', s41.parliament = 'House of Commons', s41.contributions = 3
MERGE (s41)-[:MEMBER_OF]->(p2)
MERGE (s41)-[:PARTICIPATED_IN]->(d)

MERGE (s42:Speaker {id: '#NataschaEngel'})
ON CREATE SET s42.name = 'Natascha Engel', s42.sex = 'F', s42.parliament = 'House of Commons', s42.contributions = 1
MERGE (s42)-[:MEMBER_OF]->(p1)
MERGE (s42)-[:PARTICIPATED_IN]->(d)

MERGE (s43:Speaker {id: '#RobertJenrick'})
ON CREATE SET s43.name = 'Robert Jenrick', s43.sex = 'M', s43.parliament = 'House of Commons', s43.contributions = 1
MERGE (s43)-[:MEMBER_OF]->(p2)
MERGE (s43)-[:PARTICIPATED_IN]->(d)

MERGE (s44:Speaker {id: '#KateOsamor'})
ON CREATE SET s44.name = 'Kate Osamor', s44.sex = 'F', s44.parliament = 'House of Commons', s44.contributions = 1
MERGE (s44)-[:MEMBER_OF]->(p1)
MERGE (s44)-[:PARTICIPATED_IN]->(d)

MERGE (s45:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s45.name = 'Tobias Ellwood', s45.sex = 'M', s45.parliament = 'House of Commons', s45.contributions = 2
MERGE (s45)-[:MEMBER_OF]->(p2)
MERGE (s45)-[:PARTICIPATED_IN]->(d)

MERGE (s46:Speaker {id: '#NicholasBrown'})
ON CREATE SET s46.name = 'Nicholas Brown', s46.sex = 'M', s46.parliament = 'House of Commons', s46.contributions = 1
MERGE (s46)-[:MEMBER_OF]->(p1)
MERGE (s46)-[:PARTICIPATED_IN]->(d);