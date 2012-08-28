.class final Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "IBM437.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/niochar/charset/additional/IBM437;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Decoder"
.end annotation


# static fields
.field static final arr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0xe6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;->arr:[C

    .line 50
    return-void

    .line 116
    :array_0
    .array-data 0x2
        0x1ct 0x0t
        0x1bt 0x0t
        0x7ft 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
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
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
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
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
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
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x1at 0x0t
        0xc7t 0x0t
        0xfct 0x0t
        0xe9t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe0t 0x0t
        0xe5t 0x0t
        0xe7t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xe8t 0x0t
        0xeft 0x0t
        0xeet 0x0t
        0xect 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc9t 0x0t
        0xe6t 0x0t
        0xc6t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf2t 0x0t
        0xfbt 0x0t
        0xf9t 0x0t
        0xfft 0x0t
        0xd6t 0x0t
        0xdct 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa5t 0x0t
        0xa7t 0x20t
        0x92t 0x1t
        0xe1t 0x0t
        0xedt 0x0t
        0xf3t 0x0t
        0xfat 0x0t
        0xf1t 0x0t
        0xd1t 0x0t
        0xaat 0x0t
        0xbat 0x0t
        0xbft 0x0t
        0x10t 0x23t
        0xact 0x0t
        0xbdt 0x0t
        0xbct 0x0t
        0xa1t 0x0t
        0xabt 0x0t
        0xbbt 0x0t
        0x91t 0x25t
        0x92t 0x25t
        0x93t 0x25t
        0x2t 0x25t
        0x24t 0x25t
        0x61t 0x25t
        0x62t 0x25t
        0x56t 0x25t
        0x55t 0x25t
        0x63t 0x25t
        0x51t 0x25t
        0x57t 0x25t
        0x5dt 0x25t
        0x5ct 0x25t
        0x5bt 0x25t
        0x10t 0x25t
        0x14t 0x25t
        0x34t 0x25t
        0x2ct 0x25t
        0x1ct 0x25t
        0x0t 0x25t
        0x3ct 0x25t
        0x5et 0x25t
        0x5ft 0x25t
        0x5at 0x25t
        0x54t 0x25t
        0x69t 0x25t
        0x66t 0x25t
        0x60t 0x25t
        0x50t 0x25t
        0x6ct 0x25t
        0x67t 0x25t
        0x68t 0x25t
        0x64t 0x25t
        0x65t 0x25t
        0x59t 0x25t
        0x58t 0x25t
        0x52t 0x25t
        0x53t 0x25t
        0x6bt 0x25t
        0x6at 0x25t
        0x18t 0x25t
        0xct 0x25t
        0x88t 0x25t
        0x84t 0x25t
        0x8ct 0x25t
        0x90t 0x25t
        0x80t 0x25t
        0xb1t 0x3t
        0xdft 0x0t
        0x93t 0x3t
        0xc0t 0x3t
        0xa3t 0x3t
        0xc3t 0x3t
        0xbct 0x3t
        0xc4t 0x3t
        0xa6t 0x3t
        0x98t 0x3t
        0xa9t 0x3t
        0xb4t 0x3t
        0x1et 0x22t
        0xc6t 0x3t
        0xb5t 0x3t
        0x29t 0x22t
        0x61t 0x22t
        0xb1t 0x0t
        0x65t 0x22t
        0x64t 0x22t
        0x20t 0x23t
        0x21t 0x23t
        0xf7t 0x0t
        0x48t 0x22t
        0xb0t 0x0t
        0x19t 0x22t
        0xb7t 0x0t
        0x1at 0x22t
        0x7ft 0x20t
        0xb2t 0x0t
        0xa0t 0x25t
        0xa0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter "cs"

    .prologue
    const/high16 v0, 0x3f80

    .line 52
    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 12
    .parameter "bb"
    .parameter "cb"

    .prologue
    const/16 v11, 0x1a

    .line 60
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    .line 77
    .local v5, cbRemaining:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    .line 79
    .local v9, rem:I
    if-lt v5, v9, :cond_0

    .line 80
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 81
    .local v0, bArr:[B
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    .line 82
    .local v2, cArr:[C
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 83
    .local v1, bStart:I
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    .line 85
    .local v3, cStart:I
    move v6, v1

    .local v6, i:I
    move v4, v3

    .end local v3           #cStart:I
    .local v4, cStart:I
    :goto_1
    add-int v10, v1, v9

    if-lt v6, v10, :cond_1

    .line 94
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    if-ne v9, v5, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 113
    .end local v0           #bArr:[B
    .end local v1           #bStart:I
    .end local v2           #cArr:[C
    .end local v4           #cStart:I
    .end local v6           #i:I
    .end local v9           #rem:I
    :goto_2
    return-object v10

    .restart local v9       #rem:I
    :cond_0
    move v9, v5

    .line 79
    goto :goto_0

    .line 86
    .restart local v0       #bArr:[B
    .restart local v1       #bStart:I
    .restart local v2       #cArr:[C
    .restart local v4       #cStart:I
    .restart local v6       #i:I
    :cond_1
    aget-byte v10, v0, v6

    and-int/lit16 v10, v10, 0xff

    int-to-char v7, v10

    .line 87
    .local v7, in:C
    if-lt v7, v11, :cond_2

    .line 88
    add-int/lit8 v8, v7, -0x1a

    .line 89
    .local v8, index:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #cStart:I
    .restart local v3       #cStart:I
    sget-object v10, Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;->arr:[C

    aget-char v10, v10, v8

    aput-char v10, v2, v4

    .line 85
    .end local v8           #index:I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #cStart:I
    .restart local v4       #cStart:I
    goto :goto_1

    .line 91
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4           #cStart:I
    .restart local v3       #cStart:I
    and-int/lit16 v10, v7, 0xff

    int-to-char v10, v10

    aput-char v10, v2, v4

    goto :goto_3

    .line 99
    .end local v0           #bArr:[B
    .end local v1           #bStart:I
    .end local v2           #cArr:[C
    .end local v3           #cStart:I
    .end local v6           #i:I
    .end local v7           #in:C
    .end local v9           #rem:I
    :cond_3
    if-nez v5, :cond_4

    sget-object v10, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_2

    .line 100
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-char v7, v10

    .line 101
    .restart local v7       #in:C
    if-lt v7, v11, :cond_7

    .line 102
    add-int/lit8 v8, v7, -0x1a

    .line 103
    .restart local v8       #index:I
    sget-object v10, Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;->arr:[C

    aget-char v10, v10, v8

    invoke-virtual {p2, v10}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 107
    .end local v8           #index:I
    :goto_4
    add-int/lit8 v5, v5, -0x1

    .line 98
    .end local v7           #in:C
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-nez v10, :cond_3

    .line 113
    :cond_6
    sget-object v10, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_2

    .line 105
    .restart local v7       #in:C
    :cond_7
    and-int/lit16 v10, v7, 0xff

    int-to-char v10, v10

    invoke-virtual {p2, v10}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_4
.end method
