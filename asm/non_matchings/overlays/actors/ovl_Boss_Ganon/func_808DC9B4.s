glabel func_808DC9B4
/* 06144 808DC9B4 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 06148 808DC9B8 AFBF005C */  sw      $ra, 0x005C($sp)
/* 0614C 808DC9BC AFB30058 */  sw      $s3, 0x0058($sp)
/* 06150 808DC9C0 AFB20054 */  sw      $s2, 0x0054($sp)
/* 06154 808DC9C4 AFB10050 */  sw      $s1, 0x0050($sp)
/* 06158 808DC9C8 AFB0004C */  sw      $s0, 0x004C($sp)
/* 0615C 808DC9CC F7B80040 */  sdc1    $f24, 0x0040($sp)
/* 06160 808DC9D0 F7B60038 */  sdc1    $f22, 0x0038($sp)
/* 06164 808DC9D4 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 06168 808DC9D8 8C8E0194 */  lw      $t6, 0x0194($a0)           ## 00000194
/* 0616C 808DC9DC 3C02808E */  lui     $v0, %hi(func_808DCB7C)    ## $v0 = 808E0000
/* 06170 808DC9E0 2442CB7C */  addiu   $v0, $v0, %lo(func_808DCB7C) ## $v0 = 808DCB7C
/* 06174 808DC9E4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 06178 808DC9E8 104E005A */  beq     $v0, $t6, .L808DCB54
/* 0617C 808DC9EC 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 06180 808DC9F0 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 06184 808DC9F4 0C235C4B */  jal     func_808D712C
/* 06188 808DC9F8 AFA20060 */  sw      $v0, 0x0060($sp)
/* 0618C 808DC9FC 3C100600 */  lui     $s0, %hi(D_06004884)                ## $s0 = 06000000
/* 06190 808DCA00 26104884 */  addiu   $s0, $s0, %lo(D_06004884)           ## $s0 = 06004884
/* 06194 808DCA04 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06198 808DCA08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06004884
/* 0619C 808DCA0C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 061A0 808DCA10 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 061A4 808DCA14 26240150 */  addiu   $a0, $s1, 0x0150           ## $a0 = 00000150
/* 061A8 808DCA18 468021A0 */  cvt.s.w $f6, $f4
/* 061AC 808DCA1C 4406C000 */  mfc1    $a2, $f24
/* 061B0 808DCA20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06004884
/* 061B4 808DCA24 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 061B8 808DCA28 E62601CC */  swc1    $f6, 0x01CC($s1)           ## 000001CC
/* 061BC 808DCA2C 3C028090 */  lui     $v0, %hi(D_808F93C0)       ## $v0 = 80900000
/* 061C0 808DCA30 244293C0 */  addiu   $v0, $v0, %lo(D_808F93C0)  ## $v0 = 808F93C0
/* 061C4 808DCA34 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 808F93C0
/* 061C8 808DCA38 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 061CC 808DCA3C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 061D0 808DCA40 44818000 */  mtc1    $at, $f16                  ## $f16 = -4.00
/* 061D4 808DCA44 E5E816C0 */  swc1    $f8, 0x16C0($t7)           ## 000016C0
/* 061D8 808DCA48 8C430000 */  lw      $v1, 0x0000($v0)           ## 808F93C0
/* 061DC 808DCA4C 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 061E0 808DCA50 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.75
/* 061E4 808DCA54 C46A16C0 */  lwc1    $f10, 0x16C0($v1)          ## 000016C0
/* 061E8 808DCA58 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 061EC 808DCA5C 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 061F0 808DCA60 E46A16BC */  swc1    $f10, 0x16BC($v1)          ## 000016BC
/* 061F4 808DCA64 8FB80060 */  lw      $t8, 0x0060($sp)
/* 061F8 808DCA68 E638005C */  swc1    $f24, 0x005C($s1)          ## 0000005C
/* 061FC 808DCA6C E6380060 */  swc1    $f24, 0x0060($s1)          ## 00000060
/* 06200 808DCA70 E6380064 */  swc1    $f24, 0x0064($s1)          ## 00000064
/* 06204 808DCA74 A62001C2 */  sh      $zero, 0x01C2($s1)         ## 000001C2
/* 06208 808DCA78 AE380194 */  sw      $t8, 0x0194($s1)           ## 00000194
/* 0620C 808DCA7C 8C590000 */  lw      $t9, 0x0000($v0)           ## 808F93C0
/* 06210 808DCA80 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 06214 808DCA84 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 06218 808DCA88 E73016B0 */  swc1    $f16, 0x16B0($t9)          ## 000016B0
/* 0621C 808DCA8C 8C480000 */  lw      $t0, 0x0000($v0)           ## 808F93C0
/* 06220 808DCA90 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 06224 808DCA94 4481B000 */  mtc1    $at, $f22                  ## $f22 = 32768.00
/* 06228 808DCA98 E51216B4 */  swc1    $f18, 0x16B4($t0)          ## 000016B4
/* 0622C 808DCA9C 8C490000 */  lw      $t1, 0x0000($v0)           ## 808F93C0
/* 06230 808DCAA0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 06234 808DCAA4 26721C24 */  addiu   $s2, $s3, 0x1C24           ## $s2 = 00001C24
/* 06238 808DCAA8 E52416B8 */  swc1    $f4, 0x16B8($t1)           ## 000016B8
/* 0623C 808DCAAC 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 808F93C0
/* 06240 808DCAB0 E54616D0 */  swc1    $f6, 0x16D0($t2)           ## 000016D0
.L808DCAB4:
/* 06244 808DCAB4 0C00CFC8 */  jal     Rand_CenteredFloat

