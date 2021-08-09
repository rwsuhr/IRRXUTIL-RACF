00010000/* REXX */
00020000/* Basic IRRXUTIL example to pull in class and profile and spit out   */
00030000/* basic RACF info.                                                   */
00040000say "Full class name?"
00050000parse upper pull class
00060000say "Profile?"
00070000parse upper pull profile
00080000myrc=IRRXUTIL("EXTRACT",class,profile,"RACF","","FALSE")
00090000/* error handling */
00100000if (word(myrc,1)<>0) then do
00110000   say "MYRC="myrc
00120000   say "An error occurred - probably no profile"
00130000   exit 1
00140000end
00150000/* output */
00160000say "Class: "RACF.CLASS
00170000say "Profile: "RACF.PROFILE
00180000say "Owner: "RACF.BASE.OWNER.1
00190000say "UACC: "RACF.BASE.UACC.1
00200000Say "ACL:"
00210000do a=1 to RACF.BASE.ACLCNT.REPEATCOUNT
00220000Say " "||RACF.BASE.ACLID.a||":"||RACF.BASE.ACLACS.a
00230000end
