MERGE (d:Debate {date: '2018-09-11', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#StephenTwigg'})
ON CREATE SET s0.name = 'Stephen Twigg', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 24
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#WesleyStreeting'})
ON CREATE SET s1.name = 'Wesley Streeting', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p0)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#PhilipHollobone'})
ON CREATE SET s2.name = 'Philip Hollobone', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#StephenDoughty'})
ON CREATE SET s3.name = 'Stephen Doughty', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 3
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#CrispinBlunt'})
ON CREATE SET s4.name = 'Crispin Blunt', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 9
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#LloydRussellMoyle'})
ON CREATE SET s5.name = 'Lloyd Russell-Moyle', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 2
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#ChristopherLaw'})
ON CREATE SET s6.name = 'Christopher Law', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 3
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s7.name = 'Andrew Mitchell', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 12
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#JohnSpellar'})
ON CREATE SET s8.name = 'John Spellar', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 6
MERGE (s8)-[:MEMBER_OF]->(p0)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#HilaryBenn'})
ON CREATE SET s9.name = 'Hilary Benn', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 2
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#VictoriaPrentis'})
ON CREATE SET s10.name = 'Victoria Prentis', s10.sex = 'F', s10.parliament = 'House of Commons', s10.contributions = 4
MERGE (s10)-[:MEMBER_OF]->(p1)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#LeoDocherty'})
ON CREATE SET s11.name = 'Leo Docherty', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 6
MERGE (s11)-[:MEMBER_OF]->(p1)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#JohnHowell'})
ON CREATE SET s12.name = 'John Howell', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 4
MERGE (s12)-[:MEMBER_OF]->(p1)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#KeithVaz'})
ON CREATE SET s13.name = 'Keith Vaz', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 4
MERGE (s13)-[:MEMBER_OF]->(p0)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#ThomasTugendhat'})
ON CREATE SET s14.name = 'Thomas Tugendhat', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 6
MERGE (s14)-[:MEMBER_OF]->(p1)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#AnnaTurley'})
ON CREATE SET s15.name = 'Anna Turley', s15.sex = 'F', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p0)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s16.name = 'Emily Thornberry', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 7
MERGE (s16)-[:MEMBER_OF]->(p0)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#GrahamJones'})
ON CREATE SET s17.name = 'Graham Jones', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 12
MERGE (s17)-[:MEMBER_OF]->(p0)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#MarkFrancois'})
ON CREATE SET s18.name = 'Mark Francois', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p1)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#JohnBercow'})
ON CREATE SET s19.name = 'John Bercow', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p1)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#ChristineJardine'})
ON CREATE SET s20.name = 'Christine Jardine', s20.sex = 'F', s20.parliament = 'House of Commons', s20.contributions = 2
MERGE (s20)-[:MEMBER_OF]->(p3)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s21.name = 'Alison Thewliss', s21.sex = 'F', s21.parliament = 'House of Commons', s21.contributions = 3
MERGE (s21)-[:MEMBER_OF]->(p2)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#AlistairBurt'})
ON CREATE SET s22.name = 'Alistair Burt', s22.sex = 'M', s22.parliament = 'House of Commons', s22.contributions = 6
MERGE (s22)-[:MEMBER_OF]->(p1)
MERGE (s22)-[:PARTICIPATED_IN]->(d);