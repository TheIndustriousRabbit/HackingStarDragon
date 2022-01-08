; da65 V2.18 - Ubuntu 2.19-1
; Created:    2021-08-15 19:24:06
; Input file: star2-trimmed.prg
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
LE097           := $E097
LFFD2           := $FFD2
LC0F0:  jmp     LC76A

LC0F3:  ldy     $15
        sty     $D401
        beq     LC0FC
        dec     $15
LC0FC:  jmp     LC200

        rts

LC100:  brk
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
        beq     LC11A
        .byte   $FF
        cpx     #$03
        .byte   $E7
        cpy     #$03
        .byte   $C3
LC11A:  cpx     #$3F
        lda     $FFFC,x
        lda     $3FFF,x
        .byte   $C3
        .byte   $FC
        .byte   $03
        .byte   $E7
        cpx     #$03
        .byte   $FF
        cpx     #$07
        .byte   $3C
        beq     LC14C
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
        bmi     LC14C
LC14C:  brk
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
        beq     LC1ED
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
LC180:  .byte   $93
        ora     $0D
        ora     $0D0D
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L4353
        .byte   $4F
        .byte   $52
        eor     $3A
LC196:  .byte   $30
LC197:  .byte   $30
LC198:  bmi     LC1CA
        jsr     L454C
        lsr     $45,x
        .byte   $4C
        .byte   $3A
LC1A1:  .byte   $42
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
LC1C8:  .byte   $20
        .byte   $50
LC1CA:  jmp     L5941

        jsr     L5453
        eor     ($52,x)
        .byte   $44
        .byte   $52
        eor     ($47,x)
        .byte   $4F
        .byte   $4E
LC1D8:  brk
        rti

        .byte   $80
        .byte   $C0
LC1DC:  cpy     #$30
        .byte   $0C
        .byte   $03
LC1E0:  jsr     L2221
        .byte   $23
        and     $26
        .byte   $27
        plp
        rol     a
        .byte   $2B
        .byte   $2C
LC1EB:  .byte   $2D
        .byte   $2F
LC1ED:  bmi     LC220
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
LC200:  ldx     #$00
        ldx     #$00
LC204:  lda     $CF00,x
        beq     LC24D
        cmp     #$01
        beq     LC221
        ldy     $CFD0,x
        dey
        dey
        tya
        sta     $CFD0,x
        cmp     #$04
        bcs     LC21F
        lda     #$00
        sta     $CF00,x
LC21F:  .byte   $F0
LC220:  .byte   $2C
LC221:  ldy     $CF40,x
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
LC24D:  inx
        cpx     #$0F
        bne     LC204
        rts

LC253:  bmi     LC25F
        asl     a
        sty     $02
        adc     $02
        bcc     LC25E
        inc     $AE
LC25E:  rts

LC25F:  asl     a
        sta     $02
        tya
        sbc     $02
        bcs     LC269
        dec     $AE
LC269:  rts

LC26A:  jmp     LC313

LC26D:  ldx     #$00
LC26F:  lda     $CF00,x
        cmp     #$01
        bne     LC26A
        ldy     #$00
        sty     $AE
        sty     $B0
        lda     #$FF
        sta     $AF
        sta     $B1
        inc     $CF70,x
        lda     $CF70,x
        bne     LC29D
        lda     #$FC
        sta     $CF70,x
        dec     $CF10,x
        lda     $CF10,x
        bne     LC29D
        jsr     LC2DD
        jmp     LC313

LC29D:  lda     $CFC0,x
        cmp     #$12
        bcs     LC2AC
        ldy     #$00
        sty     $AE
        ldy     #$7F
        sty     $AF
LC2AC:  cmp     #$9C
        bcc     LC2B8
        ldy     #$80
        sty     $AE
        ldy     #$FF
        sty     $AF
LC2B8:  lda     $CFD0,x
        cmp     #$30
        bcs     LC2C7
        ldy     #$00
        sty     $B0
        ldy     #$7F
        sty     $B1
