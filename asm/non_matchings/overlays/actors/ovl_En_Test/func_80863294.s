.late_rodata
glabel D_808647D8
    .float 0.7

.text
glabel func_80863294
/* 03C44 80863294 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03C48 80863298 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03C4C 8086329C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03C50 808632A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03C54 808632A4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03C58 808632A8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03C5C 808632AC 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 03C60 808632B0 50400027 */  beql    $v0, $zero, .L80863350     
/* 03C64 808632B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03C68 808632B8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 03C6C 808632BC 00000000 */  nop
/* 03C70 808632C0 3C018086 */  lui     $at, %hi(D_808647D8)       ## $at = 80860000
/* 03C74 808632C4 C42447D8 */  lwc1    $f4, %lo(D_808647D8)($at)  
/* 03C78 808632C8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03C7C 808632CC 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 03C80 808632D0 4600203C */  c.lt.s  $f4, $f0                   
/* 03C84 808632D4 0305C021 */  addu    $t8, $t8, $a1              
/* 03C88 808632D8 4502000F */  bc1fl   .L80863318                 
/* 03C8C 808632DC 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 03C90 808632E0 0C21801A */  jal     func_80860068              
/* 03C94 808632E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03C98 808632E8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 03C9C 808632EC 00000000 */  nop
/* 03CA0 808632F0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 03CA4 808632F4 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 03CA8 808632F8 00000000 */  nop
/* 03CAC 808632FC 46020182 */  mul.s   $f6, $f0, $f2              
/* 03CB0 80863300 46023200 */  add.s   $f8, $f6, $f2              
/* 03CB4 80863304 4600428D */  trunc.w.s $f10, $f8                  
/* 03CB8 80863308 440F5000 */  mfc1    $t7, $f10                  
/* 03CBC 8086330C 1000000F */  beq     $zero, $zero, .L8086334C   
/* 03CC0 80863310 AE0F07E8 */  sw      $t7, 0x07E8($s0)           ## 000007E8
/* 03CC4 80863314 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00001DE4
.L80863318:
/* 03CC8 80863318 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 03CCC 8086331C 13200009 */  beq     $t9, $zero, .L80863344     
/* 03CD0 80863320 00000000 */  nop
/* 03CD4 80863324 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 03CD8 80863328 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 03CDC 8086332C 11010005 */  beq     $t0, $at, .L80863344       
/* 03CE0 80863330 00000000 */  nop
/* 03CE4 80863334 0C218653 */  jal     func_8086194C              
/* 03CE8 80863338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03CEC 8086333C 10000004 */  beq     $zero, $zero, .L80863350   
/* 03CF0 80863340 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80863344:
/* 03CF4 80863344 0C2189F1 */  jal     func_808627C4              
/* 03CF8 80863348 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8086334C:
/* 03CFC 8086334C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80863350:
/* 03D00 80863350 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03D04 80863354 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03D08 80863358 03E00008 */  jr      $ra                        
/* 03D0C 8086335C 00000000 */  nop
