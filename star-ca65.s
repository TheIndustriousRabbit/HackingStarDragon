; da65 V2.18 - Ubuntu 2.19-1
; Created:    2021-08-15 17:01:30
; Input file: star2.prg
; Page:       1


        .setcpu "6502"

L0D2B           := $0D2B
L0F17           := $0F17
L2020           := $2020
L2221           := $2221
L423A           := $423A
L4353           := $4353
L454C           := $454C
L4948           := $4948
L5420           := $5420
L5453           := $5453
L5941           := $5941
LC0F0           := $C0F0
LC0F3           := $C0F3
LC200           := $C200
LC253           := $C253
LC26D           := $C26D
LC26F           := $C26F
LC2DD           := $C2DD
LC313           := $C313
LC31F           := $C31F
LC321           := $C321
LC345           := $C345
LC3F6           := $C3F6
LC3FF           := $C3FF
LC42C           := $C42C
LC45A           := $C45A
LC4BA           := $C4BA
LC4DE           := $C4DE
LC563           := $C563
LC5B9           := $C5B9
LC5BD           := $C5BD
LC610           := $C610
LC622           := $C622
LC62B           := $C62B
LC63A           := $C63A
LC723           := $C723
LC76A           := $C76A
LE097           := $E097
LF910           := $F910
        beq     LF910
        jmp     LC76A

        ldy     $15
        sty     $D401
        beq     LF95C
        dec     $15
LF95C:  jmp     LC200

        rts

        brk
        clc
        brk
        brk
        clc
        brk
        brk
        clc
        brk
        brk
        .byte   $3C
        brk
        asl     $783C,x
        .byte   $0F
        .byte   $3C
        beq     LF97A
        .byte   $FF
        cpx     #$03
        .byte   $E7
        cpy     #$03
        .byte   $C3
LF97A:  cpx     #$3F
        lda     LFFFC,x
        lda     $3FFF,x
        .byte   $C3
        .byte   $FC
        .byte   $03
        .byte   $E7
        cpx     #$03
        .byte   $FF
        cpx     #$07
        .byte   $3C
        beq     LF9AC
        .byte   $3C
        sec
        asl     $383C,x
        brk
        clc
        brk
        brk
        clc
        brk
        brk
        clc
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bmi     LF9AC
LF9AC:  brk
        sei
        brk
        brk
        .byte   $FC
        brk
        ora     ($FE,x)
        brk
        .byte   $03
        .byte   $FF
        brk
        brk
        sei
        brk
        brk
        sei
        brk
        .byte   $03
        .byte   $7B
        brk
        .byte   $07
        .byte   $7B
        .byte   $80
        .byte   $0F
        .byte   $7B
        cpy     #$1F
        .byte   $7B
        cpx     #$3F
        .byte   $FF
        beq     LFA4D
        .byte   $FF
        sed
        .byte   $7C
        .byte   $FC
        sed
        adc     $78FE,y
        .byte   $73
        .byte   $FF
        sec
        .byte   $63
        .byte   $FF
        clc
        brk
        brk
        brk
        brk
        .byte   $93
        ora     $0D
        ora     $0D0D
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L4353
        .byte   $4F
        .byte   $52
        eor     $3A
        bmi     LFA28
        bmi     LFA2A
        jsr     L454C
        lsr     $45,x
        jmp     L423A

        ora     $9E0D
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L4948
        .byte   $54
        jsr     L0D2B
        ora     L2020
        jsr     L2020
        jsr     L2020
        jsr     L5420
        .byte   $4F
LFA28:  .byte   $20
        .byte   $50
LFA2A:  jmp     L5941

        jsr     L5453
        eor     ($52,x)
        .byte   $44
        .byte   $52
        eor     ($47,x)
        .byte   $4F
        lsr     $4000
        .byte   $80
        cpy     #$C0
        bmi     LFA4B
        .byte   $03
        jsr     L2221
        .byte   $23
        and     $26
        .byte   $27
        plp
        rol     a
        .byte   $2B
        .byte   $2C