LC2C7:  cmp     #$DA
        bcc     LC2D3
        ldy     #$80
        sty     $B0
        ldy     #$FF
        sty     $B1
LC2D3:  cpy     #$00
        beq     LC313
        jsr     LC2DD
        sec
        bcs     LC313
LC2DD:  ldy     $CF60,x
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
        beq     LC312
        lda     $CE02,y
        sta     $CF10,x
        lda     $CF60,x
        clc
        adc     #$04
        sta     $CF60,x
LC312:  rts

LC313:  inx
        cpx     #$0F
        bcs     LC31B
        jmp     LC26F

LC31B:  rts

LC31C:  jmp     LC3F6

LC31F:  ldx     #$00
LC321:  lda     $CC00,x
        cmp     #$00
        beq     LC31C
        cmp     #$02
        bcc     LC331
        lda     #$00
        sta     $CC00,x
LC331:  lda     $CB80,x
        sta     $AE
        lda     $CBC0,x
        sta     $AF
        lda     #$00
        tay
        sta     ($AE),y
        lda     $CDC0,x
        sta     $AD
LC345:  lda     $AD
        beq     LC39D
        ldy     #$00
        lda     $CD40,x
        cmp     #$04
        bcs     LC353
        iny
LC353:  cmp     #$9E
        bcc     LC358
        iny
LC358:  lda     $CD80,x
        cmp     #$C8
        bcc     LC360
        iny
LC360:  cpy     #$00
        beq     LC36C
        lda     #$00
        sta     $CC00,x
        jmp     LC3F6

LC36C:  lda     $CD40,x
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

LC39D:  lda     $CD80,x
        lsr     a
        lsr     a
        lsr     a
        pha
        and     #$03
        stx     $02
        tay
        lda     LC1D8,y
        sta     $AE
        pla
        tay
        lda     LC1E0,y
        sta     $AF
        lda     $CD40,x
        clc
        adc     $AE
        sta     $AE
        bcc     LC3C1
        inc     $AF
LC3C1:  lda     $CD40,x
        clc
        adc     $AE
        sta     $AE
        bcc     LC3CD
        inc     $AF
LC3CD:  and     #$F8
        sta     $AE
        lda     $CD80,x
        and     #$07
        tay
        lda     $CD40,x
        and     #$03
        tax
        lda     LC1DC,x
        ora     ($AE),y
        sta     ($AE),y
        ldx     $02
        clc
        tya
        adc     $AE
        bcc     LC3EE
        inc     $AF
LC3EE:  sta     $CB80,x
        lda     $AF
        sta     $CBC0,x
LC3F6:  inx
        cpx     #$40
        beq     LC3FE
        jmp     LC321

LC3FE:  rts

        ;; cfcf = current x position
LC3FF:  ldy     $CFCF

        ;lda     $CB
        ;cmp     #$0A
        ;bne     LC40E
        ;cpy     #$0E
        ;bcc     LC40E
        ; go to the left
        ; bits: 1: up, 2: down, 4: left, 8: right, 16: fire
        ; read from joystick
        lda #$04
        bit $dc01
        bne skipleft
        ; can't go any farther
        cpy     #$0E
        bcc     skipleft
        dey
        dey
skipleft:  ;cmp     #$12
        lda #$08
        bit $dc01
        bne skipright
        ;bne     LC418
        cpy     #$A0
        bcs     skipright
        ; go to the right
        iny
        iny
        ; store position
skipright:  sty     $CFCF
        ;lda     $028D
        ;cmp     $16
        ;sta     $16
        ; fire a shot
        lda #$10
        bit $dc01
        bne almostdone
        lda $16
        cmp #$01
        beq done
        lda #$01
        sta $16
        jsr     LC42C
        jmp done
        ;beq     LC42B
        ;cmp     #$04
        ;bne     LC42B
almostdone:
        lda #$00
        sta $16
