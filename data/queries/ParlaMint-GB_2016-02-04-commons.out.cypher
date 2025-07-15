MERGE (d:Debate {date: '2016-02-04', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#KirstenOswald'})
ON CREATE SET s0.name = 'Kirsten Oswald', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 7
MERGE (s0)-[:MEMBER_OF]->(p2)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#StephenGethins'})
ON CREATE SET s1.name = 'Stephen Gethins', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 1
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#KevinFoster'})
ON CREATE SET s2.name = 'Kevin Foster', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 5
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s3.name = 'Tobias Ellwood', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 3
MERGE (s3)-[:MEMBER_OF]->(p1)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#EdwardArgar'})
ON CREATE SET s4.name = 'Edward Argar', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 4
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#WendyMorton'})
ON CREATE SET s5.name = 'Wendy Morton', s5.sex = 'F', s5.parliament = 'House of Commons', s5.contributions = 3
MERGE (s5)-[:MEMBER_OF]->(p1)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#EleanorLaing'})
ON CREATE SET s6.name = 'Eleanor Laing', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 2
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#KeithVaz'})
ON CREATE SET s7.name = 'Keith Vaz', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 3
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#TimothyLoughton'})
ON CREATE SET s8.name = 'Timothy Loughton', s8.sex = 'M', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p1)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#StephenTwigg'})
ON CREATE SET s9.name = 'Stephen Twigg', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 2
MERGE (s9)-[:MEMBER_OF]->(p0)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#ValerieVaz'})
ON CREATE SET s10.name = 'Valerie Vaz', s10.sex = 'F', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p0)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#FionaBruce'})
ON CREATE SET s11.name = 'Fiona Bruce', s11.sex = 'F', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p1)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#AlisonThewliss'})
ON CREATE SET s12.name = 'Alison Thewliss', s12.sex = 'F', s12.parliament = 'House of Commons', s12.contributions = 2
MERGE (s12)-[:MEMBER_OF]->(p2)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#LindsayHoyle'})
ON CREATE SET s13.name = 'Lindsay Hoyle', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 3
MERGE (s13)-[:MEMBER_OF]->(p0)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#LisaCameron'})
ON CREATE SET s14.name = 'Lisa Cameron', s14.sex = 'F', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p2)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s15.name = 'Felicia Drummond', s15.sex = 'F', s15.parliament = 'House of Commons', s15.contributions = 3
MERGE (s15)-[:MEMBER_OF]->(p1)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#MichaelWood'})
ON CREATE SET s16.name = 'Michael Wood', s16.sex = 'M', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p1)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#ThomasTugendhat'})
ON CREATE SET s17.name = 'Thomas Tugendhat', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p1)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#PatrickGrady'})
ON CREATE SET s18.name = 'Patrick Grady', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p2)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#FabianHamilton'})
ON CREATE SET s19.name = 'Fabian Hamilton', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 3
MERGE (s19)-[:MEMBER_OF]->(p0)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#AndrewSlaughter'})
ON CREATE SET s20.name = 'Andrew Slaughter', s20.sex = 'M', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p0)
MERGE (s20)-[:PARTICIPATED_IN]->(d);