/* 06248 808DCAB8 4600B306 */  mov.s   $f12, $f22
/* 0624C 808DCABC 46000506 */  mov.s   $f20, $f0
/* 06250 808DCAC0 0C00CFC8 */  jal     Rand_CenteredFloat

/* 06254 808DCAC4 4600B306 */  mov.s   $f12, $f22
/* 06258 808DCAC8 C62801FC */  lwc1    $f8, 0x01FC($s1)           ## 000001FC
/* 0625C 808DCACC 4600A48D */  trunc.w.s $f18, $f20
/* 06260 808DCAD0 260900C8 */  addiu   $t1, $s0, 0x00C8           ## $t1 = 000000C8
/* 06264 808DCAD4 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 06268 808DCAD8 C62A0200 */  lwc1    $f10, 0x0200($s1)          ## 00000200
/* 0626C 808DCADC 4600010D */  trunc.w.s $f4, $f0
/* 06270 808DCAE0 440C9000 */  mfc1    $t4, $f18
/* 06274 808DCAE4 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 06278 808DCAE8 C6300204 */  lwc1    $f16, 0x0204($s1)          ## 00000204
/* 0627C 808DCAEC 440E2000 */  mfc1    $t6, $f4
/* 06280 808DCAF0 AFAC001C */  sw      $t4, 0x001C($sp)
/* 06284 808DCAF4 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 06288 808DCAF8 8639008A */  lh      $t9, 0x008A($s1)           ## 0000008A
/* 0628C 808DCAFC 000E7C00 */  sll     $t7, $t6, 16
/* 06290 808DCB00 000FC403 */  sra     $t8, $t7, 16
/* 06294 808DCB04 03194021 */  addu    $t0, $t8, $t9
/* 06298 808DCB08 AFA80020 */  sw      $t0, 0x0020($sp)
/* 0629C 808DCB0C AFA90028 */  sw      $t1, 0x0028($sp)
/* 062A0 808DCB10 AFA00024 */  sw      $zero, 0x0024($sp)
/* 062A4 808DCB14 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00001C24
/* 062A8 808DCB18 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 062AC 808DCB1C 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 062B0 808DCB20 0C00C916 */  jal     Actor_SpawnAsChild

/* 062B4 808DCB24 240700E8 */  addiu   $a3, $zero, 0x00E8         ## $a3 = 000000E8
/* 062B8 808DCB28 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 062BC 808DCB2C 00108400 */  sll     $s0, $s0, 16
/* 062C0 808DCB30 00108403 */  sra     $s0, $s0, 16
/* 062C4 808DCB34 2A01000A */  slti    $at, $s0, 0x000A
/* 062C8 808DCB38 1420FFDE */  bne     $at, $zero, .L808DCAB4
/* 062CC 808DCB3C 00000000 */  nop
/* 062D0 808DCB40 A62001A4 */  sh      $zero, 0x01A4($s1)         ## 000001A4
/* 062D4 808DCB44 E6380288 */  swc1    $f24, 0x0288($s1)          ## 00000288
/* 062D8 808DCB48 E6380290 */  swc1    $f24, 0x0290($s1)          ## 00000290
/* 062DC 808DCB4C E6380284 */  swc1    $f24, 0x0284($s1)          ## 00000284
/* 062E0 808DCB50 E638028C */  swc1    $f24, 0x028C($s1)          ## 0000028C
.L808DCB54:
/* 062E4 808DCB54 8FBF005C */  lw      $ra, 0x005C($sp)
/* 062E8 808DCB58 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 062EC 808DCB5C D7B60038 */  ldc1    $f22, 0x0038($sp)
/* 062F0 808DCB60 D7B80040 */  ldc1    $f24, 0x0040($sp)
/* 062F4 808DCB64 8FB0004C */  lw      $s0, 0x004C($sp)
/* 062F8 808DCB68 8FB10050 */  lw      $s1, 0x0050($sp)
/* 062FC 808DCB6C 8FB20054 */  lw      $s2, 0x0054($sp)
/* 06300 808DCB70 8FB30058 */  lw      $s3, 0x0058($sp)
/* 06304 808DCB74 03E00008 */  jr      $ra
/* 06308 808DCB78 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
