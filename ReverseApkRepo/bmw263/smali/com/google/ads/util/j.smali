.class public final Lcom/google/ads/util/j;
.super Lcom/google/ads/util/h;
.source "SourceFile"


# static fields
.field static final synthetic g:Z

.field private static final h:[B

.field private static final i:[B


# instance fields
.field public c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field private final j:[B

.field private k:I

.field private final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 587
    const-class v0, Lcom/google/ads/util/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/ads/util/j;->g:Z

    .line 599
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/util/j;->h:[B

    .line 610
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/util/j;->i:[B

    return-void

    .line 587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 599
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 610
    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-direct {p0}, Lcom/google/ads/util/h;-><init>()V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/util/j;->a:[B

    .line 629
    iput-boolean v1, p0, Lcom/google/ads/util/j;->d:Z

    .line 630
    iput-boolean v1, p0, Lcom/google/ads/util/j;->e:Z

    .line 631
    iput-boolean v1, p0, Lcom/google/ads/util/j;->f:Z

    .line 632
    sget-object v0, Lcom/google/ads/util/j;->i:[B

    iput-object v0, p0, Lcom/google/ads/util/j;->l:[B

    .line 634
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/util/j;->j:[B

    .line 635
    iput v1, p0, Lcom/google/ads/util/j;->c:I

    .line 637
    iget-boolean v0, p0, Lcom/google/ads/util/j;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    :goto_0
    iput v0, p0, Lcom/google/ads/util/j;->k:I

    .line 638
    return-void

    .line 637
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a([BI)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/16 v12, 0xd

    const/16 v11, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 652
    iget-object v7, p0, Lcom/google/ads/util/j;->l:[B

    .line 653
    iget-object v8, p0, Lcom/google/ads/util/j;->a:[B

    .line 655
    iget v2, p0, Lcom/google/ads/util/j;->k:I

    .line 658
    add-int/lit8 v9, p2, 0x0

    .line 659
    const/4 v0, -0x1

    .line 665
    iget v1, p0, Lcom/google/ads/util/j;->c:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    move v5, v0

    move v1, v4

    .line 690
    :goto_0
    const/4 v0, -0x1

    if-eq v5, v0, :cond_15

    .line 691
    shr-int/lit8 v0, v5, 0x12

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v4

    .line 692
    shr-int/lit8 v0, v5, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v3

    .line 693
    shr-int/lit8 v0, v5, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v6

    .line 694
    const/4 v6, 0x3

    const/4 v0, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v7, v5

    aput-byte v5, v8, v6

    .line 695
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_14

    .line 696
    iget-boolean v2, p0, Lcom/google/ads/util/j;->f:Z

    if-eqz v2, :cond_1

    .line 697
    const/4 v2, 0x4

    const/4 v0, 0x5

    aput-byte v12, v8, v2

    .line 699
    :cond_1
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v8, v0

    .line 700
    const/16 v0, 0x13

    move v6, v0

    .line 709
    :goto_1
    add-int/lit8 v0, v1, 0x3

    if-gt v0, v9, :cond_2

    .line 710
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 712
    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v7, v2

    aput-byte v2, v8, v5

    .line 713
    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v10, v0, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v7, v10

    aput-byte v10, v8, v2

    .line 714
    add-int/lit8 v2, v5, 0x2

    shr-int/lit8 v10, v0, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v7, v10

    aput-byte v10, v8, v2

    .line 715
    add-int/lit8 v2, v5, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v2

    .line 716
    add-int/lit8 v2, v1, 0x3

    .line 717
    add-int/lit8 v1, v5, 0x4

    .line 718
    add-int/lit8 v0, v6, -0x1

    if-nez v0, :cond_13

    .line 719
    iget-boolean v0, p0, Lcom/google/ads/util/j;->f:Z

    if-eqz v0, :cond_12

    .line 720
    add-int/lit8 v0, v1, 0x1

    aput-byte v12, v8, v1

    .line 722
    :goto_2
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v8, v0

    .line 723
    const/16 v0, 0x13

    move v1, v2

    move v6, v0

    goto :goto_1

    :pswitch_0
    move v5, v0

    move v1, v4

    .line 668
    goto/16 :goto_0

    .line 671
    :pswitch_1
    if-gt v6, v9, :cond_0

    .line 674
    iget-object v0, p0, Lcom/google/ads/util/j;->j:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 676
    iput v4, p0, Lcom/google/ads/util/j;->c:I

    move v5, v0

    move v1, v6

    goto/16 :goto_0

    .line 681
    :pswitch_2
    if-lez v9, :cond_0

    .line 683
    iget-object v0, p0, Lcom/google/ads/util/j;->j:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/ads/util/j;->j:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 685
    iput v4, p0, Lcom/google/ads/util/j;->c:I

    move v5, v0

    move v1, v3

    goto/16 :goto_0

    .line 727
    :cond_2
    iget v0, p0, Lcom/google/ads/util/j;->c:I

    sub-int v0, v1, v0

    add-int/lit8 v2, v9, -0x1

    if-ne v0, v2, :cond_8

    .line 735
    iget v0, p0, Lcom/google/ads/util/j;->c:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/ads/util/j;->j:[B

    aget-byte v0, v0, v4

    move v2, v3

    :goto_3
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v4, v0, 0x4

    .line 736
    iget v0, p0, Lcom/google/ads/util/j;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/util/j;->c:I

    .line 737
    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v5

    .line 738
    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v7, v4

    aput-byte v4, v8, v2

    .line 739
    iget-boolean v2, p0, Lcom/google/ads/util/j;->d:Z

    if-eqz v2, :cond_3

    .line 740
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v8, v0

    .line 741
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v8, v2

    .line 743
    :cond_3
    iget-boolean v2, p0, Lcom/google/ads/util/j;->e:Z

    if-eqz v2, :cond_5

    .line 744
    iget-boolean v2, p0, Lcom/google/ads/util/j;->f:Z

    if-eqz v2, :cond_4

    .line 745
    add-int/lit8 v2, v0, 0x1

    aput-byte v12, v8, v0

    move v0, v2

    .line 747
    :cond_4
    add-int/lit8 v2, v0, 0x1

    aput-byte v11, v8, v0

    move v0, v2

    :cond_5
    move v5, v0

    .line 775
    :cond_6
    :goto_4
    sget-boolean v0, Lcom/google/ads/util/j;->g:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/ads/util/j;->c:I

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 735
    :cond_7
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v2

    move v2, v4

    goto :goto_3

    .line 750
    :cond_8
    iget v0, p0, Lcom/google/ads/util/j;->c:I

    sub-int v0, v1, v0

    add-int/lit8 v2, v9, -0x2

    if-ne v0, v2, :cond_d

    .line 752
    iget v0, p0, Lcom/google/ads/util/j;->c:I

    if-le v0, v3, :cond_b

    iget-object v0, p0, Lcom/google/ads/util/j;->j:[B

    aget-byte v0, v0, v4

    move v4, v3

    :goto_5
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v10, v0, 0xa

    iget v0, p0, Lcom/google/ads/util/j;->c:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/util/j;->j:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v4

    move v4, v2

    :goto_6
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v10

    .line 754
    iget v2, p0, Lcom/google/ads/util/j;->c:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/ads/util/j;->c:I

    .line 755
    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v7, v4

    aput-byte v4, v8, v5

    .line 756
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v7, v5

    aput-byte v5, v8, v2

    .line 757
    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v8, v4

    .line 758
    iget-boolean v0, p0, Lcom/google/ads/util/j;->d:Z

    if-eqz v0, :cond_11

    .line 759
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v8, v2

    .line 761
    :goto_7
    iget-boolean v2, p0, Lcom/google/ads/util/j;->e:Z

    if-eqz v2, :cond_a

    .line 762
    iget-boolean v2, p0, Lcom/google/ads/util/j;->f:Z

    if-eqz v2, :cond_9

    .line 763
    add-int/lit8 v2, v0, 0x1

    aput-byte v12, v8, v0

    move v0, v2

    .line 765
    :cond_9
    add-int/lit8 v2, v0, 0x1

    aput-byte v11, v8, v0

    move v0, v2

    :cond_a
    move v5, v0

    .line 767
    goto :goto_4

    .line 752
    :cond_b
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v2

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v2

    goto :goto_6

    .line 768
    :cond_d
    iget-boolean v0, p0, Lcom/google/ads/util/j;->e:Z

    if-eqz v0, :cond_6

    if-lez v5, :cond_6

    const/16 v0, 0x13

    if-eq v6, v0, :cond_6

    .line 769
    iget-boolean v0, p0, Lcom/google/ads/util/j;->f:Z

    if-eqz v0, :cond_10

    .line 770
    add-int/lit8 v0, v5, 0x1

    aput-byte v12, v8, v5

    .line 772
    :goto_8
    add-int/lit8 v5, v0, 0x1

    aput-byte v11, v8, v0

    goto/16 :goto_4

    .line 776
    :cond_e
    sget-boolean v0, Lcom/google/ads/util/j;->g:Z

    if-nez v0, :cond_f

    if-eq v1, v9, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 782
    :cond_f
    iput v5, p0, Lcom/google/ads/util/j;->b:I

    .line 792
    iput v6, p0, Lcom/google/ads/util/j;->k:I

    .line 794
    return v3

    :cond_10
    move v0, v5

    goto :goto_8

    :cond_11
    move v0, v2

    goto :goto_7

    :cond_12
    move v0, v1

    goto/16 :goto_2

    :cond_13
    move v6, v0

    move v5, v1

    move v1, v2

    goto/16 :goto_1

    :cond_14
    move v6, v2

    move v5, v0

    goto/16 :goto_1

    :cond_15
    move v6, v2

    move v5, v4

    goto/16 :goto_1

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method