LFA4B:  .byte   $2D
        .byte   $2F
LFA4D:  bmi     LFA80
        .byte   $32
        .byte   $34
        and     $36,x
        .byte   $37
        and     $3B3A,y
        .byte   $3C
        rol     $403F,x
        eor     ($43,x)
        .byte   $44
        eor     $46
        ldx     #$00
        ldx     #$00
LFA64:  lda     $CF00,x
        beq     LFAAD
        cmp     #$01
        beq     LFA81
        ldy     $CFD0,x
        dey
        dey
        tya
        sta     $CFD0,x
        cmp     #$04
        bcs     LFA7F
        lda     #$00
        sta     $CF00,x
LFA7F:  .byte   $F0
LFA80:  .byte   $2C
LFA81:  ldy     $CF40,x
        lda     $CFC0,x
        sta     $AE
        lda     $CF20,x
        jsr     LC253
        sta     $CF40,x
        lda     $AE
        sta     $CFC0,x
        ldy     $CF50,x
        lda     $CFD0,x
        sta     $AE
        lda     $CF30,x
        jsr     LC253
        sta     $CF50,x
        lda     $AE
        sta     $CFD0,x
LFAAD:  inx
        cpx     #$0F
        bne     LFA64
        rts

        bmi     LFABF
        asl     a
        sty     $02
        adc     $02
        bcc     LFABE
        inc     $AE
LFABE:  rts

LFABF:  asl     a
        sta     $02
        tya
        sbc     $02
        bcs     LFAC9
        dec     $AE
LFAC9:  rts

LFACA:  jmp     LC313

        ldx     #$00
        lda     $CF00,x
        cmp     #$01
        bne     LFACA
        ldy     #$00
        sty     $AE
        sty     $B0
        lda     #$FF
        sta     $AF
        sta     $B1
        inc     $CF70,x
        lda     $CF70,x
        bne     LFAFD
        lda     #$FC
        sta     $CF70,x
        dec     $CF10,x
        lda     $CF10,x
        bne     LFAFD
        jsr     LC2DD
        jmp     LC313

LFAFD:  lda     $CFC0,x
        cmp     #$12
        bcs     LFB0C
        ldy     #$00
        sty     $AE
        ldy     #$7F
        sty     $AF
LFB0C:  cmp     #$9C
        bcc     LFB18
        ldy     #$80
        sty     $AE
        ldy     #$FF
        sty     $AF
LFB18:  lda     $CFD0,x
        cmp     #$30
        bcs     LFB27
        ldy     #$00
        sty     $B0
        ldy     #$7F
        sty     $B1
LFB27:  cmp     #$DA
        bcc     LFB33
        ldy     #$80
        sty     $B0
        ldy     #$FF
        sty     $B1
LFB33:  cpy     #$00
        beq     LFB73
        jsr     LC2DD
        sec
        bcs     LFB73
        ldy     $CF60,x
        lda     $CE00,y
        ora     $AE
        and     $AF
        sta     $CF20,x
        lda     $CE01,y
        ora     $B0
        and     $B1
        sta     $CF30,x
        lda     $CE01,y
        ora     $B0
        and     $B1
        sta     $CF30,x
        lda     $CF10,x
        beq     LFB72
        lda     $CE02,y
        sta     $CF10,x
        lda     $CF60,x
        clc
        adc     #$04
        sta     $CF60,x
LFB72:  rts

LFB73:  inx
        cpx     #$0F
        bcs     LFB7B
        jmp     LC26F

LFB7B:  rts

LFB7C:  jmp     LC3F6

        ldx     #$00
        lda     $CC00,x
        cmp     #$00
        beq     LFB7C
        cmp     #$02
        bcc     LFB91
        lda     #$00
        sta     $CC00,x
LFB91:  lda     $CB80,x
        sta     $AE
        lda     $CBC0,x
        sta     $AF
        lda     #$00
        tay
        sta     ($AE),y
        lda     $CDC0,x
        sta     $AD
        lda     $AD
        beq     LFBFD
        ldy     #$00
        lda     $CD40,x
        cmp     #$04
        bcs     LFBB3
        iny
