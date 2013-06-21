.class Lorg/mozilla/javascript/DToA;
.super Ljava/lang/Object;
.source "DToA.java"


# static fields
.field private static final Bias:I = 0x3ff

.field private static final Bletch:I = 0x10

.field private static final Bndry_mask:I = 0xfffff

.field private static final DTOBASESTR_BUFFER_SIZE:I = 0x436

.field static final DTOSTR_EXPONENTIAL:I = 0x3

.field static final DTOSTR_FIXED:I = 0x2

.field static final DTOSTR_PRECISION:I = 0x4

.field static final DTOSTR_STANDARD:I = 0x0

.field static final DTOSTR_STANDARD_EXPONENTIAL:I = 0x1

.field private static final Exp_11:I = 0x3ff00000

.field private static final Exp_mask:I = 0x7ff00000

.field private static final Exp_mask_shifted:I = 0x7ff

.field private static final Exp_msk1:I = 0x100000

.field private static final Exp_msk1L:J = 0x10000000000000L

.field private static final Exp_shift:I = 0x14

.field private static final Exp_shift1:I = 0x14

.field private static final Exp_shiftL:I = 0x34

.field private static final Frac_mask:I = 0xfffff

.field private static final Frac_mask1:I = 0xfffff

.field private static final Frac_maskL:J = 0xfffffffffffffL

.field private static final Int_max:I = 0xe

.field private static final Log2P:I = 0x1

.field private static final P:I = 0x35

.field private static final Quick_max:I = 0xe

.field private static final Sign_bit:I = -0x80000000

.field private static final Ten_pmax:I = 0x16

