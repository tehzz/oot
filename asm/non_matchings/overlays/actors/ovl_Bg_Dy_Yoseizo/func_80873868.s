.late_rodata
glabel D_808756A4
    .float 1300.0

 .text
glabel func_80873868
/* 01038 80873868 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 0103C 8087386C AFBF003C */  sw      $ra, 0x003C($sp)
/* 01040 80873870 AFB00038 */  sw      $s0, 0x0038($sp)
/* 01044 80873874 AFA50064 */  sw      $a1, 0x0064($sp)
/* 01048 80873878 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 0104C 8087387C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01050 80873880 3C018087 */  lui     $at, %hi(D_808756A4)       ## $at = 80870000
/* 01054 80873884 AFAF005C */  sw      $t7, 0x005C($sp)
/* 01058 80873888 849802FC */  lh      $t8, 0x02FC($a0)           ## 000002FC
/* 0105C 8087388C C4820168 */  lwc1    $f2, 0x0168($a0)           ## 00000168
/* 01060 80873890 1300000E */  beq     $t8, $zero, .L808738CC
/* 01064 80873894 46001306 */  mov.s   $f12, $f2
/* 01068 80873898 C42E56A4 */  lwc1    $f14, %lo(D_808756A4)($at)
/* 0106C 8087389C C484032C */  lwc1    $f4, 0x032C($a0)           ## 0000032C
/* 01070 808738A0 460E1002 */  mul.s   $f0, $f2, $f14
/* 01074 808738A4 00000000 */  nop
/* 01078 808738A8 460E2182 */  mul.s   $f6, $f4, $f14
/* 0107C 808738AC E4800324 */  swc1    $f0, 0x0324($a0)           ## 00000324
/* 01080 808738B0 4600303E */  c.le.s  $f6, $f0
/* 01084 808738B4 00000000 */  nop
/* 01088 808738B8 45000004 */  bc1f    .L808738CC
/* 0108C 808738BC 00000000 */  nop
/* 01090 808738C0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01094 808738C4 00000000 */  nop
/* 01098 808738C8 E4880324 */  swc1    $f8, 0x0324($a0)           ## 00000324
.L808738CC:
/* 0109C 808738CC 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 010A0 808738D0 AFA40044 */  sw      $a0, 0x0044($sp)
/* 010A4 808738D4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 010A8 808738D8 E7AC0058 */  swc1    $f12, 0x0058($sp)
/* 010AC 808738DC C7AC0058 */  lwc1    $f12, 0x0058($sp)
/* 010B0 808738E0 C60A032C */  lwc1    $f10, 0x032C($s0)          ## 0000032C
/* 010B4 808738E4 460C503E */  c.le.s  $f10, $f12
/* 010B8 808738E8 00000000 */  nop
/* 010BC 808738EC 4502004F */  bc1fl   .L80873A2C
/* 010C0 808738F0 86020306 */  lh      $v0, 0x0306($s0)           ## 00000306
/* 010C4 808738F4 861902FC */  lh      $t9, 0x02FC($s0)           ## 000002FC
/* 010C8 808738F8 8FA90064 */  lw      $t1, 0x0064($sp)
/* 010CC 808738FC 5720004B */  bnel    $t9, $zero, .L80873A2C
/* 010D0 80873900 86020306 */  lh      $v0, 0x0306($s0)           ## 00000306
/* 010D4 80873904 852A00A4 */  lh      $t2, 0x00A4($t1)           ## 000000A4
/* 010D8 80873908 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 010DC 8087390C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 010E0 80873910 15410014 */  bne     $t2, $at, .L80873964
/* 010E4 80873914 00000000 */  nop
/* 010E8 80873918 3C040600 */  lui     $a0, %hi(D_06007CA8)                ## $a0 = 06000000
/* 010EC 8087391C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 010F0 80873920 24847CA8 */  addiu   $a0, $a0, %lo(D_06007CA8)           ## $a0 = 06007CA8
/* 010F4 80873924 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 010F8 80873928 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 010FC 8087392C 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 01100 80873930 46808020 */  cvt.s.w $f0, $f16
/* 01104 80873934 3C050600 */  lui     $a1, %hi(D_06007CA8)                ## $a1 = 06000000
/* 01108 80873938 24A57CA8 */  addiu   $a1, $a1, %lo(D_06007CA8)           ## $a1 = 06007CA8
/* 0110C 8087393C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01110 80873940 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01114 80873944 E600032C */  swc1    $f0, 0x032C($s0)           ## 0000032C
/* 01118 80873948 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0111C 8087394C E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01120 80873950 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01124 80873954 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01128 80873958 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 0112C 8087395C 10000012 */  beq     $zero, $zero, .L808739A8
/* 01130 80873960 860C02EA */  lh      $t4, 0x02EA($s0)           ## 000002EA
.L80873964:
/* 01134 80873964 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01138 80873968 24844344 */  addiu   $a0, $a0, 0x4344           ## $a0 = 00004344
/* 0113C 8087396C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01140 80873970 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01144 80873974 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 01148 80873978 46802020 */  cvt.s.w $f0, $f4
/* 0114C 8087397C 3C050600 */  lui     $a1, %hi(D_06004344)                ## $a1 = 06000000
/* 01150 80873980 24A54344 */  addiu   $a1, $a1, %lo(D_06004344)           ## $a1 = 06004344
/* 01154 80873984 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01158 80873988 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0115C 8087398C E600032C */  swc1    $f0, 0x032C($s0)           ## 0000032C
/* 01160 80873990 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01164 80873994 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 01168 80873998 8FA40044 */  lw      $a0, 0x0044($sp)
/* 0116C 8087399C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01170 808739A0 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 01174 808739A4 860C02EA */  lh      $t4, 0x02EA($s0)           ## 000002EA
.L808739A8:
/* 01178 808739A8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0117C 808739AC 240B0096 */  addiu   $t3, $zero, 0x0096         ## $t3 = 00000096
/* 01180 808739B0 A60B0302 */  sh      $t3, 0x0302($s0)           ## 00000302
/* 01184 808739B4 1580001C */  bne     $t4, $zero, .L80873A28
/* 01188 808739B8 A60802FC */  sh      $t0, 0x02FC($s0)           ## 000002FC
/* 0118C 808739BC 8FA60064 */  lw      $a2, 0x0064($sp)
/* 01190 808739C0 8FA2005C */  lw      $v0, 0x005C($sp)
/* 01194 808739C4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01198 808739C8 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 0119C 808739CC 84CD00A4 */  lh      $t5, 0x00A4($a2)           ## 000000A4
/* 011A0 808739D0 C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 011A4 808739D4 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 011A8 808739D8 C4400024 */  lwc1    $f0, 0x0024($v0)           ## 00000024
/* 011AC 808739DC C44C002C */  lwc1    $f12, 0x002C($v0)          ## 0000002C
/* 011B0 808739E0 15A10003 */  bne     $t5, $at, .L808739F0
/* 011B4 808739E4 460A4080 */  add.s   $f2, $f8, $f10
/* 011B8 808739E8 10000003 */  beq     $zero, $zero, .L808739F8
/* 011BC 808739EC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808739F0:
/* 011C0 808739F0 00081400 */  sll     $v0, $t0, 16
/* 011C4 808739F4 00021403 */  sra     $v0, $v0, 16
.L808739F8:
/* 011C8 808739F8 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 011CC 808739FC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 011D0 80873A00 24070184 */  addiu   $a3, $zero, 0x0184         ## $a3 = 00000184
/* 011D4 80873A04 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 011D8 80873A08 E7A20014 */  swc1    $f2, 0x0014($sp)
/* 011DC 80873A0C E7AC0018 */  swc1    $f12, 0x0018($sp)
/* 011E0 80873A10 AFA0001C */  sw      $zero, 0x001C($sp)
/* 011E4 80873A14 AFA00020 */  sw      $zero, 0x0020($sp)
/* 011E8 80873A18 AFA00024 */  sw      $zero, 0x0024($sp)
/* 011EC 80873A1C 0C00C916 */  jal     Actor_SpawnAsChild

