MERGE (d:Debate {date: '2017-11-20', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Liberal Democrat'})
MERGE (p1:Party {name: 'Labour'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Scottish National Party'})
MERGE (p4:Party {name: 'Plaid Cymru'})

MERGE (s0:Speaker {id: '#AlistairBurt'})
ON CREATE SET s0.name = 'Alistair Burt', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 29
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#FabianHamilton'})
ON CREATE SET s1.name = 'Fabian Hamilton', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s2.name = 'Andrew Mitchell', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s3.name = 'Alison Thewliss', s3.sex = 'F', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p3)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#DesmondSwayne'})
ON CREATE SET s4.name = 'Desmond Swayne', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p2)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#StephenTwigg'})
ON CREATE SET s5.name = 'Stephen Twigg', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#JamesDuddridge'})
ON CREATE SET s6.name = 'James Duddridge', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#JoanneSwinson'})
ON CREATE SET s7.name = 'Joanne Swinson', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#JeremyLefroy'})
ON CREATE SET s8.name = 'Jeremy Lefroy', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p2)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#StephenDoughty'})
ON CREATE SET s9.name = 'Stephen Doughty', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p1)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#NusratUlGhani'})
ON CREATE SET s10.name = 'Nusrat Ul-Ghani', s10.sex = 'F', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p2)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#RichardBurden'})
ON CREATE SET s11.name = 'Richard Burden', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p1)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#SimonHoare'})
ON CREATE SET s12.name = 'Simon Hoare', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p2)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#DianaJohnson'})
ON CREATE SET s13.name = 'Diana Johnson', s13.sex = 'F', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p1)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#EdwardArgar'})
ON CREATE SET s14.name = 'Edward Argar', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p2)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#GillianFurniss'})
ON CREATE SET s15.name = 'Gillian Furniss', s15.sex = 'F', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p1)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#RebeccaClarkPow'})
ON CREATE SET s16.name = 'Rebecca Clark (Pow)', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p2)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#GrahamJones'})
ON CREATE SET s17.name = 'Graham Jones', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p1)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#MichelleDonelan'})
ON CREATE SET s18.name = 'Michelle Donelan', s18.sex = 'F', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p2)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#DavidEdwards'})
ON CREATE SET s19.name = 'David Edwards', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p4)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#RossThomson'})
ON CREATE SET s20.name = 'Ross Thomson', s20.sex = 'M', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p2)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#AlexanderSobel'})
ON CREATE SET s21.name = 'Alexander Sobel', s21.sex = 'M', s21.parliament = 'House of Commons', s21.contributions = 1
MERGE (s21)-[:MEMBER_OF]->(p1)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#RobertCourts'})
ON CREATE SET s22.name = 'Robert Courts', s22.sex = 'M', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p2)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#RobertStewart'})
ON CREATE SET s23.name = 'Robert Stewart', s23.sex = 'M', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p2)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#JohnBercow'})
ON CREATE SET s24.name = 'John Bercow', s24.sex = 'M', s24.parliament = 'House of Commons', s24.contributions = 2
MERGE (s24)-[:MEMBER_OF]->(p2)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#KevinFoster'})
ON CREATE SET s25.name = 'Kevin Foster', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p2)
MERGE (s25)-[:PARTICIPATED_IN]->(d)

MERGE (s26:Speaker {id: '#WendyMorton'})
ON CREATE SET s26.name = 'Wendy Morton', s26.sex = 'F', s26.parliament = 'House of Commons', s26.contributions = 1
MERGE (s26)-[:MEMBER_OF]->(p2)
MERGE (s26)-[:PARTICIPATED_IN]->(d)

MERGE (s27:Speaker {id: '#JohnHowell'})
ON CREATE SET s27.name = 'John Howell', s27.sex = 'M', s27.parliament = 'House of Commons', s27.contributions = 1
MERGE (s27)-[:MEMBER_OF]->(p2)
MERGE (s27)-[:PARTICIPATED_IN]->(d)

MERGE (s28:Speaker {id: '#HelenWhately'})
ON CREATE SET s28.name = 'Helen Whately', s28.sex = 'F', s28.parliament = 'House of Commons', s28.contributions = 1
MERGE (s28)-[:MEMBER_OF]->(p2)
MERGE (s28)-[:PARTICIPATED_IN]->(d)

MERGE (s29:Speaker {id: '#JeremyQuin'})
ON CREATE SET s29.name = 'Jeremy Quin', s29.sex = 'M', s29.parliament = 'House of Commons', s29.contributions = 1
MERGE (s29)-[:MEMBER_OF]->(p2)
MERGE (s29)-[:PARTICIPATED_IN]->(d);