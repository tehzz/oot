.late_rodata
glabel D_80937A00
 .word 0x37D1B717
glabel D_80937A04
 .word 0x3983126F

.text
glabel func_80933170
/* 06BA0 80933170 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 06BA4 80933174 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 06BA8 80933178 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 06BAC 8093317C 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
/* 06BB0 80933180 3C018093 */  lui     $at, %hi(D_80937A00)       ## $at = 80930000
/* 06BB4 80933184 10400003 */  beq     $v0, $zero, .L80933194     
/* 06BB8 80933188 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 06BBC 8093318C A48E0198 */  sh      $t6, 0x0198($a0)           ## 00000198
/* 06BC0 80933190 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
.L80933194:
/* 06BC4 80933194 C4207A00 */  lwc1    $f0, %lo(D_80937A00)($at)  
/* 06BC8 80933198 3C018093 */  lui     $at, %hi(D_80937A04)       ## $at = 80930000
/* 06BCC 8093319C C4267A04 */  lwc1    $f6, %lo(D_80937A04)($at)  
/* 06BD0 809331A0 C4840054 */  lwc1    $f4, 0x0054($a0)           ## 00000054
/* 06BD4 809331A4 C48A0050 */  lwc1    $f10, 0x0050($a0)          ## 00000050
/* 06BD8 809331A8 C4920058 */  lwc1    $f18, 0x0058($a0)          ## 00000058
/* 06BDC 809331AC 46062201 */  sub.s   $f8, $f4, $f6              
/* 06BE0 809331B0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 06BE4 809331B4 46005400 */  add.s   $f16, $f10, $f0            
/* 06BE8 809331B8 E4880054 */  swc1    $f8, 0x0054($a0)           ## 00000054
/* 06BEC 809331BC E4860028 */  swc1    $f6, 0x0028($a0)           ## 00000028
/* 06BF0 809331C0 46009100 */  add.s   $f4, $f18, $f0             
/* 06BF4 809331C4 E4900050 */  swc1    $f16, 0x0050($a0)          ## 00000050
/* 06BF8 809331C8 14400003 */  bne     $v0, $zero, .L809331D8     
/* 06BFC 809331CC E4840058 */  swc1    $f4, 0x0058($a0)           ## 00000058
/* 06C00 809331D0 0C24CC7A */  jal     func_809331E8              
/* 06C04 809331D4 00000000 */  nop
.L809331D8:
/* 06C08 809331D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 06C0C 809331DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 06C10 809331E0 03E00008 */  jr      $ra                        
/* 06C14 809331E4 00000000 */  nop
