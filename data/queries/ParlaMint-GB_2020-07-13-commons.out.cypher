MERGE (d:Debate {date: '2020-07-13', chamber: 'House of Commons'})
MERGE (p0:Party {name: 'Liberal Democrat'})
MERGE (p1:Party {name: 'Labour'})
MERGE (p2:Party {name: 'Conservative'})
MERGE (p3:Party {name: 'Scottish National Party'})
MERGE (p4:Party {name: 'Plaid Cymru'})

MERGE (s0:Speaker {id: '#EmilyThornberry'})
ON CREATE SET s0.name = 'Emily Thornberry', s0.sex = 'F', s0.parliament = 'House of Commons', s0.contributions = 2
MERGE (s0)-[:MEMBER_OF]->(p1)
MERGE (s0)-[:PARTICIPATED_IN]->(d)

MERGE (s1:Speaker {id: '#GregoryHands'})
ON CREATE SET s1.name = 'Gregory Hands', s1.sex = 'M', s1.parliament = 'House of Commons', s1.contributions = 40
MERGE (s1)-[:MEMBER_OF]->(p2)
MERGE (s1)-[:PARTICIPATED_IN]->(d)

MERGE (s2:Speaker {id: '#AndrewMitchell'})
ON CREATE SET s2.name = 'Andrew Mitchell', s2.sex = 'M', s2.parliament = 'House of Commons', s2.contributions = 1
MERGE (s2)-[:MEMBER_OF]->(p2)
MERGE (s2)-[:PARTICIPATED_IN]->(d)

MERGE (s3:Speaker {id: '#ChristopherLaw'})
ON CREATE SET s3.name = 'Christopher Law', s3.sex = 'M', s3.parliament = 'House of Commons', s3.contributions = 1
MERGE (s3)-[:MEMBER_OF]->(p3)
MERGE (s3)-[:PARTICIPATED_IN]->(d)

MERGE (s4:Speaker {id: '#RuthJones'})
ON CREATE SET s4.name = 'Ruth Jones', s4.sex = 'F', s4.parliament = 'House of Commons', s4.contributions = 1
MERGE (s4)-[:MEMBER_OF]->(p1)
MERGE (s4)-[:PARTICIPATED_IN]->(d)

MERGE (s5:Speaker {id: '#SarahDines'})
ON CREATE SET s5.name = 'Sarah Dines', s5.sex = 'F', s5.parliament = 'House of Commons', s5.contributions = 1
MERGE (s5)-[:MEMBER_OF]->(p2)
MERGE (s5)-[:PARTICIPATED_IN]->(d)

MERGE (s6:Speaker {id: '#MatthewWestern'})
ON CREATE SET s6.name = 'Matthew Western', s6.sex = 'M', s6.parliament = 'House of Commons', s6.contributions = 1
MERGE (s6)-[:MEMBER_OF]->(p1)
MERGE (s6)-[:PARTICIPATED_IN]->(d)

MERGE (s7:Speaker {id: '#SaraBritcliffe'})
ON CREATE SET s7.name = 'Sara Britcliffe', s7.sex = 'F', s7.parliament = 'House of Commons', s7.contributions = 1
MERGE (s7)-[:MEMBER_OF]->(p2)
MERGE (s7)-[:PARTICIPATED_IN]->(d)

MERGE (s8:Speaker {id: '#PatriciaGibson'})
ON CREATE SET s8.name = 'Patricia Gibson', s8.sex = 'F', s8.parliament = 'House of Commons', s8.contributions = 1
MERGE (s8)-[:MEMBER_OF]->(p3)
MERGE (s8)-[:PARTICIPATED_IN]->(d)

MERGE (s9:Speaker {id: '#ImranAhmadKhan'})
ON CREATE SET s9.name = 'Imran Ahmad Khan', s9.sex = 'M', s9.parliament = 'House of Commons', s9.contributions = 1
MERGE (s9)-[:MEMBER_OF]->(p2)
MERGE (s9)-[:PARTICIPATED_IN]->(d)

MERGE (s10:Speaker {id: '#AlexanderCarmichael'})
ON CREATE SET s10.name = 'Alexander Carmichael', s10.sex = 'M', s10.parliament = 'House of Commons', s10.contributions = 1
MERGE (s10)-[:MEMBER_OF]->(p0)
MERGE (s10)-[:PARTICIPATED_IN]->(d)

MERGE (s11:Speaker {id: '#AntonyHigginbotham'})
ON CREATE SET s11.name = 'Antony Higginbotham', s11.sex = 'M', s11.parliament = 'House of Commons', s11.contributions = 1
MERGE (s11)-[:MEMBER_OF]->(p2)
MERGE (s11)-[:PARTICIPATED_IN]->(d)

MERGE (s12:Speaker {id: '#MaryTwist'})
ON CREATE SET s12.name = 'Mary Twist', s12.sex = 'F', s12.parliament = 'House of Commons', s12.contributions = 1
MERGE (s12)-[:MEMBER_OF]->(p1)
MERGE (s12)-[:PARTICIPATED_IN]->(d)

