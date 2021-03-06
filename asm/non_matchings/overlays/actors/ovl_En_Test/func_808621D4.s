.late_rodata
glabel D_808647C4
    .float 0.7

.text
glabel func_808621D4
/* 02B84 808621D4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02B88 808621D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02B8C 808621DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02B90 808621E0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02B94 808621E4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 02B98 808621E8 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 02B9C 808621EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02BA0 808621F0 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 02BA4 808621F4 44050000 */  mfc1    $a1, $f0                   
/* 02BA8 808621F8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 02BAC 808621FC 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 02BB0 80862200 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02BB4 80862204 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02BB8 80862208 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 02BBC 8086220C AFAF002C */  sw      $t7, 0x002C($sp)           
/* 02BC0 80862210 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02BC4 80862214 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 02BC8 80862218 50400024 */  beql    $v0, $zero, .L808622AC     
/* 02BCC 8086221C 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 02BD0 80862220 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 02BD4 80862224 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02BD8 80862228 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02BDC 8086222C 33190008 */  andi    $t9, $t8, 0x0008           ## $t9 = 00000000
/* 02BE0 80862230 13200017 */  beq     $t9, $zero, .L80862290     
/* 02BE4 80862234 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 02BE8 80862238 8608007E */  lh      $t0, 0x007E($s0)           ## 0000007E
/* 02BEC 8086223C 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 02BF0 80862240 01091023 */  subu    $v0, $t0, $t1              
/* 02BF4 80862244 00021400 */  sll     $v0, $v0, 16               
/* 02BF8 80862248 00021403 */  sra     $v0, $v0, 16               
/* 02BFC 8086224C 04400003 */  bltz    $v0, .L8086225C            
/* 02C00 80862250 00021823 */  subu    $v1, $zero, $v0            
/* 02C04 80862254 10000001 */  beq     $zero, $zero, .L8086225C   
/* 02C08 80862258 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L8086225C:
/* 02C0C 8086225C 286138A4 */  slti    $at, $v1, 0x38A4           
/* 02C10 80862260 1020000B */  beq     $at, $zero, .L80862290     
/* 02C14 80862264 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02C18 80862268 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 02C1C 8086226C C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 02C20 80862270 4608303C */  c.lt.s  $f6, $f8                   
/* 02C24 80862274 00000000 */  nop
/* 02C28 80862278 45000005 */  bc1f    .L80862290                 
/* 02C2C 8086227C 00000000 */  nop
/* 02C30 80862280 0C218754 */  jal     func_80861D50              
/* 02C34 80862284 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C38 80862288 10000008 */  beq     $zero, $zero, .L808622AC   
/* 02C3C 8086228C 8FAA002C */  lw      $t2, 0x002C($sp)           
.L80862290:
/* 02C40 80862290 0C21907A */  jal     func_808641E8              
/* 02C44 80862294 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 02C48 80862298 1440003A */  bne     $v0, $zero, .L80862384     
/* 02C4C 8086229C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C50 808622A0 0C217EAC */  jal     func_8085FAB0              
/* 02C54 808622A4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 02C58 808622A8 8FAA002C */  lw      $t2, 0x002C($sp)           
.L808622AC:
/* 02C5C 808622AC 814B0843 */  lb      $t3, 0x0843($t2)           ## 00000843
/* 02C60 808622B0 51600035 */  beql    $t3, $zero, .L80862388     
/* 02C64 808622B4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02C68 808622B8 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 02C6C 808622BC 318D0008 */  andi    $t5, $t4, 0x0008           ## $t5 = 00000000
/* 02C70 808622C0 11A00017 */  beq     $t5, $zero, .L80862320     
/* 02C74 808622C4 00000000 */  nop
/* 02C78 808622C8 860E007E */  lh      $t6, 0x007E($s0)           ## 0000007E
/* 02C7C 808622CC 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 02C80 808622D0 01CF1023 */  subu    $v0, $t6, $t7              
/* 02C84 808622D4 00021400 */  sll     $v0, $v0, 16               
/* 02C88 808622D8 00021403 */  sra     $v0, $v0, 16               
/* 02C8C 808622DC 04400003 */  bltz    $v0, .L808622EC            
/* 02C90 808622E0 00021823 */  subu    $v1, $zero, $v0            
/* 02C94 808622E4 10000001 */  beq     $zero, $zero, .L808622EC   
/* 02C98 808622E8 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L808622EC:
/* 02C9C 808622EC 286138A4 */  slti    $at, $v1, 0x38A4           
/* 02CA0 808622F0 1020000B */  beq     $at, $zero, .L80862320     
/* 02CA4 808622F4 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02CA8 808622F8 44818000 */  mtc1    $at, $f16                  ## $f16 = 80.00
/* 02CAC 808622FC C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 02CB0 80862300 4610503C */  c.lt.s  $f10, $f16                 
/* 02CB4 80862304 00000000 */  nop
/* 02CB8 80862308 45000005 */  bc1f    .L80862320                 
/* 02CBC 8086230C 00000000 */  nop
/* 02CC0 80862310 0C218754 */  jal     func_80861D50              
/* 02CC4 80862314 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CC8 80862318 10000019 */  beq     $zero, $zero, .L80862380   
/* 02CCC 8086231C 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
.L80862320:
/* 02CD0 80862320 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02CD4 80862324 00000000 */  nop
/* 02CD8 80862328 3C018086 */  lui     $at, %hi(D_808647C4)       ## $at = 80860000
/* 02CDC 8086232C C43247C4 */  lwc1    $f18, %lo(D_808647C4)($at) 
/* 02CE0 80862330 4600903C */  c.lt.s  $f18, $f0                  
/* 02CE4 80862334 00000000 */  nop
/* 02CE8 80862338 4500000E */  bc1f    .L80862374                 
/* 02CEC 8086233C 00000000 */  nop
/* 02CF0 80862340 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 02CF4 80862344 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02CF8 80862348 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 02CFC 8086234C 13010009 */  beq     $t8, $at, .L80862374       
/* 02D00 80862350 00000000 */  nop
/* 02D04 80862354 83280842 */  lb      $t0, 0x0842($t9)           ## 00000842
/* 02D08 80862358 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 02D0C 8086235C 11010005 */  beq     $t0, $at, .L80862374       
/* 02D10 80862360 00000000 */  nop
/* 02D14 80862364 0C218653 */  jal     func_8086194C              
/* 02D18 80862368 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D1C 8086236C 10000004 */  beq     $zero, $zero, .L80862380   
/* 02D20 80862370 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
.L80862374:
/* 02D24 80862374 0C2187B0 */  jal     func_80861EC0              
/* 02D28 80862378 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D2C 8086237C 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
.L80862380:
/* 02D30 80862380 A20907C8 */  sb      $t1, 0x07C8($s0)           ## 000007C8
.L80862384:
/* 02D34 80862384 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80862388:
/* 02D38 80862388 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02D3C 8086238C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02D40 80862390 03E00008 */  jr      $ra                        
/* 02D44 80862394 00000000 */  nop