/* 011F0 80873A20 AFA20028 */  sw      $v0, 0x0028($sp)
/* 011F4 80873A24 AE020340 */  sw      $v0, 0x0340($s0)           ## 00000340
.L80873A28:
/* 011F8 80873A28 86020306 */  lh      $v0, 0x0306($s0)           ## 00000306
.L80873A2C:
/* 011FC 80873A2C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01200 80873A30 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01204 80873A34 28410002 */  slti    $at, $v0, 0x0002
/* 01208 80873A38 14200002 */  bne     $at, $zero, .L80873A44
/* 0120C 80873A3C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01210 80873A40 A60E0306 */  sh      $t6, 0x0306($s0)           ## 00000306
.L80873A44:
/* 01214 80873A44 86020302 */  lh      $v0, 0x0302($s0)           ## 00000302
/* 01218 80873A48 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 0121C 80873A4C 24180140 */  addiu   $t8, $zero, 0x0140         ## $t8 = 00000140
/* 01220 80873A50 2841006E */  slti    $at, $v0, 0x006E
/* 01224 80873A54 14200003 */  bne     $at, $zero, .L80873A64
/* 01228 80873A58 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 0122C 80873A5C A60F0302 */  sh      $t7, 0x0302($s0)           ## 00000302
/* 01230 80873A60 86020302 */  lh      $v0, 0x0302($s0)           ## 00000302
.L80873A64:
/* 01234 80873A64 2401006E */  addiu   $at, $zero, 0x006E         ## $at = 0000006E
/* 01238 80873A68 14410008 */  bne     $v0, $at, .L80873A8C
/* 0123C 80873A6C 00000000 */  nop
/* 01240 80873A70 A4781424 */  sh      $t8, 0x1424($v1)           ## 8015FA84
/* 01244 80873A74 0C021DA0 */  jal     Magic_Fill
/* 01248 80873A78 8FA40064 */  lw      $a0, 0x0064($sp)
/* 0124C 80873A7C 241900C8 */  addiu   $t9, $zero, 0x00C8         ## $t9 = 000000C8
/* 01250 80873A80 A6190306 */  sh      $t9, 0x0306($s0)           ## 00000306
/* 01254 80873A84 86020302 */  lh      $v0, 0x0302($s0)           ## 00000302
/* 01258 80873A88 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80873A8C:
/* 0125C 80873A8C 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01260 80873A90 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01264 80873A94 84690030 */  lh      $t1, 0x0030($v1)           ## 8015E690
/* 01268 80873A98 846A002E */  lh      $t2, 0x002E($v1)           ## 8015E68E
/* 0126C 80873A9C 241900DA */  addiu   $t9, $zero, 0x00DA         ## $t9 = 000000DA
/* 01270 80873AA0 3325FFFF */  andi    $a1, $t9, 0xFFFF           ## $a1 = 000000DA
/* 01274 80873AA4 152A0005 */  bne     $t1, $t2, .L80873ABC
/* 01278 80873AA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0127C 80873AAC 846B13F4 */  lh      $t3, 0x13F4($v1)           ## 8015FA54
/* 01280 80873AB0 806C0033 */  lb      $t4, 0x0033($v1)           ## 8015E693
/* 01284 80873AB4 516C0004 */  beql    $t3, $t4, .L80873AC8
/* 01288 80873AB8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
.L80873ABC:
/* 0128C 80873ABC 860D0306 */  lh      $t5, 0x0306($s0)           ## 00000306
/* 01290 80873AC0 150D000D */  bne     $t0, $t5, .L80873AF8
/* 01294 80873AC4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
.L80873AC8:
/* 01298 80873AC8 A60E0302 */  sh      $t6, 0x0302($s0)           ## 00000302
/* 0129C 80873ACC 86020302 */  lh      $v0, 0x0302($s0)           ## 00000302
/* 012A0 80873AD0 2401005A */  addiu   $at, $zero, 0x005A         ## $at = 0000005A
/* 012A4 80873AD4 14410008 */  bne     $v0, $at, .L80873AF8
/* 012A8 80873AD8 00000000 */  nop
/* 012AC 80873ADC 860F02EA */  lh      $t7, 0x02EA($s0)           ## 000002EA
/* 012B0 80873AE0 55E00004 */  bnel    $t7, $zero, .L80873AF4
/* 012B4 80873AE4 A60002EA */  sh      $zero, 0x02EA($s0)         ## 000002EA
/* 012B8 80873AE8 8E180340 */  lw      $t8, 0x0340($s0)           ## 00000340
/* 012BC 80873AEC A7080152 */  sh      $t0, 0x0152($t8)           ## 00000152
/* 012C0 80873AF0 A60002EA */  sh      $zero, 0x02EA($s0)         ## 000002EA
.L80873AF4:
/* 012C4 80873AF4 86020302 */  lh      $v0, 0x0302($s0)           ## 00000302
.L80873AF8:
/* 012C8 80873AF8 15020009 */  bne     $t0, $v0, .L80873B20
/* 012CC 80873AFC 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 012D0 80873B00 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 012D4 80873B04 A60902EE */  sh      $t1, 0x02EE($s0)           ## 000002EE
/* 012D8 80873B08 0C042DC8 */  jal     func_8010B720
/* 012DC 80873B0C 8FA40064 */  lw      $a0, 0x0064($sp)
/* 012E0 80873B10 3C0A8087 */  lui     $t2, %hi(func_80873B3C)    ## $t2 = 80870000
/* 012E4 80873B14 254A3B3C */  addiu   $t2, $t2, %lo(func_80873B3C) ## $t2 = 80873B3C
/* 012E8 80873B18 10000003 */  beq     $zero, $zero, .L80873B28
/* 012EC 80873B1C AE0A014C */  sw      $t2, 0x014C($s0)           ## 0000014C
.L80873B20:
/* 012F0 80873B20 0C21CB16 */  jal     func_80872C58
/* 012F4 80873B24 8FA50064 */  lw      $a1, 0x0064($sp)
.L80873B28:
/* 012F8 80873B28 8FBF003C */  lw      $ra, 0x003C($sp)
/* 012FC 80873B2C 8FB00038 */  lw      $s0, 0x0038($sp)
/* 01300 80873B30 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 01304 80873B34 03E00008 */  jr      $ra
/* 01308 80873B38 00000000 */  nop