LFBB3:  cmp     #$9E
        bcc     LFBB8
        iny
LFBB8:  lda     $CD80,x
        cmp     #$C8
        bcc     LFBC0
        iny
LFBC0:  cpy     #$00
        beq     LFBCC
        lda     #$00
        sta     $CC00,x
        jmp     LC3F6

LFBCC:  lda     $CD40,x
        sta     $AE
        ldy     $CCC0,x
        lda     $CC40,x
        jsr     LC253
        sta     $CCC0,x
        lda     $AE
        sta     $CD40,x
        lda     $CD80,x
        sta     $AE
        ldy     $CD00,x
        lda     $CC80,x
        jsr     LC253
        sta     $CD00,x
        lda     $AE
        sta     $CD80,x
        dec     $AD
        jmp     LC345

LFBFD:  lda     $CD80,x
        lsr     a
        lsr     a
        lsr     a
        pha
        and     #$03
        stx     $02
        tay
        lda     $C1D8,y
        sta     $AE
        pla
        tay
        lda     $C1E0,y
        sta     $AF
        lda     $CD40,x
        clc
        adc     $AE
        sta     $AE
        bcc     LFC21
        inc     $AF
LFC21:  lda     $CD40,x
        clc
        adc     $AE
        sta     $AE
        bcc     LFC2D
        inc     $AF
LFC2D:  and     #$F8
        sta     $AE
        lda     $CD80,x
        and     #$07
        tay
        lda     $CD40,x
        and     #$03
        tax
        lda     $C1DC,x
        ora     ($AE),y
        sta     ($AE),y
        ldx     $02
        clc
        tya
        adc     $AE
        bcc     LFC4E
        inc     $AF
LFC4E:  sta     $CB80,x
        lda     $AF
        sta     $CBC0,x
        inx
        cpx     #$40
        beq     LFC5E
        jmp     LC321

LFC5E:  rts

        ldy     $CFCF
        lda     $CB
        cmp     #$0A
        bne     LFC6E
        cpy     #$0E
        bcc     LFC6E
        dey
        dey
LFC6E:  cmp     #$12
        bne     LFC78
        cpy     #$A0
        bcs     LFC78
        iny
        iny
LFC78:  sty     $CFCF
        lda     $028D
        cmp     $16
        sta     $16
        beq     LFC8B
        cmp     #$04
        bne     LFC8B
        jsr     LC42C
LFC8B:  rts

        ldx     #$00
LFC8E:  lda     $CC00,x
        bne     LFCB4
        lda     #$06
        sta     $CDC0,x
        lda     #$00
        sta     $CC40,x
        lda     #$FF
        sta     $CC80,x
        lda     $CFCF
        sec
        sbc     #$08
        sta     $CD40,x
        lda     #$B0
        sta     $CD80,x
        inc     $CC00,x
        rts

LFCB4:  inx
        cpx     #$40
        bne     LFC8E
        rts

        ldx     #$00
LFCBC:  lda     $CC00,x
        beq     LFD1C
        lda     $CDC0,x
        cmp     #$03
        beq     LFD1C
        lda     $CD40,x
        sta     $B0
        lda     $CD80,x
        sta     $B1
        stx     $02
        ldx     #$00
        stx     $AF
LFCD8:  lda     $CF00,x
        cmp     #$01
        bne     LFD22
        lda     $CFC0,x
        sbc     #$0C
        cmp     $B0
        bcs     LFD15
        adc     #$0C
        cmp     $B0
        bcc     LFD15
        lda     $CFD0,x
        sbc     #$30
        cmp     $B1
        bcs     LFD15
        adc     #$14
        cmp     $B1
        bcc     LFD15
        cpx     $AF
        bne     LFD27
        lda     #$02
        sta     $CF00,x
        lda     #$2A
        sta     $15
        stx     $AA
        ldx     $02
        lda     #$F0
        sta     $CD80,x
        ldx     $AA