MERGE (s13:Speaker {id: '#AlexanderStafford'})
ON CREATE SET s13.name = 'Alexander Stafford', s13.sex = 'M', s13.parliament = 'House of Commons', s13.contributions = 1
MERGE (s13)-[:MEMBER_OF]->(p2)
MERGE (s13)-[:PARTICIPATED_IN]->(d)

MERGE (s14:Speaker {id: '#RachaelMaskell'})
ON CREATE SET s14.name = 'Rachael Maskell', s14.sex = 'F', s14.parliament = 'House of Commons', s14.contributions = 1
MERGE (s14)-[:MEMBER_OF]->(p1)
MERGE (s14)-[:PARTICIPATED_IN]->(d)

MERGE (s15:Speaker {id: '#JamesSunderland'})
ON CREATE SET s15.name = 'James Sunderland', s15.sex = 'M', s15.parliament = 'House of Commons', s15.contributions = 1
MERGE (s15)-[:MEMBER_OF]->(p2)
MERGE (s15)-[:PARTICIPATED_IN]->(d)

MERGE (s16:Speaker {id: '#FlorenceEshalomi'})
ON CREATE SET s16.name = 'Florence Eshalomi', s16.sex = 'F', s16.parliament = 'House of Commons', s16.contributions = 1
MERGE (s16)-[:MEMBER_OF]->(p1)
MERGE (s16)-[:PARTICIPATED_IN]->(d)

MERGE (s17:Speaker {id: '#PeterBone'})
ON CREATE SET s17.name = 'Peter Bone', s17.sex = 'M', s17.parliament = 'House of Commons', s17.contributions = 1
MERGE (s17)-[:MEMBER_OF]->(p2)
MERGE (s17)-[:PARTICIPATED_IN]->(d)

MERGE (s18:Speaker {id: '#AlynSmith'})
ON CREATE SET s18.name = 'Alyn Smith', s18.sex = 'M', s18.parliament = 'House of Commons', s18.contributions = 1
MERGE (s18)-[:MEMBER_OF]->(p3)
MERGE (s18)-[:PARTICIPATED_IN]->(d)

MERGE (s19:Speaker {id: '#MarcoLonghi'})
ON CREATE SET s19.name = 'Marco Longhi', s19.sex = 'M', s19.parliament = 'House of Commons', s19.contributions = 1
MERGE (s19)-[:MEMBER_OF]->(p2)
MERGE (s19)-[:PARTICIPATED_IN]->(d)

MERGE (s20:Speaker {id: '#StellaCreasy'})
ON CREATE SET s20.name = 'Stella Creasy', s20.sex = 'F', s20.parliament = 'House of Commons', s20.contributions = 1
MERGE (s20)-[:MEMBER_OF]->(p1)
MERGE (s20)-[:PARTICIPATED_IN]->(d)

MERGE (s21:Speaker {id: '#AndrewGriffith'})
ON CREATE SET s21.name = 'Andrew Griffith', s21.sex = 'M', s21.parliament = 'House of Commons', s21.contributions = 1
MERGE (s21)-[:MEMBER_OF]->(p2)
MERGE (s21)-[:PARTICIPATED_IN]->(d)

MERGE (s22:Speaker {id: '#ZarahSultana'})
ON CREATE SET s22.name = 'Zarah Sultana', s22.sex = 'F', s22.parliament = 'House of Commons', s22.contributions = 1
MERGE (s22)-[:MEMBER_OF]->(p1)
MERGE (s22)-[:PARTICIPATED_IN]->(d)

MERGE (s23:Speaker {id: '#ScottBenton'})
ON CREATE SET s23.name = 'Scott Benton', s23.sex = 'M', s23.parliament = 'House of Commons', s23.contributions = 1
MERGE (s23)-[:MEMBER_OF]->(p2)
MERGE (s23)-[:PARTICIPATED_IN]->(d)

MERGE (s24:Speaker {id: '#RichardThomson'})
ON CREATE SET s24.name = 'Richard Thomson', s24.sex = 'M', s24.parliament = 'House of Commons', s24.contributions = 1
MERGE (s24)-[:MEMBER_OF]->(p3)
MERGE (s24)-[:PARTICIPATED_IN]->(d)

MERGE (s25:Speaker {id: '#JohnHowell'})
ON CREATE SET s25.name = 'John Howell', s25.sex = 'M', s25.parliament = 'House of Commons', s25.contributions = 1
MERGE (s25)-[:MEMBER_OF]->(p2)
MERGE (s25)-[:PARTICIPATED_IN]->(d)

MERGE (s26:Speaker {id: '#TanmanjeetDhesi'})
ON CREATE SET s26.name = 'Tanmanjeet Dhesi', s26.sex = 'M', s26.parliament = 'House of Commons', s26.contributions = 1
MERGE (s26)-[:MEMBER_OF]->(p1)
MERGE (s26)-[:PARTICIPATED_IN]->(d)

