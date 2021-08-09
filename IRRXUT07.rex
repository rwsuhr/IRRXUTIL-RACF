00010000/* REXX */
00020000/* Go through class specified and list all profiles          */
00030000cls = 'SDSF'
00040000RACF.R_PROFILE = ' '
00050000RACF.R_GENERIC = 'FALSE' /* starts with specifics then generics */
00060000Do Forever
00070000myrc=IRRXUTIL("EXTRACTN",cls,RACF.R_PROFILE,"RACF","R_",RACF.R_GENERIC)
00080000  If (Word(myrc,1) <> 0) Then Do
00090000    Say myrc
00100000    Leave
00110000  End
00120000  Say RACF.R_PROFILE /* print profile name */
00130000End
