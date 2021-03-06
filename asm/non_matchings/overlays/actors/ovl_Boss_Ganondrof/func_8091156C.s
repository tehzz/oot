.late_rodata
glabel D_8091541C
    .float 0.8

glabel D_80915420
    .float -3315.0

glabel D_80915424
    .float -3315.0

glabel D_80915428
    .float -3050.0

glabel D_8091542C
    .float -3050.0

glabel D_80915430
    .float -3100.0

glabel D_80915434
    .float -0.079999998

.text
glabel func_8091156C
/* 00F2C 8091156C 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00F30 80911570 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00F34 80911574 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00F38 80911578 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00F3C 8091157C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00F40 80911580 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 00F44 80911584 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00F48 80911588 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00F4C 8091158C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00F50 80911590 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F54 80911594 AFAF0078 */  sw      $t7, 0x0078($sp)           
/* 00F58 80911598 922201C9 */  lbu     $v0, 0x01C9($s1)           ## 000001C9
/* 00F5C 8091159C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F60 809115A0 1041000D */  beq     $v0, $at, .L809115D8       
/* 00F64 809115A4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00F68 809115A8 104100A9 */  beq     $v0, $at, .L80911850       
/* 00F6C 809115AC 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 00F70 809115B0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00F74 809115B4 104100D2 */  beq     $v0, $at, .L80911900       
/* 00F78 809115B8 8FAA0078 */  lw      $t2, 0x0078($sp)           
/* 00F7C 809115BC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00F80 809115C0 10410101 */  beq     $v0, $at, .L809119C8       
/* 00F84 809115C4 8FAF0078 */  lw      $t7, 0x0078($sp)           
/* 00F88 809115C8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00F8C 809115CC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 00F90 809115D0 10000126 */  beq     $zero, $zero, .L80911A6C   
/* 00F94 809115D4 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
.L809115D8:
/* 00F98 809115D8 863801BC */  lh      $t8, 0x01BC($s1)           ## 000001BC
/* 00F9C 809115DC 5700004D */  bnel    $t8, $zero, .L80911714     
/* 00FA0 809115E0 862A01BE */  lh      $t2, 0x01BE($s1)           ## 000001BE
/* 00FA4 809115E4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00FA8 809115E8 00000000 */  nop
/* 00FAC 809115EC 3C014280 */  lui     $at, 0x4280                ## $at = 42800000
/* 00FB0 809115F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 64.00
/* 00FB4 809115F4 00000000 */  nop
/* 00FB8 809115F8 46040182 */  mul.s   $f6, $f0, $f4              
/* 00FBC 809115FC 4600320D */  trunc.w.s $f8, $f6                   
/* 00FC0 80911600 440A4000 */  mfc1    $t2, $f8                   
/* 00FC4 80911604 00000000 */  nop
/* 00FC8 80911608 254B001E */  addiu   $t3, $t2, 0x001E           ## $t3 = 0000001E
/* 00FCC 8091160C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00FD0 80911610 A62B01BC */  sh      $t3, 0x01BC($s1)           ## 000001BC
/* 00FD4 80911614 922C00AF */  lbu     $t4, 0x00AF($s1)           ## 000000AF
/* 00FD8 80911618 29810005 */  slti    $at, $t4, 0x0005           
/* 00FDC 8091161C 10200025 */  beq     $at, $zero, .L809116B4     
/* 00FE0 80911620 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00FE4 80911624 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.25
/* 00FE8 80911628 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00FEC 8091162C 3C018091 */  lui     $at, %hi(D_8091541C)       ## $at = 80910000
/* 00FF0 80911630 460A003C */  c.lt.s  $f0, $f10                  
/* 00FF4 80911634 00000000 */  nop
/* 00FF8 80911638 45000005 */  bc1f    .L80911650                 
/* 00FFC 8091163C 00000000 */  nop
/* 01000 80911640 0C24472C */  jal     func_80911CB0              
/* 01004 80911644 8FA5008C */  lw      $a1, 0x008C($sp)           
/* 01008 80911648 10000032 */  beq     $zero, $zero, .L80911714   
/* 0100C 8091164C 862A01BE */  lh      $t2, 0x01BE($s1)           ## 000001BE
.L80911650:
/* 01010 80911650 C430541C */  lwc1    $f16, %lo(D_8091541C)($at) 
/* 01014 80911654 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 01018 80911658 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 0101C 8091165C 4600803E */  c.le.s  $f16, $f0                  
/* 01020 80911660 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 01024 80911664 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 01028 80911668 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0102C 8091166C 4500000A */  bc1f    .L80911698                 
/* 01030 80911670 240538B0 */  addiu   $a1, $zero, 0x38B0         ## $a1 = 000038B0
/* 01034 80911674 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01038 80911678 A22D01C9 */  sb      $t5, 0x01C9($s1)           ## 000001C9
/* 0103C 8091167C A62E01BC */  sh      $t6, 0x01BC($s1)           ## 000001BC
/* 01040 80911680 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01044 80911684 240538B0 */  addiu   $a1, $zero, 0x38B0         ## $a1 = 000038B0
/* 01048 80911688 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0104C 8091168C E63201CC */  swc1    $f18, 0x01CC($s1)          ## 000001CC
/* 01050 80911690 10000020 */  beq     $zero, $zero, .L80911714   
/* 01054 80911694 862A01BE */  lh      $t2, 0x01BE($s1)           ## 000001BE
.L80911698:
/* 01058 80911698 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0105C 8091169C A22F01C9 */  sb      $t7, 0x01C9($s1)           ## 000001C9
/* 01060 809116A0 A63801BC */  sh      $t8, 0x01BC($s1)           ## 000001BC
/* 01064 809116A4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01068 809116A8 E62401CC */  swc1    $f4, 0x01CC($s1)           ## 000001CC
/* 0106C 809116AC 10000019 */  beq     $zero, $zero, .L80911714   
/* 01070 809116B0 862A01BE */  lh      $t2, 0x01BE($s1)           ## 000001BE
.L809116B4:
/* 01074 809116B4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01078 809116B8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0107C 809116BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01080 809116C0 4606003C */  c.lt.s  $f0, $f6                   
/* 01084 809116C4 00000000 */  nop
/* 01088 809116C8 45010007 */  bc1t    .L809116E8                 
/* 0108C 809116CC 00000000 */  nop
/* 01090 809116D0 863901A6 */  lh      $t9, 0x01A6($s1)           ## 000001A6
/* 01094 809116D4 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 01098 809116D8 2409003C */  addiu   $t1, $zero, 0x003C         ## $t1 = 0000003C
/* 0109C 809116DC 2B210005 */  slti    $at, $t9, 0x0005           
/* 010A0 809116E0 10200005 */  beq     $at, $zero, .L809116F8     
/* 010A4 809116E4 240538B0 */  addiu   $a1, $zero, 0x38B0         ## $a1 = 000038B0
.L809116E8:
/* 010A8 809116E8 0C24472C */  jal     func_80911CB0              
/* 010AC 809116EC 8FA5008C */  lw      $a1, 0x008C($sp)           
/* 010B0 809116F0 10000008 */  beq     $zero, $zero, .L80911714   
/* 010B4 809116F4 862A01BE */  lh      $t2, 0x01BE($s1)           ## 000001BE
.L809116F8:
/* 010B8 809116F8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 010BC 809116FC A22801C9 */  sb      $t0, 0x01C9($s1)           ## 000001C9
/* 010C0 80911700 A62901BC */  sh      $t1, 0x01BC($s1)           ## 000001BC
/* 010C4 80911704 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 010C8 80911708 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 010CC 8091170C E62801CC */  swc1    $f8, 0x01CC($s1)           ## 000001CC
/* 010D0 80911710 862A01BE */  lh      $t2, 0x01BE($s1)           ## 000001BE
.L80911714:
/* 010D4 80911714 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 010D8 80911718 8FAB0078 */  lw      $t3, 0x0078($sp)           
/* 010DC 8091171C 11400007 */  beq     $t2, $zero, .L8091173C     
/* 010E0 80911720 00000000 */  nop
/* 010E4 80911724 44815000 */  mtc1    $at, $f10                  ## $f10 = 14.00
/* 010E8 80911728 3C018091 */  lui     $at, %hi(D_80915420)       ## $at = 80910000
/* 010EC 8091172C C4305420 */  lwc1    $f16, %lo(D_80915420)($at) 
/* 010F0 80911730 E7AA0084 */  swc1    $f10, 0x0084($sp)          
/* 010F4 80911734 10000027 */  beq     $zero, $zero, .L809117D4   
/* 010F8 80911738 E7B0007C */  swc1    $f16, 0x007C($sp)          
.L8091173C:
/* 010FC 8091173C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01100 80911740 856400B6 */  lh      $a0, 0x00B6($t3)           ## 000000B6
/* 01104 80911744 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 01108 80911748 4481A000 */  mtc1    $at, $f20                  ## $f20 = 180.00
/* 0110C 8091174C 8FAC0078 */  lw      $t4, 0x0078($sp)           
/* 01110 80911750 46140482 */  mul.s   $f18, $f0, $f20            
/* 01114 80911754 C5840024 */  lwc1    $f4, 0x0024($t4)           ## 00000024
/* 01118 80911758 46049180 */  add.s   $f6, $f18, $f4             
/* 0111C 8091175C E7A60084 */  swc1    $f6, 0x0084($sp)           
/* 01120 80911760 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01124 80911764 858400B6 */  lh      $a0, 0x00B6($t4)           ## 000000B6
/* 01128 80911768 46140202 */  mul.s   $f8, $f0, $f20             
/* 0112C 8091176C 8FAD0078 */  lw      $t5, 0x0078($sp)           
/* 01130 80911770 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 01134 80911774 44812000 */  mtc1    $at, $f4                   ## $f4 = 14.00
/* 01138 80911778 C5AA002C */  lwc1    $f10, 0x002C($t5)          ## 0000002C
/* 0113C 8091177C C7B20084 */  lwc1    $f18, 0x0084($sp)          
/* 01140 80911780 3C018091 */  lui     $at, %hi(D_80915424)       ## $at = 80910000
/* 01144 80911784 460A4400 */  add.s   $f16, $f8, $f10            
/* 01148 80911788 C4265424 */  lwc1    $f6, %lo(D_80915424)($at)  
/* 0114C 8091178C 3C01438C */  lui     $at, 0x438C                ## $at = 438C0000
/* 01150 80911790 46049081 */  sub.s   $f2, $f18, $f4             
/* 01154 80911794 44819000 */  mtc1    $at, $f18                  ## $f18 = 280.00
/* 01158 80911798 E7B0007C */  swc1    $f16, 0x007C($sp)          
/* 0115C 8091179C 46068301 */  sub.s   $f12, $f16, $f6            
/* 01160 809117A0 46021202 */  mul.s   $f8, $f2, $f2              
/* 01164 809117A4 00000000 */  nop
/* 01168 809117A8 460C6282 */  mul.s   $f10, $f12, $f12           
/* 0116C 809117AC 460A4000 */  add.s   $f0, $f8, $f10             
/* 01170 809117B0 46000004 */  sqrt.s  $f0, $f0                   
/* 01174 809117B4 4600903C */  c.lt.s  $f18, $f0                  
/* 01178 809117B8 00000000 */  nop
/* 0117C 809117BC 45000005 */  bc1f    .L809117D4                 
/* 01180 809117C0 00000000 */  nop
/* 01184 809117C4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01188 809117C8 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 0118C 809117CC A62E01BE */  sh      $t6, 0x01BE($s1)           ## 000001BE
/* 01190 809117D0 E62401CC */  swc1    $f4, 0x01CC($s1)           ## 000001CC
.L809117D4:
/* 01194 809117D4 8FAF0078 */  lw      $t7, 0x0078($sp)           
/* 01198 809117D8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0119C 809117DC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 011A0 809117E0 C5F00028 */  lwc1    $f16, 0x0028($t7)          ## 00000028
/* 011A4 809117E4 46148180 */  add.s   $f6, $f16, $f20            
/* 011A8 809117E8 E7A60080 */  swc1    $f6, 0x0080($sp)           
/* 011AC 809117EC 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 011B0 809117F0 00800821 */  addu    $at, $a0, $zero            
/* 011B4 809117F4 00042080 */  sll     $a0, $a0,  2               
/* 011B8 809117F8 00812021 */  addu    $a0, $a0, $at              
/* 011BC 809117FC 00042200 */  sll     $a0, $a0,  8               
/* 011C0 80911800 00042400 */  sll     $a0, $a0, 16               
/* 011C4 80911804 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 011C8 80911808 00042403 */  sra     $a0, $a0, 16               
/* 011CC 8091180C 46140282 */  mul.s   $f10, $f0, $f20            
/* 011D0 80911810 C7A80084 */  lwc1    $f8, 0x0084($sp)           
/* 011D4 80911814 460A4480 */  add.s   $f18, $f8, $f10            
/* 011D8 80911818 E7B20084 */  swc1    $f18, 0x0084($sp)          
/* 011DC 8091181C 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 011E0 80911820 00800821 */  addu    $at, $a0, $zero            
/* 011E4 80911824 000420C0 */  sll     $a0, $a0,  3               
/* 011E8 80911828 00812023 */  subu    $a0, $a0, $at              
/* 011EC 8091182C 00042200 */  sll     $a0, $a0,  8               
/* 011F0 80911830 00042400 */  sll     $a0, $a0, 16               
/* 011F4 80911834 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 011F8 80911838 00042403 */  sra     $a0, $a0, 16               
/* 011FC 8091183C 46140402 */  mul.s   $f16, $f0, $f20            
/* 01200 80911840 C7A4007C */  lwc1    $f4, 0x007C($sp)           
/* 01204 80911844 46102180 */  add.s   $f6, $f4, $f16             
/* 01208 80911848 10000087 */  beq     $zero, $zero, .L80911A68   
/* 0120C 8091184C E7A6007C */  swc1    $f6, 0x007C($sp)           
.L80911850:
/* 01210 80911850 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01214 80911854 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 01218 80911858 C7080028 */  lwc1    $f8, 0x0028($t8)           ## 00000028
/* 0121C 8091185C 46144280 */  add.s   $f10, $f8, $f20            
/* 01220 80911860 46145480 */  add.s   $f18, $f10, $f20           
/* 01224 80911864 E7B20080 */  swc1    $f18, 0x0080($sp)          
/* 01228 80911868 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 0122C 8091186C 00800821 */  addu    $at, $a0, $zero            
/* 01230 80911870 00042080 */  sll     $a0, $a0,  2               
/* 01234 80911874 00812021 */  addu    $a0, $a0, $at              
/* 01238 80911878 00042200 */  sll     $a0, $a0,  8               
/* 0123C 8091187C 00042400 */  sll     $a0, $a0, 16               
/* 01240 80911880 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01244 80911884 00042403 */  sra     $a0, $a0, 16               
/* 01248 80911888 46140402 */  mul.s   $f16, $f0, $f20            
/* 0124C 8091188C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01250 80911890 00000000 */  nop
/* 01254 80911894 46102180 */  add.s   $f6, $f4, $f16             
/* 01258 80911898 E7A60084 */  swc1    $f6, 0x0084($sp)           
/* 0125C 8091189C 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 01260 809118A0 00800821 */  addu    $at, $a0, $zero            
/* 01264 809118A4 000420C0 */  sll     $a0, $a0,  3               
/* 01268 809118A8 00812023 */  subu    $a0, $a0, $at              
/* 0126C 809118AC 00042200 */  sll     $a0, $a0,  8               
/* 01270 809118B0 00042400 */  sll     $a0, $a0, 16               
/* 01274 809118B4 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01278 809118B8 00042403 */  sra     $a0, $a0, 16               
/* 0127C 809118BC 46140282 */  mul.s   $f10, $f0, $f20            
/* 01280 809118C0 3C018091 */  lui     $at, %hi(D_80915428)       ## $at = 80910000
/* 01284 809118C4 C4285428 */  lwc1    $f8, %lo(D_80915428)($at)  
/* 01288 809118C8 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 0128C 809118CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01290 809118D0 460A4480 */  add.s   $f18, $f8, $f10            
/* 01294 809118D4 E7B2007C */  swc1    $f18, 0x007C($sp)          
/* 01298 809118D8 863901BC */  lh      $t9, 0x01BC($s1)           ## 000001BC
/* 0129C 809118DC 57200063 */  bnel    $t9, $zero, .L80911A6C     
/* 012A0 809118E0 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 012A4 809118E4 A22801C9 */  sb      $t0, 0x01C9($s1)           ## 000001C9
/* 012A8 809118E8 A22001CA */  sb      $zero, 0x01CA($s1)         ## 000001CA
/* 012AC 809118EC 0C24472C */  jal     func_80911CB0              
/* 012B0 809118F0 8FA5008C */  lw      $a1, 0x008C($sp)           
/* 012B4 809118F4 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 012B8 809118F8 1000005B */  beq     $zero, $zero, .L80911A68   
/* 012BC 809118FC A62901BC */  sh      $t1, 0x01BC($s1)           ## 000001BC
.L80911900:
/* 012C0 80911900 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 012C4 80911904 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 012C8 80911908 C5440028 */  lwc1    $f4, 0x0028($t2)           ## 00000028
/* 012CC 8091190C 46142400 */  add.s   $f16, $f4, $f20            
/* 012D0 80911910 46148180 */  add.s   $f6, $f16, $f20            
/* 012D4 80911914 E7A60080 */  swc1    $f6, 0x0080($sp)           
/* 012D8 80911918 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 012DC 8091191C 00800821 */  addu    $at, $a0, $zero            
/* 012E0 80911920 00042080 */  sll     $a0, $a0,  2               
/* 012E4 80911924 00812021 */  addu    $a0, $a0, $at              
/* 012E8 80911928 00042200 */  sll     $a0, $a0,  8               
/* 012EC 8091192C 00042400 */  sll     $a0, $a0, 16               
/* 012F0 80911930 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 012F4 80911934 00042403 */  sra     $a0, $a0, 16               
/* 012F8 80911938 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 012FC 8091193C 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 01300 80911940 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01304 80911944 460A0482 */  mul.s   $f18, $f0, $f10            
/* 01308 80911948 46124100 */  add.s   $f4, $f8, $f18             
/* 0130C 8091194C E7A40084 */  swc1    $f4, 0x0084($sp)           
/* 01310 80911950 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 01314 80911954 00800821 */  addu    $at, $a0, $zero            
/* 01318 80911958 000420C0 */  sll     $a0, $a0,  3               
/* 0131C 8091195C 00812023 */  subu    $a0, $a0, $at              
/* 01320 80911960 00042200 */  sll     $a0, $a0,  8               
/* 01324 80911964 00042400 */  sll     $a0, $a0, 16               
/* 01328 80911968 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0132C 8091196C 00042403 */  sra     $a0, $a0, 16               
/* 01330 80911970 3C018091 */  lui     $at, %hi(D_8091542C)       ## $at = 80910000
/* 01334 80911974 C430542C */  lwc1    $f16, %lo(D_8091542C)($at) 
/* 01338 80911978 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0133C 8091197C 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 01340 80911980 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01344 80911984 46060282 */  mul.s   $f10, $f0, $f6             
/* 01348 80911988 460A8200 */  add.s   $f8, $f16, $f10            
/* 0134C 8091198C E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 01350 80911990 922B01CA */  lbu     $t3, 0x01CA($s1)           ## 000001CA
/* 01354 80911994 51600007 */  beql    $t3, $zero, .L809119B4     
/* 01358 80911998 862D01BC */  lh      $t5, 0x01BC($s1)           ## 000001BC
/* 0135C 8091199C A22001CA */  sb      $zero, 0x01CA($s1)         ## 000001CA
/* 01360 809119A0 0C244808 */  jal     func_80912020              
/* 01364 809119A4 8FA5008C */  lw      $a1, 0x008C($sp)           
/* 01368 809119A8 240C0050 */  addiu   $t4, $zero, 0x0050         ## $t4 = 00000050
/* 0136C 809119AC A62C01BC */  sh      $t4, 0x01BC($s1)           ## 000001BC
/* 01370 809119B0 862D01BC */  lh      $t5, 0x01BC($s1)           ## 000001BC
.L809119B4:
/* 01374 809119B4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01378 809119B8 55A0002C */  bnel    $t5, $zero, .L80911A6C     
/* 0137C 809119BC 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 01380 809119C0 10000029 */  beq     $zero, $zero, .L80911A68   
/* 01384 809119C4 A22E01C9 */  sb      $t6, 0x01C9($s1)           ## 000001C9
.L809119C8:
/* 01388 809119C8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0138C 809119CC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 100.00
/* 01390 809119D0 C5F20028 */  lwc1    $f18, 0x0028($t7)          ## 00000028
/* 01394 809119D4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01398 809119D8 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 0139C 809119DC 46149100 */  add.s   $f4, $f18, $f20            
/* 013A0 809119E0 46062400 */  add.s   $f16, $f4, $f6             
/* 013A4 809119E4 E7B00080 */  swc1    $f16, 0x0080($sp)          
/* 013A8 809119E8 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 013AC 809119EC 00800821 */  addu    $at, $a0, $zero            
/* 013B0 809119F0 00042080 */  sll     $a0, $a0,  2               
/* 013B4 809119F4 00812021 */  addu    $a0, $a0, $at              
/* 013B8 809119F8 00042200 */  sll     $a0, $a0,  8               
/* 013BC 809119FC 00042400 */  sll     $a0, $a0, 16               
/* 013C0 80911A00 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 013C4 80911A04 00042403 */  sra     $a0, $a0, 16               
/* 013C8 80911A08 46140202 */  mul.s   $f8, $f0, $f20             
/* 013CC 80911A0C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 013D0 80911A10 00000000 */  nop
/* 013D4 80911A14 46085480 */  add.s   $f18, $f10, $f8            
/* 013D8 80911A18 E7B20084 */  swc1    $f18, 0x0084($sp)          
/* 013DC 80911A1C 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 013E0 80911A20 00800821 */  addu    $at, $a0, $zero            
/* 013E4 80911A24 000420C0 */  sll     $a0, $a0,  3               
/* 013E8 80911A28 00812023 */  subu    $a0, $a0, $at              
/* 013EC 80911A2C 00042200 */  sll     $a0, $a0,  8               
/* 013F0 80911A30 00042400 */  sll     $a0, $a0, 16               
/* 013F4 80911A34 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 013F8 80911A38 00042403 */  sra     $a0, $a0, 16               
/* 013FC 80911A3C 46140182 */  mul.s   $f6, $f0, $f20             
/* 01400 80911A40 3C018091 */  lui     $at, %hi(D_80915430)       ## $at = 80910000
/* 01404 80911A44 C4245430 */  lwc1    $f4, %lo(D_80915430)($at)  
/* 01408 80911A48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0140C 80911A4C 46062400 */  add.s   $f16, $f4, $f6             
/* 01410 80911A50 E7B0007C */  swc1    $f16, 0x007C($sp)          
/* 01414 80911A54 863801BC */  lh      $t8, 0x01BC($s1)           ## 000001BC
/* 01418 80911A58 57000004 */  bnel    $t8, $zero, .L80911A6C     
/* 0141C 80911A5C 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 01420 80911A60 0C244949 */  jal     func_80912524              
/* 01424 80911A64 8FA5008C */  lw      $a1, 0x008C($sp)           
.L80911A68:
/* 01428 80911A68 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
.L80911A6C:
/* 0142C 80911A6C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 01430 80911A70 26240024 */  addiu   $a0, $s1, 0x0024           ## $a0 = 00000024
/* 01434 80911A74 8FA50084 */  lw      $a1, 0x0084($sp)           
/* 01438 80911A78 0C01E107 */  jal     Math_ApproachF
              
