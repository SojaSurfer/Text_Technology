MERGE (d:Debate {date: '2016-12-12', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})
MERGE (p3:Party {name: 'Liberal Democrat'})

MERGE (s0:Speaker {id: '#KeithVaz'})
ON CREATE SET s0.name = 'Keith Vaz', s0.sex = 'M', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s1.name = 'Tobias Ellwood', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 20
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#JohnBercow'})
ON CREATE SET s2.name = 'John Bercow', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 5
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#CrispinBlunt'})
ON CREATE SET s3.name = 'Crispin Blunt', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s4.name = 'Emily Thornberry', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 3
MERGE (s4)-[:MEMBER_OF]->(p0)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#DesmondSwayne'})
ON CREATE SET s5.name = 'Desmond Swayne', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#PatrickGrady'})
ON CREATE SET s6.name = 'Patrick Grady', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#RobertStewart'})
ON CREATE SET s7.name = 'Robert Stewart', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p1)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#StephenTwigg'})
ON CREATE SET s8.name = 'Stephen Twigg', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p0)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s9.name = 'Felicia Drummond', s9.sex = 'F', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p1)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#ThomasBrake'})
ON CREATE SET s10.name = 'Thomas Brake', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 3
MERGE (s10)-[:MEMBER_OF]->(p3)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#MiriamDavies'})
ON CREATE SET s11.name = 'Miriam Davies', s11.sex = 'F', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p1)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#GrahamJones'})
ON CREATE SET s12.name = 'Graham Jones', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p0)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#MatthewOfford'})
ON CREATE SET s13.name = 'Matthew Offord', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p1)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#ChristopherBryant'})
ON CREATE SET s14.name = 'Christopher Bryant', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p0)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#CraigWhittaker'})
ON CREATE SET s15.name = 'Craig Whittaker', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p1)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#RosenaAllinKhan'})
ON CREATE SET s16.name = 'Rosena Allin-Khan', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p0)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#PeterBone'})
ON CREATE SET s17.name = 'Peter Bone', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p1)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#SeemaMalhotraSaluja'})
ON CREATE SET s18.name = 'Seema Malhotra-Saluja', s18.sex = 'F', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p0)
MERGE (s18)-[:PARTICIPATED_IN]->(d);