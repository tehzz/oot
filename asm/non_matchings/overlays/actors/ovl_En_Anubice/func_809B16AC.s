.late_rodata
glabel D_809B2420
    .float -4220.0
glabel D_809B2424
    .float -4230.0

.text
glabel func_809B16AC
/* 0058C 809B16AC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00590 809B16B0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00594 809B16B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00598 809B16B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0059C 809B16BC AFA50054 */  sw      $a1, 0x0054($sp)           
/* 005A0 809B16C0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 005A4 809B16C4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 005A8 809B16C8 3C05C584 */  lui     $a1, 0xC584                ## $a1 = C5840000
/* 005AC 809B16CC 34A53000 */  ori     $a1, $a1, 0x3000           ## $a1 = C5843000
/* 005B0 809B16D0 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 005B4 809B16D4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 005B8 809B16D8 0C01E107 */  jal     Math_ApproachF
              
/* 005BC 809B16DC 3C074396 */  lui     $a3, 0x4396                ## $a3 = 43960000
/* 005C0 809B16E0 2604027C */  addiu   $a0, $s0, 0x027C           ## $a0 = 0000027C
/* 005C4 809B16E4 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 005C8 809B16E8 0C01E123 */  jal     Math_ApproachZeroF
              
/* 005CC 809B16EC 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 005D0 809B16F0 860E0262 */  lh      $t6, 0x0262($s0)           ## 00000262
/* 005D4 809B16F4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 005D8 809B16F8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 005DC 809B16FC 15C00004 */  bne     $t6, $zero, .L809B1710     
/* 005E0 809B1700 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 005E4 809B1704 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 005E8 809B1708 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 005EC 809B170C AFA00010 */  sw      $zero, 0x0010($sp)         
.L809B1710:
/* 005F0 809B1710 C60E0024 */  lwc1    $f14, 0x0024($s0)          ## 00000024
/* 005F4 809B1714 C6040298 */  lwc1    $f4, 0x0298($s0)           ## 00000298
/* 005F8 809B1718 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 005FC 809B171C 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 00600 809B1720 460E2401 */  sub.s   $f16, $f4, $f14            
/* 00604 809B1724 3C01809B */  lui     $at, %hi(D_809B2420)       ## $at = 809B0000
/* 00608 809B1728 46008005 */  abs.s   $f0, $f16                  
/* 0060C 809B172C 4600103C */  c.lt.s  $f2, $f0                   
/* 00610 809B1730 00000000 */  nop
/* 00614 809B1734 4502001D */  bc1fl   .L809B17AC                 
/* 00618 809B1738 C60800BC */  lwc1    $f8, 0x00BC($s0)           ## 000000BC
/* 0061C 809B173C C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00620 809B1740 C60602A0 */  lwc1    $f6, 0x02A0($s0)           ## 000002A0
/* 00624 809B1744 46123201 */  sub.s   $f8, $f6, $f18             
/* 00628 809B1748 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 0062C 809B174C C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 00630 809B1750 46005005 */  abs.s   $f0, $f10                  
/* 00634 809B1754 4600103C */  c.lt.s  $f2, $f0                   
/* 00638 809B1758 00000000 */  nop
/* 0063C 809B175C 45020013 */  bc1fl   .L809B17AC                 
/* 00640 809B1760 C60800BC */  lwc1    $f8, 0x00BC($s0)           ## 000000BC
/* 00644 809B1764 46108102 */  mul.s   $f4, $f16, $f16            
/* 00648 809B1768 46005306 */  mov.s   $f12, $f10                 
/* 0064C 809B176C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00650 809B1770 460A5182 */  mul.s   $f6, $f10, $f10            
/* 00654 809B1774 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 00658 809B1778 46062000 */  add.s   $f0, $f4, $f6              
/* 0065C 809B177C 46000004 */  sqrt.s  $f0, $f0                   
/* 00660 809B1780 46008203 */  div.s   $f8, $f16, $f0             
/* 00664 809B1784 460A4102 */  mul.s   $f4, $f8, $f10             
/* 00668 809B1788 46006203 */  div.s   $f8, $f12, $f0             
/* 0066C 809B178C 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 00670 809B1790 46047180 */  add.s   $f6, $f14, $f4             
/* 00674 809B1794 E6060024 */  swc1    $f6, 0x0024($s0)           ## 00000024
/* 00678 809B1798 460A4102 */  mul.s   $f4, $f8, $f10             
/* 0067C 809B179C 46049180 */  add.s   $f6, $f18, $f4             
/* 00680 809B17A0 10000011 */  beq     $zero, $zero, .L809B17E8   
/* 00684 809B17A4 E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 00688 809B17A8 C60800BC */  lwc1    $f8, 0x00BC($s0)           ## 000000BC
.L809B17AC:
/* 0068C 809B17AC C42A2420 */  lwc1    $f10, %lo(D_809B2420)($at) 
/* 00690 809B17B0 3C18809B */  lui     $t8, %hi(func_809B142C)    ## $t8 = 809B0000
/* 00694 809B17B4 3C01809B */  lui     $at, %hi(D_809B2424)       ## $at = 809B0000
/* 00698 809B17B8 460A403C */  c.lt.s  $f8, $f10                  
/* 0069C 809B17BC 2718142C */  addiu   $t8, $t8, %lo(func_809B142C) ## $t8 = 809B142C
/* 006A0 809B17C0 4502000A */  bc1fl   .L809B17EC                 
/* 006A4 809B17C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006A8 809B17C8 C4242424 */  lwc1    $f4, %lo(D_809B2424)($at)  
/* 006AC 809B17CC A6000260 */  sh      $zero, 0x0260($s0)         ## 00000260
/* 006B0 809B17D0 860F0260 */  lh      $t7, 0x0260($s0)           ## 00000260
/* 006B4 809B17D4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 006B8 809B17D8 AE180250 */  sw      $t8, 0x0250($s0)           ## 00000250
/* 006BC 809B17DC E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 006C0 809B17E0 A60F025E */  sh      $t7, 0x025E($s0)           ## 0000025E
/* 006C4 809B17E4 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
.L809B17E8:
/* 006C8 809B17E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809B17EC:
/* 006CC 809B17EC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 006D0 809B17F0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 006D4 809B17F4 03E00008 */  jr      $ra                        
/* 006D8 809B17F8 00000000 */  nop
