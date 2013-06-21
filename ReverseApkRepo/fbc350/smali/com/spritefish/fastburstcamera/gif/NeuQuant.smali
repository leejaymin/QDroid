.class Lcom/spritefish/fastburstcamera/gif/NeuQuant;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field protected static final alphabiasshift:I = 0xa

.field protected static final alpharadbias:I = 0x40000

.field protected static final alpharadbshift:I = 0x12

.field protected static final beta:I = 0x40

.field protected static final betagamma:I = 0x10000

.field protected static final betashift:I = 0xa

.field protected static final gamma:I = 0x400

.field protected static final gammashift:I = 0xa

.field protected static final initalpha:I = 0x400

.field protected static final initrad:I = 0x20

.field protected static final initradius:I = 0x800

.field protected static final intbias:I = 0x10000

.field protected static final intbiasshift:I = 0x10

.field protected static final maxnetpos:I = 0xff

.field protected static final minpicturebytes:I = 0x5e5

.field protected static final ncycles:I = 0x64

.field protected static final netbiasshift:I = 0x4

.field protected static final netsize:I = 0x100

.field protected static final prime1:I = 0x1f3

.field protected static final prime2:I = 0x1eb

.field protected static final prime3:I = 0x1e7

.field protected static final prime4:I = 0x1f7

.field protected static final radbias:I = 0x100

.field protected static final radbiasshift:I = 0x8

.field protected static final radiusbias:I = 0x40

.field protected static final radiusbiasshift:I = 0x6

