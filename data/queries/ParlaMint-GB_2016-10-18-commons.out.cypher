MERGE (d:Debate {date: '2016-10-18', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#KellyTolhurst'})
ON CREATE SET s0.name = 'Kelly Tolhurst', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s1.name = 'Tobias Ellwood', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 5
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JohnBercow'})
ON CREATE SET s2.name = 'John Bercow', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 3
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#CatherineMcKinnell'})
ON CREATE SET s3.name = 'Catherine McKinnell', s3.sex = 'F', s3.parliament = 'House of Commons', s3.contributions = 2
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s4.name = 'Emily Thornberry', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 3
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#KeithVaz'})
ON CREATE SET s5.name = 'Keith Vaz', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 19
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#KirstenOswald'})
ON CREATE SET s6.name = 'Kirsten Oswald', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#RosenaAllinKhan'})
ON CREATE SET s7.name = 'Rosena Allin-Khan', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#EdwardArgar'})
ON CREATE SET s8.name = 'Edward Argar', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#StephenDoughty'})
ON CREATE SET s9.name = 'Stephen Doughty', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 2
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#DouglasChapman'})
ON CREATE SET s10.name = 'Douglas Chapman', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p2)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#PhilippaWhitford'})
ON CREATE SET s11.name = 'Philippa Whitford', s11.sex = 'F', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p2)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#ChrisWhite'})
ON CREATE SET s12.name = 'Chris White', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 4
MERGE (s12)-[:MEMBER_OF]->(p1)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#LindsayHoyle'})
ON CREATE SET s13.name = 'Lindsay Hoyle', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 4
MERGE (s13)-[:MEMBER_OF]->(p0)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s14.name = 'Felicia Drummond', s14.sex = 'F', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p1)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#MargaretFerrier'})
ON CREATE SET s15.name = 'Margaret Ferrier', s15.sex = 'F', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p2)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#MartinDochertyHughes'})
ON CREATE SET s16.name = 'Martin Docherty-Hughes', s16.sex = 'M', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p2)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#KevinFoster'})
ON CREATE SET s17.name = 'Kevin Foster', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p1)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s18.name = 'Alison Thewliss', s18.sex = 'F', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p2)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#RoderickStewart'})
ON CREATE SET s19.name = 'Roderick Stewart', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 4
MERGE (s19)-[:MEMBER_OF]->(p1)
MERGE (s19)-[:PARTICIPATED_IN]->(d);