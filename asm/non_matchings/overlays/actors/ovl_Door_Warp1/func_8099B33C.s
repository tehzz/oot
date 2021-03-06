.rdata
glabel D_8099C644
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C658
    .asciz "../z_door_warp1.c"
    .balign 4

.text
glabel func_8099B33C
/* 02BBC 8099B33C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 02BC0 8099B340 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 02BC4 8099B344 AFB20030 */  sw      $s2, 0x0030($sp)
/* 02BC8 8099B348 AFB1002C */  sw      $s1, 0x002C($sp)
/* 02BCC 8099B34C AFB00028 */  sw      $s0, 0x0028($sp)
/* 02BD0 8099B350 8CAE009C */  lw      $t6, 0x009C($a1)           ## 0000009C
/* 02BD4 8099B354 241000C8 */  addiu   $s0, $zero, 0x00C8         ## $s0 = 000000C8
/* 02BD8 8099B358 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 02BDC 8099B35C 01D00019 */  multu   $t6, $s0
/* 02BE0 8099B360 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02BE4 8099B364 00002012 */  mflo    $a0
/* 02BE8 8099B368 00042400 */  sll     $a0, $a0, 16
/* 02BEC 8099B36C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 02BF0 8099B370 00042403 */  sra     $a0, $a0, 16
/* 02BF4 8099B374 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 02BF8 8099B378 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 02BFC 8099B37C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02C00 8099B380 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 02C04 8099B384 46040182 */  mul.s   $f6, $f0, $f4
/* 02C08 8099B388 46003207 */  neg.s   $f8, $f6
/* 02C0C 8099B38C 460A4402 */  mul.s   $f16, $f8, $f10
/* 02C10 8099B390 E7B0005C */  swc1    $f16, 0x005C($sp)
/* 02C14 8099B394 8E2F009C */  lw      $t7, 0x009C($s1)           ## 0000009C
/* 02C18 8099B398 01F00019 */  multu   $t7, $s0
/* 02C1C 8099B39C 00002012 */  mflo    $a0
/* 02C20 8099B3A0 00042400 */  sll     $a0, $a0, 16
/* 02C24 8099B3A4 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 02C28 8099B3A8 00042403 */  sra     $a0, $a0, 16
/* 02C2C 8099B3AC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 02C30 8099B3B0 44819000 */  mtc1    $at, $f18                  ## $f18 = 120.00
/* 02C34 8099B3B4 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02C38 8099B3B8 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 02C3C 8099B3BC 46120102 */  mul.s   $f4, $f0, $f18
/* 02C40 8099B3C0 00000000 */  nop
/* 02C44 8099B3C4 46062202 */  mul.s   $f8, $f4, $f6
/* 02C48 8099B3C8 E7A80060 */  swc1    $f8, 0x0060($sp)
/* 02C4C 8099B3CC 8E38009C */  lw      $t8, 0x009C($s1)           ## 0000009C
/* 02C50 8099B3D0 03100019 */  multu   $t8, $s0
/* 02C54 8099B3D4 00002012 */  mflo    $a0
/* 02C58 8099B3D8 00042400 */  sll     $a0, $a0, 16
/* 02C5C 8099B3DC 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 02C60 8099B3E0 00042403 */  sra     $a0, $a0, 16
/* 02C64 8099B3E4 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 02C68 8099B3E8 44815000 */  mtc1    $at, $f10                  ## $f10 = 120.00
/* 02C6C 8099B3EC 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02C70 8099B3F0 44819000 */  mtc1    $at, $f18                  ## $f18 = 80.00
/* 02C74 8099B3F4 460A0402 */  mul.s   $f16, $f0, $f10
/* 02C78 8099B3F8 3C06809A */  lui     $a2, %hi(D_8099C644)       ## $a2 = 809A0000
/* 02C7C 8099B3FC 24C6C644 */  addiu   $a2, $a2, %lo(D_8099C644)  ## $a2 = 8099C644
/* 02C80 8099B400 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 02C84 8099B404 2407084A */  addiu   $a3, $zero, 0x084A         ## $a3 = 0000084A
/* 02C88 8099B408 46128102 */  mul.s   $f4, $f16, $f18
/* 02C8C 8099B40C E7A40064 */  swc1    $f4, 0x0064($sp)
/* 02C90 8099B410 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 02C94 8099B414 0C031AB1 */  jal     Graph_OpenDisps
/* 02C98 8099B418 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02C9C 8099B41C 0C024F61 */  jal     func_80093D84
/* 02CA0 8099B420 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 02CA4 8099B424 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFEC
/* 02CA8 8099B428 00A03025 */  or      $a2, $a1, $zero            ## $a2 = FFFFFFEC
/* 02CAC 8099B42C 26440024 */  addiu   $a0, $s2, 0x0024           ## $a0 = 00000024
/* 02CB0 8099B430 0C00BAD1 */  jal     func_8002EB44
/* 02CB4 8099B434 8E270000 */  lw      $a3, 0x0000($s1)           ## 00000000
/* 02CB8 8099B438 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 02CBC 8099B43C 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 02CC0 8099B440 4449F800 */  cfc1    $t1, $31
/* 02CC4 8099B444 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 02CC8 8099B448 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 02CCC 8099B44C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 02CD0 8099B450 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 02CD4 8099B454 44CAF800 */  ctc1    $t2, $31
/* 02CD8 8099B458 C64601A8 */  lwc1    $f6, 0x01A8($s2)           ## 000001A8
/* 02CDC 8099B45C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02CE0 8099B460 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 02CE4 8099B464 46003224 */  cvt.w.s $f8, $f6
/* 02CE8 8099B468 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02CEC 8099B46C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02CF0 8099B470 444AF800 */  cfc1    $t2, $31
/* 02CF4 8099B474 00000000 */  nop
/* 02CF8 8099B478 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 02CFC 8099B47C 51400013 */  beql    $t2, $zero, .L8099B4CC
/* 02D00 8099B480 440A4000 */  mfc1    $t2, $f8
/* 02D04 8099B484 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 02D08 8099B488 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 02D0C 8099B48C 46083201 */  sub.s   $f8, $f6, $f8
/* 02D10 8099B490 44CAF800 */  ctc1    $t2, $31
/* 02D14 8099B494 00000000 */  nop
/* 02D18 8099B498 46004224 */  cvt.w.s $f8, $f8
/* 02D1C 8099B49C 444AF800 */  cfc1    $t2, $31
/* 02D20 8099B4A0 00000000 */  nop
/* 02D24 8099B4A4 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 02D28 8099B4A8 15400005 */  bne     $t2, $zero, .L8099B4C0
/* 02D2C 8099B4AC 00000000 */  nop
/* 02D30 8099B4B0 440A4000 */  mfc1    $t2, $f8
/* 02D34 8099B4B4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02D38 8099B4B8 10000007 */  beq     $zero, $zero, .L8099B4D8
/* 02D3C 8099B4BC 01415025 */  or      $t2, $t2, $at              ## $t2 = 80000000
.L8099B4C0:
/* 02D40 8099B4C0 10000005 */  beq     $zero, $zero, .L8099B4D8
/* 02D44 8099B4C4 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 02D48 8099B4C8 440A4000 */  mfc1    $t2, $f8
.L8099B4CC:
/* 02D4C 8099B4CC 00000000 */  nop
/* 02D50 8099B4D0 0540FFFB */  bltz    $t2, .L8099B4C0
/* 02D54 8099B4D4 00000000 */  nop
.L8099B4D8:
/* 02D58 8099B4D8 314C00FF */  andi    $t4, $t2, 0x00FF           ## $t4 = 000000FF
/* 02D5C 8099B4DC 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 02D60 8099B4E0 01816825 */  or      $t5, $t4, $at              ## $t5 = FFFFFFFF
/* 02D64 8099B4E4 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 02D68 8099B4E8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 02D6C 8099B4EC 44C9F800 */  ctc1    $t1, $31
/* 02D70 8099B4F0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02D74 8099B4F4 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02D78 8099B4F8 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 02D7C 8099B4FC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 02D80 8099B500 4458F800 */  cfc1    $t8, $31
/* 02D84 8099B504 44D9F800 */  ctc1    $t9, $31
/* 02D88 8099B508 C64A01A8 */  lwc1    $f10, 0x01A8($s2)          ## 000001A8
/* 02D8C 8099B50C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02D90 8099B510 46005424 */  cvt.w.s $f16, $f10
/* 02D94 8099B514 4459F800 */  cfc1    $t9, $31
/* 02D98 8099B518 00000000 */  nop
/* 02D9C 8099B51C 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 02DA0 8099B520 53200013 */  beql    $t9, $zero, .L8099B570
/* 02DA4 8099B524 44198000 */  mfc1    $t9, $f16
/* 02DA8 8099B528 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 02DAC 8099B52C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02DB0 8099B530 46105401 */  sub.s   $f16, $f10, $f16
/* 02DB4 8099B534 44D9F800 */  ctc1    $t9, $31
/* 02DB8 8099B538 00000000 */  nop
/* 02DBC 8099B53C 46008424 */  cvt.w.s $f16, $f16
/* 02DC0 8099B540 4459F800 */  cfc1    $t9, $31
/* 02DC4 8099B544 00000000 */  nop
/* 02DC8 8099B548 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 02DCC 8099B54C 17200005 */  bne     $t9, $zero, .L8099B564
/* 02DD0 8099B550 00000000 */  nop
/* 02DD4 8099B554 44198000 */  mfc1    $t9, $f16
/* 02DD8 8099B558 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02DDC 8099B55C 10000007 */  beq     $zero, $zero, .L8099B57C
/* 02DE0 8099B560 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L8099B564:
/* 02DE4 8099B564 10000005 */  beq     $zero, $zero, .L8099B57C
/* 02DE8 8099B568 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 02DEC 8099B56C 44198000 */  mfc1    $t9, $f16
.L8099B570:
/* 02DF0 8099B570 00000000 */  nop
/* 02DF4 8099B574 0720FFFB */  bltz    $t9, .L8099B564
/* 02DF8 8099B578 00000000 */  nop
.L8099B57C:
/* 02DFC 8099B57C 3C019600 */  lui     $at, 0x9600                ## $at = 96000000
/* 02E00 8099B580 34216400 */  ori     $at, $at, 0x6400           ## $at = 96006400
/* 02E04 8099B584 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 000000FF
/* 02E08 8099B588 01215025 */  or      $t2, $t1, $at              ## $t2 = 960064FF
/* 02E0C 8099B58C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 02E10 8099B590 8E46016C */  lw      $a2, 0x016C($s2)           ## 0000016C
/* 02E14 8099B594 8E450150 */  lw      $a1, 0x0150($s2)           ## 00000150
/* 02E18 8099B598 AFB20014 */  sw      $s2, 0x0014($sp)
/* 02E1C 8099B59C AFA00010 */  sw      $zero, 0x0010($sp)
/* 02E20 8099B5A0 8E0B02D0 */  lw      $t3, 0x02D0($s0)           ## 000002D0
/* 02E24 8099B5A4 44D8F800 */  ctc1    $t8, $31
/* 02E28 8099B5A8 0C0288A2 */  jal     SkelAnime_Draw
/* 02E2C 8099B5AC AFAB0018 */  sw      $t3, 0x0018($sp)
/* 02E30 8099B5B0 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 02E34 8099B5B4 3C06809A */  lui     $a2, %hi(D_8099C658)       ## $a2 = 809A0000
/* 02E38 8099B5B8 24C6C658 */  addiu   $a2, $a2, %lo(D_8099C658)  ## $a2 = 8099C658
/* 02E3C 8099B5BC 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 02E40 8099B5C0 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 02E44 8099B5C4 0C031AD5 */  jal     Graph_CloseDisps
/* 02E48 8099B5C8 24070868 */  addiu   $a3, $zero, 0x0868         ## $a3 = 00000868
/* 02E4C 8099B5CC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 02E50 8099B5D0 2644014C */  addiu   $a0, $s2, 0x014C           ## $a0 = 0000014C
/* 02E54 8099B5D4 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 02E58 8099B5D8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02E5C 8099B5DC 8FB1002C */  lw      $s1, 0x002C($sp)
/* 02E60 8099B5E0 8FB20030 */  lw      $s2, 0x0030($sp)
/* 02E64 8099B5E4 03E00008 */  jr      $ra
/* 02E68 8099B5E8 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