/* 0143C 80911A7C 8E2701CC */  lw      $a3, 0x01CC($s1)           ## 000001CC
/* 01440 80911A80 863901C0 */  lh      $t9, 0x01C0($s1)           ## 000001C0
/* 01444 80911A84 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 01448 80911A88 8FA50080 */  lw      $a1, 0x0080($sp)           
/* 0144C 80911A8C 1320000C */  beq     $t9, $zero, .L80911AC0     
/* 01450 80911A90 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 01454 80911A94 C7AA0080 */  lwc1    $f10, 0x0080($sp)          
/* 01458 80911A98 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 0145C 80911A9C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01460 80911AA0 46145200 */  add.s   $f8, $f10, $f20            
/* 01464 80911AA4 26240028 */  addiu   $a0, $s1, 0x0028           ## $a0 = 00000028
/* 01468 80911AA8 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 0146C 80911AAC 44054000 */  mfc1    $a1, $f8                   
/* 01470 80911AB0 0C01E107 */  jal     Math_ApproachF
              
/* 01474 80911AB4 00000000 */  nop
/* 01478 80911AB8 10000005 */  beq     $zero, $zero, .L80911AD0   
/* 0147C 80911ABC 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
.L80911AC0:
/* 01480 80911AC0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 01484 80911AC4 0C01E107 */  jal     Math_ApproachF
              