.field private static final bigtens:[D = null

.field private static final dtoaModes:[I = null

.field private static final n_bigtens:I = 0x5

.field private static final tens:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 112
    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/javascript/DToA;->tens:[D

    .line 118
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/javascript/DToA;->bigtens:[D

    .line 1167
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/mozilla/javascript/DToA;->dtoaModes:[I

    return-void

    .line 112
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x24t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x59t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x40t 0x8ft 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x88t 0xc3t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x6at 0xf8t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x80t 0x84t 0x2et 0x41t
        0x0t 0x0t 0x0t 0x0t 0xd0t 0x12t 0x63t 0x41t
        0x0t 0x0t 0x0t 0x0t 0x84t 0xd7t 0x97t 0x41t
        0x0t 0x0t 0x0t 0x0t 0x65t 0xcdt 0xcdt 0x41t
        0x0t 0x0t 0x0t 0x20t 0x5ft 0xa0t 0x2t 0x42t
        0x0t 0x0t 0x0t 0xe8t 0x76t 0x48t 0x37t 0x42t
        0x0t 0x0t 0x0t 0xa2t 0x94t 0x1at 0x6dt 0x42t
        0x0t 0x0t 0x40t 0xe5t 0x9ct 0x30t 0xa2t 0x42t
        0x0t 0x0t 0x90t 0x1et 0xc4t 0xbct 0xd6t 0x42t
        0x0t 0x0t 0x34t 0x26t 0xf5t 0x6bt 0xct 0x43t
        0x0t 0x80t 0xe0t 0x37t 0x79t 0xc3t 0x41t 0x43t
        0x0t 0xa0t 0xd8t 0x85t 0x57t 0x34t 0x76t 0x43t
        0x0t 0xc8t 0x4et 0x67t 0x6dt 0xc1t 0xabt 0x43t
        0x0t 0x3dt 0x91t 0x60t 0xe4t 0x58t 0xe1t 0x43t
        0x40t 0x8ct 0xb5t 0x78t 0x1dt 0xaft 0x15t 0x44t
        0x50t 0xeft 0xe2t 0xd6t 0xe4t 0x1at 0x4bt 0x44t
        0x92t 0xd5t 0x4dt 0x6t 0xcft 0xf0t 0x80t 0x44t
    .end array-data

    .line 118
    :array_1
    .array-data 0x8
        0x0t 0x80t 0xe0t 0x37t 0x79t 0xc3t 0x41t 0x43t
        0x17t 0x6et 0x5t 0xb5t 0xb5t 0xb8t 0x93t 0x46t
        0xf5t 0xf9t 0x3ft 0xe9t 0x3t 0x4ft 0x38t 0x4dt
        0x32t 0x1dt 0x30t 0xf9t 0x48t 0x77t 0x82t 0x5at
        0x3ct 0xbft 0x73t 0x7ft 0xddt 0x4ft 0x15t 0x75t
    .end array-data

    .line 1167
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BASEDIGIT(I)C
    .locals 1
    .parameter "digit"

    .prologue
    .line 74
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x57

    :goto_0
    int-to-char v0, v0

    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x30

    goto :goto_0
.end method

.method static JS_dtoa(DIZI[ZLjava/lang/StringBuffer;)I
    .locals 33
    .parameter "d"
    .parameter "mode"
    .parameter "biasUp"
    .parameter "ndigits"
    .parameter "sign"
    .parameter "buf"

    .prologue
    .line 532
    const/4 v4, 0x1

    new-array v10, v4, [I

    .line 533
    .local v10, be:[I
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 537
    .local v9, bbits:[I
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    const/high16 v5, -0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 539
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, p5, v4

    .line 541
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p5

    .end local p5
    const v4, 0x7fffffff

    and-int p5, p5, v4

    move-wide/from16 v0, p0

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide p0

    .line 546
    :goto_0
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p5

    const/high16 v4, 0x7ff0

    and-int p5, p5, v4

    const/high16 v4, 0x7ff0

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 548
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result p3

    .end local p3
    if-nez p3, :cond_1

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p0

    .end local p0
    const p1, 0xfffff

    and-int p0, p0, p1

    if-nez p0, :cond_1

    const-string p0, "Infinity"

    :goto_1
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const/16 p0, 0x270f

    .line 1151
    .end local v9           #bbits:[I
    .end local v10           #be:[I
    :goto_2
    return p0

    .line 544
    .restart local v9       #bbits:[I
    .restart local v10       #be:[I
    .restart local p0
    .restart local p3
    .restart local p5
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, p5, v4

    goto :goto_0

    .line 548
    .end local p0
    .end local p3
    .end local p5
    :cond_1
    const-string p0, "NaN"

    goto :goto_1

    .line 551
    .restart local p0
    .restart local p3
    :cond_2
    const-wide/16 v4, 0x0

    cmpl-double p5, p0, v4

    if-nez p5, :cond_3

    .line 553
    const/16 p0, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 554
    .end local p0
    const/16 p0, 0x30

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 555
    const/16 p0, 0x1

    goto :goto_2

    .line 558
    .restart local p0
    :cond_3
    move-wide/from16 v0, p0

    move-object v2, v10

    move-object v3, v9

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    move-result-object v6

    .line 559
    .local v6, b:Ljava/math/BigInteger;
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p5

    ushr-int/lit8 p5, p5, 0x14

    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x7ff

    move/from16 p5, v0

    .local p5, i:I
    if-eqz p5, :cond_9

    .line 560
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    const/high16 v5, 0x3ff0

    or-int/2addr v4, v5

    move-wide/from16 v0, p0

    move v2, v4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v4

    .line 582
    .local v4, d2:D
    move/from16 v0, p5

    add-int/lit16 v0, v0, -0x3ff

    move v7, v0

    .line 583
    .end local p5           #i:I
    .local v7, i:I
    const/16 p5, 0x0

    .local p5, denorm:Z
    move/from16 v13, p5

    .end local p5           #denorm:Z
    .local v13, denorm:Z
    move-wide v11, v4

    .end local v4           #d2:D
    .local v11, d2:D
    move v5, v7

    .line 596
    .end local v7           #i:I
    .local v5, i:I
    :goto_3
    const-wide/high16 v7, 0x3ff8

    sub-double v7, v11, v7

    const-wide v14, 0x3fd287a7636f4361L

    mul-double/2addr v7, v14

    const-wide v14, 0x3fc68a288b60c8b3L

    add-double/2addr v7, v14

    int-to-double v14, v5

    const-wide v16, 0x3fd34413509f79fbL

    mul-double v14, v14, v16

    add-double/2addr v14, v7

    .line 597
    .local v14, ds:D
    move-wide v0, v14

    double-to-int v0, v0

    move/from16 p5, v0

    .line 598
    .local p5, k:I
    const-wide/16 v7, 0x0

    cmpg-double v4, v14, v7

    if-gez v4, :cond_4

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide v7, v0

    cmpl-double v4, v14, v7

    if-eqz v4, :cond_4

    .line 599
    add-int/lit8 p5, p5, -0x1

    .line 600
    :cond_4
    const/4 v4, 0x1

    .line 601
    .local v4, k_check:Z
    if-ltz p5, :cond_66

    const/16 v7, 0x16

    move/from16 v0, p5

    move v1, v7

    if-gt v0, v1, :cond_66

    .line 602
    sget-object v4, Lorg/mozilla/javascript/DToA;->tens:[D

    .end local v4           #k_check:Z
    aget-wide v7, v4, p5

    cmpg-double v4, p0, v7

    if-gez v4, :cond_5

    .line 603
    add-int/lit8 p5, p5, -0x1

    .line 604
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #k_check:Z
    move/from16 v25, v4

    .end local v4           #k_check:Z
    .local v25, k_check:Z
    move/from16 v23, p5

    .line 608
    .end local p5           #k:I
    .local v23, k:I
    :goto_4
    const/16 p5, 0x0

    aget p5, v9, p5

    sub-int p5, p5, v5

    const/4 v4, 0x1

    sub-int v19, p5, v4

    .line 610
    .local v19, j:I
    if-ltz v19, :cond_b

    .line 611
    const/16 p5, 0x0

    .line 612
    .local p5, b2:I
    move/from16 v4, v19

    .local v4, s2:I
    move v7, v4

    .line 618
    .end local v4           #s2:I
    .local v7, s2:I
    :goto_5
    if-ltz v23, :cond_c

    .line 619
    const/4 v4, 0x0

    .line 620
    .local v4, b5:I
    move/from16 v8, v23

    .line 621
    .local v8, s5:I
    add-int v7, v7, v23

    move/from16 v28, v8

    .end local v8           #s5:I
    .local v28, s5:I
    move/from16 v27, v7

    .end local v7           #s2:I
    .local v27, s2:I
    move v8, v4

    .end local v4           #b5:I
    .local v8, b5:I
    move/from16 v7, p5

    .line 630
    .end local p5           #b2:I
    .local v7, b2:I
    :goto_6
    if-ltz p2, :cond_6

    const/16 p5, 0x9

    move/from16 v0, p2

    move/from16 v1, p5

    if-le v0, v1, :cond_7

    .line 631
    :cond_6
    const/16 p2, 0x0

    .line 632
    :cond_7
    const/16 p5, 0x1

    .line 633
    .local p5, try_quick:Z
    const/4 v4, 0x5

    move/from16 v0, p2

    move v1, v4

    if-le v0, v1, :cond_65

    .line 634
    add-int/lit8 p2, p2, -0x4

    .line 635
    const/16 p5, 0x0

    move/from16 v17, p5

    .line 637
    .end local p5           #try_quick:Z
    .local v17, try_quick:Z
    :goto_7
    const/16 v16, 0x1

    .line 638
    .local v16, leftright:Z
    const/4 v4, 0x0

    .local v4, ilim1:I
    move/from16 p5, v4

    .line 639
    .local p5, ilim:I
    packed-switch p2, :pswitch_data_0

    move/from16 v26, v16

    .end local v16           #leftright:Z
    .local v26, leftright:Z
    move/from16 v21, v4

    .end local v4           #ilim1:I
    .local v21, ilim1:I
    move/from16 v18, p5

    .end local p5           #ilim:I
    .local v18, ilim:I
    move v4, v5

    .line 668
    .end local v5           #i:I
    .local v4, i:I
    :goto_8
    const/16 p5, 0x0

    .line 669
    .local p5, fast_failed:Z
    if-ltz v18, :cond_63

    const/16 v5, 0xe

    move/from16 v0, v18

    move v1, v5

    if-gt v0, v1, :cond_63

    if-eqz v17, :cond_63

    .line 673
    const/16 v16, 0x0

    .line 674
    .end local v4           #i:I
    .local v16, i:I
    move-wide/from16 v11, p0

    .line 675
    move/from16 v24, v23

    .line 676
    .local v24, k0:I
    move/from16 v20, v18

    .line 677
    .local v20, ilim0:I
    const/16 v17, 0x2

    .line 679
    .local v17, ieps:I
    if-lez v23, :cond_f

    .line 680
    sget-object v4, Lorg/mozilla/javascript/DToA;->tens:[D

    and-int/lit8 v5, v23, 0xf

    aget-wide v4, v4, v5

    .line 681
    .end local v14           #ds:D
    .local v4, ds:D
    shr-int/lit8 v14, v23, 0x4

    .line 682
    .end local v19           #j:I
    .local v14, j:I
    and-int/lit8 v15, v14, 0x10

    if-eqz v15, :cond_62

    .line 684
    and-int/lit8 v15, v14, 0xf

    .line 685
    .end local v14           #j:I
    .local v15, j:I
    sget-object v14, Lorg/mozilla/javascript/DToA;->bigtens:[D

    const/16 v19, 0x4

    aget-wide v29, v14, v19

    div-double p0, p0, v29

    .line 686
    add-int/lit8 v14, v17, 0x1

    .end local v17           #ieps:I
    .local v14, ieps:I
    move/from16 v31, v15

    .end local v15           #j:I
    .local v31, j:I
    move v15, v14

    .end local v14           #ieps:I
    .local v15, ieps:I
    move/from16 v14, v16

    .end local v16           #i:I
    .local v14, i:I
    move/from16 v16, v31

    .line 688
    .end local v31           #j:I
    .local v16, j:I
    :goto_9
    if-eqz v16, :cond_e

    .line 689
    and-int/lit8 v17, v16, 0x1

    if-eqz v17, :cond_8

    .line 690
    add-int/lit8 v15, v15, 0x1

    .line 691
    sget-object v17, Lorg/mozilla/javascript/DToA;->bigtens:[D

    aget-wide v29, v17, v14

    mul-double v4, v4, v29

    .line 688
    :cond_8
    shr-int/lit8 v16, v16, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 587
    .end local v4           #ds:D
    .end local v7           #b2:I
    .end local v8           #b5:I
    .end local v11           #d2:D
    .end local v13           #denorm:Z
    .end local v14           #i:I
    .end local v15           #ieps:I
    .end local v16           #j:I
    .end local v18           #ilim:I
    .end local v20           #ilim0:I
    .end local v21           #ilim1:I
    .end local v23           #k:I
    .end local v24           #k0:I
    .end local v25           #k_check:Z
    .end local v26           #leftright:Z
    .end local v27           #s2:I
    .end local v28           #s5:I
    .local p5, i:I
    :cond_9
    const/16 p5, 0x0

    aget p5, v9, p5

    .end local p5           #i:I
    const/4 v4, 0x0

    aget v4, v10, v4

    add-int p5, p5, v4

    move/from16 v0, p5

    add-int/lit16 v0, v0, 0x432

    move/from16 p5, v0

    .line 588
    .restart local p5       #i:I
    const/16 v4, 0x20

    move/from16 v0, p5

    move v1, v4

    if-le v0, v1, :cond_a

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    const/16 v5, 0x40

    sub-int v5, v5, p5

    shl-int/2addr v4, v5

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v5

    const/16 v7, 0x20

    sub-int v7, p5, v7

    ushr-int/2addr v5, v7

    or-int/2addr v4, v5

    int-to-long v4, v4

    .line 591
    .local v4, x:J
    :goto_a
    long-to-double v7, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Lorg/mozilla/javascript/DToA;->word0(D)I

    .end local v4           #x:J
    move-result v4

    const/high16 v5, 0x1f0

    sub-int/2addr v4, v5

    invoke-static {v7, v8, v4}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v4

    .line 592
    .local v4, d2:D
    move/from16 v0, p5

    add-int/lit16 v0, v0, -0x433

    move v7, v0

    .line 593
    .end local p5           #i:I
    .local v7, i:I
    const/16 p5, 0x1

    .local p5, denorm:Z
    move/from16 v13, p5

    .end local p5           #denorm:Z
    .restart local v13       #denorm:Z
    move-wide v11, v4

    .end local v4           #d2:D
    .restart local v11       #d2:D
    move v5, v7

    .end local v7           #i:I
    .restart local v5       #i:I
    goto/16 :goto_3

    .line 588
    .end local v5           #i:I
    .end local v11           #d2:D
    .end local v13           #denorm:Z
    .local p5, i:I
    :cond_a
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v4

    const/16 v5, 0x20

    sub-int v5, v5, p5

    shl-int/2addr v4, v5

    int-to-long v4, v4

    goto :goto_a

    .line 615
    .end local p5           #i:I
    .restart local v5       #i:I
    .restart local v11       #d2:D
    .restart local v13       #denorm:Z
    .local v14, ds:D
    .restart local v19       #j:I
    .restart local v23       #k:I
    .restart local v25       #k_check:Z
    :cond_b
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 p5, v0

    .line 616
    .local p5, b2:I
    const/4 v4, 0x0

    .local v4, s2:I
    move v7, v4

    .end local v4           #s2:I
    .local v7, s2:I
    goto/16 :goto_5

    .line 624
    :cond_c
    sub-int p5, p5, v23

    .line 625
    move/from16 v0, v23

    neg-int v0, v0

    move v4, v0

    .line 626
    .local v4, b5:I
    const/4 v8, 0x0

    .local v8, s5:I
    move/from16 v28, v8

    .end local v8           #s5:I
    .restart local v28       #s5:I
    move/from16 v27, v7

    .end local v7           #s2:I
    .restart local v27       #s2:I
    move v8, v4

    .end local v4           #b5:I
    .local v8, b5:I
    move/from16 v7, p5

    .end local p5           #b2:I
    .local v7, b2:I
    goto/16 :goto_6

    .line 642
    .local v4, ilim1:I
    .local v16, leftright:Z
    .local v17, try_quick:Z
    .local p5, ilim:I
    :pswitch_0
    const/4 v5, -0x1

    .end local v4           #ilim1:I
    .local v5, ilim1:I
    move v4, v5

    .line 643
    .end local p5           #ilim:I
    .local v4, ilim:I
    const/16 p5, 0x12

    .line 644
    .local p5, i:I
    const/16 p4, 0x0

    move/from16 v26, v16

    .end local v16           #leftright:Z
    .restart local v26       #leftright:Z
    move/from16 v21, v5

    .end local v5           #ilim1:I
    .restart local v21       #ilim1:I
    move/from16 v18, v4

    .end local v4           #ilim:I
    .restart local v18       #ilim:I
    move/from16 v4, p5

    .line 645
    .end local p5           #i:I
    .local v4, i:I
    goto/16 :goto_8

    .line 647
    .end local v18           #ilim:I
    .end local v21           #ilim1:I
    .end local v26           #leftright:Z
    .local v4, ilim1:I
    .local v5, i:I
    .restart local v16       #leftright:Z
    .local p5, ilim:I
    :pswitch_1
    const/16 p5, 0x0

    .end local v16           #leftright:Z
    .local p5, leftright:Z
    move/from16 v16, p5

    .line 650
    .end local p5           #leftright:Z
    .restart local v16       #leftright:Z
    :pswitch_2
    if-gtz p4, :cond_d

    .line 651
    const/16 p4, 0x1

    .line 652
    :cond_d
    move/from16 p5, p4

    .end local v5           #i:I
    .local p5, i:I
    move/from16 v5, p4

    .end local v4           #ilim1:I
    .local v5, ilim1:I
    move/from16 v4, p4

    .local v4, ilim:I
    move/from16 v26, v16

    .end local v16           #leftright:Z
    .restart local v26       #leftright:Z
    move/from16 v21, v5

    .end local v5           #ilim1:I
    .restart local v21       #ilim1:I
    move/from16 v18, v4

    .end local v4           #ilim:I
    .restart local v18       #ilim:I
    move/from16 v4, p5

    .line 653
    .end local p5           #i:I
    .local v4, i:I
    goto/16 :goto_8

    .line 655
    .end local v18           #ilim:I
    .end local v21           #ilim1:I
    .end local v26           #leftright:Z
    .local v4, ilim1:I
    .local v5, i:I
    .restart local v16       #leftright:Z
    .local p5, ilim:I
    :pswitch_3
    const/16 p5, 0x0

    .end local v16           #leftright:Z
    .local p5, leftright:Z
    move/from16 v16, p5

    .line 658
    .end local p5           #leftright:Z
    .restart local v16       #leftright:Z
    :pswitch_4
    add-int p5, p4, v23

    add-int/lit8 p5, p5, 0x1

    .line 659
    .end local v5           #i:I
    .local p5, i:I
    move/from16 v4, p5

    .line 660
    .local v4, ilim:I
    const/4 v5, 0x1

    sub-int v5, p5, v5

    .line 661
    .local v5, ilim1:I
    if-gtz p5, :cond_64

    .line 662
    const/16 p5, 0x1

    move/from16 v26, v16

    .end local v16           #leftright:Z
    .restart local v26       #leftright:Z
    move/from16 v21, v5

    .end local v5           #ilim1:I
    .restart local v21       #ilim1:I
    move/from16 v18, v4

    .end local v4           #ilim:I
    .restart local v18       #ilim:I
    move/from16 v4, p5

    .end local p5           #i:I
    .local v4, i:I
    goto/16 :goto_8

    .line 693
    .end local v17           #try_quick:Z
    .end local v19           #j:I
    .local v4, ds:D
    .local v14, i:I
    .restart local v15       #ieps:I
    .local v16, j:I
    .restart local v20       #ilim0:I
    .restart local v24       #k0:I
    .local p5, fast_failed:Z
    :cond_e
    div-double p0, p0, v4

    move/from16 v22, v16

    .end local v16           #j:I
    .local v22, j:I
    move/from16 v16, v14

    .end local v14           #i:I
    .local v16, i:I
    move/from16 v31, v15

    .end local v15           #ieps:I
    .local v31, ieps:I
    move-wide v14, v4

    .end local v4           #ds:D
    .local v14, ds:D
    move/from16 v4, v31

    .line 704
    .end local v31           #ieps:I
    .local v4, ieps:I
    :goto_b
    if-eqz v25, :cond_5f

    const-wide/high16 v29, 0x3ff0

    cmpg-double v5, p0, v29

    if-gez v5, :cond_5f

    if-lez v18, :cond_5f

    .line 705
    if-gtz v21, :cond_11

    .line 706
    const/16 p5, 0x1

    move/from16 v19, v18

    .line 717
    .end local v18           #ilim:I
    .local v19, ilim:I
    :goto_c
    int-to-double v4, v4

    mul-double v4, v4, p0

    const-wide/high16 v17, 0x401c

    add-double v4, v4, v17

    .line 718
    .local v4, eps:D
    invoke-static {v4, v5}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v17

    const/high16 v18, 0x340

    sub-int v17, v17, v18

    move-wide v0, v4

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v4

    .line 719
    if-nez v19, :cond_14

    .line 720
    const/16 p5, 0x0

    .local p5, mhi:Ljava/math/BigInteger;
    move-object/from16 p5, p5

    .line 721
    .local p5, S:Ljava/math/BigInteger;
    const-wide/high16 v17, 0x4014

    sub-double p0, p0, v17

    .line 722
    cmpl-double p5, p0, v4

    if-lez p5, :cond_12

    .line 723
    .end local p5           #S:Ljava/math/BigInteger;
    const/16 p0, 0x31

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 724
    .end local p0
    add-int/lit8 p0, v23, 0x1

    .line 725
    .end local v23           #k:I
    .local p0, k:I
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .line 695
    .end local v4           #eps:D
    .end local v22           #j:I
    .local v17, ieps:I
    .restart local v18       #ilim:I
    .local v19, j:I
    .restart local v23       #k:I
    .local p0, d:D
    .local p5, fast_failed:Z
    :cond_f
    move/from16 v0, v23

    neg-int v0, v0

    move v4, v0

    .local v4, j1:I
    if-eqz v4, :cond_61

    .line 696
    sget-object v5, Lorg/mozilla/javascript/DToA;->tens:[D

    and-int/lit8 v19, v4, 0xf

    aget-wide v29, v5, v19

    .end local v19           #j:I
    mul-double p0, p0, v29

    .line 697
    shr-int/lit8 v4, v4, 0x4

    .local v4, j:I
    move/from16 v5, v17

    .end local v17           #ieps:I
    .local v5, ieps:I
    move/from16 v31, v4

    .end local v4           #j:I
    .local v31, j:I
    move/from16 v4, v16

    .end local v16           #i:I
    .local v4, i:I
    move/from16 v16, v31

    .end local v31           #j:I
    .local v16, j:I
    :goto_d
    if-eqz v16, :cond_60

    .line 698
    and-int/lit8 v17, v16, 0x1

    if-eqz v17, :cond_10

    .line 699
    add-int/lit8 v5, v5, 0x1

    .line 700
    sget-object v17, Lorg/mozilla/javascript/DToA;->bigtens:[D

    aget-wide v29, v17, v4

    mul-double p0, p0, v29

    .line 697
    :cond_10
    shr-int/lit8 v16, v16, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 708
    .end local v5           #ieps:I
    .local v4, ieps:I
    .local v16, i:I
    .restart local v22       #j:I
    :cond_11
    move/from16 v5, v21

    .line 709
    .end local v18           #ilim:I
    .local v5, ilim:I
    add-int/lit8 v17, v23, -0x1

    .line 710
    .end local v23           #k:I
    .local v17, k:I
    const-wide/high16 v18, 0x4024

    mul-double p0, p0, v18

    .line 711
    add-int/lit8 v4, v4, 0x1

    move/from16 v23, v17

    .end local v17           #k:I
    .restart local v23       #k:I
    move/from16 v19, v5

    .end local v5           #ilim:I
    .local v19, ilim:I
    goto :goto_c

    .line 727
    .end local p5           #fast_failed:Z
    .local v4, eps:D
    :cond_12
    move-wide v0, v4

    neg-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double p5, p0, v17

    if-gez p5, :cond_13

    .line 728
    const/16 p0, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 729
    .end local p0           #d:D
    const/16 p0, 0x30

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 730
    const/16 p0, 0x1

    goto/16 :goto_2

    .line 732
    .restart local p0       #d:D
    :cond_13
    const/16 p5, 0x1

    .line 734
    .restart local p5       #fast_failed:Z
    :cond_14
    if-nez p5, :cond_19

    .line 735
    const/16 p5, 0x1

    .line 736
    if-eqz v26, :cond_1c

    .line 740
    const-wide/high16 v16, 0x3fe0

    sget-object v18, Lorg/mozilla/javascript/DToA;->tens:[D

    .end local v16           #i:I
    const/16 v29, 0x1

    sub-int v29, v19, v29

    aget-wide v29, v18, v29

    div-double v16, v16, v29

    sub-double v4, v16, v4

    .line 741
    const/16 v16, 0x0

    .restart local v16       #i:I
    move/from16 v18, v16

    .end local v16           #i:I
    .local v18, i:I
    move-wide/from16 v16, v4

    .line 742
    .end local v4           #eps:D
    .local v16, eps:D
    :goto_e
    move-wide/from16 v0, p0

    double-to-long v0, v0

    move-wide v4, v0

    .line 743
    .local v4, L:J
    move-wide v0, v4

    long-to-double v0, v0

    move-wide/from16 v29, v0

    sub-double p0, p0, v29

    .line 744
    const-wide/16 v29, 0x30

    add-long v4, v4, v29

    long-to-int v4, v4

    int-to-char v4, v4

    move-object/from16 v0, p6

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 745
    .end local v4           #L:J
    cmpg-double v4, p0, v16

    if-gez v4, :cond_15

    .line 746
    add-int/lit8 p0, v23, 0x1

    goto/16 :goto_2

    .line 748
    :cond_15
    const-wide/high16 v4, 0x3ff0

    sub-double v4, v4, p0

    cmpg-double v4, v4, v16

    if-gez v4, :cond_18

    .line 752
    .end local p0           #d:D
    .end local p3
    :cond_16
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 p1, 0x1

    sub-int p0, p0, p1

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    .line 753
    .local p0, lastCh:C
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/16 p3, 0x1

    sub-int p1, p1, p3

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 754
    const/16 p1, 0x39

    move/from16 v0, p0

    move/from16 v1, p1

    if-eq v0, v1, :cond_17

    move/from16 p1, p0

    .end local p0           #lastCh:C
    .local p1, lastCh:C
    move/from16 p0, v23

    .line 761
    .end local v23           #k:I
    .local p0, k:I
    :goto_f
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 p1, v0

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 762
    .end local p1           #lastCh:C
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .line 755
    .restart local v23       #k:I
    .local p0, lastCh:C
    :cond_17
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .end local p0           #lastCh:C
    if-nez p0, :cond_16

    .line 756
    add-int/lit8 p0, v23, 0x1

    .line 757
    .end local v23           #k:I
    .local p0, k:I
    const/16 p1, 0x30

    .line 758
    .restart local p1       #lastCh:C
    goto :goto_f

    .line 764
    .end local p1           #lastCh:C
    .restart local v23       #k:I
    .local p0, d:D
    .restart local p3
    :cond_18
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1b

    move-wide/from16 v4, v16

    .end local v16           #eps:D
    .local v4, eps:D
    move/from16 v16, v18

    .line 806
    .end local v18           #i:I
    .local v16, i:I
    :cond_19
    :goto_10
    if-eqz p5, :cond_5d

    .line 807
    const/16 p0, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 808
    .end local p0           #d:D
    move-wide/from16 p0, v11

    .line 809
    .restart local p0       #d:D
    move/from16 v5, v24

    .line 810
    .end local v4           #eps:D
    .end local v23           #k:I
    .local v5, k:I
    move/from16 v4, v20

    .end local v19           #ilim:I
    .local v4, ilim:I
    move/from16 v17, v5

    .end local v5           #k:I
    .restart local v17       #k:I
    move-wide/from16 v31, v11

    .end local v11           #d2:D
    .local v31, d2:D
    move-wide v11, v14

    .end local v14           #ds:D
    .local v11, ds:D
    move v15, v4

    .end local v4           #ilim:I
    .local v15, ilim:I
    move/from16 v14, v16

    .end local v16           #i:I
    .local v14, i:I
    move-wide/from16 v4, v31

    .end local v31           #d2:D
    .local v4, d2:D
    move/from16 v16, v22

    .line 816
    .end local v20           #ilim0:I
    .end local v22           #j:I
    .end local v24           #k0:I
    .local v16, j:I
    :goto_11
    const/16 p5, 0x0

    aget p5, v10, p5

    .end local p5           #fast_failed:Z
    if-ltz p5, :cond_27

    const/16 p5, 0xe

    move/from16 v0, v17

    move/from16 v1, p5

    if-gt v0, v1, :cond_27

    .line 818
    sget-object p5, Lorg/mozilla/javascript/DToA;->tens:[D

    aget-wide v6, p5, v17

    .line 819
    .end local v7           #b2:I
    .end local v11           #ds:D
    .local v6, ds:D
    if-gez p4, :cond_22

    if-gtz v15, :cond_22

    .line 820
    const/16 p5, 0x0

    .local p5, mhi:Ljava/math/BigInteger;
    move-object/from16 p5, p5

    .line 821
    .local p5, S:Ljava/math/BigInteger;
    if-ltz v15, :cond_1a

    const-wide/high16 v4, 0x4014

    mul-double/2addr v4, v6

    cmpg-double p5, p0, v4

    if-ltz p5, :cond_1a

    .end local v4           #d2:D
    .end local p5           #S:Ljava/math/BigInteger;
    if-nez p3, :cond_21

    const-wide/high16 v4, 0x4014

    mul-double/2addr v4, v6

    cmpl-double p0, p0, v4

    if-nez p0, :cond_21

    .line 822
    .end local p0           #d:D
    :cond_1a
    const/16 p0, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 823
    const/16 p0, 0x30

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 824
    const/16 p0, 0x1

    goto/16 :goto_2

    .line 766
    .end local v15           #ilim:I
    .end local v17           #k:I
    .local v6, b:Ljava/math/BigInteger;
    .restart local v7       #b2:I
    .local v11, d2:D
    .local v14, ds:D
    .local v16, eps:D
    .restart local v18       #i:I
    .restart local v19       #ilim:I
    .restart local v20       #ilim0:I
    .restart local v22       #j:I
    .restart local v23       #k:I
    .restart local v24       #k0:I
    .restart local p0       #d:D
    .local p5, fast_failed:Z
    :cond_1b
    const-wide/high16 v4, 0x4024

    mul-double v4, v4, v16

    .line 767
    .end local v16           #eps:D
    .local v4, eps:D
    const-wide/high16 v16, 0x4024

    mul-double p0, p0, v16

    move-wide/from16 v16, v4

    .end local v4           #eps:D
    .restart local v16       #eps:D
    goto/16 :goto_e

    .line 772
    .end local v18           #i:I
    .restart local v4       #eps:D
    .local v16, i:I
    :cond_1c
    sget-object v16, Lorg/mozilla/javascript/DToA;->tens:[D

    .end local v16           #i:I
    const/16 v17, 0x1

    sub-int v17, v19, v17

    aget-wide v16, v16, v17

    mul-double v16, v16, v4

    .line 773
    .end local v4           #eps:D
    .local v16, eps:D
    const/4 v4, 0x1

    .local v4, i:I
    move/from16 v18, v4

    .line 774
    .end local v4           #i:I
    .restart local v18       #i:I
    :goto_12
    move-wide/from16 v0, p0

    double-to-long v0, v0

    move-wide v4, v0

    .line 775
    .local v4, L:J
    move-wide v0, v4

    long-to-double v0, v0

    move-wide/from16 v29, v0

    sub-double p0, p0, v29

    .line 776
    const-wide/16 v29, 0x30

    add-long v4, v4, v29

    long-to-int v4, v4

    int-to-char v4, v4

    move-object/from16 v0, p6

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 777
    .end local v4           #L:J
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    .line 778
    const-wide/high16 v4, 0x3fe0

    add-double v4, v4, v16

    cmpl-double v4, p0, v4

    if-lez v4, :cond_1f

    .line 782
    .end local p0           #d:D
    .end local p3
    :cond_1d
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 p1, 0x1

    sub-int p0, p0, p1

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    .line 783
    .local p0, lastCh:C
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/16 p3, 0x1

    sub-int p1, p1, p3

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 784
    const/16 p1, 0x39

    move/from16 v0, p0

    move/from16 v1, p1

    if-eq v0, v1, :cond_1e

    move/from16 p1, p0

    .end local p0           #lastCh:C
    .restart local p1       #lastCh:C
    move/from16 p0, v23

    .line 791
    .end local v23           #k:I
    .local p0, k:I
    :goto_13
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 p1, v0

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 792
    .end local p1           #lastCh:C
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .line 785
    .restart local v23       #k:I
    .local p0, lastCh:C
    :cond_1e
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .end local p0           #lastCh:C
    if-nez p0, :cond_1d

    .line 786
    add-int/lit8 p0, v23, 0x1

    .line 787
    .end local v23           #k:I
    .local p0, k:I
    const/16 p1, 0x30

    .line 788
    .restart local p1       #lastCh:C
    goto :goto_13

    .line 795
    .end local p1           #lastCh:C
    .restart local v23       #k:I
    .local p0, d:D
    .restart local p3
    :cond_1f
    const-wide/high16 v4, 0x3fe0

    sub-double v4, v4, v16

    cmpg-double v4, p0, v4

    if-gez v4, :cond_5e

    .line 796
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->stripTrailingZeroes(Ljava/lang/StringBuffer;)V

    .line 799
    add-int/lit8 p0, v23, 0x1

    goto/16 :goto_2

    .line 773
    :cond_20
    add-int/lit8 v4, v18, 0x1

    .end local v18           #i:I
    .local v4, i:I
    const-wide/high16 v29, 0x4024

    mul-double p0, p0, v29

    move/from16 v18, v4

    .end local v4           #i:I
    .restart local v18       #i:I
    goto/16 :goto_12

    .line 826
    .end local v7           #b2:I
    .end local v11           #d2:D
    .end local v18           #i:I
    .end local v19           #ilim:I
    .end local v20           #ilim0:I
    .end local v22           #j:I
    .end local v23           #k:I
    .end local v24           #k0:I
    .end local p0           #d:D
    .end local p5           #fast_failed:Z
    .local v6, ds:D
    .local v14, i:I
    .restart local v15       #ilim:I
    .local v16, j:I
    .restart local v17       #k:I
    :cond_21
    const/16 p0, 0x31

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 827
    add-int/lit8 p0, v17, 0x1

    .line 828
    .end local v17           #k:I
    .local p0, k:I
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .line 830
    .local v4, d2:D
    .restart local v17       #k:I
    .local p0, d:D
    :cond_22
    const/16 p5, 0x1

    .line 831
    .end local v4           #d2:D
    .end local v8           #b5:I
    .end local v14           #i:I
    .local p5, i:I
    :goto_14
    div-double v4, p0, v6

    double-to-long v4, v4

    .line 832
    .local v4, L:J
    long-to-double v8, v4

    mul-double/2addr v8, v6

    sub-double p0, p0, v8

    .line 833
    const-wide/16 v8, 0x30

    add-long/2addr v8, v4

    long-to-int v8, v8

    int-to-char v8, v8

    move-object/from16 v0, p6

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 834
    move/from16 v0, p5

    move v1, v15

    if-ne v0, v1, :cond_25

    .line 835
    add-double p0, p0, p0

    .line 836
    cmpl-double p5, p0, v6

    if-gtz p5, :cond_23

    .end local p5           #i:I
    cmpl-double p5, p0, v6

    if-nez p5, :cond_5c

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long p5, v4, v6

    if-nez p5, :cond_23

    .end local v4           #L:J
    .end local v6           #ds:D
    if-eqz p3, :cond_5c

    .line 847
    .end local p3
    :cond_23
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    const/16 p5, 0x1

    sub-int p3, p3, p5

    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p3

    .line 848
    .local p3, lastCh:C
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p5

    const/4 v4, 0x1

    sub-int p5, p5, v4

    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 849
    const/16 p5, 0x39

    move/from16 v0, p3

    move/from16 v1, p5

    if-eq v0, v1, :cond_24

    move/from16 p5, p3

    .end local p3           #lastCh:C
    .local p5, lastCh:C
    move/from16 p3, v17

    .line 856
    .end local v17           #k:I
    .local p3, k:I
    :goto_15
    add-int/lit8 p5, p5, 0x1

    move/from16 v0, p5

    int-to-char v0, v0

    move/from16 p5, v0

    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 864
    .end local p5           #lastCh:C
    :goto_16
    add-int/lit8 p0, p3, 0x1

    goto/16 :goto_2

    .line 850
    .restart local v17       #k:I
    .local p3, lastCh:C
    :cond_24
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    .end local p3           #lastCh:C
    if-nez p3, :cond_23

    .line 851
    add-int/lit8 p3, v17, 0x1

    .line 852
    .end local v17           #k:I
    .local p3, k:I
    const/16 p5, 0x30

    .line 853
    .restart local p5       #lastCh:C
    goto :goto_15

    .line 860
    .restart local v4       #L:J
    .restart local v6       #ds:D
    .restart local v17       #k:I
    .local p3, biasUp:Z
    .local p5, i:I
    :cond_25
    const-wide/high16 v4, 0x4024

    mul-double p0, p0, v4

    .line 861
    const-wide/16 v4, 0x0

    cmpl-double v4, p0, v4

    if-nez v4, :cond_26

    .end local v4           #L:J
    move/from16 p3, v17

    .line 862
    .end local v17           #k:I
    .local p3, k:I
    goto :goto_16

    .line 830
    .restart local v17       #k:I
    .local p3, biasUp:Z
    :cond_26
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_14

    .line 867
    .end local p5           #i:I
    .local v4, d2:D
    .local v6, b:Ljava/math/BigInteger;
    .restart local v7       #b2:I
    .restart local v8       #b5:I
    .local v11, ds:D
    .restart local v14       #i:I
    :cond_27
    move v11, v7

    .line 868
    .local v11, m2:I
    move v4, v8

    .line 869
    .local v4, m5:I
    const/4 v12, 0x0

    .local v12, mlo:Ljava/math/BigInteger;
    move-object/from16 p5, v12

    .line 870
    .local p5, mhi:Ljava/math/BigInteger;
    if-eqz v26, :cond_5b

    .line 871
    const/16 p5, 0x2

    move/from16 v0, p2

    move/from16 v1, p5

    if-ge v0, v1, :cond_2b

    .line 872
    .end local p5           #mhi:Ljava/math/BigInteger;
    if-eqz v13, :cond_2a

    const/16 p5, 0x0

    aget p5, v10, p5

    move/from16 v0, p5

    add-int/lit16 v0, v0, 0x433

    move/from16 p5, v0

    .end local v14           #i:I
    .local p5, i:I
    :goto_17
    move/from16 v13, v28

    .end local v28           #s5:I
    .local v13, s5:I
    move v10, v4

    .end local v4           #m5:I
    .local v10, m5:I
    move v9, v11

    .end local v11           #m2:I
    .local v9, m2:I
    move/from16 v5, p5

    .end local p5           #i:I
    .local v5, i:I
    move v4, v8

    .end local v8           #b5:I
    .local v4, b5:I
    move/from16 v8, v16

    .line 891
    .end local v16           #j:I
    .local v8, j:I
    :goto_18
    add-int p5, v7, v5

    .line 892
    .end local v7           #b2:I
    .local p5, b2:I
    add-int v11, v27, v5

    .line 893
    .end local v27           #s2:I
    .local v11, s2:I
    const-wide/16 v18, 0x1

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .local v7, mhi:Ljava/math/BigInteger;
    move v14, v13

    .end local v13           #s5:I
    .local v14, s5:I
    move-object/from16 v31, v7

    .end local v7           #mhi:Ljava/math/BigInteger;
    .local v31, mhi:Ljava/math/BigInteger;
    move v7, v8

    .end local v8           #j:I
    .local v7, j:I
    move v8, v9

    .end local v9           #m2:I
    .local v8, m2:I
    move v9, v11

    .end local v11           #s2:I
    .local v9, s2:I
    move-object/from16 v11, v31

    .end local v31           #mhi:Ljava/math/BigInteger;
    .local v11, mhi:Ljava/math/BigInteger;
    move/from16 v32, v5

    .end local v5           #i:I
    .local v32, i:I
    move v5, v4

    .end local v4           #b5:I
    .local v5, b5:I
    move/from16 v4, v32

    .line 899
    .end local v32           #i:I
    .local v4, i:I
    :goto_19
    if-lez v8, :cond_59

    if-lez v9, :cond_59

    .line 900
    if-ge v8, v9, :cond_2d

    move v4, v8

    .line 901
    :goto_1a
    sub-int p5, p5, v4

    .line 902
    sub-int/2addr v8, v4

    .line 903
    sub-int/2addr v9, v4

    move/from16 v31, v9

    .end local v9           #s2:I
    .local v31, s2:I
    move v9, v8

    .end local v8           #m2:I
    .local v9, m2:I
    move/from16 v8, v31

    .end local v31           #s2:I
    .local v8, s2:I
    move/from16 v32, v4

    .end local v4           #i:I
    .restart local v32       #i:I
    move/from16 v4, p5

    .end local p5           #b2:I
    .local v4, b2:I
    move/from16 p5, v32

    .line 907
    .end local v32           #i:I
    .local p5, i:I
    :goto_1b
    if-lez v5, :cond_58

    .line 908
    if-eqz v26, :cond_2e

    .line 909
    if-lez v10, :cond_57

    .line 910
    invoke-static {v11, v10}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    .line 911
    .end local v11           #mhi:Ljava/math/BigInteger;
    .local v7, mhi:Ljava/math/BigInteger;
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p5

    .line 912
    .local p5, b1:Ljava/math/BigInteger;
    move-object/from16 p5, p5

    .end local v6           #b:Ljava/math/BigInteger;
    .local p5, b:Ljava/math/BigInteger;
    move-object v6, v7

    .line 914
    .end local v7           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    :goto_1c
    sub-int/2addr v5, v10

    .local v5, j:I
    if-eqz v5, :cond_56

    .line 915
    move-object/from16 v0, p5

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p5

    move-object v11, v6

    .end local v6           #mhi:Ljava/math/BigInteger;
    .restart local v11       #mhi:Ljava/math/BigInteger;
    move v10, v5

    .end local v5           #j:I
    .local v10, j:I
    move-object/from16 v6, p5

    .line 923
    .end local p5           #b:Ljava/math/BigInteger;
    .local v6, b:Ljava/math/BigInteger;
    :goto_1d
    const-wide/16 v18, 0x1

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p5

    .line 924
    .local p5, S:Ljava/math/BigInteger;
    if-lez v14, :cond_28

    .line 925
    move-object/from16 v0, p5

    move v1, v14

    invoke-static {v0, v1}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p5

    .line 930
    :cond_28
    const/4 v5, 0x0

    .line 931
    .local v5, spec_case:Z
    const/4 v7, 0x2

    move/from16 v0, p2

    move v1, v7

    if-ge v0, v1, :cond_55

    .line 932
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v7

    if-nez v7, :cond_55

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v7

    const v13, 0xfffff

    and-int/2addr v7, v13

    if-nez v7, :cond_55

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v7

    const/high16 v13, 0x7fe0

    and-int/2addr v7, v13

    if-eqz v7, :cond_55

    .line 937
    add-int/lit8 v4, v4, 0x1

    .line 938
    add-int/lit8 v5, v8, 0x1

    .line 939
    .end local v8           #s2:I
    .local v5, s2:I
    const/4 v7, 0x1

    .local v7, spec_case:Z
    move/from16 v16, v7

    .end local v7           #spec_case:Z
    .local v16, spec_case:Z
    move v13, v5

    .end local v5           #s2:I
    .local v13, s2:I
    move v7, v4

    .line 950
    .end local v4           #b2:I
    .local v7, b2:I
    :goto_1e
    invoke-virtual/range {p5 .. p5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 951
    .local v4, S_bytes:[B
    const/4 v5, 0x0

    .line 952
    .local v5, S_hiWord:I
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_1f
    const/16 v18, 0x4

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_2f

    .line 953
    shl-int/lit8 v5, v5, 0x8

    .line 954
    move-object v0, v4

    array-length v0, v0

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_29

    .line 955
    aget-byte v18, v4, v8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v5, v5, v18

    .line 952
    :cond_29
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 872
    .end local v5           #S_hiWord:I
    .end local p5           #S:Ljava/math/BigInteger;
    .local v4, m5:I
    .local v8, b5:I
    .local v9, bbits:[I
    .local v10, be:[I
    .local v11, m2:I
    .local v13, denorm:Z
    .local v14, i:I
    .local v16, j:I
    .restart local v27       #s2:I
    .restart local v28       #s5:I
    :cond_2a
    const/16 p5, 0x36

    const/4 v5, 0x0

    aget v5, v9, v5

    sub-int p5, p5, v5

    goto/16 :goto_17

    .line 877
    :cond_2b
    const/16 p5, 0x1

    sub-int p5, v15, p5

    .line 878
    .end local v16           #j:I
    .local p5, j:I
    move v0, v4

    move/from16 v1, p5

    if-lt v0, v1, :cond_2c

    .line 879
    sub-int v4, v4, p5

    move/from16 v10, v28

    .end local v28           #s5:I
    .local v10, s5:I
    move v9, v4

    .end local v4           #m5:I
    .local v9, m5:I
    move/from16 v5, p5

    .end local p5           #j:I
    .local v5, j:I
    move/from16 p5, v8

    .line 885
    .end local v8           #b5:I
    .local p5, b5:I
    :goto_20
    move v4, v15

    .end local v14           #i:I
    .local v4, i:I
    if-gez v15, :cond_5a

    .line 886
    sub-int v8, v11, v4

    .line 887
    .end local v11           #m2:I
    .local v8, m2:I
    const/4 v4, 0x0

    move v13, v10

    .end local v10           #s5:I
    .local v13, s5:I
    move v10, v9

    .end local v9           #m5:I
    .local v10, m5:I
    move v9, v8

    .end local v8           #m2:I
    .local v9, m2:I
    move v8, v5

    .end local v5           #j:I
    .local v8, j:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    move/from16 v4, p5

    .end local p5           #b5:I
    .local v4, b5:I
    goto/16 :goto_18

    .line 881
    .end local v5           #i:I
    .local v4, m5:I
    .local v8, b5:I
    .local v9, bbits:[I
    .local v10, be:[I
    .restart local v11       #m2:I
    .local v13, denorm:Z
    .restart local v14       #i:I
    .restart local v28       #s5:I
    .local p5, j:I
    :cond_2c
    sub-int v4, p5, v4

    .end local p5           #j:I
    .local v4, j:I
    add-int v9, v28, v4

    .line 882
    .end local v28           #s5:I
    .local v9, s5:I
    add-int p5, v8, v4

    .line 883
    .end local v8           #b5:I
    .local p5, b5:I
    const/4 v5, 0x0

    .local v5, m5:I
    move v10, v9

    .end local v9           #s5:I
    .local v10, s5:I
    move v9, v5

    .end local v5           #m5:I
    .local v9, m5:I
    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    goto :goto_20

    .end local v13           #denorm:Z
    .end local v27           #s2:I
    .local v4, i:I
    .local v5, b5:I
    .local v7, j:I
    .local v8, m2:I
    .local v9, s2:I
    .local v10, m5:I
    .local v11, mhi:Ljava/math/BigInteger;
    .local v14, s5:I
    .local p5, b2:I
    :cond_2d
    move v4, v9

    .line 900
    goto/16 :goto_1a

    .line 918
    .local v4, b2:I
    .local v8, s2:I
    .local v9, m2:I
    .local p5, i:I
    :cond_2e
    invoke-static {v6, v5}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p5

    .end local v6           #b:Ljava/math/BigInteger;
    .local p5, b:Ljava/math/BigInteger;
    move-object/from16 v6, p5

    .end local p5           #b:Ljava/math/BigInteger;
    .restart local v6       #b:Ljava/math/BigInteger;
    move v10, v7

    .end local v7           #j:I
    .local v10, j:I
    goto/16 :goto_1d

    .line 957
    .local v4, S_bytes:[B
    .local v5, S_hiWord:I
    .local v7, b2:I
    .local v8, idx:I
    .local v13, s2:I
    .local v16, spec_case:Z
    .local p5, S:Ljava/math/BigInteger;
    :cond_2f
    if-eqz v14, :cond_33

    const/16 v4, 0x20

    invoke-static {v5}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    .end local v4           #S_bytes:[B
    move-result v5

    .end local v5           #S_hiWord:I
    sub-int/2addr v4, v5

    :goto_21
    add-int/2addr v4, v13

    and-int/lit8 v4, v4, 0x1f

    .local v4, i:I
    if-eqz v4, :cond_30

    .line 958
    const/16 v5, 0x20

    sub-int v4, v5, v4

    .line 960
    :cond_30
    const/4 v5, 0x4

    if-le v4, v5, :cond_34

    .line 961
    add-int/lit8 v5, v4, -0x4

    .line 962
    .end local v4           #i:I
    .local v5, i:I
    add-int v4, v7, v5

    .line 963
    .end local v7           #b2:I
    .local v4, b2:I
    add-int v7, v9, v5

    .line 964
    .end local v9           #m2:I
    .local v7, m2:I
    add-int v8, v13, v5

    .end local v13           #s2:I
    .local v8, s2:I
    move/from16 v31, v8

    .end local v8           #s2:I
    .restart local v31       #s2:I
    move v8, v7

    .end local v7           #m2:I
    .local v8, m2:I
    move/from16 v7, v31

    .line 973
    .end local v31           #s2:I
    .local v7, s2:I
    :goto_22
    if-lez v4, :cond_53

    .line 974
    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 975
    .end local v6           #b:Ljava/math/BigInteger;
    .local v4, b:Ljava/math/BigInteger;
    :goto_23
    if-lez v7, :cond_31

    .line 976
    move-object/from16 v0, p5

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p5

    .line 979
    :cond_31
    if-eqz v25, :cond_52

    .line 980
    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_52

    .line 981
    add-int/lit8 v7, v17, -0x1

    .line 982
    .end local v17           #k:I
    .local v7, k:I
    const-wide/16 v13, 0xa

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 983
    if-eqz v26, :cond_51

    .line 984
    const-wide/16 v13, 0xa

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .end local v11           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    move-object v9, v6

    .line 985
    .end local v6           #mhi:Ljava/math/BigInteger;
    .local v9, mhi:Ljava/math/BigInteger;
    :goto_24
    move/from16 v6, v21

    .end local v15           #ilim:I
    .local v6, ilim:I
    move v11, v7

    .end local v7           #k:I
    .local v11, k:I
    move-object/from16 v31, v9

    .end local v9           #mhi:Ljava/math/BigInteger;
    .local v31, mhi:Ljava/math/BigInteger;
    move v9, v6

    .end local v6           #ilim:I
    .local v9, ilim:I
    move-object/from16 v6, v31

    .line 990
    .end local v31           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    :goto_25
    if-gtz v9, :cond_36

    const/4 v7, 0x2

    move/from16 v0, p2

    move v1, v7

    if-le v0, v1, :cond_36

    .line 993
    if-ltz v9, :cond_50

    const-wide/16 p0, 0x5

    invoke-static/range {p0 .. p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .end local p0           #d:D
    move-result-object p0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .end local p5           #S:Ljava/math/BigInteger;
    .local p0, S:Ljava/math/BigInteger;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    .end local v5           #i:I
    .local p1, i:I
    if-ltz p1, :cond_32

    if-nez p1, :cond_35

    if-nez p3, :cond_35

    .line 1001
    :cond_32
    :goto_26
    const/16 p0, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1002
    .end local p0           #S:Ljava/math/BigInteger;
    const/16 p0, 0x30

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1003
    const/16 p0, 0x1

    goto/16 :goto_2

    .line 957
    .end local p1           #i:I
    .local v4, S_bytes:[B
    .local v5, S_hiWord:I
    .local v6, b:Ljava/math/BigInteger;
    .local v7, b2:I
    .local v8, idx:I
    .local v9, m2:I
    .local v11, mhi:Ljava/math/BigInteger;
    .restart local v13       #s2:I
    .restart local v15       #ilim:I
    .restart local v17       #k:I
    .local p0, d:D
    .restart local p5       #S:Ljava/math/BigInteger;
    :cond_33
    const/4 v4, 0x1

    goto/16 :goto_21

    .line 966
    .end local v5           #S_hiWord:I
    .local v4, i:I
    :cond_34
    const/4 v5, 0x4

    if-ge v4, v5, :cond_54

    .line 967
    add-int/lit8 v5, v4, 0x1c

    .line 968
    .end local v4           #i:I
    .local v5, i:I
    add-int v4, v7, v5

    .line 969
    .end local v7           #b2:I
    .local v4, b2:I
    add-int v7, v9, v5

    .line 970
    .end local v9           #m2:I
    .local v7, m2:I
    add-int v8, v13, v5

    .end local v13           #s2:I
    .local v8, s2:I
    move/from16 v31, v8

    .end local v8           #s2:I
    .local v31, s2:I
    move v8, v7

    .end local v7           #m2:I
    .local v8, m2:I
    move/from16 v7, v31

    .end local v31           #s2:I
    .local v7, s2:I
    goto/16 :goto_22

    .line 1007
    .end local v5           #i:I
    .end local v7           #s2:I
    .end local v15           #ilim:I
    .end local v17           #k:I
    .end local p5           #S:Ljava/math/BigInteger;
    .local v4, b:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    .local v9, ilim:I
    .local v11, k:I
    .local p0, S:Ljava/math/BigInteger;
    .restart local p1       #i:I
    :cond_35
    const/16 p0, 0x31

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1008
    .end local p0           #S:Ljava/math/BigInteger;
    add-int/lit8 p0, v11, 0x1

    .line 1009
    .end local v11           #k:I
    .local p0, k:I
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .line 1011
    .end local p1           #i:I
    .restart local v5       #i:I
    .restart local v11       #k:I
    .local p0, d:D
    .restart local p5       #S:Ljava/math/BigInteger;
    :cond_36
    if-eqz v26, :cond_43

    .line 1012
    if-lez v8, :cond_4f

    .line 1013
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 1019
    .end local v6           #mhi:Ljava/math/BigInteger;
    .local v5, mhi:Ljava/math/BigInteger;
    :goto_27
    move-object v7, v5

    .line 1020
    .end local v12           #mlo:Ljava/math/BigInteger;
    .local v7, mlo:Ljava/math/BigInteger;
    if-eqz v16, :cond_4e

    .line 1021
    move-object v5, v7

    .line 1022
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    move-object v6, v5

    .line 1027
    .end local v5           #mhi:Ljava/math/BigInteger;
    .restart local v6       #mhi:Ljava/math/BigInteger;
    :goto_28
    const/4 v5, 0x1

    .local v5, i:I
    move-object v12, v6

    .end local v6           #mhi:Ljava/math/BigInteger;
    .local v12, mhi:Ljava/math/BigInteger;
    move-object v13, v7

    .end local v7           #mlo:Ljava/math/BigInteger;
    .local v13, mlo:Ljava/math/BigInteger;
    move v8, v5

    .end local v5           #i:I
    .local v8, i:I
    move v5, v10

    .line 1028
    .end local v10           #j:I
    .end local v14           #s5:I
    .local v5, j:I
    :goto_29
    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    .line 1029
    .local v7, divResult:[Ljava/math/BigInteger;
    const/4 v4, 0x1

    aget-object v4, v7, v4

    .line 1030
    const/4 v5, 0x0

    aget-object v5, v7, v5

    .end local v5           #j:I
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v6, v5

    .line 1034
    .local v6, dig:C
    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    .line 1036
    .restart local v10       #j:I
    move-object/from16 v0, p5

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1037
    .local v5, delta:Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gtz v14, :cond_37

    const/4 v5, 0x1

    .line 1039
    .local v5, j1:I
    :goto_2a
    if-nez v5, :cond_39

    if-nez p2, :cond_39

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_39

    .line 1040
    const/16 p0, 0x39

    move v0, v6

    move/from16 v1, p0

    if-ne v0, v1, :cond_38

    .line 1041
    .end local p0           #d:D
    const/16 p0, 0x39

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1042
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuffer;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 1043
    add-int/lit8 p0, v11, 0x1

    .line 1044
    .end local v11           #k:I
    .local p0, k:I
    const/16 p1, 0x31

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1046
    :goto_2b
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .line 1037
    .local v5, delta:Ljava/math/BigInteger;
    .restart local v11       #k:I
    .local p0, d:D
    :cond_37
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    goto :goto_2a

    .line 1049
    .end local p0           #d:D
    .local v5, j1:I
    :cond_38
    if-lez v10, :cond_4c

    .line 1050
    add-int/lit8 p0, v6, 0x1

    move/from16 v0, p0

    int-to-char v0, v0

    move/from16 p0, v0

    .line 1051
    .end local v6           #dig:C
    .local p0, dig:C
    :goto_2c
    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1052
    add-int/lit8 p0, v11, 0x1

    goto/16 :goto_2

    .line 1054
    .restart local v6       #dig:C
    .local p0, d:D
    :cond_39
    if-ltz v10, :cond_3a

    if-nez v10, :cond_3d

    if-nez p2, :cond_3d

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_3d

    .line 1059
    :cond_3a
    if-lez v5, :cond_4b

    .line 1062
    const/16 p0, 0x1

    move-object v0, v4

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .end local p0           #d:D
    move-result-object p0

    .line 1063
    .end local v4           #b:Ljava/math/BigInteger;
    .local p0, b:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p5

    .line 1064
    .end local v5           #j1:I
    .local p5, j1:I
    if-gtz p5, :cond_3b

    if-nez p5, :cond_4a

    and-int/lit8 p1, v6, 0x1

    const/4 v4, 0x1

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_3b

    if-eqz p3, :cond_49

    :cond_3b
    add-int/lit8 p1, v6, 0x1

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 p1, v0

    .end local v6           #dig:C
    .local p1, dig:C
    const/16 p3, 0x39

    move v0, v6

    move/from16 v1, p3

    if-ne v0, v1, :cond_3c

    .line 1066
    .end local p3           #biasUp:Z
    const/16 p0, 0x39

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1067
    .end local p0           #b:Ljava/math/BigInteger;
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuffer;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 1068
    add-int/lit8 p0, v11, 0x1

    .line 1069
    .end local v11           #k:I
    .local p0, k:I
    const/16 p1, 0x31

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1071
    .end local p1           #dig:C
    :goto_2d
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .restart local v11       #k:I
    .local p0, b:Ljava/math/BigInteger;
    .restart local p1       #dig:C
    :cond_3c
    move/from16 p3, p5

    .line 1075
    .end local p5           #j1:I
    .local p3, j1:I
    :goto_2e
    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1076
    add-int/lit8 p0, v11, 0x1

    goto/16 :goto_2

    .line 1078
    .end local p1           #dig:C
    .restart local v4       #b:Ljava/math/BigInteger;
    .restart local v5       #j1:I
    .restart local v6       #dig:C
    .local p0, d:D
    .local p3, biasUp:Z
    .local p5, S:Ljava/math/BigInteger;
    :cond_3d
    if-lez v5, :cond_3f

    .line 1079
    const/16 p0, 0x39

    move v0, v6

    move/from16 v1, p0

    if-ne v0, v1, :cond_3e

    .line 1083
    .end local p0           #d:D
    const/16 p0, 0x39

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1084
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuffer;)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 1085
    add-int/lit8 p0, v11, 0x1

    .line 1086
    .end local v11           #k:I
    .local p0, k:I
    const/16 p1, 0x31

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1088
    :goto_2f
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .line 1090
    .end local p0           #k:I
    .restart local v11       #k:I
    :cond_3e
    add-int/lit8 p0, v6, 0x1

    move/from16 v0, p0

    int-to-char v0, v0

    move/from16 p0, v0

    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1091
    add-int/lit8 p0, v11, 0x1

    goto/16 :goto_2

    .line 1093
    .local p0, d:D
    :cond_3f
    move-object/from16 v0, p6

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1094
    if-ne v8, v9, :cond_41

    move-object/from16 p0, v4

    .end local v4           #b:Ljava/math/BigInteger;
    .local p0, b:Ljava/math/BigInteger;
    move/from16 p1, v6

    .end local v6           #dig:C
    .restart local p1       #dig:C
    move v5, v8

    .end local v8           #i:I
    .local v5, i:I
    move-object v4, v7

    .end local v7           #divResult:[Ljava/math/BigInteger;
    .local v4, divResult:[Ljava/math/BigInteger;
    move v6, v10

    .end local v10           #j:I
    .local v6, j:I
    move-object v8, v13

    .end local v13           #mlo:Ljava/math/BigInteger;
    .local v8, mlo:Ljava/math/BigInteger;
    move-object v7, v12

    .line 1119
    .end local v12           #mhi:Ljava/math/BigInteger;
    .local v7, mhi:Ljava/math/BigInteger;
    :goto_30
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .end local v4           #divResult:[Ljava/math/BigInteger;
    move-result-object p0

    .line 1120
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    .line 1121
    .end local v6           #j:I
    .local p0, j:I
    if-gtz p0, :cond_40

    if-nez p0, :cond_45

    and-int/lit8 p0, p1, 0x1

    const/16 p1, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    if-eq v0, v1, :cond_40

    .end local p0           #j:I
    .end local p1           #dig:C
    if-eqz p3, :cond_45

    .line 1130
    :cond_40
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuffer;)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 1131
    add-int/lit8 p0, v11, 0x1

    .line 1132
    .end local v11           #k:I
    .local p0, k:I
    const/16 p1, 0x31

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1133
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    .line 1096
    .local v4, b:Ljava/math/BigInteger;
    .local v5, j1:I
    .local v6, dig:C
    .local v7, divResult:[Ljava/math/BigInteger;
    .local v8, i:I
    .restart local v10       #j:I
    .restart local v11       #k:I
    .restart local v12       #mhi:Ljava/math/BigInteger;
    .restart local v13       #mlo:Ljava/math/BigInteger;
    .local p0, d:D
    :cond_41
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .end local v5           #j1:I
    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1097
    if-ne v13, v12, :cond_42

    .line 1098
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .end local v12           #mhi:Ljava/math/BigInteger;
    .local v5, mhi:Ljava/math/BigInteger;
    move-object v6, v5

    .end local v13           #mlo:Ljava/math/BigInteger;
    .local v6, mlo:Ljava/math/BigInteger;
    move-object v7, v6

    .end local v6           #mlo:Ljava/math/BigInteger;
    .local v7, mlo:Ljava/math/BigInteger;
    move-object v6, v5

    .line 1027
    .end local v5           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    :goto_31
    add-int/lit8 v5, v8, 0x1

    .end local v8           #i:I
    .local v5, i:I
    move-object v12, v6

    .end local v6           #mhi:Ljava/math/BigInteger;
    .restart local v12       #mhi:Ljava/math/BigInteger;
    move-object v13, v7

    .end local v7           #mlo:Ljava/math/BigInteger;
    .restart local v13       #mlo:Ljava/math/BigInteger;
    move v8, v5

    .end local v5           #i:I
    .restart local v8       #i:I
    move v5, v10

    .end local v10           #j:I
    .local v5, j:I
    goto/16 :goto_29

    .line 1100
    .end local v5           #j:I
    .local v6, dig:C
    .local v7, divResult:[Ljava/math/BigInteger;
    .restart local v10       #j:I
    :cond_42
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 1101
    .end local v13           #mlo:Ljava/math/BigInteger;
    .local v6, mlo:Ljava/math/BigInteger;
    const-wide/16 v13, 0xa

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .end local v12           #mhi:Ljava/math/BigInteger;
    .local v5, mhi:Ljava/math/BigInteger;
    move-object v7, v6

    .end local v6           #mlo:Ljava/math/BigInteger;
    .local v7, mlo:Ljava/math/BigInteger;
    move-object v6, v5

    .end local v5           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    goto :goto_31

    .line 1106
    .end local v7           #mlo:Ljava/math/BigInteger;
    .local v5, i:I
    .local v8, m2:I
    .local v12, mlo:Ljava/math/BigInteger;
    .restart local v14       #s5:I
    :cond_43
    const/16 p0, 0x1

    .end local v5           #i:I
    .local p0, i:I
    move/from16 v5, p0

    .end local p0           #i:I
    .restart local v5       #i:I
    move-object/from16 p0, v4

    .line 1108
    .end local v4           #b:Ljava/math/BigInteger;
    .local p0, b:Ljava/math/BigInteger;
    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 1109
    .local v4, divResult:[Ljava/math/BigInteger;
    const/16 p0, 0x1

    aget-object p0, v4, p0

    .line 1110
    const/16 p1, 0x0

    aget-object p1, v4, p1

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x30

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 p1, v0

    .line 1111
    .restart local p1       #dig:C
    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1112
    if-lt v5, v9, :cond_44

    move-object v7, v6

    .end local v6           #mhi:Ljava/math/BigInteger;
    .local v7, mhi:Ljava/math/BigInteger;
    move-object v8, v12

    .end local v12           #mlo:Ljava/math/BigInteger;
    .local v8, mlo:Ljava/math/BigInteger;
    move v6, v10

    .line 1113
    .end local v10           #j:I
    .local v6, j:I
    goto/16 :goto_30

    .line 1114
    .end local v7           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    .local v8, m2:I
    .restart local v10       #j:I
    .restart local v12       #mlo:Ljava/math/BigInteger;
    :cond_44
    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .end local p1           #dig:C
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 1106
    add-int/lit8 p1, v5, 0x1

    .end local v5           #i:I
    .local p1, i:I
    move/from16 v5, p1

    .end local p1           #i:I
    .restart local v5       #i:I
    goto :goto_32

    .line 1137
    .end local v4           #divResult:[Ljava/math/BigInteger;
    .end local v6           #mhi:Ljava/math/BigInteger;
    .end local v10           #j:I
    .end local v12           #mlo:Ljava/math/BigInteger;
    .end local v14           #s5:I
    .end local p0           #b:Ljava/math/BigInteger;
    .restart local v7       #mhi:Ljava/math/BigInteger;
    .local v8, mlo:Ljava/math/BigInteger;
    :cond_45
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->stripTrailingZeroes(Ljava/lang/StringBuffer;)V

    .line 1151
    :cond_46
    add-int/lit8 p0, v11, 0x1

    goto/16 :goto_2

    .local v4, b:Ljava/math/BigInteger;
    .local v5, j1:I
    .local v6, dig:C
    .local v7, divResult:[Ljava/math/BigInteger;
    .local v8, i:I
    .restart local v10       #j:I
    .local v12, mhi:Ljava/math/BigInteger;
    .restart local v13       #mlo:Ljava/math/BigInteger;
    :cond_47
    move/from16 p0, v11

    .end local v11           #k:I
    .local p0, k:I
    goto/16 :goto_2f

    .end local v4           #b:Ljava/math/BigInteger;
    .end local v5           #j1:I
    .end local v6           #dig:C
    .end local p0           #k:I
    .end local p3           #biasUp:Z
    .restart local v11       #k:I
    .local p1, dig:C
    .local p5, j1:I
    :cond_48
    move/from16 p0, v11

    .end local v11           #k:I
    .restart local p0       #k:I
    goto/16 :goto_2d

    .end local p1           #dig:C
    .restart local v6       #dig:C
    .restart local v11       #k:I
    .local p0, b:Ljava/math/BigInteger;
    .restart local p3       #biasUp:Z
    :cond_49
    move/from16 p1, v6

    .end local v6           #dig:C
    .restart local p1       #dig:C
    move/from16 p3, p5

    .end local p5           #j1:I
    .local p3, j1:I
    goto/16 :goto_2e

    .end local p1           #dig:C
    .restart local v6       #dig:C
    .local p3, biasUp:Z
    .restart local p5       #j1:I
    :cond_4a
    move/from16 p1, v6

    .end local v6           #dig:C
    .restart local p1       #dig:C
    move/from16 p3, p5

    .end local p5           #j1:I
    .local p3, j1:I
    goto/16 :goto_2e

    .end local p1           #dig:C
    .restart local v4       #b:Ljava/math/BigInteger;
    .restart local v5       #j1:I
    .restart local v6       #dig:C
    .local p0, d:D
    .local p3, biasUp:Z
    .local p5, S:Ljava/math/BigInteger;
    :cond_4b
    move-object/from16 p0, v4

    .end local v4           #b:Ljava/math/BigInteger;
    .local p0, b:Ljava/math/BigInteger;
    move/from16 p1, v6

    .end local v6           #dig:C
    .restart local p1       #dig:C
    move/from16 p3, v5

    .end local v5           #j1:I
    .local p3, j1:I
    goto/16 :goto_2e

    .end local p0           #b:Ljava/math/BigInteger;
    .end local p1           #dig:C
    .restart local v4       #b:Ljava/math/BigInteger;
    .restart local v5       #j1:I
    .restart local v6       #dig:C
    .local p3, biasUp:Z
    :cond_4c
    move/from16 p0, v6

    .end local v6           #dig:C
    .local p0, dig:C
    goto/16 :goto_2c

    .end local p0           #dig:C
    .restart local v6       #dig:C
    :cond_4d
    move/from16 p0, v11

    .end local v11           #k:I
    .local p0, k:I
    goto/16 :goto_2b

    .end local v6           #dig:C
    .end local v12           #mhi:Ljava/math/BigInteger;
    .end local v13           #mlo:Ljava/math/BigInteger;
    .local v5, mhi:Ljava/math/BigInteger;
    .local v7, mlo:Ljava/math/BigInteger;
    .local v8, m2:I
    .restart local v11       #k:I
    .restart local v14       #s5:I
    .local p0, d:D
    :cond_4e
    move-object v6, v5

    .end local v5           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    goto/16 :goto_28

    .end local v7           #mlo:Ljava/math/BigInteger;
    .local v5, i:I
    .local v12, mlo:Ljava/math/BigInteger;
    :cond_4f
    move-object v5, v6

    .end local v6           #mhi:Ljava/math/BigInteger;
    .local v5, mhi:Ljava/math/BigInteger;
    goto/16 :goto_27

    .local v5, i:I
    .restart local v6       #mhi:Ljava/math/BigInteger;
    :cond_50
    move-object/from16 p0, p5

    .end local p5           #S:Ljava/math/BigInteger;
    .local p0, S:Ljava/math/BigInteger;
    move/from16 p1, v5

    .end local v5           #i:I
    .local p1, i:I
    goto/16 :goto_26

    .end local v6           #mhi:Ljava/math/BigInteger;
    .end local v9           #ilim:I
    .end local p1           #i:I
    .restart local v5       #i:I
    .local v7, k:I
    .local v11, mhi:Ljava/math/BigInteger;
    .restart local v15       #ilim:I
    .local p0, d:D
    .restart local p5       #S:Ljava/math/BigInteger;
    :cond_51
    move-object v9, v11

    .end local v11           #mhi:Ljava/math/BigInteger;
    .local v9, mhi:Ljava/math/BigInteger;
    goto/16 :goto_24

    .end local v9           #mhi:Ljava/math/BigInteger;
    .local v7, s2:I
    .restart local v11       #mhi:Ljava/math/BigInteger;
    .restart local v17       #k:I
    :cond_52
    move-object v6, v11

    .end local v11           #mhi:Ljava/math/BigInteger;
    .restart local v6       #mhi:Ljava/math/BigInteger;
    move v9, v15

    .end local v15           #ilim:I
    .local v9, ilim:I
    move/from16 v11, v17

    .end local v17           #k:I
    .local v11, k:I
    goto/16 :goto_25

    .end local v9           #ilim:I
    .local v4, b2:I
    .local v6, b:Ljava/math/BigInteger;
    .local v11, mhi:Ljava/math/BigInteger;
    .restart local v15       #ilim:I
    .restart local v17       #k:I
    :cond_53
    move-object v4, v6

    .end local v6           #b:Ljava/math/BigInteger;
    .local v4, b:Ljava/math/BigInteger;
    goto/16 :goto_23

    .end local v5           #i:I
    .local v4, i:I
    .restart local v6       #b:Ljava/math/BigInteger;
    .local v7, b2:I
    .local v8, idx:I
    .local v9, m2:I
    .local v13, s2:I
    :cond_54
    move v8, v9

    .end local v9           #m2:I
    .local v8, m2:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    move v4, v7

    .end local v7           #b2:I
    .local v4, b2:I
    move v7, v13

    .end local v13           #s2:I
    .local v7, s2:I
    goto/16 :goto_22

    .end local v7           #s2:I
    .end local v16           #spec_case:Z
    .local v5, spec_case:Z
    .local v8, s2:I
    .restart local v9       #m2:I
    :cond_55
    move/from16 v16, v5

    .end local v5           #spec_case:Z
    .restart local v16       #spec_case:Z
    move v13, v8

    .end local v8           #s2:I
    .restart local v13       #s2:I
    move v7, v4

    .end local v4           #b2:I
    .local v7, b2:I
    goto/16 :goto_1e

    .end local v7           #b2:I
    .end local v11           #mhi:Ljava/math/BigInteger;
    .end local v13           #s2:I
    .end local v16           #spec_case:Z
    .restart local v4       #b2:I
    .local v5, j:I
    .local v6, mhi:Ljava/math/BigInteger;
    .restart local v8       #s2:I
    .local v10, m5:I
    .local p5, b:Ljava/math/BigInteger;
    :cond_56
    move-object v11, v6

    .end local v6           #mhi:Ljava/math/BigInteger;
    .restart local v11       #mhi:Ljava/math/BigInteger;
    move v10, v5

    .end local v5           #j:I
    .local v10, j:I
    move-object/from16 v6, p5

    .end local p5           #b:Ljava/math/BigInteger;
    .local v6, b:Ljava/math/BigInteger;
    goto/16 :goto_1d

    .local v5, b5:I
    .local v7, j:I
    .local v10, m5:I
    .local p5, i:I
    :cond_57
    move-object/from16 p5, v6

    .end local v6           #b:Ljava/math/BigInteger;
    .local p5, b:Ljava/math/BigInteger;
    move-object v6, v11

    .end local v11           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    goto/16 :goto_1c

    .local v6, b:Ljava/math/BigInteger;
    .restart local v11       #mhi:Ljava/math/BigInteger;
    .local p5, i:I
    :cond_58
    move v10, v7

    .end local v7           #j:I
    .local v10, j:I
    goto/16 :goto_1d

    .local v4, i:I
    .restart local v7       #j:I
    .local v8, m2:I
    .local v9, s2:I
    .local v10, m5:I
    .local p5, b2:I
    :cond_59
    move/from16 v31, v9

    .end local v9           #s2:I
    .restart local v31       #s2:I
    move v9, v8

    .end local v8           #m2:I
    .local v9, m2:I
    move/from16 v8, v31

    .end local v31           #s2:I
    .local v8, s2:I
    move/from16 v32, v4

    .end local v4           #i:I
    .restart local v32       #i:I
    move/from16 v4, p5

    .end local p5           #b2:I
    .local v4, b2:I
    move/from16 p5, v32

    .end local v32           #i:I
    .local p5, i:I
    goto/16 :goto_1b

    .end local v8           #s2:I
    .end local v14           #s5:I
    .local v4, i:I
    .local v5, j:I
    .local v7, b2:I
    .local v9, m5:I
    .local v10, s5:I
    .local v11, m2:I
    .local v13, denorm:Z
    .restart local v27       #s2:I
    .local p5, b5:I
    :cond_5a
    move v13, v10

    .end local v10           #s5:I
    .local v13, s5:I
    move v8, v5

    .end local v5           #j:I
    .local v8, j:I
    move v10, v9

    .end local v9           #m5:I
    .local v10, m5:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    move v9, v11

    .end local v11           #m2:I
    .local v9, m2:I
    move/from16 v4, p5

    .end local p5           #b5:I
    .local v4, b5:I
    goto/16 :goto_18

    .end local v5           #i:I
    .local v4, m5:I
    .local v8, b5:I
    .local v9, bbits:[I
    .local v10, be:[I
    .restart local v11       #m2:I
    .local v13, denorm:Z
    .local v14, i:I
    .local v16, j:I
    .restart local v28       #s5:I
    .local p5, mhi:Ljava/math/BigInteger;
    :cond_5b
    move/from16 v9, v27

    .end local v27           #s2:I
    .local v9, s2:I
    move v10, v4

    .end local v4           #m5:I
    .local v10, m5:I
    move v5, v8

    .end local v8           #b5:I
    .local v5, b5:I
    move v8, v11

    .end local v11           #m2:I
    .local v8, m2:I
    move v4, v14

    .end local v14           #i:I
    .local v4, i:I
    move/from16 v14, v28

    .end local v28           #s5:I
    .local v14, s5:I
    move-object/from16 v11, p5

    .end local p5           #mhi:Ljava/math/BigInteger;
    .local v11, mhi:Ljava/math/BigInteger;
    move/from16 p5, v7

    .end local v7           #b2:I
    .local p5, b2:I
    move/from16 v7, v16

    .end local v16           #j:I
    .local v7, j:I
    goto/16 :goto_19

    .end local v4           #i:I
    .end local v5           #b5:I
    .end local v6           #b:Ljava/math/BigInteger;
    .end local v7           #j:I
    .end local v8           #m2:I
    .end local v11           #mhi:Ljava/math/BigInteger;
    .end local v12           #mlo:Ljava/math/BigInteger;
    .end local v14           #s5:I
    .end local p5           #b2:I
    .local v9, bbits:[I
    .local v10, be:[I
    .restart local v16       #j:I
    .restart local v27       #s2:I
    .restart local v28       #s5:I
    :cond_5c
    move/from16 p3, v17

    .end local v17           #k:I
    .local p3, k:I
    goto/16 :goto_16

    .end local v15           #ilim:I
    .local v4, eps:D
    .restart local v6       #b:Ljava/math/BigInteger;
    .local v7, b2:I
    .local v8, b5:I
    .local v11, d2:D
    .local v14, ds:D
    .local v16, i:I
    .restart local v19       #ilim:I
    .restart local v20       #ilim0:I
    .restart local v22       #j:I
    .restart local v23       #k:I
    .restart local v24       #k0:I
    .local p3, biasUp:Z
    .local p5, fast_failed:Z
    :cond_5d
    move-wide v4, v11

    .end local v11           #d2:D
    .local v4, d2:D
    move/from16 v17, v23

    .end local v23           #k:I
    .restart local v17       #k:I
    move-wide v11, v14

    .end local v14           #ds:D
    .local v11, ds:D
    move/from16 v15, v19

    .end local v19           #ilim:I
    .restart local v15       #ilim:I
    move/from16 v14, v16

    .end local v16           #i:I
    .local v14, i:I
    move/from16 v16, v22

    .end local v22           #j:I
    .local v16, j:I
    goto/16 :goto_11

    .end local v4           #d2:D
    .end local v15           #ilim:I
    .end local v17           #k:I
    .local v11, d2:D
    .local v14, ds:D
    .local v16, eps:D
    .restart local v18       #i:I
    .restart local v19       #ilim:I
    .restart local v22       #j:I
    .restart local v23       #k:I
    :cond_5e
    move-wide/from16 v4, v16

    .end local v16           #eps:D
    .local v4, eps:D
    move/from16 v16, v18

    .end local v18           #i:I
    .local v16, i:I
    goto/16 :goto_10

    .end local v19           #ilim:I
    .local v4, ieps:I
    .local v18, ilim:I
    :cond_5f
    move/from16 v19, v18

    .end local v18           #ilim:I
    .restart local v19       #ilim:I
    goto/16 :goto_c

    .end local v19           #ilim:I
    .end local v22           #j:I
    .local v4, i:I
    .local v5, ieps:I
    .local v16, j:I
    .restart local v18       #ilim:I
    :cond_60
    move/from16 v22, v16

    .end local v16           #j:I
    .restart local v22       #j:I
    move/from16 v16, v4

    .end local v4           #i:I
    .local v16, i:I
    move v4, v5

    .end local v5           #ieps:I
    .local v4, ieps:I
    goto/16 :goto_b

    .end local v22           #j:I
    .local v4, j1:I
    .local v17, ieps:I
    .local v19, j:I
    :cond_61
    move/from16 v22, v19

    .end local v19           #j:I
    .restart local v22       #j:I
    move/from16 v4, v17

    .end local v17           #ieps:I
    .local v4, ieps:I
    goto/16 :goto_b

    .end local v22           #j:I
    .local v4, ds:D
    .local v14, j:I
    .restart local v17       #ieps:I
    :cond_62
    move/from16 v15, v17

    .end local v17           #ieps:I
    .local v15, ieps:I
    move/from16 v31, v14

    .end local v14           #j:I
    .local v31, j:I
    move/from16 v14, v16

    .end local v16           #i:I
    .local v14, i:I
    move/from16 v16, v31

    .end local v31           #j:I
    .local v16, j:I
    goto/16 :goto_9

    .end local v15           #ieps:I
    .end local v16           #j:I
    .end local v20           #ilim0:I
    .end local v24           #k0:I
    .local v4, i:I
    .local v14, ds:D
    .local v17, try_quick:Z
    .restart local v19       #j:I
    :cond_63
    move/from16 v17, v23

    .end local v23           #k:I
    .local v17, k:I
    move/from16 v16, v19

    .end local v19           #j:I
    .restart local v16       #j:I
    move-wide/from16 v31, v14

    .end local v14           #ds:D
    .local v31, ds:D
    move/from16 v15, v18

    .end local v18           #ilim:I
    .local v15, ilim:I
    move v14, v4

    .end local v4           #i:I
    .local v14, i:I
    move-wide v4, v11

    .end local v11           #d2:D
    .local v4, d2:D
    move-wide/from16 v11, v31

    .end local v31           #ds:D
    .local v11, ds:D
    goto/16 :goto_11

    .end local v15           #ilim:I
    .end local v21           #ilim1:I
    .end local v26           #leftright:Z
    .local v4, ilim:I
    .local v5, ilim1:I
    .local v11, d2:D
    .local v14, ds:D
    .local v16, leftright:Z
    .local v17, try_quick:Z
    .restart local v19       #j:I
    .restart local v23       #k:I
    .local p5, i:I
    :cond_64
    move/from16 v26, v16

    .end local v16           #leftright:Z
    .restart local v26       #leftright:Z
    move/from16 v21, v5

    .end local v5           #ilim1:I
    .restart local v21       #ilim1:I
    move/from16 v18, v4

    .end local v4           #ilim:I
    .restart local v18       #ilim:I
    move/from16 v4, p5

    .end local p5           #i:I
    .local v4, i:I
    goto/16 :goto_8

    .end local v4           #i:I
    .end local v17           #try_quick:Z
    .end local v18           #ilim:I
    .end local v21           #ilim1:I
    .end local v26           #leftright:Z
    .local v5, i:I
    .local p5, try_quick:Z
    :cond_65
    move/from16 v17, p5

    .end local p5           #try_quick:Z
    .restart local v17       #try_quick:Z
    goto/16 :goto_7

    .end local v7           #b2:I
    .end local v8           #b5:I
    .end local v17           #try_quick:Z
    .end local v19           #j:I
    .end local v23           #k:I
    .end local v25           #k_check:Z
    .end local v27           #s2:I
    .end local v28           #s5:I
    .local v4, k_check:Z
    .local p5, k:I
    :cond_66
    move/from16 v25, v4

    .end local v4           #k_check:Z
    .restart local v25       #k_check:Z
    move/from16 v23, p5

    .end local p5           #k:I
    .restart local v23       #k:I
    goto/16 :goto_4

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static JS_dtobasestr(ID)Ljava/lang/String;
    .locals 13
    .parameter "base"
    .parameter "d"

    .prologue
    .line 248
    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/16 v0, 0x24

    if-le p0, v0, :cond_1

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad base: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    .restart local p0
    .restart local p1
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const-string p0, "NaN"

    .line 400
    .end local p0
    :goto_0
    return-object p0

    .line 254
    .restart local p0
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    const-wide/16 v0, 0x0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_3

    .end local p0
    const-string p0, "Infinity"

    goto :goto_0

    :cond_3
    const-string p0, "-Infinity"

    goto :goto_0

    .line 256
    .restart local p0
    :cond_4
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_5

    .line 258
    const-string p0, "0"

    goto :goto_0

    .line 262
    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_7

    .line 263
    const/4 v0, 0x0

    .local v0, negative:Z
    move v5, v0

    .line 272
    .end local v0           #negative:Z
    .local v5, negative:Z
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 273
    .local v0, dfloor:D
    double-to-long v2, v0

    .line 274
    .local v2, lfloor:J
    long-to-double v6, v2

    cmpl-double v4, v6, v0

    if-nez v4, :cond_8

    .line 276
    if-eqz v5, :cond_6

    neg-long v2, v2

    .end local v2           #lfloor:J
    :cond_6
    invoke-static {v2, v3, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .local v2, intDigits:Ljava/lang/String;
    move-object v5, v2

    .line 300
    .end local v2           #intDigits:Ljava/lang/String;
    .local v5, intDigits:Ljava/lang/String;
    :goto_2
    cmpl-double v2, p1, v0

    if-nez v2, :cond_c

    move-object p0, v5

    .line 302
    goto :goto_0

    .line 265
    .end local v0           #dfloor:D
    .end local v5           #intDigits:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    .line 266
    .local v0, negative:Z
    neg-double p1, p1

    move v5, v0

    .end local v0           #negative:Z
    .local v5, negative:Z
    goto :goto_1

    .line 279
    .local v0, dfloor:D
    .local v2, lfloor:J
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 280
    .end local v2           #lfloor:J
    .local v3, floorBits:J
    const/16 v2, 0x34

    shr-long v6, v3, v2

    long-to-int v2, v6

    and-int/lit16 v2, v2, 0x7ff

    .line 282
    .local v2, exp:I
    if-nez v2, :cond_a

    .line 283
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v3, v6

    const/4 v6, 0x1

    shl-long/2addr v3, v6

    .line 287
    .local v3, mantissa:J
    :goto_3
    if-eqz v5, :cond_9

    .line 288
    neg-long v3, v3

    .line 290
    :cond_9
    add-int/lit16 v2, v2, -0x433

    .line 291
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 292
    .local v3, x:Ljava/math/BigInteger;
    if-lez v2, :cond_b

    .line 293
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 297
    .end local v3           #x:Ljava/math/BigInteger;
    .local v2, x:Ljava/math/BigInteger;
    :goto_4
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, intDigits:Ljava/lang/String;
    move-object v5, v2

    .end local v2           #intDigits:Ljava/lang/String;
    .local v5, intDigits:Ljava/lang/String;
    goto :goto_2

    .line 285
    .local v2, exp:I
    .local v3, floorBits:J
    .local v5, negative:Z
    :cond_a
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v3, v6

    const-wide/high16 v6, 0x10

    or-long/2addr v3, v6

    .local v3, mantissa:J
    goto :goto_3

    .line 294
    .local v3, x:Ljava/math/BigInteger;
    :cond_b
    if-gez v2, :cond_19

    .line 295
    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .end local v2           #exp:I
    move-result-object v2

    .end local v3           #x:Ljava/math/BigInteger;
    .local v2, x:Ljava/math/BigInteger;
    goto :goto_4

    .line 312
    .end local v2           #x:Ljava/math/BigInteger;
    .local v5, intDigits:Ljava/lang/String;
    :cond_c
    const/16 v2, 0x436

    new-array v2, v2, [C

    .line 313
    .local v2, buffer:[C
    const/4 v6, 0x0

    .line 314
    .local v6, p:I
    sub-double v3, p1, v0

    .line 316
    .local v3, df:D
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 317
    .local v0, dBits:J
    const/16 v7, 0x20

    shr-long v7, v0, v7

    long-to-int v8, v7

    .line 318
    .local v8, word0:I
    long-to-int v12, v0

    .line 320
    .local v12, word1:I
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 321
    .end local v0           #dBits:J
    .local v1, e:[I
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 323
    .local v0, bbits:[I
    invoke-static {v3, v4, v1, v0}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    move-result-object v0

    .line 327
    .local v0, b:Ljava/math/BigInteger;
    ushr-int/lit8 v3, v8, 0x14

    and-int/lit16 v3, v3, 0x7ff

    neg-int v3, v3

    .line 328
    .local v3, s2:I
    if-nez v3, :cond_d

    .line 329
    const/4 v3, -0x1

    .line 330
    :cond_d
    add-int/lit16 v7, v3, 0x434

    .line 333
    .end local v3           #s2:I
    .local v7, s2:I
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 334
    .local v4, mlo:Ljava/math/BigInteger;
    move-object v3, v4

    .line 335
    .local v3, mhi:Ljava/math/BigInteger;
    if-nez v12, :cond_e

    const v9, 0xfffff

    and-int/2addr v9, v8

    if-nez v9, :cond_e

    const/high16 v9, 0x7fe0

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    .line 339
    .end local v8           #word0:I
    add-int/lit8 v7, v7, 0x1

    .line 340
    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 343
    :cond_e
    const/4 v8, 0x0

    aget v1, v1, v8

    .end local v1           #e:[I
    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 344
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 345
    .local v1, s:Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 351
    .end local v1           #s:Ljava/math/BigInteger;
    .local v11, s:Ljava/math/BigInteger;
    int-to-long v7, p0

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .end local v7           #s2:I
    move-result-object v1

    .line 353
    .local v1, bigBase:Ljava/math/BigInteger;
    const/4 p0, 0x0

    .local p0, done:Z
    move-object v7, v4

    .end local v4           #mlo:Ljava/math/BigInteger;
    .local v7, mlo:Ljava/math/BigInteger;
    move v10, v6

    .end local v6           #p:I
    .local v10, p:I
    move v4, p0

    .end local p0           #done:Z
    .local v4, done:Z
    move-object v6, v3

    .end local v3           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    move-object p0, v0

    .line 355
    .end local v0           #b:Ljava/math/BigInteger;
    .local p0, b:Ljava/math/BigInteger;
    :goto_5
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 356
    invoke-virtual {p0, v11}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 357
    .local v0, divResult:[Ljava/math/BigInteger;
    const/4 p0, 0x1

    aget-object p0, v0, p0

    .line 358
    const/4 v3, 0x0

    aget-object v0, v0, v3

    .end local v0           #divResult:[Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-char v3, v0

    .line 359
    .local v3, digit:I
    if-ne v7, v6, :cond_f

    .line 360
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .end local v6           #mhi:Ljava/math/BigInteger;
    .local v0, mhi:Ljava/math/BigInteger;
    move-object v6, v0

    .end local v7           #mlo:Ljava/math/BigInteger;
    .local v6, mlo:Ljava/math/BigInteger;
    move-object v8, v0

    .end local v0           #mhi:Ljava/math/BigInteger;
    .local v8, mhi:Ljava/math/BigInteger;
    move-object v9, v6

    .line 367
    .end local v6           #mlo:Ljava/math/BigInteger;
    .local v9, mlo:Ljava/math/BigInteger;
    :goto_6
    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    .line 369
    .local v6, j:I
    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 370
    .local v0, delta:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gtz v7, :cond_10

    const/4 v0, 0x1

    move v7, v0

    .line 372
    .end local v0           #delta:Ljava/math/BigInteger;
    .local v7, j1:I
    :goto_7
    if-nez v7, :cond_11

    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_11

    .line 373
    if-lez v6, :cond_18

    .line 374
    add-int/lit8 v0, v3, 0x1

    .line 375
    .end local v3           #digit:I
    .local v0, digit:I
    :goto_8
    const/4 v3, 0x1

    .end local v4           #done:Z
    .local v3, done:Z
    move v4, v7

    .line 393
    .end local v7           #j1:I
    .local v4, j1:I
    :goto_9
    add-int/lit8 v4, v10, 0x1

    .end local v10           #p:I
    .local v4, p:I
    invoke-static {v0}, Lorg/mozilla/javascript/DToA;->BASEDIGIT(I)C

    move-result v0

    .end local v0           #digit:I
    aput-char v0, v2, v10

    .line 394
    if-eqz v3, :cond_14

    .line 396
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0           #b:Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 397
    .local p0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 362
    .end local v8           #mhi:Ljava/math/BigInteger;
    .end local v9           #mlo:Ljava/math/BigInteger;
    .local v3, digit:I
    .local v4, done:Z
    .local v6, mhi:Ljava/math/BigInteger;
    .local v7, mlo:Ljava/math/BigInteger;
    .restart local v10       #p:I
    .local p0, b:Ljava/math/BigInteger;
    :cond_f
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 363
    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .end local v6           #mhi:Ljava/math/BigInteger;
    .local v0, mhi:Ljava/math/BigInteger;
    move-object v8, v0

    .end local v0           #mhi:Ljava/math/BigInteger;
    .restart local v8       #mhi:Ljava/math/BigInteger;
    move-object v9, v7

    .end local v7           #mlo:Ljava/math/BigInteger;
    .restart local v9       #mlo:Ljava/math/BigInteger;
    goto :goto_6

    .line 370
    .local v0, delta:Ljava/math/BigInteger;
    .local v6, j:I
    :cond_10
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    move v7, v0

    goto :goto_7

    .line 377
    .end local v0           #delta:Ljava/math/BigInteger;
    .local v7, j1:I
    :cond_11
    if-ltz v6, :cond_12

    if-nez v6, :cond_13

    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_13

    .line 378
    :cond_12
    if-lez v7, :cond_17

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 382
    invoke-virtual {p0, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 383
    .end local v7           #j1:I
    .local v4, j1:I
    if-lez v4, :cond_16

    .line 385
    add-int/lit8 v0, v3, 0x1

    .line 387
    .end local v3           #digit:I
    .local v0, digit:I
    :goto_a
    const/4 v3, 0x1

    .local v3, done:Z
    goto :goto_9

    .line 388
    .end local v0           #digit:I
    .local v3, digit:I
    .local v4, done:Z
    .restart local v7       #j1:I
    :cond_13
    if-lez v7, :cond_15

    .line 389
    add-int/lit8 v0, v3, 0x1

    .line 390
    .end local v3           #digit:I
    .restart local v0       #digit:I
    const/4 v3, 0x1

    .end local v4           #done:Z
    .local v3, done:Z
    move v4, v7

    .end local v7           #j1:I
    .local v4, j1:I
    goto :goto_9

    .end local v0           #digit:I
    .end local v10           #p:I
    .local v4, p:I
    :cond_14
    move-object v6, v8

    .end local v8           #mhi:Ljava/math/BigInteger;
    .local v6, mhi:Ljava/math/BigInteger;
    move-object v7, v9

    .end local v9           #mlo:Ljava/math/BigInteger;
    .local v7, mlo:Ljava/math/BigInteger;
    move v10, v4

    .end local v4           #p:I
    .restart local v10       #p:I
    move v4, v3

    .end local v3           #done:Z
    .local v4, done:Z
    goto/16 :goto_5

    .local v3, digit:I
    .local v6, j:I
    .local v7, j1:I
    .restart local v8       #mhi:Ljava/math/BigInteger;
    .restart local v9       #mlo:Ljava/math/BigInteger;
    :cond_15
    move v0, v3

    .end local v3           #digit:I
    .restart local v0       #digit:I
    move v3, v4

    .end local v4           #done:Z
    .local v3, done:Z
    move v4, v7

    .end local v7           #j1:I
    .local v4, j1:I
    goto :goto_9

    .end local v0           #digit:I
    .local v3, digit:I
    :cond_16
    move v0, v3

    .end local v3           #digit:I
    .restart local v0       #digit:I
    goto :goto_a

    .end local v0           #digit:I
    .restart local v3       #digit:I
    .local v4, done:Z
    .restart local v7       #j1:I
    :cond_17
    move v4, v7

    .end local v7           #j1:I
    .local v4, j1:I
    move v0, v3

    .end local v3           #digit:I
    .restart local v0       #digit:I
    goto :goto_a

    .end local v0           #digit:I
    .restart local v3       #digit:I
    .local v4, done:Z
    .restart local v7       #j1:I
    :cond_18
    move v0, v3

    .end local v3           #digit:I
    .restart local v0       #digit:I
    goto :goto_8

    .end local v1           #bigBase:Ljava/math/BigInteger;
    .end local v4           #done:Z
    .end local v6           #j:I
    .end local v7           #j1:I
    .end local v8           #mhi:Ljava/math/BigInteger;
    .end local v9           #mlo:Ljava/math/BigInteger;
    .end local v10           #p:I
    .end local v11           #s:Ljava/math/BigInteger;
    .end local v12           #word1:I
    .local v0, dfloor:D
    .local v2, exp:I
    .local v3, x:Ljava/math/BigInteger;
    .local v5, negative:Z
    .local p0, base:I
    :cond_19
    move-object v2, v3

    .end local v3           #x:Ljava/math/BigInteger;
    .local v2, x:Ljava/math/BigInteger;
    goto/16 :goto_4
.end method

.method static JS_dtostr(Ljava/lang/StringBuffer;IID)V
    .locals 12
    .parameter "buffer"
    .parameter "mode"
    .parameter "precision"
    .parameter "d"

    .prologue
    .line 1178
    const/4 v7, 0x1

    new-array v10, v7, [Z

    .line 1184
    .local v10, sign:[Z
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    const-wide v7, 0x444b1ae4d6e2ef50L

    cmpl-double v7, p3, v7

    if-gez v7, :cond_0

    const-wide v7, -0x3bb4e51b291d10b0L

    cmpg-double v7, p3, v7

    if-gtz v7, :cond_1

    .line 1185
    :cond_0
    const/4 p1, 0x0

    .line 1187
    :cond_1
    sget-object v7, Lorg/mozilla/javascript/DToA;->dtoaModes:[I

    aget v7, v7, p1

    const/4 v8, 0x2

    if-lt p1, v8, :cond_9

    const/4 v8, 0x1

    :goto_0
    move v9, p2

    move-object v11, p0

    move-wide v0, p3

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/DToA;->JS_dtoa(DIZI[ZLjava/lang/StringBuffer;)I

    move-result v7

    .line 1188
    .local v7, decPt:I
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    .line 1191
    .local v11, nDigits:I
    const/16 v8, 0x270f

    if-eq v7, v8, :cond_13

    .line 1192
    const/4 v8, 0x0

    .line 1193
    .local v8, exponentialNotation:Z
    const/4 v9, 0x0

    .line 1196
    .local v9, minNDigits:I
    packed-switch p1, :pswitch_data_0

    .end local p1
    :cond_2
    move p2, v9

    .end local v9           #minNDigits:I
    .local p2, minNDigits:I
    move p1, v8

    .line 1228
    .end local v8           #exponentialNotation:Z
    .local p1, exponentialNotation:Z
    :goto_1
    if-ge v11, p2, :cond_12

    .line 1229
    move v8, p2

    .line 1230
    .local v8, p:I
    move p2, p2

    .line 1232
    .end local v11           #nDigits:I
    .local p2, nDigits:I
    :cond_3
    const/16 v9, 0x30

    invoke-virtual {p0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1233
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-ne v9, v8, :cond_3

    .line 1236
    .end local v8           #p:I
    :goto_2
    if-eqz p1, :cond_e

    .line 1238
    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    .line 1239
    .end local p1           #exponentialNotation:Z
    const/4 p1, 0x1

    const/16 v8, 0x2e

    invoke-virtual {p0, p1, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1241
    :cond_4
    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1242
    const/4 p1, 0x1

    sub-int p1, v7, p1

    if-ltz p1, :cond_5

    .line 1243
    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1244
    :cond_5
    const/4 p1, 0x1

    sub-int p1, v7, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move p1, p2

    .line 1262
    .end local v7           #decPt:I
    .end local p2           #nDigits:I
    .local p1, nDigits:I
    :goto_3
    const/4 p1, 0x0

    aget-boolean p1, v10, p1

    .end local p1           #nDigits:I
    if-eqz p1, :cond_8

    invoke-static/range {p3 .. p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const/high16 p2, -0x8000

    if-ne p1, p2, :cond_6

    invoke-static/range {p3 .. p4}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    invoke-static/range {p3 .. p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const/high16 p2, 0x7ff0

    and-int/2addr p1, p2

    const/high16 p2, 0x7ff0

    if-ne p1, p2, :cond_7

    invoke-static/range {p3 .. p4}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result p1

    if-nez p1, :cond_8

    invoke-static/range {p3 .. p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const p2, 0xfffff

    and-int/2addr p1, p2

    if-nez p1, :cond_8

    .line 1266
    :cond_7
    const/4 p1, 0x0

    const/16 p2, 0x2d

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1268
    :cond_8
    return-void

    .line 1187
    .local p1, mode:I
    .local p2, precision:I
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1198
    .restart local v7       #decPt:I
    .local v8, exponentialNotation:Z
    .restart local v9       #minNDigits:I
    .restart local v11       #nDigits:I
    :pswitch_0
    const/4 p1, -0x5

    if-lt v7, p1, :cond_a

    .end local p1           #mode:I
    const/16 p1, 0x15

    if-le v7, p1, :cond_b

    .line 1199
    :cond_a
    const/4 p1, 0x1

    .end local v8           #exponentialNotation:Z
    .local p1, exponentialNotation:Z
    move p2, v9

    .end local v9           #minNDigits:I
    .local p2, minNDigits:I
    goto :goto_1

    .line 1201
    .end local p1           #exponentialNotation:Z
    .restart local v8       #exponentialNotation:Z
    .restart local v9       #minNDigits:I
    .local p2, precision:I
    :cond_b
    move p1, v7

    .end local v9           #minNDigits:I
    .local p1, minNDigits:I
    move p2, p1

    .end local p1           #minNDigits:I
    .local p2, minNDigits:I
    move p1, v8

    .line 1202
    .end local v8           #exponentialNotation:Z
    .local p1, exponentialNotation:Z
    goto :goto_1

    .line 1205
    .restart local v8       #exponentialNotation:Z
    .restart local v9       #minNDigits:I
    .local p1, mode:I
    .local p2, precision:I
    :pswitch_1
    if-ltz p2, :cond_c

    .line 1206
    add-int p1, v7, p2

    .end local v9           #minNDigits:I
    .local p1, minNDigits:I
    move p2, p1

    .end local p1           #minNDigits:I
    .local p2, minNDigits:I
    move p1, v8

    .end local v8           #exponentialNotation:Z
    .local p1, exponentialNotation:Z
    goto :goto_1

    .line 1208
    .restart local v8       #exponentialNotation:Z
    .restart local v9       #minNDigits:I
    .local p1, mode:I
    .local p2, precision:I
    :cond_c
    move p1, v7

    .end local v9           #minNDigits:I
    .local p1, minNDigits:I
    move p2, p1

    .end local p1           #minNDigits:I
    .local p2, minNDigits:I
    move p1, v8

    .line 1209
    .end local v8           #exponentialNotation:Z
    .local p1, exponentialNotation:Z
    goto :goto_1

    .line 1213
    .restart local v8       #exponentialNotation:Z
    .restart local v9       #minNDigits:I
    .local p1, mode:I
    .local p2, precision:I
    :pswitch_2
    move p1, p2

    .end local v9           #minNDigits:I
    .local p1, minNDigits:I
    move p2, p1

    .line 1216
    .end local p1           #minNDigits:I
    .local p2, minNDigits:I
    :goto_4
    const/4 p1, 0x1

    .line 1217
    .end local v8           #exponentialNotation:Z
    .local p1, exponentialNotation:Z
    goto/16 :goto_1

    .line 1221
    .restart local v8       #exponentialNotation:Z
    .restart local v9       #minNDigits:I
    .local p1, mode:I
    .local p2, precision:I
    :pswitch_3
    move v9, p2

    .line 1222
    const/4 p1, -0x5

    if-lt v7, p1, :cond_d

    .end local p1           #mode:I
    if-le v7, p2, :cond_2

    .line 1223
    :cond_d
    const/4 p1, 0x1

    .end local v8           #exponentialNotation:Z
    .local p1, exponentialNotation:Z
    move p2, v9

    .end local v9           #minNDigits:I
    .local p2, minNDigits:I
    goto/16 :goto_1

    .line 1246
    .end local v11           #nDigits:I
    .local p2, nDigits:I
    :cond_e
    if-eq v7, p2, :cond_11

    .line 1249
    if-lez v7, :cond_f

    .line 1251
    const/16 p1, 0x2e

    invoke-virtual {p0, v7, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .end local p1           #exponentialNotation:Z
    move p1, p2

    .end local p2           #nDigits:I
    .local p1, nDigits:I
    goto :goto_3

    .line 1254
    .local p1, exponentialNotation:Z
    .restart local p2       #nDigits:I
    :cond_f
    const/4 p1, 0x0

    .local p1, i:I
    :goto_5
    const/4 v8, 0x1

    sub-int/2addr v8, v7

    if-ge p1, v8, :cond_10

    .line 1255
    const/4 v8, 0x0

    const/16 v9, 0x30

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1254
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1256
    :cond_10
    const/4 p1, 0x1

    const/16 v7, 0x2e

    invoke-virtual {p0, p1, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .end local v7           #decPt:I
    .end local p1           #i:I
    :cond_11
    move p1, p2

    .end local p2           #nDigits:I
    .local p1, nDigits:I
    goto :goto_3

    .restart local v7       #decPt:I
    .restart local v11       #nDigits:I
    .local p1, exponentialNotation:Z
    .local p2, minNDigits:I
    :cond_12
    move p2, v11

    .end local v11           #nDigits:I
    .local p2, nDigits:I
    goto/16 :goto_2

    .restart local v8       #exponentialNotation:Z
    .restart local v9       #minNDigits:I
    .restart local v11       #nDigits:I
    .local p1, mode:I
    .local p2, precision:I
    :pswitch_4
    move p2, v9

    .end local v9           #minNDigits:I
    .local p2, minNDigits:I
    goto :goto_4

    .end local v8           #exponentialNotation:Z
    .local p2, precision:I
    :cond_13
    move p1, v11

    .end local v11           #nDigits:I
    .local p1, nDigits:I
    goto/16 :goto_3

    .line 1196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static d2b(D[I[I)Ljava/math/BigInteger;
    .locals 5
    .parameter "d"
    .parameter "e"
    .parameter "bits"

    .prologue
    .line 203
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 204
    .local v0, dBits:J
    const/16 p0, 0x20

    ushr-long p0, v0, p0

    long-to-int p0, p0

    .line 205
    .local p0, d0:I
    long-to-int p1, v0

    .line 207
    .local p1, d1:I
    const v0, 0xfffff

    and-int v1, p0, v0

    .line 208
    .end local v0           #dBits:J
    .local v1, z:I
    const v0, 0x7fffffff

    and-int/2addr p0, v0

    .line 210
    ushr-int/lit8 v0, p0, 0x14

    .local v0, de:I
    if-eqz v0, :cond_4

    .line 211
    const/high16 p0, 0x10

    or-int/2addr p0, v1

    .end local v1           #z:I
    .local p0, z:I
    move v3, p0

    .line 213
    .end local p0           #z:I
    .local v3, z:I
    :goto_0
    move v2, p1

    .local v2, y:I
    if-eqz p1, :cond_2

    .line 214
    const/16 p0, 0x8

    new-array p0, p0, [B

    .line 215
    .local p0, dbl_bits:[B
    invoke-static {v2}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result v1

    .line 216
    .local v1, k:I
    ushr-int/2addr v2, v1

    .line 217
    if-eqz v1, :cond_0

    .line 218
    const/4 p1, 0x4

    const/16 v4, 0x20

    sub-int/2addr v4, v1

    shl-int v4, v3, v4

    or-int/2addr v4, v2

    invoke-static {p0, p1, v4}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    .line 219
    .end local p1           #d1:I
    shr-int p1, v3, v1

    .end local v3           #z:I
    .local p1, z:I
    move v3, p1

    .line 223
    .end local p1           #z:I
    .restart local v3       #z:I
    :goto_1
    const/4 p1, 0x0

    invoke-static {p0, p1, v3}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    .line 224
    if-eqz v3, :cond_1

    const/4 p1, 0x2

    .line 235
    .local p1, i:I
    :goto_2
    if-eqz v0, :cond_3

    .line 236
    const/4 p1, 0x0

    const/16 v2, 0x3ff

    sub-int/2addr v0, v2

    const/16 v2, 0x34

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    aput v0, p2, p1

    .line 237
    .end local v0           #de:I
    .end local v2           #y:I
    .end local p1           #i:I
    const/4 p1, 0x0

    const/16 p2, 0x35

    sub-int/2addr p2, v1

    aput p2, p3, p1

    .line 243
    .end local p2
    :goto_3
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p1

    .line 222
    .restart local v0       #de:I
    .restart local v2       #y:I
    .local p1, d1:I
    .restart local p2
    :cond_0
    const/4 p1, 0x4

    invoke-static {p0, p1, v2}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    goto :goto_1

    .line 224
    .end local p1           #d1:I
    :cond_1
    const/4 p1, 0x1

    goto :goto_2

    .line 228
    .end local v1           #k:I
    .end local p0           #dbl_bits:[B
    .restart local p1       #d1:I
    :cond_2
    const/4 p0, 0x4

    new-array p0, p0, [B

    .line 229
    .restart local p0       #dbl_bits:[B
    invoke-static {v3}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result p1

    .line 230
    .local p1, k:I
    ushr-int/2addr v3, p1

    .line 231
    const/4 v1, 0x0

    invoke-static {p0, v1, v3}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    .line 232
    add-int/lit8 v1, p1, 0x20

    .line 233
    .end local p1           #k:I
    .restart local v1       #k:I
    const/4 p1, 0x1

    .local p1, i:I
    goto :goto_2

    .line 240
    :cond_3
    const/4 v2, 0x0

    const/16 v4, 0x3ff

    sub-int/2addr v0, v4

    const/16 v4, 0x34

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    aput v0, p2, v2

    .line 241
    .end local v0           #de:I
    .end local v2           #y:I
    const/4 p2, 0x0

    mul-int/lit8 p1, p1, 0x20

    invoke-static {v3}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    .end local p1           #i:I
    .end local p2
    move-result v0

    sub-int/2addr p1, v0

    aput p1, p3, p2

    goto :goto_3

    .end local v3           #z:I
    .restart local v0       #de:I
    .local v1, z:I
    .local p0, d0:I
    .local p1, d1:I
    .restart local p2
    :cond_4
    move v3, v1

    .end local v1           #z:I
    .restart local v3       #z:I
    goto :goto_0
.end method

.method private static hi0bits(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, k:I
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    .line 165
    const/16 v0, 0x10

    .line 166
    shl-int/lit8 p0, p0, 0x10

    .line 168
    :cond_0
    const/high16 v1, -0x100

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    .line 169
    add-int/lit8 v0, v0, 0x8

    .line 170
    shl-int/lit8 p0, p0, 0x8

    .line 172
    :cond_1
    const/high16 v1, -0x1000

    and-int/2addr v1, p0

    if-nez v1, :cond_2

    .line 173
    add-int/lit8 v0, v0, 0x4

    .line 174
    shl-int/lit8 p0, p0, 0x4

    .line 176
    :cond_2
    const/high16 v1, -0x4000

    and-int/2addr v1, p0

    if-nez v1, :cond_3

    .line 177
    add-int/lit8 v0, v0, 0x2

    .line 178
    shl-int/lit8 p0, p0, 0x2

    .line 180
    :cond_3
    const/high16 v1, -0x8000

    and-int/2addr v1, p0

    if-nez v1, :cond_4

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    const/high16 v1, 0x4000

    and-int/2addr v1, p0

    if-nez v1, :cond_4

    .line 183
    const/16 v1, 0x20

    .line 185
    :goto_0
    return v1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private static lo0bits(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 123
    move v1, p0

    .line 125
    .local v1, x:I
    and-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_2

    .line 126
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 127
    const/4 v2, 0x0

    .line 156
    :goto_0
    return v2

    .line 128
    :cond_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 129
    const/4 v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 133
    :cond_2
    const/4 v0, 0x0

    .line 134
    .local v0, k:I
    const v2, 0xffff

    and-int/2addr v2, v1

    if-nez v2, :cond_3

    .line 135
    const/16 v0, 0x10

    .line 136
    ushr-int/lit8 v1, v1, 0x10

    .line 138
    :cond_3
    and-int/lit16 v2, v1, 0xff

    if-nez v2, :cond_4

    .line 139
    add-int/lit8 v0, v0, 0x8

    .line 140
    ushr-int/lit8 v1, v1, 0x8

    .line 142
    :cond_4
    and-int/lit8 v2, v1, 0xf

    if-nez v2, :cond_5

    .line 143
    add-int/lit8 v0, v0, 0x4

    .line 144
    ushr-int/lit8 v1, v1, 0x4

    .line 146
    :cond_5
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_6

    .line 147
    add-int/lit8 v0, v0, 0x2

    .line 148
    ushr-int/lit8 v1, v1, 0x2

    .line 150
    :cond_6
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_7

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 152
    ushr-int/lit8 v1, v1, 0x1

    .line 153
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_7

    .line 154
    const/16 v2, 0x20

    goto :goto_0

    :cond_7
    move v2, v0

    .line 156
    goto :goto_0
.end method

.method static pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2
    .parameter "b"
    .parameter "k"

    .prologue
    .line 462
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static roundOff(Ljava/lang/StringBuffer;)Z
    .locals 4
    .parameter "buf"

    .prologue
    const/4 v3, 0x0

    .line 467
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 468
    .local v1, i:I
    :cond_0
    if-eqz v1, :cond_1

    .line 469
    add-int/lit8 v1, v1, -0x1

    .line 470
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 471
    .local v0, c:C
    const/16 v2, 0x39

    if-eq v0, v2, :cond_0

    .line 472
    add-int/lit8 v2, v0, 0x1

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 473
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v3

    .line 478
    .end local v0           #c:C
    :goto_0
    return v2

    .line 477
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 478
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static setWord0(DI)D
    .locals 6
    .parameter "d"
    .parameter "i"

    .prologue
    .line 447
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 448
    .local v0, dBits:J
    int-to-long v2, p2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    or-long v0, v2, v4

    .line 449
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method private static stripTrailingZeroes(Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "buf"

    .prologue
    .line 1159
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .local v0, bl:I
    move v1, v0

    .line 1160
    .end local v0           #bl:I
    .local v1, bl:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #bl:I
    .restart local v0       #bl:I
    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    move v1, v0

    .end local v0           #bl:I
    .restart local v1       #bl:I
    goto :goto_0

    .line 1163
    .end local v1           #bl:I
    .restart local v0       #bl:I
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1164
    return-void
.end method

.method private static stuffBits([BII)V
    .locals 2
    .parameter "bits"
    .parameter "offset"
    .parameter "val"

    .prologue
    .line 190
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 191
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 192
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 193
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 194
    return-void
.end method

.method static word0(D)I
    .locals 4
    .parameter "d"

    .prologue
    .line 441
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 442
    .local v0, dBits:J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method

.method static word1(D)I
    .locals 3
    .parameter "d"

    .prologue
    .line 454
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 455
    .local v0, dBits:J
    long-to-int v2, v0

    return v2
.end method