.field protected static final radiusdec:I = 0x1e


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 7
    .parameter "thepic"
    .parameter "len"
    .parameter "sample"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x100

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->netindex:[I

    .line 619
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->bias:[I

    .line 622
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->freq:[I

    .line 624
    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->radpower:[I

    .line 637
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->thepicture:[B

    .line 638
    iput p2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    .line 639
    iput p3, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->samplefac:I

    .line 641
    new-array v2, v5, [[I

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    .line 642
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 649
    return-void

    .line 643
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 644
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v1, v2, v0

    .line 645
    .local v1, p:[I
    const/4 v2, 0x1

    const/4 v3, 0x2

    shl-int/lit8 v4, v0, 0xc

    div-int/lit16 v4, v4, 0x100

    aput v4, v1, v3

    aput v4, v1, v2

    aput v4, v1, v6

    .line 646
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->freq:[I

    aput v5, v2, v0

    .line 647
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->bias:[I

    aput v6, v2, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .locals 14
    .parameter "rad"
    .parameter "i"
    .parameter "b"
    .parameter "g"
    .parameter "r"

    .prologue
    .line 903
    sub-int v6, p2, p1

    .line 904
    .local v6, lo:I
    const/4 v10, -0x1

    if-ge v6, v10, :cond_0

    .line 905
    const/4 v6, -0x1

    .line 906
    :cond_0
    add-int v1, p2, p1

    .line 907
    .local v1, hi:I
    const/16 v10, 0x100

    if-le v1, v10, :cond_1

    .line 908
    const/16 v1, 0x100

    .line 910
    :cond_1
    add-int/lit8 v2, p2, 0x1

    .line 911
    .local v2, j:I
    add-int/lit8 v4, p2, -0x1

    .line 912
    .local v4, k:I
    const/4 v7, 0x1

    .local v7, m:I
    move v8, v7

    .end local v7           #m:I
    .local v8, m:I
    move v5, v4

    .end local v4           #k:I
    .local v5, k:I
    move v3, v2

    .line 913
    .end local v2           #j:I
    .local v3, j:I
    :goto_0
    if-lt v3, v1, :cond_2

    if-gt v5, v6, :cond_2

    .line 934
    return-void

    .line 914
    :cond_2
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->radpower:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8           #m:I
    .restart local v7       #m:I
    aget v0, v10, v8

    .line 915
    .local v0, a:I
    if-ge v3, v1, :cond_4

    .line 916
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    aget-object v9, v10, v3

    .line 918
    .local v9, p:[I
    const/4 v10, 0x0

    :try_start_0
    aget v11, v9, v10

    const/4 v12, 0x0

    aget v12, v9, v12

    sub-int v12, v12, p3

    mul-int/2addr v12, v0

    const/high16 v13, 0x4

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 919
    const/4 v10, 0x1

    aget v11, v9, v10

    const/4 v12, 0x1

    aget v12, v9, v12

    sub-int v12, v12, p4

    mul-int/2addr v12, v0

    const/high16 v13, 0x4

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 920
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x2

    aget v12, v9, v12

    sub-int v12, v12, p5

    mul-int/2addr v12, v0

    const/high16 v13, 0x4

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 924
    .end local v9           #p:[I
    :goto_1
    if-le v5, v6, :cond_3

    .line 925
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    add-int/lit8 v4, v5, -0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aget-object v9, v10, v5

    .line 927
    .restart local v9       #p:[I
    const/4 v10, 0x0

    :try_start_1
    aget v11, v9, v10

    const/4 v12, 0x0

    aget v12, v9, v12

    sub-int v12, v12, p3

    mul-int/2addr v12, v0

    const/high16 v13, 0x4

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 928
    const/4 v10, 0x1

    aget v11, v9, v10

    const/4 v12, 0x1

    aget v12, v9, v12

    sub-int v12, v12, p4

    mul-int/2addr v12, v0

    const/high16 v13, 0x4

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 929
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x2

    aget v12, v9, v12

    sub-int v12, v12, p5

    mul-int/2addr v12, v0

    const/high16 v13, 0x4

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v7

    .end local v7           #m:I
    .restart local v8       #m:I
    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_0

    .line 930
    .end local v3           #j:I
    .end local v5           #k:I
    .end local v8           #m:I
    .restart local v2       #j:I
    .restart local v4       #k:I
    .restart local v7       #m:I
    :catch_0
    move-exception v10

    move v8, v7

    .end local v7           #m:I
    .restart local v8       #m:I
    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_0

    .line 921
    .end local v3           #j:I
    .end local v8           #m:I
    .restart local v2       #j:I
    .restart local v7       #m:I
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v9           #p:[I
    :cond_3
    move v8, v7

    .end local v7           #m:I
    .restart local v8       #m:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto/16 :goto_0

    .end local v8           #m:I
    .restart local v7       #m:I
    :cond_4
    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_1
.end method

.method protected altersingle(IIIII)V
    .locals 6
    .parameter "alpha"
    .parameter "i"
    .parameter "b"
    .parameter "g"
    .parameter "r"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 943
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v0, v1, p2

    .line 944
    .local v0, n:[I
    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 945
    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 946
    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 947
    return-void
.end method

.method public colorMap()[B
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 652
    const/16 v6, 0x300

    new-array v5, v6, [B

    .line 653
    .local v5, map:[B
    new-array v1, v8, [I

    .line 654
    .local v1, index:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v8, :cond_0

    .line 656
    const/4 v3, 0x0

    .line 657
    .local v3, k:I
    const/4 v0, 0x0

    move v4, v3

    .end local v3           #k:I
    .local v4, k:I
    :goto_1
    if-lt v0, v8, :cond_1

    .line 663
    return-object v5

    .line 655
    .end local v4           #k:I
    :cond_0
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    aput v0, v1, v6

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 658
    .restart local v4       #k:I
    :cond_1
    aget v2, v1, v0

    .line 659
    .local v2, j:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 660
    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 661
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 657
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    goto :goto_1
.end method

.method protected contest(III)I
    .locals 13
    .parameter "b"
    .parameter "g"
    .parameter "r"

    .prologue
    .line 963
    const v3, 0x7fffffff

    .line 964
    .local v3, bestd:I
    move v1, v3

    .line 965
    .local v1, bestbiasd:I
    const/4 v4, -0x1

    .line 966
    .local v4, bestpos:I
    move v2, v4

    .line 968
    .local v2, bestbiaspos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v10, 0x100

    if-lt v8, v10, :cond_0

    .line 994
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->freq:[I

    aget v11, v10, v4

    add-int/lit8 v11, v11, 0x40

    aput v11, v10, v4

    .line 995
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->bias:[I

    aget v11, v10, v4

    const/high16 v12, 0x1

    sub-int/2addr v11, v12

    aput v11, v10, v4

    .line 996
    return v2

    .line 969
    :cond_0
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v9, v10, v8

    .line 970
    .local v9, n:[I
    const/4 v10, 0x0

    aget v10, v9, v10

    sub-int v7, v10, p1

    .line 971
    .local v7, dist:I
    if-gez v7, :cond_1

    .line 972
    neg-int v7, v7

    .line 973
    :cond_1
    const/4 v10, 0x1

    aget v10, v9, v10

    sub-int v0, v10, p2

    .line 974
    .local v0, a:I
    if-gez v0, :cond_2

    .line 975
    neg-int v0, v0

    .line 976
    :cond_2
    add-int/2addr v7, v0

    .line 977
    const/4 v10, 0x2

    aget v10, v9, v10

    sub-int v0, v10, p3

    .line 978
    if-gez v0, :cond_3

    .line 979
    neg-int v0, v0

    .line 980
    :cond_3
    add-int/2addr v7, v0

    .line 981
    if-ge v7, v3, :cond_4

    .line 982
    move v3, v7

    .line 983
    move v4, v8

    .line 985
    :cond_4
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->bias:[I

    aget v10, v10, v8

    shr-int/lit8 v10, v10, 0xc

    sub-int v6, v7, v10

    .line 986
    .local v6, biasdist:I
    if-ge v6, v1, :cond_5

    .line 987
    move v1, v6

    .line 988
    move v2, v8

    .line 990
    :cond_5
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->freq:[I

    aget v10, v10, v8

    shr-int/lit8 v5, v10, 0xa

    .line 991
    .local v5, betafreq:I
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->freq:[I

    aget v11, v10, v8

    sub-int/2addr v11, v5

    aput v11, v10, v8

    .line 992
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->bias:[I

    aget v11, v10, v8

    shl-int/lit8 v12, v5, 0xa

    add-int/2addr v11, v12

    aput v11, v10, v8

    .line 968
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public inxbuild()V
    .locals 15

    .prologue
    const/16 v14, 0x100

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 678
    const/4 v3, 0x0

    .line 679
    .local v3, previouscol:I
    const/4 v7, 0x0

    .line 680
    .local v7, startpos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v14, :cond_0

    .line 717
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->netindex:[I

    add-int/lit16 v9, v7, 0xff

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 718
    add-int/lit8 v1, v3, 0x1

    .local v1, j:I
    :goto_1
    if-lt v1, v14, :cond_6

    .line 720
    return-void

    .line 681
    .end local v1           #j:I
    :cond_0
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v2, v8, v0

    .line 682
    .local v2, p:[I
    move v5, v0

    .line 683
    .local v5, smallpos:I
    aget v6, v2, v10

    .line 685
    .local v6, smallval:I
    add-int/lit8 v1, v0, 0x1

    .restart local v1       #j:I
    :goto_2
    if-lt v1, v14, :cond_3

    .line 692
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v4, v8, v5

    .line 694
    .local v4, q:[I
    if-eq v0, v5, :cond_1

    .line 695
    aget v1, v4, v11

    .line 696
    aget v8, v2, v11

    aput v8, v4, v11

    .line 697
    aput v1, v2, v11

    .line 698
    aget v1, v4, v10

    .line 699
    aget v8, v2, v10

    aput v8, v4, v10

    .line 700
    aput v1, v2, v10

    .line 701
    aget v1, v4, v12

    .line 702
    aget v8, v2, v12

    aput v8, v4, v12

    .line 703
    aput v1, v2, v12

    .line 704
    aget v1, v4, v13

    .line 705
    aget v8, v2, v13

    aput v8, v4, v13

    .line 706
    aput v1, v2, v13

    .line 709
    :cond_1
    if-eq v6, v3, :cond_2

    .line 710
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->netindex:[I

    add-int v9, v7, v0

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 711
    add-int/lit8 v1, v3, 0x1

    :goto_3
    if-lt v1, v6, :cond_5

    .line 713
    move v3, v6

    .line 714
    move v7, v0

    .line 680
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    .end local v4           #q:[I
    :cond_3
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v4, v8, v1

    .line 687
    .restart local v4       #q:[I
    aget v8, v4, v10

    if-ge v8, v6, :cond_4

    .line 688
    move v5, v1

    .line 689
    aget v6, v4, v10

    .line 685
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 712
    :cond_5
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->netindex:[I

    aput v0, v8, v1

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 719
    .end local v2           #p:[I
    .end local v4           #q:[I
    .end local v5           #smallpos:I
    .end local v6           #smallval:I
    :cond_6
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->netindex:[I

    const/16 v9, 0xff

    aput v9, v8, v1

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public learn()V
    .locals 21

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    const/16 v7, 0x5e5

    if-ge v1, v7, :cond_0

    .line 733
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->samplefac:I

    .line 734
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->samplefac:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->alphadec:I

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->thepicture:[B

    move-object/from16 v16, v0

    .line 736
    .local v16, p:[B
    const/16 v17, 0x0

    .line 737
    .local v17, pix:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    .line 738
    .local v15, lim:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->samplefac:I

    mul-int/lit8 v7, v7, 0x3

    div-int v19, v1, v7

    .line 739
    .local v19, samplepixels:I
    div-int/lit8 v13, v19, 0x64

    .line 740
    .local v13, delta:I
    const/16 v2, 0x400

    .line 741
    .local v2, alpha:I
    const/16 v18, 0x800

    .line 743
    .local v18, radius:I
    shr-int/lit8 v8, v18, 0x6

    .line 744
    .local v8, rad:I
    const/4 v1, 0x1

    if-gt v8, v1, :cond_1

    .line 745
    const/4 v8, 0x0

    .line 746
    :cond_1
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-lt v14, v8, :cond_3

    .line 751
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    const/16 v7, 0x5e5

    if-ge v1, v7, :cond_4

    .line 752
    const/16 v20, 0x3

    .line 766
    .local v20, step:I
    :goto_1
    const/4 v14, 0x0

    .line 767
    :cond_2
    move/from16 v0, v19

    if-lt v14, v0, :cond_8

    .line 796
    return-void

    .line 747
    .end local v20           #step:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->radpower:[I

    mul-int v7, v8, v8

    mul-int v9, v14, v14

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x100

    mul-int v9, v8, v8

    div-int/2addr v7, v9

    mul-int/2addr v7, v2

    aput v7, v1, v14

    .line 746
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 753
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1f3

    if-eqz v1, :cond_5

    .line 754
    const/16 v20, 0x5d9

    .restart local v20       #step:I
    goto :goto_1

    .line 756
    .end local v20           #step:I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1eb

    if-eqz v1, :cond_6

    .line 757
    const/16 v20, 0x5c1

    .restart local v20       #step:I
    goto :goto_1

    .line 759
    .end local v20           #step:I
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1e7

    if-eqz v1, :cond_7

    .line 760
    const/16 v20, 0x5b5

    .restart local v20       #step:I
    goto :goto_1

    .line 762
    .end local v20           #step:I
    :cond_7
    const/16 v20, 0x5e5

    .restart local v20       #step:I
    goto :goto_1

    .line 768
    :cond_8
    add-int/lit8 v1, v17, 0x0

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    .line 769
    .local v4, b:I
    add-int/lit8 v1, v17, 0x1

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v1, 0x4

    .line 770
    .local v5, g:I
    add-int/lit8 v1, v17, 0x2

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v6, v1, 0x4

    .line 771
    .local v6, r:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->contest(III)I

    move-result v3

    .local v3, j:I
    move-object/from16 v1, p0

    .line 773
    invoke-virtual/range {v1 .. v6}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->altersingle(IIIII)V

    .line 774
    if-eqz v8, :cond_9

    move-object/from16 v7, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 775
    invoke-virtual/range {v7 .. v12}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->alterneigh(IIIII)V

    .line 777
    :cond_9
    add-int v17, v17, v20

    .line 778
    move/from16 v0, v17

    if-lt v0, v15, :cond_a

    .line 779
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->lengthcount:I

    sub-int v17, v17, v1

    .line 781
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 782
    if-nez v13, :cond_b

    .line 783
    const/4 v13, 0x1

    .line 784
    :cond_b
    rem-int v1, v14, v13

    if-nez v1, :cond_2

    .line 785
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->alphadec:I

    div-int v1, v2, v1

    sub-int/2addr v2, v1

    .line 786
    div-int/lit8 v1, v18, 0x1e

    sub-int v18, v18, v1

    .line 787
    shr-int/lit8 v8, v18, 0x6

    .line 788
    const/4 v1, 0x1

    if-gt v8, v1, :cond_c

    .line 789
    const/4 v8, 0x0

    .line 790
    :cond_c
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_2

    .line 791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->radpower:[I

    mul-int v7, v8, v8

    mul-int v9, v3, v3

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x100

    mul-int v9, v8, v8

    div-int/2addr v7, v9

    mul-int/2addr v7, v2

    aput v7, v1, v3

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public map(III)I
    .locals 8
    .parameter "b"
    .parameter "g"
    .parameter "r"

    .prologue
    .line 809
    const/16 v2, 0x3e8

    .line 810
    .local v2, bestd:I
    const/4 v1, -0x1

    .line 811
    .local v1, best:I
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->netindex:[I

    aget v4, v7, p2

    .line 812
    .local v4, i:I
    add-int/lit8 v5, v4, -0x1

    .line 814
    .local v5, j:I
    :cond_0
    :goto_0
    const/16 v7, 0x100

    if-lt v4, v7, :cond_1

    if-gez v5, :cond_1

    .line 866
    return v1

    .line 815
    :cond_1
    const/16 v7, 0x100

    if-ge v4, v7, :cond_2

    .line 816
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v6, v7, v4

    .line 817
    .local v6, p:[I
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v3, v7, p2

    .line 818
    .local v3, dist:I
    if-lt v3, v2, :cond_3

    .line 819
    const/16 v4, 0x100

    .line 840
    .end local v3           #dist:I
    .end local v6           #p:[I
    :cond_2
    :goto_1
    if-ltz v5, :cond_0

    .line 841
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v6, v7, v5

    .line 842
    .restart local v6       #p:[I
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v3, p2, v7

    .line 843
    .restart local v3       #dist:I
    if-lt v3, v2, :cond_7

    .line 844
    const/4 v5, -0x1

    goto :goto_0

    .line 821
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 822
    if-gez v3, :cond_4

    .line 823
    neg-int v3, v3

    .line 824
    :cond_4
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v0, v7, p1

    .line 825
    .local v0, a:I
    if-gez v0, :cond_5

    .line 826
    neg-int v0, v0

    .line 827
    :cond_5
    add-int/2addr v3, v0

    .line 828
    if-ge v3, v2, :cond_2

    .line 829
    const/4 v7, 0x2

    aget v7, v6, v7

    sub-int v0, v7, p3

    .line 830
    if-gez v0, :cond_6

    .line 831
    neg-int v0, v0

    .line 832
    :cond_6
    add-int/2addr v3, v0

    .line 833
    if-ge v3, v2, :cond_2

    .line 834
    move v2, v3

    .line 835
    const/4 v7, 0x3

    aget v1, v6, v7

    goto :goto_1

    .line 846
    .end local v0           #a:I
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 847
    if-gez v3, :cond_8

    .line 848
    neg-int v3, v3

    .line 849
    :cond_8
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v0, v7, p1

    .line 850
    .restart local v0       #a:I
    if-gez v0, :cond_9

    .line 851
    neg-int v0, v0

    .line 852
    :cond_9
    add-int/2addr v3, v0

    .line 853
    if-ge v3, v2, :cond_0

    .line 854
    const/4 v7, 0x2

    aget v7, v6, v7

    sub-int v0, v7, p3

    .line 855
    if-gez v0, :cond_a

    .line 856
    neg-int v0, v0

    .line 857
    :cond_a
    add-int/2addr v3, v0

    .line 858
    if-ge v3, v2, :cond_0

    .line 859
    move v2, v3

    .line 860
    const/4 v7, 0x3

    aget v1, v6, v7

    goto :goto_0
.end method

.method public process()[B
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->learn()V

    .line 871
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->unbiasnet()V

    .line 872
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->inxbuild()V

    .line 873
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->colorMap()[B

    move-result-object v0

    return-object v0
.end method

.method public unbiasnet()V
    .locals 4

    .prologue
    .line 885
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 891
    return-void

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 887
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 888
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 889
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
