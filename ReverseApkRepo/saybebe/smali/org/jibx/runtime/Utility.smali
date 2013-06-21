.class public abstract Lorg/jibx/runtime/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static BEGINNING_OF_TIME:Ljava/util/Date; = null

.field private static final BIAS_MONTHMS:[J = null

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final LMSPERDAY:J = 0x5265c00L

.field public static final MINIMUM_GROWN_ARRAY_SIZE:I = 0x10

.field static final MONTHS_LEAP:[I = null

.field static final MONTHS_NONLEAP:[I = null

.field private static final MSPERAVGYEAR:J = 0x758fac300L

.field private static final MSPERCENTURY:J = 0x2debe176700L

.field private static final MSPERDAY:I = 0x5265c00

.field private static final MSPERHOUR:I = 0x36ee80

.field private static final MSPERMINUTE:I = 0xea60

.field private static final MSPERYEAR:J = 0x757b12c00L

.field private static final PAD_CHAR:C = '='

.field static final TIME_BASE:J = 0x3883122cd800L

.field private static final s_base64Chars:[C

.field private static final s_base64Values:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v2, 0xd

    const/4 v4, 0x0

    .line 53
    new-array v1, v4, [Ljava/lang/String;

    sput-object v1, Lorg/jibx/runtime/Utility;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 84
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jibx/runtime/Utility;->MONTHS_NONLEAP:[I

    .line 90
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jibx/runtime/Utility;->MONTHS_LEAP:[I

    .line 96
    const/16 v1, 0xf

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    sput-object v1, Lorg/jibx/runtime/Utility;->BIAS_MONTHMS:[J

    .line 105
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v1, Lorg/jibx/runtime/Utility;->BEGINNING_OF_TIME:Ljava/util/Date;

    .line 111
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    .line 122
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 125
    sget-object v1, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    sget-object v1, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    const/16 v2, 0x3d

    aput-byte v4, v1, v2

    .line 128
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 129
    sget-object v1, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    sget-object v2, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_1
    return-void

    .line 84
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
    .end array-data

    .line 90
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data

    .line 96
    :array_2
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x24t 0xa5t 0x9ft 0x0t 0x0t 0x0t 0x0t
        0x0t 0xect 0x23t 0x3at 0x1t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xc9t 0xd9t 0x1t 0x0t 0x0t 0x0t
        0x0t 0xd8t 0x47t 0x74t 0x2t 0x0t 0x0t 0x0t
        0x0t 0xfct 0xect 0x13t 0x3t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x92t 0xb3t 0x3t 0x0t 0x0t 0x0t
        0x0t 0xe8t 0x10t 0x4et 0x4t 0x0t 0x0t 0x0t
        0x0t 0xct 0xb6t 0xedt 0x4t 0x0t 0x0t 0x0t
        0x0t 0xd4t 0x34t 0x88t 0x5t 0x0t 0x0t 0x0t
        0x0t 0xf8t 0xd9t 0x27t 0x6t 0x0t 0x0t 0x0t
        0x0t 0x1ct 0x7ft 0xc7t 0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 111
    :array_3
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayListFactory()Ljava/util/List;
    .locals 1

    .prologue
    .line 1770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static decodeChunk(I[CI[B)I
    .locals 8
    .parameter "base"
    .parameter "chrs"
    .parameter "fill"
    .parameter "byts"

    .prologue
    const/16 v6, 0x3d

    .line 1572
    const/4 v0, 0x3

    .line 1573
    .local v0, length:I
    add-int/lit8 v5, p0, 0x3

    aget-char v5, p1, v5

    if-ne v5, v6, :cond_0

    .line 1574
    const/4 v0, 0x2

    .line 1575
    add-int/lit8 v5, p0, 0x2

    aget-char v5, p1, v5

    if-ne v5, v6, :cond_0

    .line 1576
    const/4 v0, 0x1

    .line 1581
    :cond_0
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    add-int/lit8 v6, p0, 0x0

    aget-char v6, p1, v6

    aget-byte v1, v5, v6

    .line 1582
    .local v1, v0:I
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    add-int/lit8 v6, p0, 0x1

    aget-char v6, p1, v6

    aget-byte v2, v5, v6

    .line 1583
    .local v2, v1:I
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    add-int/lit8 v6, p0, 0x2

    aget-char v6, p1, v6

    aget-byte v3, v5, v6

    .line 1584
    .local v3, v2:I
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    add-int/lit8 v6, p0, 0x3

    aget-char v6, p1, v6

    aget-byte v4, v5, v6

    .line 1587
    .local v4, v3:I
    packed-switch v0, :pswitch_data_0

    .line 1596
    :goto_0
    return v0

    .line 1589
    :pswitch_0
    add-int/lit8 v5, p2, 0x2

    shl-int/lit8 v6, v3, 0x6

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 1591
    :pswitch_1
    add-int/lit8 v5, p2, 0x1

    shl-int/lit8 v6, v2, 0x4

    shr-int/lit8 v7, v3, 0x2

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 1593
    :pswitch_2
    shl-int/lit8 v5, v1, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, p2

    goto :goto_0

    .line 1587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static deserializeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1658
    if-nez p0, :cond_0

    .line 1659
    const/4 v0, 0x0

    .line 1661
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseBase64(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static deserializeBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 441
    if-nez p0, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static deserializeCharString(Ljava/lang/String;)C
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 526
    if-nez p0, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 529
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseCharString(Ljava/lang/String;)C

    move-result v0

    goto :goto_0
.end method

.method public static deserializeDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 739
    if-nez p0, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static deserializeDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 946
    if-nez p0, :cond_0

    .line 947
    const/4 v0, 0x0

    .line 949
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseDateTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static deserializeList(Ljava/lang/String;Lorg/jibx/runtime/IListItemDeserializer;)Ljava/util/ArrayList;
    .locals 9
    .parameter "text"
    .parameter "ideser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1786
    if-nez p0, :cond_1

    move-object v3, v7

    .line 1828
    :cond_0
    :goto_0
    return-object v3

    .line 1791
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    .local v3, items:Ljava/util/ArrayList;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1793
    .local v5, length:I
    const/4 v0, 0x0

    .line 1794
    .local v0, base:I
    const/4 v6, 0x1

    .line 1795
    .local v6, space:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 1796
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1797
    .local v1, chr:C
    sparse-switch v1, :sswitch_data_0

    .line 1813
    const/4 v6, 0x0

    .line 1795
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1804
    :sswitch_0
    if-nez v6, :cond_2

    .line 1805
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1806
    .local v4, itext:Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/jibx/runtime/IListItemDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    const/4 v6, 0x1

    .line 1809
    .end local v4           #itext:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 1810
    goto :goto_2

    .line 1819
    .end local v1           #chr:C
    :cond_3
    if-ge v0, v5, :cond_4

    .line 1820
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1821
    .restart local v4       #itext:Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/jibx/runtime/IListItemDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    .end local v4           #itext:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    move-object v3, v7

    .line 1828
    goto :goto_0

    .line 1797
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static deserializeSqlDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 10
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 761
    if-nez p0, :cond_0

    .line 762
    const/4 v7, 0x0

    .line 800
    :goto_0
    return-object v7

    .line 766
    :cond_0
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->ifDate(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 767
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Invalid date format"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 771
    :cond_1
    const/16 v8, 0x2d

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 772
    .local v4, split:I
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 773
    .local v6, year:I
    if-nez v6, :cond_2

    .line 774
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Year value 0 is not allowed"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 776
    :cond_2
    add-int/lit8 v8, v4, 0x1

    invoke-static {p0, v8, v9}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 777
    .local v3, month:I
    if-ltz v3, :cond_3

    const/16 v8, 0xb

    if-le v3, v8, :cond_4

    .line 778
    :cond_3
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Month value out of range"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 780
    :cond_4
    add-int/lit8 v8, v4, 0x4

    invoke-static {p0, v8, v9}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 781
    .local v1, day:I
    rem-int/lit8 v8, v6, 0x4

    if-nez v8, :cond_7

    rem-int/lit8 v8, v6, 0x64

    if-nez v8, :cond_5

    rem-int/lit16 v8, v6, 0x190

    if-nez v8, :cond_7

    .line 782
    .local v2, leap:Z
    :cond_5
    :goto_1
    if-eqz v2, :cond_8

    sget-object v5, Lorg/jibx/runtime/Utility;->MONTHS_LEAP:[I

    .line 783
    .local v5, starts:[I
    :goto_2
    if-ltz v1, :cond_6

    add-int/lit8 v7, v3, 0x1

    aget v7, v5, v7

    aget v8, v5, v3

    sub-int/2addr v7, v8

    if-lt v1, v7, :cond_9

    .line 784
    :cond_6
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Day value out of range"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2           #leap:Z
    .end local v5           #starts:[I
    :cond_7
    move v2, v7

    .line 781
    goto :goto_1

    .line 782
    .restart local v2       #leap:Z
    :cond_8
    sget-object v5, Lorg/jibx/runtime/Utility;->MONTHS_NONLEAP:[I

    goto :goto_2

    .line 786
    .restart local v5       #starts:[I
    :cond_9
    if-gez v6, :cond_a

    .line 787
    add-int/lit8 v6, v6, 0x1

    .line 792
    :cond_a
    const/16 v7, 0x708

    if-ge v6, v7, :cond_b

    .line 793
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 794
    .local v0, cal:Ljava/util/GregorianCalendar;
    sget-object v7, Lorg/jibx/runtime/Utility;->BEGINNING_OF_TIME:Ljava/util/Date;

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 795
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 796
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v6, v3, v7}, Ljava/util/GregorianCalendar;->set(III)V

    .line 800
    :goto_3
    new-instance v7, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    goto/16 :goto_0

    .line 798
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    :cond_b
    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v0, v6, v3, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .restart local v0       #cal:Ljava/util/GregorianCalendar;
    goto :goto_3
.end method

.method public static deserializeSqlTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1032
    if-nez p0, :cond_0

    .line 1033
    const/4 v0, 0x0

    .line 1035
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/sql/Time;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Lorg/jibx/runtime/Utility;->parseTime(Ljava/lang/String;II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    goto :goto_0
.end method

.method public static deserializeTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 11
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2e

    const/16 v9, 0x9

    const/4 v8, 0x0

    .line 968
    if-nez p0, :cond_0

    .line 969
    const/4 v6, 0x0

    .line 1016
    :goto_0
    return-object v6

    .line 973
    :cond_0
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 974
    .local v5, split:I
    const/4 v3, 0x0

    .line 975
    .local v3, nano:I
    if-lez v5, :cond_6

    .line 978
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-lez v7, :cond_1

    .line 979
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Not a valid timestamp value"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 983
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 984
    .local v2, limit:I
    move v4, v5

    .line 985
    .local v4, scan:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v2, :cond_3

    .line 986
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 987
    .local v0, chr:C
    const/16 v7, 0x30

    if-lt v0, v7, :cond_3

    const/16 v7, 0x39

    if-le v0, v7, :cond_2

    .line 993
    .end local v0           #chr:C
    :cond_3
    sub-int v7, v4, v5

    add-int/lit8 v1, v7, -0x1

    .line 994
    .local v1, length:I
    if-le v1, v9, :cond_4

    .line 995
    const/16 v1, 0x9

    .line 997
    :cond_4
    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, v7, v1}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v3

    .line 1000
    :goto_1
    if-ge v1, v9, :cond_5

    .line 1001
    mul-int/lit8 v3, v3, 0xa

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1006
    :cond_5
    if-ge v4, v2, :cond_7

    .line 1007
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1014
    .end local v1           #length:I
    .end local v2           #limit:I
    .end local v4           #scan:I
    :cond_6
    :goto_2
    new-instance v6, Ljava/sql/Timestamp;

    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseDateTime(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1015
    .local v6, stamp:Ljava/sql/Timestamp;
    invoke-virtual {v6, v3}, Ljava/sql/Timestamp;->setNanos(I)V

    goto :goto_0

    .line 1009
    .end local v6           #stamp:Ljava/sql/Timestamp;
    .restart local v1       #length:I
    .restart local v2       #limit:I
    .restart local v4       #scan:I
    :cond_7
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static deserializeTokenList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1844
    new-instance v0, Lorg/jibx/runtime/Utility$1;

    invoke-direct {v0}, Lorg/jibx/runtime/Utility$1;-><init>()V

    .line 1849
    .local v0, ldser:Lorg/jibx/runtime/IListItemDeserializer;
    invoke-static {p0, v0}, Lorg/jibx/runtime/Utility;->deserializeList(Ljava/lang/String;Lorg/jibx/runtime/IListItemDeserializer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1850
    .local v1, list:Ljava/util/ArrayList;
    if-nez v1, :cond_0

    .line 1851
    const/4 v2, 0x0

    .line 1853
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static encodeChunk(I[BLjava/lang/StringBuffer;)V
    .locals 8
    .parameter "base"
    .parameter "byts"
    .parameter "buff"

    .prologue
    const/16 v7, 0x3d

    .line 1677
    const/4 v3, 0x3

    .line 1678
    .local v3, length:I
    add-int v5, p0, v3

    array-length v6, p1

    if-le v5, v6, :cond_0

    .line 1679
    array-length v5, p1

    sub-int v3, v5, p0

    .line 1683
    :cond_0
    aget-byte v0, p1, p0

    .line 1684
    .local v0, b0:I
    shr-int/lit8 v5, v0, 0x2

    and-int/lit8 v4, v5, 0x3f

    .line 1685
    .local v4, value:I
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    aget-char v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1686
    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 1687
    add-int/lit8 v5, p0, 0x1

    aget-byte v1, p1, v5

    .line 1688
    .local v1, b1:I
    and-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    add-int v4, v5, v6

    .line 1689
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    aget-char v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1690
    const/4 v5, 0x2

    if-le v3, v5, :cond_1

    .line 1691
    add-int/lit8 v5, p0, 0x2

    aget-byte v2, p1, v5

    .line 1692
    .local v2, b2:I
    and-int/lit8 v5, v1, 0xf

    shl-int/lit8 v5, v5, 0x2

    shr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int v4, v5, v6

    .line 1693
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    aget-char v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1694
    and-int/lit8 v4, v2, 0x3f

    .line 1695
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    aget-char v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1707
    .end local v1           #b1:I
    .end local v2           #b2:I
    :goto_0
    return-void

    .line 1697
    .restart local v1       #b1:I
    :cond_1
    and-int/lit8 v5, v1, 0xf

    shl-int/lit8 v4, v5, 0x2

    .line 1698
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    aget-char v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1699
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1702
    .end local v1           #b1:I
    :cond_2
    and-int/lit8 v5, v0, 0x3

    shl-int/lit8 v4, v5, 0x4

    .line 1703
    sget-object v5, Lorg/jibx/runtime/Utility;->s_base64Chars:[C

    aget-char v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1704
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1705
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static enumValue(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 7
    .parameter "target"
    .parameter "enums"
    .parameter "vals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, base:I
    array-length v4, p1

    add-int/lit8 v3, v4, -0x1

    .line 1539
    .local v3, limit:I
    :goto_0
    if-gt v0, v3, :cond_3

    .line 1540
    add-int v4, v0, v3

    shr-int/lit8 v1, v4, 0x1

    .line 1541
    .local v1, cur:I
    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1542
    .local v2, diff:I
    if-gez v2, :cond_0

    .line 1543
    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    .line 1544
    :cond_0
    if-lez v2, :cond_1

    .line 1545
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 1546
    :cond_1
    if-eqz p2, :cond_2

    .line 1547
    aget v1, p2, v1

    .line 1549
    .end local v1           #cur:I
    :cond_2
    return v1

    .line 1552
    .end local v2           #diff:I
    :cond_3
    new-instance v4, Lorg/jibx/runtime/JiBXException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Target value \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" not found in enumeration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected static formatTwoDigits(ILjava/lang/StringBuffer;)V
    .locals 1
    .parameter "value"
    .parameter "buff"

    .prologue
    .line 1079
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1080
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1082
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1083
    return-void
.end method

.method protected static formatYear(JLjava/lang/StringBuffer;)V
    .locals 18
    .parameter "value"
    .parameter "buff"

    .prologue
    .line 1101
    const-wide v12, 0x627d9f800L

    add-long v12, v12, p0

    const-wide/32 v14, 0x3dcc500

    add-long v6, v12, v14

    .line 1102
    .local v6, time:J
    const-wide v12, 0x2debe176700L

    div-long v3, v6, v12

    .line 1103
    .local v3, century:J
    const-wide/16 v12, 0x4

    div-long v12, v3, v12

    sub-long v12, v3, v12

    const-wide/32 v14, 0x5265c00

    mul-long/2addr v12, v14

    add-long v1, v6, v12

    .line 1104
    .local v1, adjusted:J
    const-wide v12, 0x758fac300L

    div-long v12, v1, v12

    long-to-int v9, v12

    .line 1105
    .local v9, year:I
    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-gez v12, :cond_0

    .line 1106
    add-int/lit8 v9, v9, -0x1

    .line 1108
    :cond_0
    const-wide/32 v12, 0x1499700

    add-long/2addr v12, v1

    mul-int/lit16 v14, v9, 0x16d

    div-int/lit8 v15, v9, 0x4

    add-int/2addr v14, v15

    int-to-long v14, v14

    const-wide/32 v16, 0x5265c00

    mul-long v14, v14, v16

    sub-long v10, v12, v14

    .line 1109
    .local v10, yms:J
    const-wide/32 v12, 0x5265c00

    div-long v12, v10, v12

    long-to-int v8, v12

    .line 1110
    .local v8, yday:I
    mul-int/lit8 v12, v8, 0x5

    add-int/lit16 v12, v12, 0x1c8

    div-int/lit16 v5, v12, 0x99

    .line 1111
    .local v5, month:I
    const/16 v12, 0xc

    if-le v5, v12, :cond_1

    .line 1112
    add-int/lit8 v9, v9, 0x1

    .line 1116
    :cond_1
    int-to-long v12, v9

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Lorg/jibx/runtime/Utility;->formatYearNumber(JLjava/lang/StringBuffer;)V

    .line 1117
    return-void
.end method

.method protected static formatYearMonth(JLjava/lang/StringBuffer;)J
    .locals 24
    .parameter "value"
    .parameter "buff"

    .prologue
    .line 1136
    const-wide v18, 0x627d9f800L

    add-long v18, v18, p0

    const-wide/32 v20, 0x3dcc500

    add-long v12, v18, v20

    .line 1137
    .local v12, time:J
    const-wide v18, 0x2debe176700L

    div-long v6, v12, v18

    .line 1138
    .local v6, century:J
    const-wide/16 v18, 0x4

    div-long v18, v6, v18

    sub-long v18, v6, v18

    const-wide/32 v20, 0x5265c00

    mul-long v18, v18, v20

    add-long v3, v12, v18

    .line 1139
    .local v3, adjusted:J
    const-wide v18, 0x758fac300L

    div-long v18, v3, v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 1140
    .local v15, year:I
    const-wide/16 v18, 0x0

    cmp-long v18, v3, v18

    if-gez v18, :cond_0

    .line 1141
    add-int/lit8 v15, v15, -0x1

    .line 1143
    :cond_0
    const-wide/32 v18, 0x1499700

    add-long v18, v18, v3

    mul-int/lit16 v0, v15, 0x16d

    move/from16 v20, v0

    div-int/lit8 v21, v15, 0x4

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    sub-long v16, v18, v20

    .line 1144
    .local v16, yms:J
    const-wide/32 v18, 0x5265c00

    div-long v18, v16, v18

    move-wide/from16 v0, v18

    long-to-int v14, v0

    .line 1145
    .local v14, yday:I
    if-nez v14, :cond_3

    .line 1146
    if-gez v15, :cond_5

    const/4 v5, 0x1

    .line 1147
    .local v5, bce:Z
    :goto_0
    if-eqz v5, :cond_1

    .line 1148
    add-int/lit8 v15, v15, -0x1

    .line 1150
    :cond_1
    rem-int/lit8 v18, v15, 0x4

    if-nez v18, :cond_6

    const/16 v8, 0x16e

    .line 1151
    .local v8, dcnt:I
    :goto_1
    if-nez v5, :cond_2

    .line 1152
    add-int/lit8 v15, v15, -0x1

    .line 1154
    :cond_2
    int-to-long v0, v8

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x5265c00

    mul-long v18, v18, v20

    add-long v16, v16, v18

    .line 1155
    add-int/2addr v14, v8

    .line 1157
    .end local v5           #bce:Z
    .end local v8           #dcnt:I
    :cond_3
    mul-int/lit8 v18, v14, 0x5

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x1c8

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v9, v0, 0x99

    .line 1158
    .local v9, month:I
    sget-object v18, Lorg/jibx/runtime/Utility;->BIAS_MONTHMS:[J

    aget-wide v18, v18, v9

    sub-long v18, v16, v18

    const-wide/32 v20, 0x5265c00

    sub-long v10, v18, v20

    .line 1159
    .local v10, rem:J
    const/16 v18, 0xc

    move/from16 v0, v18

    if-le v9, v0, :cond_4

    .line 1160
    add-int/lit8 v15, v15, 0x1

    .line 1161
    add-int/lit8 v9, v9, -0xc

    .line 1165
    :cond_4
    int-to-long v0, v15

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/jibx/runtime/Utility;->formatYearNumber(JLjava/lang/StringBuffer;)V

    .line 1166
    const/16 v18, 0x2d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1167
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1170
    return-wide v10

    .line 1146
    .end local v9           #month:I
    .end local v10           #rem:J
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 1150
    .restart local v5       #bce:Z
    :cond_6
    const/16 v8, 0x16d

    goto :goto_1
.end method

.method protected static formatYearMonthDay(JLjava/lang/StringBuffer;)I
    .locals 7
    .parameter "value"
    .parameter "buff"

    .prologue
    const-wide/32 v5, 0x5265c00

    .line 1186
    invoke-static {p0, p1, p2}, Lorg/jibx/runtime/Utility;->formatYearMonth(JLjava/lang/StringBuffer;)J

    move-result-wide v1

    .line 1189
    .local v1, extra:J
    div-long v3, v1, v5

    long-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    .line 1190
    .local v0, day:I
    const/16 v3, 0x2d

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1191
    invoke-static {v0, p2}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1194
    rem-long v3, v1, v5

    long-to-int v3, v3

    return v3
.end method

.method protected static formatYearNumber(JLjava/lang/StringBuffer;)V
    .locals 3
    .parameter "year"
    .parameter "buff"

    .prologue
    const/16 v2, 0x30

    .line 1051
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 1052
    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1053
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    neg-long p0, v0

    .line 1057
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 1058
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1059
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 1060
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1061
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 1062
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1068
    :cond_1
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1069
    return-void
.end method

.method public static growArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "base"

    .prologue
    const/4 v6, 0x0

    .line 1755
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 1756
    .local v1, length:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 1757
    .local v3, type:Ljava/lang/Class;
    mul-int/lit8 v4, v1, 0x2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1758
    .local v2, newlen:I
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1759
    .local v0, copy:Ljava/lang/Object;
    invoke-static {p0, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1760
    return-object v0
.end method

.method public static ifBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 243
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ifByte(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 1979
    const/4 v0, 0x3

    const-string v1, "128"

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/Utility;->ifInIntegerRange(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ifDate(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x2d

    .line 2157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 2172
    :cond_0
    :goto_0
    return v2

    .line 2160
    :cond_1
    const/4 v0, 0x0

    .line 2161
    .local v0, base:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2162
    .local v1, split:I
    if-nez v1, :cond_2

    .line 2163
    const/4 v0, 0x1

    .line 2164
    const/4 v3, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 2166
    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/Utility;->ifDigits(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    const-string v4, "12"

    invoke-static {p0, v3, v4}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x4

    const-string v4, "31"

    invoke-static {p0, v3, v4}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2170
    add-int/lit8 v2, v1, 0x6

    invoke-static {p0, v2}, Lorg/jibx/runtime/Utility;->ifZoneSuffix(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method public static ifDateTime(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x2d

    .line 2220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 2236
    :cond_0
    :goto_0
    return v2

    .line 2223
    :cond_1
    const/4 v0, 0x0

    .line 2224
    .local v0, base:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2225
    .local v1, split:I
    if-nez v1, :cond_2

    .line 2226
    const/4 v0, 0x1

    .line 2227
    const/4 v3, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 2229
    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/Utility;->ifDigits(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    const-string v4, "12"

    invoke-static {p0, v3, v4}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x4

    const-string v4, "31"

    invoke-static {p0, v3, v4}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_0

    .line 2234
    add-int/lit8 v2, v1, 0x7

    invoke-static {p0, v2}, Lorg/jibx/runtime/Utility;->ifTimeSuffix(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method public static ifDecimal(Ljava/lang/String;)Z
    .locals 7
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 2054
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return v5

    .line 2059
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2060
    .local v4, length:I
    const/4 v2, 0x0

    .line 2061
    .local v2, first:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2062
    .local v0, chr:C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_5

    .line 2063
    const/4 v2, 0x1

    .line 2069
    :cond_2
    :goto_1
    if-eq v2, v4, :cond_0

    .line 2074
    const/4 v1, 0x0

    .line 2075
    .local v1, decimal:Z
    move v3, v2

    .local v3, i:I
    :goto_2
    if-ge v3, v4, :cond_6

    .line 2076
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2077
    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    const/16 v6, 0x39

    if-le v0, v6, :cond_4

    .line 2078
    :cond_3
    if-nez v1, :cond_0

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_0

    .line 2079
    const/4 v1, 0x1

    .line 2075
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2064
    .end local v1           #decimal:Z
    .end local v3           #i:I
    :cond_5
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_2

    .line 2065
    const/4 v2, 0x1

    goto :goto_1

    .line 2085
    .restart local v1       #decimal:Z
    .restart local v3       #i:I
    :cond_6
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static ifDigits(Ljava/lang/String;II)Z
    .locals 4
    .parameter "text"
    .parameter "offset"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 2032
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p2, :cond_1

    .line 2041
    :cond_0
    :goto_0
    return v2

    .line 2035
    :cond_1
    move v1, p1

    .local v1, i:I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 2036
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2037
    .local v0, chr:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 2035
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2041
    .end local v0           #chr:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static ifEqualSubstring(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter "match"
    .parameter "text"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 1901
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1902
    .local v1, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, p2, v1

    if-lt v3, v4, :cond_0

    .line 1903
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1904
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1910
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v2

    .line 1903
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1908
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .parameter "text"
    .parameter "offset"
    .parameter "bound"

    .prologue
    const/4 v5, 0x0

    .line 2099
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2100
    .local v3, length:I
    const/4 v4, 0x0

    .line 2101
    .local v4, lessthan:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 2102
    add-int v6, p1, v2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2103
    .local v0, chr:C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_0

    const/16 v6, 0x39

    if-le v0, v6, :cond_1

    .line 2114
    .end local v0           #chr:C
    :cond_0
    :goto_1
    return v5

    .line 2105
    .restart local v0       #chr:C
    :cond_1
    if-nez v4, :cond_2

    .line 2106
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int v1, v6, v0

    .line 2107
    .local v1, diff:I
    if-lez v1, :cond_3

    .line 2108
    const/4 v4, 0x1

    .line 2101
    .end local v1           #diff:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2109
    .restart local v1       #diff:I
    :cond_3
    if-gez v1, :cond_2

    goto :goto_1

    .line 2114
    .end local v0           #chr:C
    .end local v1           #diff:I
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static ifInIntegerRange(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 11
    .parameter "text"
    .parameter "digitmax"
    .parameter "abslimit"

    .prologue
    const/16 v10, 0x30

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1925
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v7, :cond_1

    .line 1928
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1929
    .local v4, length:I
    const/4 v2, 0x0

    .line 1930
    .local v2, first:I
    const/4 v5, 0x0

    .line 1931
    .local v5, negate:Z
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1932
    .local v0, chr:C
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_2

    .line 1933
    const/4 v5, 0x1

    .line 1934
    const/4 v2, 0x1

    .line 1940
    :cond_0
    :goto_0
    move v3, v2

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1941
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1942
    if-lt v0, v10, :cond_1

    const/16 v9, 0x39

    if-le v0, v9, :cond_3

    .line 1968
    .end local v0           #chr:C
    .end local v2           #first:I
    .end local v3           #i:I
    .end local v4           #length:I
    .end local v5           #negate:Z
    :cond_1
    :goto_2
    return v8

    .line 1935
    .restart local v0       #chr:C
    .restart local v2       #first:I
    .restart local v4       #length:I
    .restart local v5       #negate:Z
    :cond_2
    const/16 v9, 0x2b

    if-ne v0, v9, :cond_0

    .line 1936
    const/4 v2, 0x1

    goto :goto_0

    .line 1944
    .restart local v3       #i:I
    :cond_3
    if-ne v0, v10, :cond_4

    if-ne v3, v2, :cond_4

    .line 1945
    add-int/lit8 v2, v2, 0x1

    .line 1940
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1950
    :cond_5
    sub-int v1, v4, v2

    .line 1951
    .local v1, digitcnt:I
    if-gt v1, p1, :cond_1

    .line 1953
    if-ne v1, p1, :cond_a

    .line 1954
    move-object v6, p0

    .line 1955
    .local v6, number:Ljava/lang/String;
    if-lez v2, :cond_6

    .line 1956
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1958
    :cond_6
    if-eqz v5, :cond_8

    .line 1959
    invoke-virtual {p2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_7

    :goto_3
    move v8, v7

    goto :goto_2

    :cond_7
    move v7, v8

    goto :goto_3

    .line 1961
    :cond_8
    invoke-virtual {p2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_9

    :goto_4
    move v8, v7

    goto :goto_2

    :cond_9
    move v7, v8

    goto :goto_4

    .end local v6           #number:Ljava/lang/String;
    :cond_a
    move v8, v7

    .line 1964
    goto :goto_2
.end method

.method public static ifInt(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 1999
    const/16 v0, 0xa

    const-string v1, "2147483648"

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/Utility;->ifInIntegerRange(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ifInteger(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 2019
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/Utility;->ifInIntegerRange(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ifLong(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 2009
    const/16 v0, 0x13

    const-string v1, "9223372036854775808"

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/Utility;->ifInIntegerRange(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ifShort(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 1989
    const/4 v0, 0x5

    const-string v1, "32768"

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/Utility;->ifInIntegerRange(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ifTime(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 2251
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jibx/runtime/Utility;->ifTimeSuffix(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static ifTimeSuffix(Ljava/lang/String;I)Z
    .locals 6
    .parameter "text"
    .parameter "offset"

    .prologue
    const/16 v5, 0x3a

    .line 2187
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p1

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    const-string v3, "24:00:00"

    invoke-static {v3, p0, p1}, Lorg/jibx/runtime/Utility;->ifEqualSubstring(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "23"

    invoke-static {p0, p1, v3}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, p1, 0x3

    const-string v4, "59"

    invoke-static {p0, v3, v4}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, p1, 0x5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    add-int/lit8 v3, p1, 0x6

    const-string v4, "60"

    invoke-static {p0, v3, v4}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2194
    :cond_0
    add-int/lit8 v0, p1, 0x8

    .line 2195
    .local v0, base:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2196
    .local v2, length:I
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    .line 2197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_2

    .line 2198
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2199
    .local v1, chr:C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2

    const/16 v3, 0x39

    if-le v1, v3, :cond_1

    .line 2204
    .end local v1           #chr:C
    :cond_2
    invoke-static {p0, v0}, Lorg/jibx/runtime/Utility;->ifZoneSuffix(Ljava/lang/String;I)Z

    move-result v3

    .line 2206
    .end local v0           #base:I
    .end local v2           #length:I
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static ifZoneSuffix(Ljava/lang/String;I)Z
    .locals 6
    .parameter "text"
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2127
    .local v1, length:I
    if-gt v1, p1, :cond_1

    .line 2142
    :cond_0
    :goto_0
    return v2

    .line 2130
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2131
    .local v0, chr:C
    add-int/lit8 v4, p1, 0x1

    if-ne v1, v4, :cond_2

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_0

    .line 2133
    :cond_2
    add-int/lit8 v4, p1, 0x6

    if-ne v1, v4, :cond_6

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_3

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_6

    :cond_3
    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_6

    .line 2135
    const-string v4, "14"

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, p0, v5}, Lorg/jibx/runtime/Utility;->ifEqualSubstring(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2136
    const-string v2, "00"

    add-int/lit8 v3, p1, 0x4

    invoke-static {v2, p0, v3}, Lorg/jibx/runtime/Utility;->ifEqualSubstring(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    .line 2138
    :cond_4
    add-int/lit8 v4, p1, 0x1

    const-string v5, "13"

    invoke-static {p0, v4, v5}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, p1, 0x4

    const-string v5, "59"

    invoke-static {p0, v4, v5}, Lorg/jibx/runtime/Utility;->ifFixedDigits(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    .line 2142
    goto :goto_0
.end method

.method public static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1519
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static parseBase64(Ljava/lang/String;)[B
    .locals 10
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3d

    .line 1610
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v3, v8, [C

    .line 1611
    .local v3, chrs:[C
    const/4 v6, 0x0

    .line 1612
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 1613
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1614
    .local v2, chr:C
    const/16 v8, 0x80

    if-ge v2, v8, :cond_0

    sget-object v8, Lorg/jibx/runtime/Utility;->s_base64Values:[B

    aget-byte v8, v8, v2

    if-ltz v8, :cond_0

    .line 1615
    add-int/lit8 v7, v6, 0x1

    .end local v6           #length:I
    .local v7, length:I
    aput-char v2, v3, v6

    move v6, v7

    .line 1612
    .end local v7           #length:I
    .restart local v6       #length:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1620
    .end local v2           #chr:C
    :cond_1
    rem-int/lit8 v8, v6, 0x4

    if-eqz v8, :cond_2

    .line 1621
    new-instance v8, Lorg/jibx/runtime/JiBXException;

    const-string v9, "Text length for base64 must be a multiple of 4"

    invoke-direct {v8, v9}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1623
    :cond_2
    if-nez v6, :cond_4

    .line 1624
    const/4 v8, 0x0

    new-array v1, v8, [B

    .line 1646
    :cond_3
    return-object v1

    .line 1628
    :cond_4
    div-int/lit8 v8, v6, 0x4

    mul-int/lit8 v0, v8, 0x3

    .line 1629
    .local v0, blength:I
    add-int/lit8 v8, v6, -0x1

    aget-char v8, v3, v8

    if-ne v8, v9, :cond_5

    .line 1630
    add-int/lit8 v0, v0, -0x1

    .line 1631
    add-int/lit8 v8, v6, -0x2

    aget-char v8, v3, v8

    if-ne v8, v9, :cond_5

    .line 1632
    add-int/lit8 v0, v0, -0x1

    .line 1637
    :cond_5
    new-array v1, v0, [B

    .line 1638
    .local v1, byts:[B
    const/4 v4, 0x0

    .line 1639
    .local v4, fill:I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_6

    .line 1640
    invoke-static {v5, v3, v4, v1}, Lorg/jibx/runtime/Utility;->decodeChunk(I[CI[B)I

    move-result v8

    add-int/2addr v4, v8

    .line 1639
    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    .line 1642
    :cond_6
    if-eq v4, v0, :cond_3

    .line 1643
    new-instance v8, Lorg/jibx/runtime/JiBXException;

    const-string v9, "Embedded padding characters in byte64 text"

    invoke-direct {v8, v9}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 422
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    .line 424
    :cond_1
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    :cond_3
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    const-string v1, "Invalid boolean value"

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseByte(Ljava/lang/String;)B
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 396
    .local v0, value:I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 397
    :cond_0
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Value out of range"

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method public static parseChar(Ljava/lang/String;)C
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, value:I
    if-ltz v0, :cond_0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 486
    :cond_0
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Value out of range"

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_1
    int-to-char v1, v0

    return v1
.end method

.method public static parseCharString(Ljava/lang/String;)C
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 513
    :cond_0
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    const-string v1, "Input must be a single character"

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 11
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 692
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->ifDate(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 693
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Invalid date format"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 697
    :cond_0
    const/16 v8, 0x2d

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 698
    .local v4, split:I
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 699
    .local v6, year:I
    if-nez v6, :cond_1

    .line 700
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Year value 0 is not allowed"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 702
    :cond_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {p0, v8, v9}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 703
    .local v3, month:I
    if-ltz v3, :cond_2

    const/16 v8, 0xb

    if-le v3, v8, :cond_3

    .line 704
    :cond_2
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Month value out of range"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 706
    :cond_3
    add-int/lit8 v8, v4, 0x4

    invoke-static {p0, v8, v9}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-long v0, v8

    .line 707
    .local v0, day:J
    rem-int/lit8 v8, v6, 0x4

    if-nez v8, :cond_6

    rem-int/lit8 v8, v6, 0x64

    if-nez v8, :cond_4

    rem-int/lit16 v8, v6, 0x190

    if-nez v8, :cond_6

    .line 708
    .local v2, leap:Z
    :cond_4
    :goto_0
    if-eqz v2, :cond_7

    sget-object v5, Lorg/jibx/runtime/Utility;->MONTHS_LEAP:[I

    .line 709
    .local v5, starts:[I
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-ltz v7, :cond_5

    add-int/lit8 v7, v3, 0x1

    aget v7, v5, v7

    aget v8, v5, v3

    sub-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v7, v0, v7

    if-ltz v7, :cond_8

    .line 710
    :cond_5
    new-instance v7, Lorg/jibx/runtime/JiBXException;

    const-string v8, "Day value out of range"

    invoke-direct {v7, v8}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2           #leap:Z
    .end local v5           #starts:[I
    :cond_6
    move v2, v7

    .line 707
    goto :goto_0

    .line 708
    .restart local v2       #leap:Z
    :cond_7
    sget-object v5, Lorg/jibx/runtime/Utility;->MONTHS_NONLEAP:[I

    goto :goto_1

    .line 712
    .restart local v5       #starts:[I
    :cond_8
    if-lez v6, :cond_9

    .line 713
    add-int/lit8 v6, v6, -0x1

    .line 715
    :cond_9
    int-to-long v7, v6

    const-wide/16 v9, 0x16d

    mul-long/2addr v7, v9

    div-int/lit8 v9, v6, 0x4

    int-to-long v9, v9

    add-long/2addr v7, v9

    div-int/lit8 v9, v6, 0x64

    int-to-long v9, v9

    sub-long/2addr v7, v9

    div-int/lit16 v9, v6, 0x190

    int-to-long v9, v9

    add-long/2addr v7, v9

    aget v9, v5, v3

    int-to-long v9, v9

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 716
    const-wide/32 v7, 0x5265c00

    mul-long/2addr v7, v0

    const-wide v9, 0x3883122cd800L

    sub-long/2addr v7, v9

    return-wide v7
.end method

.method public static parseDateTime(Ljava/lang/String;)J
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 925
    const/16 v1, 0x54

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 926
    .local v0, split:I
    if-gez v0, :cond_0

    .line 927
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Missing \'T\' separator in dateTime"

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 929
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jibx/runtime/Utility;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p0, v3, v4}, Lorg/jibx/runtime/Utility;->parseTime(Ljava/lang/String;II)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method static parseDigits(Ljava/lang/String;II)I
    .locals 7
    .parameter "text"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, value:I
    const/16 v5, 0x9

    if-le p2, v5, :cond_0

    .line 153
    add-int v5, p1, p2

    :try_start_0
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 172
    :goto_0
    return v4

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, ex:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    add-int v2, p1, p2

    .local v2, limit:I
    move v3, p1

    .line 162
    .end local p1
    .local v3, offset:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 163
    add-int/lit8 p1, v3, 0x1

    .end local v3           #offset:I
    .restart local p1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    .local v0, chr:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_1

    const/16 v5, 0x39

    if-gt v0, v5, :cond_1

    .line 165
    mul-int/lit8 v5, v4, 0xa

    add-int/lit8 v6, v0, -0x30

    add-int v4, v5, v6

    move v3, p1

    .line 169
    .end local p1
    .restart local v3       #offset:I
    goto :goto_1

    .line 167
    .end local v3           #offset:I
    .restart local p1
    :cond_1
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    const-string v6, "Non-digit in number value"

    invoke-direct {v5, v6}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0           #chr:C
    .end local p1
    .restart local v3       #offset:I
    :cond_2
    move p1, v3

    .end local v3           #offset:I
    .restart local p1
    goto :goto_0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 594
    const-string v1, "-INF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const-wide/high16 v1, -0x10

    .line 600
    :goto_0
    return-wide v1

    .line 596
    :cond_0
    const-string v1, "INF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    const-wide/high16 v1, 0x7ff0

    goto :goto_0

    .line 600
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 555
    const-string v1, "-INF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const/high16 v1, -0x80

    .line 561
    :goto_0
    return v1

    .line 557
    :cond_0
    const-string v1, "INF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    const/high16 v1, 0x7f80

    goto :goto_0

    .line 561
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 8
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 187
    const/4 v4, 0x0

    .line 188
    .local v4, offset:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 189
    .local v2, limit:I
    if-nez v2, :cond_0

    .line 190
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    const-string v7, "Empty number value"

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 194
    :cond_0
    const/4 v3, 0x0

    .line 195
    .local v3, negate:Z
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 196
    .local v0, chr:C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_4

    .line 197
    const/16 v6, 0x9

    if-le v2, v6, :cond_2

    .line 201
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 222
    :cond_1
    :goto_0
    return v5

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 207
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v3, 0x1

    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 213
    :cond_3
    :goto_1
    if-lt v4, v2, :cond_5

    .line 214
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    const-string v7, "Invalid number format"

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 210
    :cond_4
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_3

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 218
    :cond_5
    sub-int v6, v2, v4

    invoke-static {p0, v4, v6}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v5

    .line 219
    .local v5, value:I
    if-eqz v3, :cond_1

    .line 220
    neg-int v5, v5

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 12
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2b

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 259
    const/4 v4, 0x0

    .line 260
    .local v4, offset:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 261
    .local v2, limit:I
    if-nez v2, :cond_0

    .line 262
    new-instance v8, Lorg/jibx/runtime/JiBXException;

    const-string v9, "Empty number value"

    invoke-direct {v8, v9}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 266
    :cond_0
    const/4 v3, 0x0

    .line 267
    .local v3, negate:Z
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 268
    .local v0, chr:C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_2

    .line 269
    const/4 v3, 0x1

    .line 270
    add-int/lit8 v4, v4, 0x1

    .line 274
    :cond_1
    :goto_0
    if-lt v4, v2, :cond_3

    .line 275
    new-instance v8, Lorg/jibx/runtime/JiBXException;

    const-string v9, "Invalid number format"

    invoke-direct {v8, v9}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 271
    :cond_2
    if-ne v0, v10, :cond_1

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_3
    const-wide/16 v6, 0x0

    .line 280
    .local v6, value:J
    sub-int v8, v2, v4

    const/16 v9, 0x12

    if-le v8, v9, :cond_8

    .line 283
    if-ne v0, v10, :cond_4

    .line 284
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 287
    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 308
    :goto_1
    return-wide v6

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, ex:Ljava/lang/NumberFormatException;
    new-instance v8, Lorg/jibx/runtime/JiBXException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 295
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .end local v4           #offset:I
    .local v5, offset:I
    :goto_2
    if-ge v5, v2, :cond_6

    .line 296
    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 297
    const/16 v8, 0x30

    if-lt v0, v8, :cond_5

    const/16 v8, 0x39

    if-gt v0, v8, :cond_5

    .line 298
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    move v5, v4

    .end local v4           #offset:I
    .restart local v5       #offset:I
    goto :goto_2

    .line 300
    .end local v5           #offset:I
    .restart local v4       #offset:I
    :cond_5
    new-instance v8, Lorg/jibx/runtime/JiBXException;

    const-string v9, "Non-digit in number value"

    invoke-direct {v8, v9}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 303
    .end local v4           #offset:I
    .restart local v5       #offset:I
    :cond_6
    if-eqz v3, :cond_7

    .line 304
    neg-long v6, v6

    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_1

    .end local v4           #offset:I
    .restart local v5       #offset:I
    :cond_7
    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_1

    :cond_8
    move v5, v4

    .end local v4           #offset:I
    .restart local v5       #offset:I
    goto :goto_2
.end method

.method public static parseShort(Ljava/lang/String;)S
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    .local v0, value:I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 371
    :cond_0
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Value out of range"

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_1
    int-to-short v1, v0

    return v1
.end method

.method public static parseTime(Ljava/lang/String;II)J
    .locals 11
    .parameter "text"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2d

    const/16 v9, 0xe

    const/4 v8, 0x2

    .line 883
    invoke-static {p0, p1, p2}, Lorg/jibx/runtime/Utility;->parseTimeNoOffset(Ljava/lang/String;II)J

    move-result-wide v2

    .line 884
    .local v2, milli:J
    add-int/lit8 p1, p1, 0x8

    .line 885
    if-le p2, p1, :cond_0

    .line 888
    add-int/lit8 v6, p2, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_1

    .line 889
    add-int/lit8 p2, p2, -0x1

    .line 909
    :cond_0
    :goto_0
    return-wide v2

    .line 891
    :cond_1
    add-int/lit8 v6, p2, -0x6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 892
    .local v0, chr:C
    if-eq v0, v10, :cond_2

    const/16 v6, 0x2b

    if-ne v0, v6, :cond_0

    .line 893
    :cond_2
    add-int/lit8 v6, p2, -0x5

    invoke-static {p0, v6, v8}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v1

    .line 894
    .local v1, hour:I
    add-int/lit8 v6, p2, -0x2

    invoke-static {p0, v6, v8}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v4

    .line 895
    .local v4, minute:I
    if-gt v1, v9, :cond_3

    const/16 v6, 0x3b

    if-gt v4, v6, :cond_3

    if-ne v1, v9, :cond_4

    if-eqz v4, :cond_4

    .line 896
    :cond_3
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Invalid time zone offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 899
    :cond_4
    mul-int/lit8 v6, v1, 0x3c

    add-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v5, v6, 0x3e8

    .line 900
    .local v5, offset:I
    if-ne v0, v10, :cond_5

    .line 901
    int-to-long v6, v5

    add-long/2addr v2, v6

    goto :goto_0

    .line 903
    :cond_5
    int-to-long v6, v5

    sub-long/2addr v2, v6

    goto :goto_0
.end method

.method public static parseTimeNoOffset(Ljava/lang/String;II)J
    .locals 17
    .parameter "text"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 821
    const-wide/16 v8, 0x0

    .line 822
    .local v8, milli:J
    add-int/lit8 v13, p1, 0x7

    move/from16 v0, p2

    if-le v0, v13, :cond_2

    add-int/lit8 v13, p1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_2

    add-int/lit8 v13, p1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_2

    const/4 v12, 0x1

    .line 825
    .local v12, valid:Z
    :goto_0
    if-eqz v12, :cond_1

    .line 826
    const/4 v13, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v13}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v7

    .line 827
    .local v7, hour:I
    add-int/lit8 v13, p1, 0x3

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v10

    .line 828
    .local v10, minute:I
    add-int/lit8 v13, p1, 0x6

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v11

    .line 829
    .local v11, second:I
    const/16 v13, 0x18

    if-gt v7, v13, :cond_0

    const/16 v13, 0x3b

    if-gt v10, v13, :cond_0

    const/16 v13, 0x3c

    if-gt v11, v13, :cond_0

    const/16 v13, 0x18

    if-ne v7, v13, :cond_3

    if-nez v10, :cond_0

    if-eqz v11, :cond_3

    .line 831
    :cond_0
    const/4 v12, 0x0

    .line 860
    .end local v7           #hour:I
    .end local v10           #minute:I
    .end local v11           #second:I
    :cond_1
    :goto_1
    if-eqz v12, :cond_8

    .line 861
    return-wide v8

    .line 822
    .end local v12           #valid:Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 835
    .restart local v7       #hour:I
    .restart local v10       #minute:I
    .restart local v11       #second:I
    .restart local v12       #valid:Z
    :cond_3
    mul-int/lit8 v13, v7, 0x3c

    add-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x3c

    add-int/2addr v13, v11

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v8, v13

    .line 836
    add-int/lit8 v2, p1, 0x8

    .line 837
    .local v2, base:I
    move/from16 v0, p2

    if-le v0, v2, :cond_1

    .line 840
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_1

    .line 841
    add-int/lit8 v4, v2, 0x1

    .line 842
    .local v4, end:I
    :goto_2
    move/from16 v0, p2

    if-ge v4, v0, :cond_4

    .line 843
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 844
    .local v3, chr:C
    const/16 v13, 0x30

    if-lt v3, v13, :cond_4

    const/16 v13, 0x39

    if-le v3, v13, :cond_6

    .line 850
    .end local v3           #chr:C
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 852
    .local v5, fraction:D
    const/16 v13, 0x18

    if-lt v7, v13, :cond_5

    const-wide/16 v13, 0x0

    cmpl-double v13, v5, v13

    if-nez v13, :cond_7

    :cond_5
    const/4 v12, 0x1

    .line 853
    :goto_3
    long-to-double v13, v8

    const-wide v15, 0x408f400000000000L

    mul-double/2addr v15, v5

    add-double/2addr v13, v15

    double-to-long v8, v13

    goto :goto_1

    .line 847
    .end local v5           #fraction:D
    .restart local v3       #chr:C
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 849
    goto :goto_2

    .line 852
    .end local v3           #chr:C
    .restart local v5       #fraction:D
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 863
    .end local v2           #base:I
    .end local v4           #end:I
    .end local v5           #fraction:D
    .end local v7           #hour:I
    .end local v10           #minute:I
    .end local v11           #second:I
    :cond_8
    new-instance v13, Lorg/jibx/runtime/JiBXException;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Invalid time format: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public static parseYear(Ljava/lang/String;)J
    .locals 10
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 333
    const/4 v4, 0x1

    .line 334
    .local v4, valid:Z
    const/4 v3, 0x4

    .line 335
    .local v3, minc:I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 336
    .local v0, chr:C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_2

    .line 337
    const/4 v3, 0x5

    .line 341
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v3, :cond_1

    .line 342
    const/4 v4, 0x0

    .line 344
    :cond_1
    if-nez v4, :cond_3

    .line 345
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    const-string v7, "Invalid year format"

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 338
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_0

    .line 339
    const/4 v4, 0x0

    goto :goto_0

    .line 349
    :cond_3
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 350
    .local v5, year:I
    if-nez v5, :cond_4

    .line 351
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    const-string v7, "Year value 0 is not allowed"

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 353
    :cond_4
    if-lez v5, :cond_5

    .line 354
    add-int/lit8 v5, v5, -0x1

    .line 356
    :cond_5
    int-to-long v6, v5

    const-wide/16 v8, 0x16d

    mul-long/2addr v6, v8

    div-int/lit8 v8, v5, 0x4

    int-to-long v8, v8

    add-long/2addr v6, v8

    div-int/lit8 v8, v5, 0x64

    int-to-long v8, v8

    sub-long/2addr v6, v8

    div-int/lit16 v8, v5, 0x190

    int-to-long v8, v8

    add-long v1, v6, v8

    .line 357
    .local v1, day:J
    const-wide/32 v6, 0x5265c00

    mul-long/2addr v6, v1

    const-wide v8, 0x3883122cd800L

    sub-long/2addr v6, v8

    return-wide v6
.end method

.method public static parseYearMonth(Ljava/lang/String;)J
    .locals 14
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2d

    const/4 v3, 0x0

    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 634
    const/4 v7, 0x1

    .line 635
    .local v7, valid:Z
    const/4 v4, 0x7

    .line 636
    .local v4, minc:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 637
    .local v0, chr:C
    if-ne v0, v10, :cond_2

    .line 638
    const/16 v4, 0x8

    .line 642
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v6, v9, -0x3

    .line 643
    .local v6, split:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v4, :cond_3

    .line 644
    const/4 v7, 0x0

    .line 650
    :cond_1
    :goto_1
    if-nez v7, :cond_4

    .line 651
    new-instance v9, Lorg/jibx/runtime/JiBXException;

    const-string v10, "Invalid date format"

    invoke-direct {v9, v10}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 639
    .end local v6           #split:I
    :cond_2
    const/16 v9, 0x2b

    if-ne v0, v9, :cond_0

    .line 640
    const/4 v7, 0x0

    goto :goto_0

    .line 646
    .restart local v6       #split:I
    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v10, :cond_1

    .line 647
    const/4 v7, 0x0

    goto :goto_1

    .line 655
    :cond_4
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 656
    .local v8, year:I
    if-nez v8, :cond_5

    .line 657
    new-instance v9, Lorg/jibx/runtime/JiBXException;

    const-string v10, "Year value 0 is not allowed"

    invoke-direct {v9, v10}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 659
    :cond_5
    add-int/lit8 v9, v6, 0x1

    const/4 v10, 0x2

    invoke-static {p0, v9, v10}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 660
    .local v5, month:I
    if-ltz v5, :cond_6

    const/16 v9, 0xb

    if-le v5, v9, :cond_7

    .line 661
    :cond_6
    new-instance v9, Lorg/jibx/runtime/JiBXException;

    const-string v10, "Month value out of range"

    invoke-direct {v9, v10}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 663
    :cond_7
    rem-int/lit8 v9, v8, 0x4

    if-nez v9, :cond_9

    rem-int/lit8 v9, v8, 0x64

    if-nez v9, :cond_8

    rem-int/lit16 v9, v8, 0x190

    if-nez v9, :cond_9

    :cond_8
    const/4 v3, 0x1

    .line 664
    .local v3, leap:Z
    :cond_9
    if-lez v8, :cond_a

    .line 665
    add-int/lit8 v8, v8, -0x1

    .line 667
    :cond_a
    int-to-long v9, v8

    const-wide/16 v11, 0x16d

    mul-long/2addr v9, v11

    div-int/lit8 v11, v8, 0x4

    int-to-long v11, v11

    add-long/2addr v9, v11

    div-int/lit8 v11, v8, 0x64

    int-to-long v11, v11

    sub-long/2addr v9, v11

    div-int/lit16 v11, v8, 0x190

    int-to-long v11, v11

    add-long v10, v9, v11

    if-eqz v3, :cond_b

    sget-object v9, Lorg/jibx/runtime/Utility;->MONTHS_LEAP:[I

    :goto_2
    aget v9, v9, v5

    int-to-long v12, v9

    add-long v1, v10, v12

    .line 669
    .local v1, day:J
    const-wide/32 v9, 0x5265c00

    mul-long/2addr v9, v1

    const-wide v11, 0x3883122cd800L

    sub-long/2addr v9, v11

    return-wide v9

    .line 667
    .end local v1           #day:J
    :cond_b
    sget-object v9, Lorg/jibx/runtime/Utility;->MONTHS_NONLEAP:[I

    goto :goto_2
.end method

.method public static resizeArray(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "size"
    .parameter "base"

    .prologue
    const/4 v5, 0x0

    .line 1735
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 1736
    .local v2, prior:I
    if-ne p0, v2, :cond_0

    .line 1743
    .end local p1
    :goto_0
    return-object p1

    .line 1739
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 1740
    .local v3, type:Ljava/lang/Class;
    invoke-static {v3, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1741
    .local v0, copy:Ljava/lang/Object;
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1742
    .local v1, count:I
    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 1743
    goto :goto_0
.end method

.method public static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1884
    if-nez p0, :cond_1

    .line 1885
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1887
    :goto_0
    return v0

    .line 1885
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1887
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static serializeBase64([B)Ljava/lang/String;
    .locals 4
    .parameter "byts"

    .prologue
    .line 1717
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1718
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1719
    invoke-static {v1, p0, v0}, Lorg/jibx/runtime/Utility;->encodeChunk(I[BLjava/lang/StringBuffer;)V

    .line 1720
    if-lez v1, :cond_0

    rem-int/lit8 v2, v1, 0x39

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x3

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 1721
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1718
    :cond_0
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 1724
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static serializeBoolean(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 468
    if-nez p0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/jibx/runtime/Utility;->serializeBoolean(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static serializeBoolean(Z)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 456
    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static serializeByte(B)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 409
    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeChar(C)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 498
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeCharString(C)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 540
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeDate(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 1258
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1259
    .local v0, buff:Ljava/lang/StringBuffer;
    const-wide v1, 0x3883122cd800L

    add-long/2addr v1, p0

    invoke-static {v1, v2, v0}, Lorg/jibx/runtime/Utility;->formatYearMonthDay(JLjava/lang/StringBuffer;)I

    .line 1260
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static serializeDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 1278
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jibx/runtime/Utility;->serializeDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeDateTime(J)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1430
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jibx/runtime/Utility;->serializeDateTime(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeDateTime(JZ)Ljava/lang/String;
    .locals 4
    .parameter "time"
    .parameter "zone"

    .prologue
    .line 1407
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1408
    .local v0, buff:Ljava/lang/StringBuffer;
    const-wide v2, 0x3883122cd800L

    add-long/2addr v2, p0

    invoke-static {v2, v3, v0}, Lorg/jibx/runtime/Utility;->formatYearMonthDay(JLjava/lang/StringBuffer;)I

    move-result v1

    .line 1411
    .local v1, extra:I
    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1412
    invoke-static {v1, v0}, Lorg/jibx/runtime/Utility;->serializeTime(ILjava/lang/StringBuffer;)V

    .line 1415
    if-eqz p2, :cond_0

    .line 1416
    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1418
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static serializeDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter "date"

    .prologue
    .line 1442
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/jibx/runtime/Utility;->serializeDateTime(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeDouble(D)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 614
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "-INF"

    .line 617
    :goto_0
    return-object v0

    .line 615
    :cond_0
    const-string v0, "INF"

    goto :goto_0

    .line 617
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static serializeExplicitOffset(ILjava/lang/StringBuffer;)V
    .locals 3
    .parameter "offset"
    .parameter "buff"

    .prologue
    const v2, 0x36ee80

    .line 1327
    if-gez p0, :cond_0

    .line 1328
    neg-int v0, p0

    .line 1329
    .local v0, abs:I
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1336
    :goto_0
    div-int v1, v0, v2

    invoke-static {v1, p1}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1337
    rem-int/2addr v0, v2

    .line 1338
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1339
    const v1, 0xea60

    div-int v1, v0, v1

    invoke-static {v1, p1}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1341
    return-void

    .line 1331
    .end local v0           #abs:I
    :cond_0
    move v0, p0

    .line 1332
    .restart local v0       #abs:I
    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static serializeFloat(F)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 575
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "-INF"

    .line 578
    :goto_0
    return-object v0

    .line 576
    :cond_0
    const-string v0, "INF"

    goto :goto_0

    .line 578
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static serializeInt(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 233
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeLong(J)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 318
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeOffset(ILjava/lang/StringBuffer;)V
    .locals 1
    .parameter "offset"
    .parameter "buff"

    .prologue
    .line 1352
    if-nez p0, :cond_0

    .line 1353
    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1357
    :goto_0
    return-void

    .line 1355
    :cond_0
    invoke-static {p0, p1}, Lorg/jibx/runtime/Utility;->serializeExplicitOffset(ILjava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method public static serializeShort(S)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 383
    invoke-static {p0}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeSqlDate(Ljava/sql/Date;)Ljava/lang/String;
    .locals 8
    .parameter "date"

    .prologue
    const/16 v7, 0x2d

    .line 1296
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1297
    .local v1, cal:Ljava/util/GregorianCalendar;
    sget-object v3, Lorg/jibx/runtime/Utility;->BEGINNING_OF_TIME:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1298
    invoke-virtual {v1, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1299
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0xc

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1300
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 1301
    .local v2, year:I
    invoke-virtual {p0}, Ljava/sql/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 1302
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 1303
    neg-int v3, v2

    add-int/lit8 v2, v3, 0x1

    .line 1306
    :cond_0
    int-to-long v3, v2

    invoke-static {v3, v4, v0}, Lorg/jibx/runtime/Utility;->formatYearNumber(JLjava/lang/StringBuffer;)V

    .line 1307
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1308
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v0}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1309
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1310
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-static {v3, v0}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1311
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static serializeSqlTime(Ljava/sql/Time;)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1503
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/sql/Time;->getTime()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1, v0}, Lorg/jibx/runtime/Utility;->serializeTime(ILjava/lang/StringBuffer;)V

    .line 1504
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static serializeTime(ILjava/lang/StringBuffer;)V
    .locals 4
    .parameter "time"
    .parameter "buff"

    .prologue
    const v3, 0x36ee80

    const v2, 0xea60

    const/16 v1, 0x3a

    .line 1371
    div-int v0, p0, v3

    invoke-static {v0, p1}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1372
    rem-int/2addr p0, v3

    .line 1373
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1374
    div-int v0, p0, v2

    invoke-static {v0, p1}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1375
    rem-int/2addr p0, v2

    .line 1376
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1377
    div-int/lit16 v0, p0, 0x3e8

    invoke-static {v0, p1}, Lorg/jibx/runtime/Utility;->formatTwoDigits(ILjava/lang/StringBuffer;)V

    .line 1378
    rem-int/lit16 p0, p0, 0x3e8

    .line 1381
    if-lez p0, :cond_0

    .line 1382
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1383
    div-int/lit8 v0, p0, 0x64

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1384
    rem-int/lit8 p0, p0, 0x64

    .line 1385
    if-lez p0, :cond_0

    .line 1386
    div-int/lit8 v0, p0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1387
    rem-int/lit8 p0, p0, 0xa

    .line 1388
    if-lez p0, :cond_0

    .line 1389
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1393
    :cond_0
    return-void
.end method

.method public static serializeTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 12
    .parameter "stamp"

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0x9

    .line 1457
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v4

    .line 1458
    .local v4, nano:I
    if-lez v4, :cond_3

    .line 1461
    invoke-static {v4}, Lorg/jibx/runtime/Utility;->serializeInt(I)Ljava/lang/String;

    move-result-object v7

    .line 1464
    .local v7, value:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1465
    .local v0, digits:Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_0

    .line 1466
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v3, v8, 0x9

    .line 1467
    .local v3, lead:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1468
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1471
    .end local v1           #i:I
    .end local v3           #lead:I
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    const/16 v2, 0x9

    .line 1475
    .local v2, last:I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 1476
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_1

    .line 1480
    :cond_2
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1483
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v5

    .line 1484
    .local v5, time:J
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v9, 0x3e8

    rem-long v9, v5, v9

    sub-long v9, v5, v9

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/jibx/runtime/Utility;->serializeDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x5a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1488
    .end local v0           #digits:Ljava/lang/StringBuffer;
    .end local v2           #last:I
    .end local v5           #time:J
    .end local v7           #value:Ljava/lang/String;
    :goto_1
    return-object v8

    :cond_3
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lorg/jibx/runtime/Utility;->serializeDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static serializeTokenList([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tokens"

    .prologue
    .line 1864
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1865
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1866
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1867
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1869
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1871
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static serializeYear(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 1206
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1207
    .local v0, buff:Ljava/lang/StringBuffer;
    const-wide v1, 0x3883122cd800L

    add-long/2addr v1, p0

    invoke-static {v1, v2, v0}, Lorg/jibx/runtime/Utility;->formatYear(JLjava/lang/StringBuffer;)V

    .line 1208
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static serializeYear(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 1220
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jibx/runtime/Utility;->serializeYear(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeYearMonth(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 1232
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1233
    .local v0, buff:Ljava/lang/StringBuffer;
    const-wide v1, 0x3883122cd800L

    add-long/2addr v1, p0

    invoke-static {v1, v2, v0}, Lorg/jibx/runtime/Utility;->formatYearMonth(JLjava/lang/StringBuffer;)J

    .line 1234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static serializeYearMonth(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 1246
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jibx/runtime/Utility;->serializeYearMonth(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