done:  rts

LC42C:  ldx     #$00
LC42E:  lda     $CC00,x
        bne     LC454
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

LC454:  inx
        cpx     #$40
        bne     LC42E
        rts

LC45A:  ldx     #$00
LC45C:  lda     $CC00,x
        beq     LC4BC
        lda     $CDC0,x
        cmp     #$03
        beq     LC4BC
        lda     $CD40,x
        sta     $B0
        lda     $CD80,x
        sta     $B1
        stx     $02
        ldx     #$00
        stx     $AF
LC478:  lda     $CF00,x
        cmp     #$01
        bne     LC4C2
        lda     $CFC0,x
        sbc     #$0C
        cmp     $B0
        bcs     LC4B5
        adc     #$0C
        cmp     $B0
        bcc     LC4B5
        lda     $CFD0,x
        sbc     #$30
        cmp     $B1
        bcs     LC4B5
        adc     #$14
        cmp     $B1
        bcc     LC4B5
        cpx     $AF
        bne     LC4C7
        lda     #$02
        sta     $CF00,x
        lda     #$2A
        sta     $15
        stx     $AA
        ldx     $02
        lda     #$F0
        sta     $CD80,x
        ldx     $AA
LC4B5:  inx
        cpx     #$0F
        bne     LC478
LC4BA:  ldx     $02
LC4BC:  inx
        cpx     #$40
        bne     LC45C
        rts

LC4C2:  inc     $AF
        bne     LC4B5
        rts

LC4C7:  jsr     LE097
        ldx     $02
        lda     #$03
        sta     $CDC0,x
        lda     $8E
        sta     $CC40,x
        lda     #$7F
        sta     $CC80,x
        jmp     LC4BA

LC4DE:  lda     $CF0E
        cmp     #$02
        beq     LC4E8
        jmp     LC563

LC4E8:  lda     $CFCE
        sbc     #$08
        sta     $B0
        lda     $CFDE
        sbc     #$28
        sta     $B1
        ldx     #$00
LC4F8:  stx     $02
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
        bne     LC4F8
        ldx     #$00
        stx     $CFBA
        ldx     #$80
        stx     $CFBB
        ldx     #$00
LC530:  stx     $96
        jsr     LC31F
        ldx     $96
        inx
        stx     $D401
        bne     LC530
        inc     $9FFD
        ldx     $9FFD
        cpx     #$03
        bcc     LC55D
        inc     $9FFF
        lda     #$00
        sta     $9FFD
        lda     $9FFF
        cmp     #$0B
        beq     LC560
        lda     #$22
        sta     $B1
        jsr     LC5BD
LC55D:  jmp     LC63A

LC560:  jmp     LC723

LC563:  lda     $CFBF
        bmi     LC591
        lda     $CFBF
        bmi     LC591
        ldx     #$00
LC56F:  lda     $CFC0,x
        sbc     #$05
        cmp     $CFCF
        bcs     LC589
        adc     #$0B
        cmp     $CFCF
        bcc     LC589
        lda     $CFD0,x
        cmp     #$D6
        bcc     LC589
        bcs     LC591
LC589:  inx
        cpx     #$0F
        bne     LC56F
        jmp     LC622

LC591:  lda     #$08
        sta     $D401
        ldx     #$00
LC598:  ldy     #$00
LC59A:  iny
        bne     LC59A
        inc     $D020
        inx
        bne     LC598
        stx     $D401
        inc     $9FFA
        lda     $9FFA
        cmp     #$03
        bcs     LC5B3
        jmp     LC63A

LC5B3:  stx     $CFBA
        stx     $CFBB
LC5B9:  lda     #$58
        sta     $B1
LC5BD:  lda     #$15
        sta     $D018
        lda     #$1B
        sta     $D011
        ldx     #$00
        lda     $9FFD
        asl     a
        clc
        adc     #$30
        sta     LC198
        lda     $9FFF
        sec
        adc     #$3F
        sta     LC1A1
        sbc     #$10