/* 01488 80911AC8 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 0148C 80911ACC 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
.L80911AD0:
/* 01490 80911AD0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 01494 80911AD4 2624002C */  addiu   $a0, $s1, 0x002C           ## $a0 = 0000002C
/* 01498 80911AD8 8FA5007C */  lw      $a1, 0x007C($sp)           
/* 0149C 80911ADC 0C01E107 */  jal     Math_ApproachF
              
/* 014A0 80911AE0 8E2701CC */  lw      $a3, 0x01CC($s1)           ## 000001CC
/* 014A4 80911AE4 262401CC */  addiu   $a0, $s1, 0x01CC           ## $a0 = 000001CC
/* 014A8 80911AE8 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 014AC 80911AEC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 014B0 80911AF0 0C01E107 */  jal     Math_ApproachF
              
/* 014B4 80911AF4 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 014B8 80911AF8 86240194 */  lh      $a0, 0x0194($s1)           ## 00000194
/* 014BC 80911AFC C6320024 */  lwc1    $f18, 0x0024($s1)          ## 00000024
/* 014C0 80911B00 C6240100 */  lwc1    $f4, 0x0100($s1)           ## 00000100
/* 014C4 80911B04 00800821 */  addu    $at, $a0, $zero            
/* 014C8 80911B08 00042080 */  sll     $a0, $a0,  2               
/* 014CC 80911B0C 00812023 */  subu    $a0, $a0, $at              
/* 014D0 80911B10 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 014D4 80911B14 C62A0108 */  lwc1    $f10, 0x0108($s1)          ## 00000108
/* 014D8 80911B18 00042100 */  sll     $a0, $a0,  4               
/* 014DC 80911B1C 00812023 */  subu    $a0, $a0, $at              
/* 014E0 80911B20 000420C0 */  sll     $a0, $a0,  3               
/* 014E4 80911B24 46049181 */  sub.s   $f6, $f18, $f4             
/* 014E8 80911B28 00812023 */  subu    $a0, $a0, $at              
/* 014EC 80911B2C 00042080 */  sll     $a0, $a0,  2               
/* 014F0 80911B30 460A8201 */  sub.s   $f8, $f16, $f10            
/* 014F4 80911B34 00042400 */  sll     $a0, $a0, 16               
/* 014F8 80911B38 E626005C */  swc1    $f6, 0x005C($s1)           ## 0000005C
/* 014FC 80911B3C 00042403 */  sra     $a0, $a0, 16               
/* 01500 80911B40 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01504 80911B44 E6280064 */  swc1    $f8, 0x0064($s1)           ## 00000064
/* 01508 80911B48 46000100 */  add.s   $f4, $f0, $f0              
/* 0150C 80911B4C C6320028 */  lwc1    $f18, 0x0028($s1)          ## 00000028
/* 01510 80911B50 262400B6 */  addiu   $a0, $s1, 0x00B6           ## $a0 = 000000B6
/* 01514 80911B54 8625008A */  lh      $a1, 0x008A($s1)           ## 0000008A
/* 01518 80911B58 46049180 */  add.s   $f6, $f18, $f4             
/* 0151C 80911B5C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 01520 80911B60 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 01524 80911B64 0C01E1EF */  jal     Math_ApproachS
              