LFD15:  inx
        cpx     #$0F
        bne     LFCD8
        ldx     $02
LFD1C:  inx
        cpx     #$40
        bne     LFCBC
        rts

LFD22:  inc     $AF
        bne     LFD15
        rts

LFD27:  jsr     LE097
        ldx     $02
        lda     #$03
        sta     $CDC0,x
        lda     $8E
        sta     $CC40,x
        lda     #$7F
        sta     $CC80,x
        jmp     LC4BA

        lda     $CF0E
        cmp     #$02
        beq     LFD48
        jmp     LC563

LFD48:  lda     $CFCE
        sbc     #$08
        sta     $B0
        lda     $CFDE
        sbc     #$28
        sta     $B1
        ldx     #$00
LFD58:  stx     $02
        jsr     LE097
        ldx     $02
        lda     $8E
        sta     $CC40,x
        lda     $8F
        sta     $CC80,x
        lda     #$01
        sta     $CC00,x
        lda     $8D
        and     #$03
        sta     $CDC0,x
        lda     $B0
        sta     $CD40,x
        lda     $B1
        sta     $CD80,x
        inx
        cpx     #$40
        bne     LFD58
        ldx     #$00
        stx     $CFBA
        ldx     #$80
        stx     $CFBB
        ldx     #$00
LFD90:  stx     $96
        jsr     LC31F
        ldx     $96
        inx
        stx     $D401
        bne     LFD90
        inc     $9FFD
        ldx     $9FFD
        cpx     #$03
        bcc     LFDBD
        inc     $9FFF
        lda     #$00
        sta     $9FFD
        lda     $9FFF
        cmp     #$0B
        beq     LFDC0
        lda     #$22
        sta     $B1
        jsr     LC5BD
LFDBD:  jmp     LC63A

LFDC0:  jmp     LC723

        lda     $CFBF
        bmi     LFDF1
        lda     $CFBF
        bmi     LFDF1
        ldx     #$00
LFDCF:  lda     $CFC0,x
        sbc     #$05
        cmp     $CFCF
        bcs     LFDE9
        adc     #$0B
        cmp     $CFCF
        bcc     LFDE9
        lda     $CFD0,x
        cmp     #$D6
        bcc     LFDE9
        bcs     LFDF1
LFDE9:  inx
        cpx     #$0F
        bne     LFDCF
        jmp     LC622

LFDF1:  lda     #$08
        sta     $D401
        ldx     #$00
LFDF8:  ldy     #$00
LFDFA:  iny
        bne     LFDFA
        inc     $D020
        inx
        bne     LFDF8
        stx     $D401
        inc     $9FFA
        lda     $9FFA
        cmp     #$03
        bcs     LFE13
        jmp     LC63A

LFE13:  stx     $CFBA
        stx     $CFBB
        lda     #$58
        sta     $B1
        lda     #$15
        sta     $D018
        lda     #$1B
        sta     $D011
        ldx     #$00
        lda     $9FFD
        asl     a
        clc
        adc     #$30
        sta     $C198
        lda     $9FFF
        sec
        adc     #$3F
        sta     $C1A1
        sbc     #$10
LFE3E:  cmp     #$3A
        bcc     LFE49
        inc     $C196
        sbc     #$0A
        bcs     LFE3E
LFE49:  sta     $C197
        ldx     #$00
LFE4E:  lda     $C180,x
        jsr     LFFD2
        inx
        cpx     $B1
        bne     LFE4E
        sta     $A2
        asl     a
LFE5C:  cmp     $A2
        bne     LFE5C
        lda     $B1
        cmp     #$58
        beq     LFE67
        rts

LFE67:  lda     $CB
        cmp     #$28
        bne     LFE67
        jmp     LC0F0

LFE70:  jsr     LC26D
        lda     $9FFF
        sta     $B4
