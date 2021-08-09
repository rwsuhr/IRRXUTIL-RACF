00010000/* REXX */
00020000/* Extract the SETROPTS settings using IRRXUTIL and list stuff     */
00030000myrc=IRRXUTIL("EXTRACT","_SETROPTS","_SETROPTS","RES")
00040000if (word(myrc,1)<>0) then do
00050000   say "MYRC="myrc
00060000   say "An IRRXUTIL or R_admin error occurred "
00070000   exit 1
00080000end
00090000 
00100000do s = 1 to RES.BASE.0
00110000 setr = RES.BASE.s
00120000 say "SETROPTS section" setr "has" RES.BASE.setr.0 "entry/entries"
00130000 if RES.BASE.setr.0 = 0 then iterate
00140000    do t = 1 to RES.BASE.setr.0
00150000       stem = RES.BASE.setr.t
00160000       say setr stem
00170000    end
00180000end
