.rdata
glabel D_808D6364
    .asciz "SW1 = %d\n"
    .balign 4

glabel D_808D6370
    .asciz "SW2 = %d\n"
    .balign 4

.text
glabel func_808D3140
/* 00AD0 808D3140 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00AD4 808D3144 AFB00020 */  sw      $s0, 0x0020($sp)
/* 00AD8 808D3148 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00ADC 808D314C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00AE0 808D3150 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00AE4 808D3154 AFA5003C */  sw      $a1, 0x003C($sp)
/* 00AE8 808D3158 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 00AEC 808D315C AFA40030 */  sw      $a0, 0x0030($sp)
/* 00AF0 808D3160 860E0196 */  lh      $t6, 0x0196($s0)           ## 00000196
/* 00AF4 808D3164 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00AF8 808D3168 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00AFC 808D316C A7AE0036 */  sh      $t6, 0x0036($sp)
/* 00B00 808D3170 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00B04 808D3174 AFA00010 */  sw      $zero, 0x0010($sp)
/* 00B08 808D3178 0C01E1A7 */  jal     Math_SmoothStepToS

/* 00B0C 808D317C 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00B10 808D3180 A6020196 */  sh      $v0, 0x0196($s0)           ## 00000196
/* 00B14 808D3184 3C04808D */  lui     $a0, %hi(D_808D6364)       ## $a0 = 808D0000
/* 00B18 808D3188 24846364 */  addiu   $a0, $a0, %lo(D_808D6364)  ## $a0 = 808D6364
/* 00B1C 808D318C 0C00084C */  jal     osSyncPrintf

/* 00B20 808D3190 87A50036 */  lh      $a1, 0x0036($sp)
/* 00B24 808D3194 3C04808D */  lui     $a0, %hi(D_808D6370)       ## $a0 = 808D0000
/* 00B28 808D3198 24846370 */  addiu   $a0, $a0, %lo(D_808D6370)  ## $a0 = 808D6370
/* 00B2C 808D319C 0C00084C */  jal     osSyncPrintf

/* 00B30 808D31A0 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 00B34 808D31A4 87AF0036 */  lh      $t7, 0x0036($sp)
/* 00B38 808D31A8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00B3C 808D31AC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 00B40 808D31B0 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00B44 808D31B4 00000000 */  nop
/* 00B48 808D31B8 468020A0 */  cvt.s.w $f2, $f4
/* 00B4C 808D31BC 46001085 */  abs.s   $f2, $f2
/* 00B50 808D31C0 460C103E */  c.le.s  $f2, $f12
/* 00B54 808D31C4 00000000 */  nop
/* 00B58 808D31C8 45020013 */  bc1fl   .L808D3218
/* 00B5C 808D31CC 4602603C */  c.lt.s  $f12, $f2
/* 00B60 808D31D0 86180196 */  lh      $t8, 0x0196($s0)           ## 00000196
/* 00B64 808D31D4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00B68 808D31D8 24A5AE90 */  addiu   $a1, $a1, 0xAE90           ## $a1 = 0600AE90
/* 00B6C 808D31DC 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 00B70 808D31E0 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00B74 808D31E4 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00B78 808D31E8 46803020 */  cvt.s.w $f0, $f6
/* 00B7C 808D31EC 46000005 */  abs.s   $f0, $f0
/* 00B80 808D31F0 4600603C */  c.lt.s  $f12, $f0
/* 00B84 808D31F4 00000000 */  nop
/* 00B88 808D31F8 45020007 */  bc1fl   .L808D3218
/* 00B8C 808D31FC 4602603C */  c.lt.s  $f12, $f2
/* 00B90 808D3200 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 00B94 808D3204 E7A2002C */  swc1    $f2, 0x002C($sp)
/* 00B98 808D3208 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00B9C 808D320C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 00BA0 808D3210 C7A2002C */  lwc1    $f2, 0x002C($sp)
/* 00BA4 808D3214 4602603C */  c.lt.s  $f12, $f2
.L808D3218:
/* 00BA8 808D3218 00000000 */  nop
/* 00BAC 808D321C 4502000F */  bc1fl   .L808D325C
/* 00BB0 808D3220 860801BC */  lh      $t0, 0x01BC($s0)           ## 000001BC
/* 00BB4 808D3224 86190196 */  lh      $t9, 0x0196($s0)           ## 00000196
/* 00BB8 808D3228 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00BBC 808D322C 24A5C8EC */  addiu   $a1, $a1, 0xC8EC           ## $a1 = 0600C8EC
/* 00BC0 808D3230 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 00BC4 808D3234 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00BC8 808D3238 46804020 */  cvt.s.w $f0, $f8
/* 00BCC 808D323C 46000005 */  abs.s   $f0, $f0
/* 00BD0 808D3240 460C003E */  c.le.s  $f0, $f12
/* 00BD4 808D3244 00000000 */  nop
/* 00BD8 808D3248 45020004 */  bc1fl   .L808D325C
/* 00BDC 808D324C 860801BC */  lh      $t0, 0x01BC($s0)           ## 000001BC
/* 00BE0 808D3250 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 00BE4 808D3254 3C06C0A0 */  lui     $a2, 0xC0A0                ## $a2 = C0A00000
/* 00BE8 808D3258 860801BC */  lh      $t0, 0x01BC($s0)           ## 000001BC
.L808D325C:
/* 00BEC 808D325C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00BF0 808D3260 55000010 */  bnel    $t0, $zero, .L808D32A4
/* 00BF4 808D3264 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00BF8 808D3268 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 00BFC 808D326C 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00C00 808D3270 8FA5003C */  lw      $a1, 0x003C($sp)
/* 00C04 808D3274 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C08 808D3278 4610503C */  c.lt.s  $f10, $f16
/* 00C0C 808D327C 00000000 */  nop
/* 00C10 808D3280 45000005 */  bc1f    .L808D3298
/* 00C14 808D3284 00000000 */  nop
/* 00C18 808D3288 0C234E6A */  jal     func_808D39A8
/* 00C1C 808D328C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C20 808D3290 10000004 */  beq     $zero, $zero, .L808D32A4
/* 00C24 808D3294 8FBF0024 */  lw      $ra, 0x0024($sp)
.L808D3298:
/* 00C28 808D3298 0C234D00 */  jal     func_808D3400
/* 00C2C 808D329C 8FA5003C */  lw      $a1, 0x003C($sp)
/* 00C30 808D32A0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L808D32A4:
/* 00C34 808D32A4 8FB00020 */  lw      $s0, 0x0020($sp)
/* 00C38 808D32A8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00C3C 808D32AC 03E00008 */  jr      $ra
/* 00C40 808D32B0 00000000 */  nop