LFE78:  jsr     LC0F3
        dec     $B4
        bne     LFE78
        jmp     LC4DE

        jsr     LC3FF
        jsr     LC31F
        jsr     LC45A
        lda     $028D
        cmp     #$01
        bne     LFE70
        lda     #$00
        sta     $D401
        jmp     LC62B

        lda     #$20
        sta     $B1
        lda     #$00
        sta     $B0
        tay
        tax
LFEA4:  sta     ($B0),y
        iny
        bne     LFEA4
        inx
        inc     $B1
        cpx     #$20
        bne     LFEA4
        tax
LFEB1:  sta     $CF00,x
        sta     $CC00,x
        inx
        cpx     #$BA
        bne     LFEB1
        tax
LFEBD:  stx     $02
        jsr     LE097
        lda     $8E
        ldx     $02
        and     #$BF
        sta     $CE00,x
        inx
        bne     LFEBD
        ldx     #$00
LFED0:  lda     $CE02,x
        and     #$1F
        sta     $CE02,x
        inx
        inx
        inx
        inx
        bne     LFED0
        lda     $8F
        lsr     a
        lsr     a
        adc     #$20
        sta     $AC
LFEE6:  lda     $AC
        sta     $CFC0,x
        lda     #$40
        sta     $CFD0,x
        stx     $02
        jsr     LE097
        ldx     $02
        lda     $8F
        and     #$07
        adc     #$02
        sta     $CFE0,x
        inc     $CF00,x
        lda     #$0D
        sta     $CFF0,x
        lda     #$F0
        sta     $CF70,x
        inx
        cpx     #$0F
        bne     LFEE6
        lda     #$FF
        sta     $CFBA
        sta     $CFBB
        lda     #$0E
        sta     $CFFF
        ldx     #$00
        ldy     #$01
LFF23:  tya
        sta     $CF10,x
        inx
        iny
        cpx     #$0F
        bne     LFF23
        lda     #$E0
        sta     $CFDF
        lda     #$80
        sta     LFFCF
        lda     #$3B
        sta     $D011
        lda     #$1D
        sta     $D018
        lda     #$01
        sta     $CFEF
        ldx     #$00
        lda     #$10
LFF4A:  sta     $0400,x
        sta     $0500,x
        sta     $0600,x
        sta     $06E8,x
        inx
        bne     LFF4A
        lda     #$0F
        sta     $D418
        lda     #$0F
        sta     $D405
        lda     #$F5
        sta     $D406
        lda     #$81
        sta     $D404
        ldx     #$00
LFF6F:  lda     #$30
        sta     $C196,x
        inx
        cpx     #$04
        bne     LFF6F
        lda     $9FFF
        asl     a
        sta     $D020
        jmp     LC610

        ldx     #$00
        lda     #$93
        jsr     LFFD2
        lda     #$1B
        sta     $D011
        lda     #$15
        sta     $D018
LFF94:  lda     $C752,x
        sta     $D920,x
        sta     $0520,x
        inx
        cpx     #$18
        bne     LFF94
        dex
        stx     $A2
        dex
LFFA6:  lda     $A2
        sta     $D021
        cpx     $A2
        bne     LFFA6
        jmp     LC5B9

        .byte   $07
        .byte   $0F
        .byte   $0F
        .byte   $04
        jsr     L0F17
        .byte   $12
        .byte   $0B
        bit     $0420
        .byte   $12
        ora     ($07,x)
        .byte   $0F
        asl     $0C13
        ora     ($19,x)
        ora     $12
        and     ($A2,x)
        brk
LFFCC:  lda     #$20
        .byte   $9D
LFFCF:  cpy     #$CB
        .byte   $BD
LFFD2:  brk
        cmp     ($9D,x)
        rti

        .byte   $03
        inx
        cpx     #$80
        bne     LFFCC
        lda     #$00
        sta     $9FFA
        sta     $9FFD
        lda     #$01
        sta     $9FFF
        lda     #$50
        sta     $CFCF
        sta     $D021
        sta     $D020
        jmp     LC63A

        brk
        brk
        brk
        brk
        brk
LFFFC:  nop
        nop
        nop
        nop
