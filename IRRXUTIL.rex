00010000/* REXX                                               #COMMENT       */
00020000/* <#COMMENT> Initial REXX program comments                        - */
00030000/* #comment: This is a template for initial REXX program comments and*/
00040000/*           documentation.                                          */
00050000/*                                                                   */
00060000/* Description:                                                      */
00070000/*                                                                   */
00080000/* Parameters:                                                       */
00090000/*                                                                   */
00100000/* Return Codes:                                                     */
00110000/*                                                                   */
00120000/* Changes:                                                          */
00130000/* Date       Name     Comment                                       */
00140000/* ---------- -------- --------------------------------------------- */
00150000/* 2012-07-17 RWSUHR   Setup initial member                          */
00160000/* -----------------------------------------------------------------
00170000----+----1----+----2----+----3----+----4----+----5----+----6----+----7-
00180000                                                                     */
00190000parse source info
00200017 last_update = '2021-06-04 14:28:29'              /* ISRINIT 14:28:29 */
00210017 pgm_version = 'v=01.17'                          /* ISRINIT 14:28:29 */
00220017 pgm_person  = 'SFRH48'                           /* ISRINIT 14:28:29 */
00230017 change_sysid= 'IPO1'                             /* ISRINIT 14:28:29 */
00240000/*                                                                   */
00250010"CLEAR"
00260016    xtrc = trace("?I") /*                                                               */
00270015myrc = irrxutil("EXTRACT","DATASET","SFRH48,*,**","RACF",substr(pgm_person,1,3),"FALSE") 
00280004say myrc
00290017if (word(myrc,1)>0) then do
00300005  Say "Profile name: "|| RACF.profile
00310005  if RACF.BASE.ACLCNT.REPEATCOUNT > 0 then do
00320005    Do a=1 to RACF.BASE.ACLCNT.REPEATCOUNT
00330005      Say " "|| RACF.BASE.ACLID.a ||":"|| RACF.BASE.ACLACS.a
00340005      End
00350005    End
00360003  End