MERGE (s27:Speaker {id: '#AndrewMurrison'})
ON CREATE SET s27.name = 'Andrew Murrison', s27.sex = 'M', s27.parliament = 'House of Commons', s27.contributions = 1
MERGE (s27)-[:MEMBER_OF]->(p2)
MERGE (s27)-[:PARTICIPATED_IN]->(d)

MERGE (s28:Speaker {id: '#JohnCryer'})
ON CREATE SET s28.name = 'John Cryer', s28.sex = 'M', s28.parliament = 'House of Commons', s28.contributions = 1
MERGE (s28)-[:MEMBER_OF]->(p1)
MERGE (s28)-[:PARTICIPATED_IN]->(d)

MERGE (s29:Speaker {id: '#BrendanOHara'})
ON CREATE SET s29.name = 'Brendan O Hara', s29.sex = 'M', s29.parliament = 'House of Commons', s29.contributions = 1
MERGE (s29)-[:MEMBER_OF]->(p3)
MERGE (s29)-[:PARTICIPATED_IN]->(d)

MERGE (s30:Speaker {id: '#RobertBlackman'})
ON CREATE SET s30.name = 'Robert Blackman', s30.sex = 'M', s30.parliament = 'House of Commons', s30.contributions = 1
MERGE (s30)-[:MEMBER_OF]->(p2)
MERGE (s30)-[:PARTICIPATED_IN]->(d)

MERGE (s31:Speaker {id: '#CliveEfford'})
ON CREATE SET s31.name = 'Clive Efford', s31.sex = 'M', s31.parliament = 'House of Commons', s31.contributions = 1
MERGE (s31)-[:MEMBER_OF]->(p1)
MERGE (s31)-[:PARTICIPATED_IN]->(d)

MERGE (s32:Speaker {id: '#ChristopherStephens'})
ON CREATE SET s32.name = 'Christopher Stephens', s32.sex = 'M', s32.parliament = 'House of Commons', s32.contributions = 1
MERGE (s32)-[:MEMBER_OF]->(p3)
MERGE (s32)-[:PARTICIPATED_IN]->(d)

MERGE (s33:Speaker {id: '#HarriettBaldwin'})
ON CREATE SET s33.name = 'Harriett Baldwin', s33.sex = 'F', s33.parliament = 'House of Commons', s33.contributions = 1
MERGE (s33)-[:MEMBER_OF]->(p2)
MERGE (s33)-[:PARTICIPATED_IN]->(d)

MERGE (s34:Speaker {id: '#StephenDoughty'})
ON CREATE SET s34.name = 'Stephen Doughty', s34.sex = 'M', s34.parliament = 'House of Commons', s34.contributions = 1
MERGE (s34)-[:MEMBER_OF]->(p1)
MERGE (s34)-[:PARTICIPATED_IN]->(d)

MERGE (s35:Speaker {id: '#GaganMohindra'})
ON CREATE SET s35.name = 'Gagan Mohindra', s35.sex = 'M', s35.parliament = 'House of Commons', s35.contributions = 1
MERGE (s35)-[:MEMBER_OF]->(p2)
MERGE (s35)-[:PARTICIPATED_IN]->(d)

MERGE (s36:Speaker {id: '#ChristineJardine'})
ON CREATE SET s36.name = 'Christine Jardine', s36.sex = 'F', s36.parliament = 'House of Commons', s36.contributions = 1
MERGE (s36)-[:MEMBER_OF]->(p0)
MERGE (s36)-[:PARTICIPATED_IN]->(d)

MERGE (s37:Speaker {id: '#RobertStewart'})
ON CREATE SET s37.name = 'Robert Stewart', s37.sex = 'M', s37.parliament = 'House of Commons', s37.contributions = 1
MERGE (s37)-[:MEMBER_OF]->(p2)
MERGE (s37)-[:PARTICIPATED_IN]->(d)

MERGE (s38:Speaker {id: '#DavidDoogan'})
ON CREATE SET s38.name = 'David Doogan', s38.sex = 'M', s38.parliament = 'House of Commons', s38.contributions = 1
MERGE (s38)-[:MEMBER_OF]->(p3)
MERGE (s38)-[:PARTICIPATED_IN]->(d)

MERGE (s39:Speaker {id: '#HywelWilliams'})
ON CREATE SET s39.name = 'Hywel Williams', s39.sex = 'M', s39.parliament = 'House of Commons', s39.contributions = 1
MERGE (s39)-[:MEMBER_OF]->(p4)
MERGE (s39)-[:PARTICIPATED_IN]->(d)

MERGE (s40:Speaker {id: '#LindsayHoyle'})
ON CREATE SET s40.name = 'Lindsay Hoyle', s40.sex = 'M', s40.parliament = 'House of Commons', s40.contributions = 1
MERGE (s40)-[:MEMBER_OF]->(p1)
MERGE (s40)-[:PARTICIPATED_IN]->(d);