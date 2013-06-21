.class public Lorg/cocos2d/opengl/ah;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/opengl/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/opengl/ah;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lorg/cocos2d/opengl/ai;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    new-instance v0, Lorg/cocos2d/opengl/ai;

    invoke-direct {v0}, Lorg/cocos2d/opengl/ai;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    iput v2, v0, Lorg/cocos2d/opengl/ai;->b:I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/opengl/ai;->d:I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/opengl/ai;->e:I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lorg/cocos2d/opengl/ai;->c:I

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, 0x0

    iput v3, v0, Lorg/cocos2d/opengl/ai;->g:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lorg/cocos2d/opengl/ai;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    iget v2, v0, Lorg/cocos2d/opengl/ai;->b:I

    if-ne v2, v4, :cond_2

    sget-object v2, Lorg/cocos2d/opengl/aj;->d:Lorg/cocos2d/opengl/aj;

    iput-object v2, v0, Lorg/cocos2d/opengl/ai;->a:Lorg/cocos2d/opengl/aj;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lorg/cocos2d/opengl/aj;->b:Lorg/cocos2d/opengl/aj;

    iput-object v1, v0, Lorg/cocos2d/opengl/ai;->a:Lorg/cocos2d/opengl/aj;

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v2, Lorg/cocos2d/opengl/aj;->c:Lorg/cocos2d/opengl/aj;

    iput-object v2, v0, Lorg/cocos2d/opengl/ai;->a:Lorg/cocos2d/opengl/aj;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    :cond_2
    iget v2, v0, Lorg/cocos2d/opengl/ai;->b:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, v0, Lorg/cocos2d/opengl/ai;->b:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget v2, v0, Lorg/cocos2d/opengl/ai;->b:I

    if-eq v2, v5, :cond_3

    sget-object v2, Lorg/cocos2d/opengl/aj;->f:Lorg/cocos2d/opengl/aj;

    iput-object v2, v0, Lorg/cocos2d/opengl/ai;->a:Lorg/cocos2d/opengl/aj;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    :cond_3
    iget v2, v0, Lorg/cocos2d/opengl/ai;->c:I

    div-int/lit8 v2, v2, 0x8

    iget v3, v0, Lorg/cocos2d/opengl/ai;->e:I

    iget v4, v0, Lorg/cocos2d/opengl/ai;->d:I

    mul-int/2addr v3, v4

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/cocos2d/opengl/ai;->f:[B

    :try_start_2
    iget v2, v0, Lorg/cocos2d/opengl/ai;->b:I

    if-ne v2, v5, :cond_4

    invoke-static {v1, v0}, Lorg/cocos2d/opengl/ah;->b(Ljava/io/InputStream;Lorg/cocos2d/opengl/ai;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    sget-object v1, Lorg/cocos2d/opengl/aj;->a:Lorg/cocos2d/opengl/aj;

    iput-object v1, v0, Lorg/cocos2d/opengl/ai;->a:Lorg/cocos2d/opengl/aj;

    iget v1, v0, Lorg/cocos2d/opengl/ai;->g:I

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/cocos2d/opengl/ah;->b(Lorg/cocos2d/opengl/ai;)V

    iget v1, v0, Lorg/cocos2d/opengl/ai;->g:I

    if-eqz v1, :cond_1

    sget-object v1, Lorg/cocos2d/opengl/aj;->e:Lorg/cocos2d/opengl/aj;

    iput-object v1, v0, Lorg/cocos2d/opengl/ai;->a:Lorg/cocos2d/opengl/aj;

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-static {v1, v0}, Lorg/cocos2d/opengl/ah;->a(Ljava/io/InputStream;Lorg/cocos2d/opengl/ai;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v2, Lorg/cocos2d/opengl/aj;->c:Lorg/cocos2d/opengl/aj;

    iput-object v2, v0, Lorg/cocos2d/opengl/ai;->a:Lorg/cocos2d/opengl/aj;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Lorg/cocos2d/opengl/ai;)V
    .locals 7

    const/4 v3, 0x0

    iget v0, p1, Lorg/cocos2d/opengl/ai;->c:I

    div-int/lit8 v0, v0, 0x8

    iget v1, p1, Lorg/cocos2d/opengl/ai;->e:I

    iget v2, p1, Lorg/cocos2d/opengl/ai;->d:I

    mul-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p1, Lorg/cocos2d/opengl/ai;->f:[B

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    move v2, v3

    :goto_0
    if-lt v2, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p1, Lorg/cocos2d/opengl/ai;->f:[B

    aget-byte v3, v3, v2

    iget-object v4, p1, Lorg/cocos2d/opengl/ai;->f:[B

    iget-object v5, p1, Lorg/cocos2d/opengl/ai;->f:[B

    add-int/lit8 v6, v2, 0x2

    aget-byte v5, v5, v6

    aput-byte v5, v4, v2

    iget-object v4, p1, Lorg/cocos2d/opengl/ai;->f:[B

    add-int/lit8 v5, v2, 0x2

    aput-byte v3, v4, v5

    add-int/2addr v2, v0

    goto :goto_0
.end method

.method public static a(Lorg/cocos2d/opengl/ai;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/opengl/ai;->f:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/ai;->f:[B

    :cond_0
    return-void
.end method

.method private static a([BI[BII)V
    .locals 0

    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static b(Ljava/io/InputStream;Lorg/cocos2d/opengl/ai;)V
    .locals 12

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p1, Lorg/cocos2d/opengl/ai;->c:I

    div-int/lit8 v1, v1, 0x8

    iget v2, p1, Lorg/cocos2d/opengl/ai;->e:I

    iget v3, p1, Lorg/cocos2d/opengl/ai;->d:I

    mul-int/2addr v2, v3

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    :goto_0
    if-lt v6, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    :goto_1
    move v11, v7

    move v7, v4

    move v4, v11

    :goto_2
    if-nez v4, :cond_2

    invoke-virtual {p0, v0, v9, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 v4, 0x3

    if-lt v1, v4, :cond_2

    aget-byte v4, v0, v9

    aget-byte v8, v0, v10

    aput-byte v8, v0, v9

    aput-byte v4, v0, v10

    :cond_2
    iget-object v4, p1, Lorg/cocos2d/opengl/ai;->f:[B

    invoke-static {v4, v5, v0, v9, v1}, Lorg/cocos2d/opengl/ah;->a([BI[BII)V

    add-int v4, v5, v1

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v7

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, -0x80

    :cond_5
    move v7, v3

    move v3, v4

    move v4, v9

    goto :goto_2
.end method

.method private static b(Lorg/cocos2d/opengl/ai;)V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lorg/cocos2d/opengl/ai;->c:I

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/cocos2d/opengl/ai;->d:I

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    move v2, v8

    :goto_0
    iget v3, p0, Lorg/cocos2d/opengl/ai;->e:I

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_0

    iput v8, p0, Lorg/cocos2d/opengl/ai;->g:I

    return-void

    :cond_0
    iget-object v3, p0, Lorg/cocos2d/opengl/ai;->f:[B

    mul-int v4, v2, v0

    invoke-static {v1, v8, v3, v4, v0}, Lorg/cocos2d/opengl/ah;->a([BI[BII)V

    iget-object v3, p0, Lorg/cocos2d/opengl/ai;->f:[B

    mul-int v4, v2, v0

    iget-object v5, p0, Lorg/cocos2d/opengl/ai;->f:[B

    iget v6, p0, Lorg/cocos2d/opengl/ai;->e:I

    add-int/lit8 v7, v2, 0x1

    sub-int/2addr v6, v7

    mul-int/2addr v6, v0

    invoke-static {v3, v4, v5, v6, v0}, Lorg/cocos2d/opengl/ah;->a([BI[BII)V

    iget-object v3, p0, Lorg/cocos2d/opengl/ai;->f:[B

    iget v4, p0, Lorg/cocos2d/opengl/ai;->e:I

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    mul-int/2addr v4, v0

    invoke-static {v3, v4, v1, v8, v0}, Lorg/cocos2d/opengl/ah;->a([BI[BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
