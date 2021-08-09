00010000/* REXX */
00020000/* ----------------------------------------------------------------- */
00030000/* - Extract the SETROPTS settings using IRRXUTIL and list ACTIVE    */
00040000/* - and AUDITED classes                                             */
00050000/* ----------------------------------------------------------------- */
00060000myrc=IRRXUTIL("EXTRACT","_SETROPTS","_SETROPTS","RES")
00070000if (word(myrc,1)<>0) then do
00080000   say "MYRC="myrc
00090000   say "An IRRXUTIL or R_admin error occurred "
00100000   exit 1
00110000end
00120000 
00130000do i = 1 to RES.BASE.AUDIT_CT.REPEATCOUNT /* find audited classes then*/
00140000  do j = 1 to RES.BASE.CLASSACT_CT.REPEATCOUNT /* find active classes */
00150000    if RES.BASE.CLASSACT.j = RES.BASE.AUDIT.i then do /* if in both...*/
00160000      say RES.BASE.AUDIT.i "is Active and Audited"
00170000    end
00180000  end
00190000end
