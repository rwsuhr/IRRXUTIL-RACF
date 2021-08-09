00010000/* REXX */
00020000/* XLISTUSR but without using ISPF tables */
00030000parse upper pull profile
00040000if profile="" then profile="IBMUSER"
00050000/*-------------------------------------------------------------------*/
00060000/* Use IRRXUTIL to extract the user ID into the stem named "USR".    */
00070000/*-------------------------------------------------------------------*/
00080000myrc=IRRXUTIL("EXTRACT","USER",profile,"USR")
00090000say ""
00100000if (word(myrc,1)<>0) then do
00110000   say "MYRC="myrc
00120000   say "An error occurred "
00130000   exit 1
00140000end
00150000/*-------------------------------------------------------------------*/
00160000/* Display the groups                                                */
00170000/*-------------------------------------------------------------------*/
00180000say profile "is connected to the following groups:"
00190000do i = 1 to USR.BASE.CONNECTS.REPEATCOUNT
00200000  say USR.BASE.CGROUP.i
00210000end
