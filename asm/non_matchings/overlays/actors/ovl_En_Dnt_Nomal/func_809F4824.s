glabel func_809F4824
/* 01564 809F4824 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01568 809F4828 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0156C 809F482C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01570 809F4830 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01574 809F4834 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 01578 809F4838 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0157C 809F483C AFA50020 */  sw      $a1, 0x0020($sp)           
/* 01580 809F4840 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01584 809F4844 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01588 809F4848 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 0158C 809F484C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 01590 809F4850 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 01594 809F4854 84AE026E */  lh      $t6, 0x026E($a1)           ## 0000026E
/* 01598 809F4858 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 0159C 809F485C 00000000 */  nop
/* 015A0 809F4860 468042A0 */  cvt.s.w $f10, $f8                  
/* 015A4 809F4864 4606503E */  c.le.s  $f10, $f6                  
/* 015A8 809F4868 00000000 */  nop
/* 015AC 809F486C 45020020 */  bc1fl   .L809F48F0                 
/* 015B0 809F4870 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 015B4 809F4874 84AF0274 */  lh      $t7, 0x0274($a1)           ## 00000274
/* 015B8 809F4878 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 015BC 809F487C 2419012C */  addiu   $t9, $zero, 0x012C         ## $t9 = 0000012C
/* 015C0 809F4880 11E10017 */  beq     $t7, $at, .L809F48E0       
/* 015C4 809F4884 3C08809F */  lui     $t0, %hi(func_809F4BA4)    ## $t0 = 809F0000
/* 015C8 809F4888 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 015CC 809F488C 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 015D0 809F4890 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 015D4 809F4894 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 015D8 809F4898 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 015DC 809F489C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 015E0 809F48A0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 015E4 809F48A4 84B8026A */  lh      $t8, 0x026A($a1)           ## 0000026A
/* 015E8 809F48A8 4600028D */  trunc.w.s $f10, $f0                  
/* 015EC 809F48AC 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 015F0 809F48B0 3C18809F */  lui     $t8, %hi(func_809F48FC)    ## $t8 = 809F0000
/* 015F4 809F48B4 440E5000 */  mfc1    $t6, $f10                  
/* 015F8 809F48B8 468084A0 */  cvt.s.w $f18, $f16                 
/* 015FC 809F48BC 271848FC */  addiu   $t8, $t8, %lo(func_809F48FC) ## $t8 = 809F48FC
/* 01600 809F48C0 ACB80214 */  sw      $t8, 0x0214($a1)           ## 00000214
/* 01604 809F48C4 46049202 */  mul.s   $f8, $f18, $f4             
/* 01608 809F48C8 4600418D */  trunc.w.s $f6, $f8                   
/* 0160C 809F48CC 440A3000 */  mfc1    $t2, $f6                   
/* 01610 809F48D0 00000000 */  nop
/* 01614 809F48D4 01CA7821 */  addu    $t7, $t6, $t2              
/* 01618 809F48D8 10000004 */  beq     $zero, $zero, .L809F48EC   
/* 0161C 809F48DC A4AF0264 */  sh      $t7, 0x0264($a1)           ## 00000264
.L809F48E0:
/* 01620 809F48E0 25084BA4 */  addiu   $t0, $t0, %lo(func_809F4BA4) ## $t0 = 00004BA4
/* 01624 809F48E4 A4B9025A */  sh      $t9, 0x025A($a1)           ## 0000025A
/* 01628 809F48E8 ACA80214 */  sw      $t0, 0x0214($a1)           ## 00000214
.L809F48EC:
/* 0162C 809F48EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F48F0:
/* 01630 809F48F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01634 809F48F4 03E00008 */  jr      $ra                        
/* 01638 809F48F8 00000000 */  nop
