glabel func_809AE7F4
/* 008D4 809AE7F4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 008D8 809AE7F8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008DC 809AE7FC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 008E0 809AE800 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 008E4 809AE804 AFB00028 */  sw      $s0, 0x0028($sp)
/* 008E8 809AE808 AFA50034 */  sw      $a1, 0x0034($sp)
/* 008EC 809AE80C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008F0 809AE810 AFBF002C */  sw      $ra, 0x002C($sp)
/* 008F4 809AE814 3C050600 */  lui     $a1, %hi(D_0600033C)                ## $a1 = 06000000
/* 008F8 809AE818 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 008FC 809AE81C 44070000 */  mfc1    $a3, $f0
/* 00900 809AE820 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00904 809AE824 24A5033C */  addiu   $a1, $a1, %lo(D_0600033C)           ## $a1 = 0600033C
/* 00908 809AE828 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 0090C 809AE82C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00910 809AE830 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00914 809AE834 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00918 809AE838 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 0091C 809AE83C 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 00920 809AE840 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00924 809AE844 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 00928 809AE848 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 0092C 809AE84C 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 00930 809AE850 0C26B7CA */  jal     func_809ADF28
/* 00934 809AE854 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00938 809AE858 10400005 */  beq     $v0, $zero, .L809AE870
/* 0093C 809AE85C 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00940 809AE860 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 00944 809AE864 44813000 */  mtc1    $at, $f6                   ## $f6 = -6.00
/* 00948 809AE868 00000000 */  nop
/* 0094C 809AE86C E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L809AE870:
/* 00950 809AE870 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 00954 809AE874 3C05809B */  lui     $a1, %hi(func_809AF718)    ## $a1 = 809B0000
/* 00958 809AE878 A6000264 */  sh      $zero, 0x0264($s0)         ## 00000264
/* 0095C 809AE87C A6000258 */  sh      $zero, 0x0258($s0)         ## 00000258
/* 00960 809AE880 A618025A */  sh      $t8, 0x025A($s0)           ## 0000025A
/* 00964 809AE884 AE1901A8 */  sw      $t9, 0x01A8($s0)           ## 000001A8
/* 00968 809AE888 24A5F718 */  addiu   $a1, $a1, %lo(func_809AF718) ## $a1 = 809AF718
/* 0096C 809AE88C 0C26B7C8 */  jal     func_809ADF20
/* 00970 809AE890 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00974 809AE894 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00978 809AE898 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0097C 809AE89C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00980 809AE8A0 03E00008 */  jr      $ra
/* 00984 809AE8A4 00000000 */  nop
