glabel func_808C3224
/* 02094 808C3224 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02098 808C3228 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0209C 808C322C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 020A0 808C3230 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 020A4 808C3234 848F01AC */  lh      $t7, 0x01AC($a0)           ## 000001AC
/* 020A8 808C3238 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 020AC 808C323C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 020B0 808C3240 29E10015 */  slti    $at, $t7, 0x0015           
/* 020B4 808C3244 14200003 */  bne     $at, $zero, .L808C3254     
/* 020B8 808C3248 A08E01E2 */  sb      $t6, 0x01E2($a0)           ## 000001E2
/* 020BC 808C324C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 020C0 808C3250 2405304F */  addiu   $a1, $zero, 0x304F         ## $a1 = 0000304F
.L808C3254:
/* 020C4 808C3254 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 020C8 808C3258 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 020CC 808C325C 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 020D0 808C3260 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 020D4 808C3264 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3D4CCCCD
/* 020D8 808C3268 26040208 */  addiu   $a0, $s0, 0x0208           ## $a0 = 00000208
/* 020DC 808C326C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 020E0 808C3270 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 020E4 808C3274 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 020E8 808C3278 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 020EC 808C327C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 020F0 808C3280 861801DA */  lh      $t8, 0x01DA($s0)           ## 000001DA
/* 020F4 808C3284 57000006 */  bnel    $t8, $zero, .L808C32A0     
/* 020F8 808C3288 861901AC */  lh      $t9, 0x01AC($s0)           ## 000001AC
/* 020FC 808C328C 0C230AAC */  jal     func_808C2AB0              
/* 02100 808C3290 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02104 808C3294 10000013 */  beq     $zero, $zero, .L808C32E4   
/* 02108 808C3298 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0210C 808C329C 861901AC */  lh      $t9, 0x01AC($s0)           ## 000001AC
.L808C32A0:
/* 02110 808C32A0 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 02114 808C32A4 A60801AC */  sh      $t0, 0x01AC($s0)           ## 000001AC
/* 02118 808C32A8 860201AC */  lh      $v0, 0x01AC($s0)           ## 000001AC
/* 0211C 808C32AC 28410015 */  slti    $at, $v0, 0x0015           
/* 02120 808C32B0 1420000B */  bne     $at, $zero, .L808C32E0     
/* 02124 808C32B4 28410052 */  slti    $at, $v0, 0x0052           
/* 02128 808C32B8 10200009 */  beq     $at, $zero, .L808C32E0     
/* 0212C 808C32BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02130 808C32C0 0C23062C */  jal     func_808C18B0              
/* 02134 808C32C4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02138 808C32C8 10400005 */  beq     $v0, $zero, .L808C32E0     
/* 0213C 808C32CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02140 808C32D0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02144 808C32D4 24053850 */  addiu   $a1, $zero, 0x3850         ## $a1 = 00003850
/* 02148 808C32D8 0C230A43 */  jal     func_808C290C              
/* 0214C 808C32DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808C32E0:
/* 02150 808C32E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808C32E4:
/* 02154 808C32E4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02158 808C32E8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0215C 808C32EC 03E00008 */  jr      $ra                        
/* 02160 808C32F0 00000000 */  nop