/* 01528 80911B68 E6260028 */  swc1    $f6, 0x0028($s1)           ## 00000028
/* 0152C 80911B6C 86280194 */  lh      $t0, 0x0194($s1)           ## 00000194
/* 01530 80911B70 3C0B8091 */  lui     $t3, %hi(D_809150B8)       ## $t3 = 80910000
/* 01534 80911B74 256B50B8 */  addiu   $t3, $t3, %lo(D_809150B8)  ## $t3 = 809150B8
/* 01538 80911B78 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 0153C 80911B7C 1520003C */  bne     $t1, $zero, .L80911C70     
/* 01540 80911B80 27AA0050 */  addiu   $t2, $sp, 0x0050           ## $t2 = FFFFFFC8
/* 01544 80911B84 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 809150B8
/* 01548 80911B88 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 809150BC
/* 0154C 80911B8C 3C0F8091 */  lui     $t7, %hi(D_809150C4)       ## $t7 = 80910000
/* 01550 80911B90 AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFC8
/* 01554 80911B94 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 809150C0
/* 01558 80911B98 25EF50C4 */  addiu   $t7, $t7, %lo(D_809150C4)  ## $t7 = 809150C4
/* 0155C 80911B9C AD4C0004 */  sw      $t4, 0x0004($t2)           ## FFFFFFCC
/* 01560 80911BA0 AD4D0008 */  sw      $t5, 0x0008($t2)           ## FFFFFFD0
/* 01564 80911BA4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809150C4
/* 01568 80911BA8 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFBC
/* 0156C 80911BAC 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809150C8
/* 01570 80911BB0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFBC
/* 01574 80911BB4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809150CC
/* 01578 80911BB8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0157C 80911BBC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 01580 80911BC0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 01584 80911BC4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFC0
/* 01588 80911BC8 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFC4
.L80911BCC:
/* 0158C 80911BCC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 01590 80911BD0 4600A306 */  mov.s   $f12, $f20                 
/* 01594 80911BD4 C6300200 */  lwc1    $f16, 0x0200($s1)          ## 00000200
/* 01598 80911BD8 4600A306 */  mov.s   $f12, $f20                 
/* 0159C 80911BDC 46100280 */  add.s   $f10, $f0, $f16            
/* 015A0 80911BE0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 015A4 80911BE4 E7AA005C */  swc1    $f10, 0x005C($sp)          
/* 015A8 80911BE8 C6280204 */  lwc1    $f8, 0x0204($s1)           ## 00000204
/* 015AC 80911BEC 4600A306 */  mov.s   $f12, $f20                 
/* 015B0 80911BF0 46080480 */  add.s   $f18, $f0, $f8             
/* 015B4 80911BF4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 015B8 80911BF8 E7B20060 */  swc1    $f18, 0x0060($sp)          
/* 015BC 80911BFC C6240208 */  lwc1    $f4, 0x0208($s1)           ## 00000208
/* 015C0 80911C00 3C018091 */  lui     $at, %hi(D_80915434)       ## $at = 80910000
/* 015C4 80911C04 C4305434 */  lwc1    $f16, %lo(D_80915434)($at) 
/* 015C8 80911C08 46040180 */  add.s   $f6, $f0, $f4              
/* 015CC 80911C0C E7B00048 */  swc1    $f16, 0x0048($sp)          
/* 015D0 80911C10 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 015D4 80911C14 E7A60064 */  swc1    $f6, 0x0064($sp)           
/* 015D8 80911C18 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 015DC 80911C1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 015E0 80911C20 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 015E4 80911C24 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFD4
/* 015E8 80911C28 460A0202 */  mul.s   $f8, $f0, $f10             
/* 015EC 80911C2C 27A60050 */  addiu   $a2, $sp, 0x0050           ## $a2 = FFFFFFC8
/* 015F0 80911C30 27A70044 */  addiu   $a3, $sp, 0x0044           ## $a3 = FFFFFFBC
/* 015F4 80911C34 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 015F8 80911C38 4600448D */  trunc.w.s $f18, $f8                  
/* 015FC 80911C3C 44099000 */  mfc1    $t1, $f18                  
/* 01600 80911C40 00000000 */  nop
/* 01604 80911C44 00095400 */  sll     $t2, $t1, 16               
/* 01608 80911C48 000A5C03 */  sra     $t3, $t2, 16               
/* 0160C 80911C4C 256C0096 */  addiu   $t4, $t3, 0x0096           ## $t4 = 00000096
/* 01610 80911C50 0C00A73C */  jal     EffectSsFhgFlash_SpawnLightBall              
/* 01614 80911C54 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01618 80911C58 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0161C 80911C5C 00108400 */  sll     $s0, $s0, 16               
/* 01620 80911C60 00108403 */  sra     $s0, $s0, 16               
/* 01624 80911C64 2A010003 */  slti    $at, $s0, 0x0003           
/* 01628 80911C68 1420FFD8 */  bne     $at, $zero, .L80911BCC     
/* 0162C 80911C6C 00000000 */  nop
.L80911C70:
/* 01630 80911C70 8FAD0078 */  lw      $t5, 0x0078($sp)           
/* 01634 80911C74 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01638 80911C78 91AE0A73 */  lbu     $t6, 0x0A73($t5)           ## 00000A73
/* 0163C 80911C7C 51C00004 */  beql    $t6, $zero, .L80911C90     
/* 01640 80911C80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01644 80911C84 0C2448F5 */  jal     func_809123D4              
/* 01648 80911C88 8FA5008C */  lw      $a1, 0x008C($sp)           
/* 0164C 80911C8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80911C90:
/* 01650 80911C90 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01654 80911C94 240530A4 */  addiu   $a1, $zero, 0x30A4         ## $a1 = 000030A4
/* 01658 80911C98 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0165C 80911C9C D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 01660 80911CA0 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 01664 80911CA4 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 01668 80911CA8 03E00008 */  jr      $ra                        
/* 0166C 80911CAC 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
