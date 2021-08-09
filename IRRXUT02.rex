00010000/* REXX */
00020000/* Extract user info and tells you what is available */
00030000theVar  = "irrx"
00040000theProfile = 'IBMUSER'
00050000theClass = 'USER'
00060000irrRC = IRRXUTIL('EXTRACT',theClass,theProfile,theVar,"",'FALSE')
00070000/*say irrRC*/
00080000say "Class:   " irrx.CLASS
00090000say "Profile: " irrx.PROFILE
00100000say "There are" irrx.0 "segments"
00110000do s = 1 to irrx.0
00120000 seg = irrx.s
00130000 say "Segment info:" seg
00140000    do t = 1 to irrx.seg.0
00150000       stem = irrx.seg.t
00160000        do i = 1 to irrx.seg.stem.0
00170000           say seg ":" irrx.seg.t ":" irrx.seg.stem.i
00180000        end
00190000    end
00200000end
00210000exit