LC5DE:  cmp     #$3A
        bcc     LC5E9
        inc     LC196
        sbc     #$0A
        bcs     LC5DE
LC5E9:  sta     LC197
        ldx     #$00
LC5EE:  lda     LC180,x
        jsr     LFFD2
        inx
        cpx     $B1
        bne     LC5EE
        sta     $A2
        asl     a
LC5FC:  cmp     $A2
        bne     LC5FC
        lda     $B1
        cmp     #$58
        beq     LC607
        rts

LC607:  lda     $CB
        cmp     #$28
        bne     LC607
        jmp     LC0F0

        ; the main game loop?
LC610:  jsr     LC26D
        lda     $9FFF
        sta     $B4
LC618:  jsr     LC0F3
        dec     $B4
        bne     LC618
        jmp     LC4DE

LC622:  jsr     LC3FF
        jsr     LC31F
        jsr     LC45A
        ; reading shift lock
LC62B:  lda     $028D
        cmp     #$01
        ;bne     LC610
        ;lda     #$00
        ;sta     $D401
        ;jmp     LC62B
        jmp     LC610

LC63A:  lda     #$20
        sta     $B1
        lda     #$00
        sta     $B0
        tay
        tax
LC644:  sta     ($B0),y
        iny
        bne     LC644
        inx
        inc     $B1
        cpx     #$20
        bne     LC644
        tax
LC651:  sta     $CF00,x
        sta     $CC00,x
        inx
        cpx     #$BA
        bne     LC651
        tax
LC65D:  stx     $02
        jsr     LE097
        lda     $8E
        ldx     $02
        and     #$BF
        sta     $CE00,x
        inx
        bne     LC65D
        ldx     #$00
LC670:  lda     $CE02,x
        and     #$1F
        sta     $CE02,x
        inx
        inx
        inx
        inx
        bne     LC670
        lda     $8F
        lsr     a
        lsr     a
        adc     #$20
        sta     $AC
LC686:  lda     $AC
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
        bne     LC686
        lda     #$FF
        sta     $CFBA
        sta     $CFBB
        lda     #$0E
        sta     $CFFF
        ldx     #$00
        ldy     #$01
LC6C3:  tya
        sta     $CF10,x
        inx
        iny
        cpx     #$0F
        bne     LC6C3
        lda     #$E0
        sta     $CFDF
        lda     #$80
        sta     $FFCF
        lda     #$3B
        sta     $D011
        lda     #$1D
        sta     $D018
        lda     #$01
        sta     $CFEF
        ldx     #$00
        lda     #$10
LC6EA:  sta     $0400,x
        sta     $0500,x
        sta     $0600,x
        sta     $06E8,x
        inx
        bne     LC6EA
        lda     #$0F
        sta     $D418
        lda     #$0F
        sta     $D405
        lda     #$F5
        sta     $D406
        lda     #$81
        sta     $D404
        ldx     #$00
LC70F:  lda     #$30
        sta     LC196,x
        inx
        cpx     #$04
        bne     LC70F
        lda     $9FFF
        asl     a
        sta     $D020
        jmp     LC610

LC723:  ldx     #$00
        lda     #$93
        jsr     LFFD2
        lda     #$1B
        sta     $D011
        lda     #$15
        sta     $D018
LC734:  lda     LC752,x
        sta     $D920,x
        sta     $0520,x
        inx
        cpx     #$18
        bne     LC734
        dex
        stx     $A2
        dex
LC746:  lda     $A2
        sta     $D021
        cpx     $A2
        bne     LC746
        jmp     LC5B9

LC752:  .byte   $07
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
        .byte   $21
LC76A:  ldx     #$00
LC76C:  lda     #$20
        sta     $CBC0,x
        lda     LC100,x
        sta     $0340,x
        inx
        cpx     #$80
        bne     LC76C
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
        nop
        nop
        nop
        nop
