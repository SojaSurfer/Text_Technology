MERGE (d:Debate {date: '2017-01-10', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Labour'})
MERGE (p1:Party {name: 'Conservative'})
MERGE (p2:Party {name: 'Scottish National Party'})

MERGE (s0:Speaker {id: '#LucianaGoldsmithBerger'})
ON CREATE SET s0.name = 'Luciana Goldsmith (Berger)', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p0)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#TobiasEllwood'})
ON CREATE SET s1.name = 'Tobias Ellwood', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 18
MERGE (s1)-[:MEMBER_OF]->(p1)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#GeoffreyCliftonBrown'})
ON CREATE SET s2.name = 'Geoffrey Clifton-Brown', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p1)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#KeithVaz'})
ON CREATE SET s3.name = 'Keith Vaz', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p0)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#DanielKawczynski'})
ON CREATE SET s4.name = 'Daniel Kawczynski', s4.sex = 'M', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#StephenDoughty'})
ON CREATE SET s5.name = 'Stephen Doughty', s5.sex = 'M', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p0)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#TasminaAhmedSheikh'})
ON CREATE SET s6.name = 'Tasmina Ahmed-Sheikh', s6.sex = 'F', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p2)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#ChristopherElmore'})
ON CREATE SET s7.name = 'Christopher Elmore', s7.sex = 'M', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p0)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s8.name = 'Emily Thornberry', s8.sex = 'F', s8.parliament = 'House of Commons', s8.contributions = 2
MERGE (s8)-[:MEMBER_OF]->(p0)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#JohnBercow'})
ON CREATE SET s9.name = 'John Bercow', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 3
MERGE (s9)-[:MEMBER_OF]->(p1)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#CarolynHarris'})
ON CREATE SET s10.name = 'Carolyn Harris', s10.sex = 'F', s10.parliament = 'House of Commons', s10.contributions = 2
MERGE (s10)-[:MEMBER_OF]->(p0)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#NicholasSoames'})
ON CREATE SET s11.name = 'Nicholas Soames', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p1)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#BrendanOHara'})
ON CREATE SET s12.name = 'Brendan O Hara', s12.sex = 'M', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p2)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#FeliciaDrummond'})
ON CREATE SET s13.name = 'Felicia Drummond', s13.sex = 'F', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p1)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#JohnSpellar'})
ON CREATE SET s14.name = 'John Spellar', s14.sex = 'M', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p0)
MERGE (s14)-[:PARTICIPATED_IN]->(d);