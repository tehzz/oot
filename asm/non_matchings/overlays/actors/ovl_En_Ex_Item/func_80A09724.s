glabel func_80A09724
/* 00884 80A09724 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00888 80A09728 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0088C 80A0972C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00890 80A09730 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00894 80A09734 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00898 80A09738 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0089C 80A0973C 3C053F4C */  lui     $a1, 0x3F4C                ## $a1 = 3F4C0000
/* 008A0 80A09740 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 008A4 80A09744 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 008A8 80A09748 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 008AC 80A0974C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 008B0 80A09750 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3F4CCCCD
/* 008B4 80A09754 0C01E107 */  jal     Math_ApproachF
              
/* 008B8 80A09758 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 008BC 80A0975C 860A0158 */  lh      $t2, 0x0158($s0)           ## 00000158
/* 008C0 80A09760 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 008C4 80A09764 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 008C8 80A09768 1540000F */  bne     $t2, $zero, .L80A097A8     
/* 008CC 80A0976C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 008D0 80A09770 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 008D4 80A09774 860D015E */  lh      $t5, 0x015E($s0)           ## 0000015E
/* 008D8 80A09778 256C1000 */  addiu   $t4, $t3, 0x1000           ## $t4 = 00001000
/* 008DC 80A0977C 15A0000D */  bne     $t5, $zero, .L80A097B4     
/* 008E0 80A09780 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 008E4 80A09784 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 008E8 80A09788 34019000 */  ori     $at, $zero, 0x9000         ## $at = 00009000
/* 008EC 80A0978C 31CFFFFF */  andi    $t7, $t6, 0xFFFF           ## $t7 = 00000000
/* 008F0 80A09790 55E10009 */  bnel    $t7, $at, .L80A097B8       
/* 008F4 80A09794 8608015A */  lh      $t0, 0x015A($s0)           ## 0000015A
/* 008F8 80A09798 86180158 */  lh      $t8, 0x0158($s0)           ## 00000158
/* 008FC 80A0979C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00900 80A097A0 10000004 */  beq     $zero, $zero, .L80A097B4   
/* 00904 80A097A4 A6190158 */  sh      $t9, 0x0158($s0)           ## 00000158
.L80A097A8:
/* 00908 80A097A8 24071000 */  addiu   $a3, $zero, 0x1000         ## $a3 = 00001000
/* 0090C 80A097AC 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00910 80A097B0 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80A097B4:
/* 00914 80A097B4 8608015A */  lh      $t0, 0x015A($s0)           ## 0000015A
.L80A097B8:
/* 00918 80A097B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0091C 80A097BC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00920 80A097C0 1100004E */  beq     $t0, $zero, .L80A098FC     
/* 00924 80A097C4 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00928 80A097C8 8609015E */  lh      $t1, 0x015E($s0)           ## 0000015E
/* 0092C 80A097CC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00930 80A097D0 51200065 */  beql    $t1, $zero, .L80A09968     
/* 00934 80A097D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00938 80A097D8 C62C00E0 */  lwc1    $f12, 0x00E0($s1)          ## 000000E0
/* 0093C 80A097DC C62400EC */  lwc1    $f4, 0x00EC($s1)           ## 000000EC
/* 00940 80A097E0 C62800F0 */  lwc1    $f8, 0x00F0($s1)           ## 000000F0
/* 00944 80A097E4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00948 80A097E8 460C2081 */  sub.s   $f2, $f4, $f12             
/* 0094C 80A097EC C62400E8 */  lwc1    $f4, 0x00E8($s1)           ## 000000E8
/* 00950 80A097F0 C63000E4 */  lwc1    $f16, 0x00E4($s1)          ## 000000E4
/* 00954 80A097F4 46064281 */  sub.s   $f10, $f8, $f6             
/* 00958 80A097F8 E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 0095C 80A097FC C62800F4 */  lwc1    $f8, 0x00F4($s1)           ## 000000F4
/* 00960 80A09800 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00964 80A09804 46105381 */  sub.s   $f14, $f10, $f16           
/* 00968 80A09808 C7A4003C */  lwc1    $f4, 0x003C($sp)           
/* 0096C 80A0980C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00970 80A09810 46064280 */  add.s   $f10, $f8, $f6             
/* 00974 80A09814 46021202 */  mul.s   $f8, $f2, $f2              
/* 00978 80A09818 00000000 */  nop
/* 0097C 80A0981C 460E7182 */  mul.s   $f6, $f14, $f14            
/* 00980 80A09820 46045481 */  sub.s   $f18, $f10, $f4            
/* 00984 80A09824 46064280 */  add.s   $f10, $f8, $f6             
/* 00988 80A09828 46129202 */  mul.s   $f8, $f18, $f18            
/* 0098C 80A0982C 46085000 */  add.s   $f0, $f10, $f8             
/* 00990 80A09830 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 00994 80A09834 46000004 */  sqrt.s  $f0, $f0                   
/* 00998 80A09838 46009183 */  div.s   $f6, $f18, $f0             
/* 0099C 80A0983C 460A3202 */  mul.s   $f8, $f6, $f10             
/* 009A0 80A09840 46001283 */  div.s   $f10, $f2, $f0             
/* 009A4 80A09844 E7A80044 */  swc1    $f8, 0x0044($sp)           
/* 009A8 80A09848 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 009AC 80A0984C E7A60038 */  swc1    $f6, 0x0038($sp)           
/* 009B0 80A09850 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 009B4 80A09854 00000000 */  nop
/* 009B8 80A09858 46065282 */  mul.s   $f10, $f10, $f6            
/* 009BC 80A0985C 460A6180 */  add.s   $f6, $f12, $f10            
/* 009C0 80A09860 C7AA0038 */  lwc1    $f10, 0x0038($sp)          
/* 009C4 80A09864 460A3081 */  sub.s   $f2, $f6, $f10             
/* 009C8 80A09868 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 009CC 80A0986C E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 009D0 80A09870 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 009D4 80A09874 E7A60034 */  swc1    $f6, 0x0034($sp)           
/* 009D8 80A09878 46007183 */  div.s   $f6, $f14, $f0             
/* 009DC 80A0987C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 009E0 80A09880 C60C002C */  lwc1    $f12, 0x002C($s0)          ## 0000002C
/* 009E4 80A09884 46043182 */  mul.s   $f6, $f6, $f4              
/* 009E8 80A09888 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 009EC 80A0988C 00000000 */  nop
/* 009F0 80A09890 46048101 */  sub.s   $f4, $f16, $f4             
/* 009F4 80A09894 46062100 */  add.s   $f4, $f4, $f6              
/* 009F8 80A09898 C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 009FC 80A0989C 46062381 */  sub.s   $f14, $f4, $f6             
/* 00A00 80A098A0 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00A04 80A098A4 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 00A08 80A098A8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00A0C 80A098AC 46062100 */  add.s   $f4, $f4, $f6              
/* 00A10 80A098B0 46082180 */  add.s   $f6, $f4, $f8              
/* 00A14 80A098B4 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 00A18 80A098B8 46001103 */  div.s   $f4, $f2, $f0              
/* 00A1C 80A098BC 460C3481 */  sub.s   $f18, $f6, $f12            
/* 00A20 80A098C0 46082182 */  mul.s   $f6, $f4, $f8              
/* 00A24 80A098C4 46007203 */  div.s   $f8, $f14, $f0             
/* 00A28 80A098C8 46065100 */  add.s   $f4, $f10, $f6             
/* 00A2C 80A098CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 00A30 80A098D0 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 00A34 80A098D4 C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 00A38 80A098D8 460A4182 */  mul.s   $f6, $f8, $f10             
/* 00A3C 80A098DC 46009283 */  div.s   $f10, $f18, $f0            
/* 00A40 80A098E0 46062200 */  add.s   $f8, $f4, $f6              
/* 00A44 80A098E4 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00A48 80A098E8 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00A4C 80A098EC 46045182 */  mul.s   $f6, $f10, $f4             
/* 00A50 80A098F0 46066200 */  add.s   $f8, $f12, $f6             
/* 00A54 80A098F4 1000001B */  beq     $zero, $zero, .L80A09964   
/* 00A58 80A098F8 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
.L80A098FC:
/* 00A5C 80A098FC 0C00B7D5 */  jal     func_8002DF54              
/* 00A60 80A09900 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00A64 80A09904 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 00A68 80A09908 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xa0)
/* 00A6C 80A0990C 3C0B8012 */  lui     $t3, %hi(gUpgradeMasks+0x14)
/* 00A70 80A09910 8D6B71C4 */  lw      $t3, %lo(gUpgradeMasks+0x14)($t3)
/* 00A74 80A09914 8D4AE700 */  lw      $t2, %lo(gSaveContext+0xa0)($t2)
/* 00A78 80A09918 3C0D8012 */  lui     $t5, %hi(gUpgradeShifts+5)
/* 00A7C 80A0991C 91AD71F9 */  lbu     $t5, %lo(gUpgradeShifts+5)($t5)
/* 00A80 80A09920 014B6024 */  and     $t4, $t2, $t3              
/* 00A84 80A09924 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A88 80A09928 01AC7007 */  srav    $t6, $t4, $t5              
/* 00A8C 80A0992C 15C10003 */  bne     $t6, $at, .L80A0993C       
/* 00A90 80A09930 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A94 80A09934 10000002 */  beq     $zero, $zero, .L80A09940   
/* 00A98 80A09938 24060060 */  addiu   $a2, $zero, 0x0060         ## $a2 = 00000060
.L80A0993C:
/* 00A9C 80A0993C 2406007B */  addiu   $a2, $zero, 0x007B         ## $a2 = 0000007B
.L80A09940:
/* 00AA0 80A09940 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00AA4 80A09944 44815000 */  mtc1    $at, $f10                  ## $f10 = 1000.00
/* 00AA8 80A09948 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00AAC 80A0994C 3C0744FA */  lui     $a3, 0x44FA                ## $a3 = 44FA0000
/* 00AB0 80A09950 0C00BD0D */  jal     func_8002F434              
/* 00AB4 80A09954 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00AB8 80A09958 3C0F80A1 */  lui     $t7, %hi(func_80A09978)    ## $t7 = 80A10000
/* 00ABC 80A0995C 25EF9978 */  addiu   $t7, $t7, %lo(func_80A09978) ## $t7 = 80A09978
/* 00AC0 80A09960 AE0F014C */  sw      $t7, 0x014C($s0)           ## 0000014C
.L80A09964:
/* 00AC4 80A09964 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A09968:
/* 00AC8 80A09968 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00ACC 80A0996C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00AD0 80A09970 03E00008 */  jr      $ra                        
/* 00AD4 80A09974 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
