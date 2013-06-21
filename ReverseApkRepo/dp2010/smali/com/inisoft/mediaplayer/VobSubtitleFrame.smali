.class public Lcom/inisoft/mediaplayer/VobSubtitleFrame;
.super Ljava/lang/Object;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private cur:I

.field private end:I

.field private h:I

.field private start:I

.field private textColor:I

.field private useCustom:Z

.field private w:I


# direct methods
.method public constructor <init>(IIIIIIII[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->w:I

    iput p4, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->h:I

    iput p5, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->start:I

    iput p6, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->cur:I

    iput p7, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->end:I

    iput p8, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->textColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->useCustom:Z

    invoke-direct {p0, p9}, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->createBitMap([B)V

    return-void
.end method

.method public constructor <init>(ZI[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->w:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->h:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->start:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->cur:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->end:I

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->useCustom:Z

    iput p2, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->textColor:I

    invoke-direct {p0, p3}, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->parse([B)V

    return-void
.end method

.method private createBitMap([B)V
    .locals 9

    const/4 v1, 0x0

    iget v5, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->w:I

    iget v6, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->h:I

    mul-int v0, v5, v6

    new-array v7, v0, [I

    move v4, v1

    move v0, v1

    :goto_0
    if-lt v4, v6, :cond_0

    if-lez v5, :cond_3

    if-lez v6, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    :goto_1
    return-void

    :cond_0
    move v2, v0

    move v0, v1

    :goto_2
    if-lt v0, v5, :cond_1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v8, 0xff

    if-ne v2, v8, :cond_2

    mul-int v2, v4, v5

    add-int/2addr v2, v0

    aput v1, v7, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    :cond_2
    mul-int v2, v4, v5

    add-int/2addr v2, v0

    iget v8, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->textColor:I

    aput v8, v7, v2

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private parse([B)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x40

    const/4 v9, 0x1

    const-string v0, ""

    move v1, v2

    :goto_0
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v7, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, ""

    :goto_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    if-ne v3, v7, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v0, ""

    :goto_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    if-le v5, v9, :cond_6

    const/16 v0, 0x2d0

    const/16 v1, 0x1e0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :goto_3
    if-lt v2, v5, :cond_4

    if-le v5, v9, :cond_0

    iput-object v1, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v3, -0x30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v3, v1

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_2

    :cond_4
    new-instance v6, Lcom/inisoft/mediaplayer/ik;

    invoke-direct {v6, p0}, Lcom/inisoft/mediaplayer/ik;-><init>(Lcom/inisoft/mediaplayer/VobSubtitleFrame;)V

    invoke-virtual {v6, p1, v3}, Lcom/inisoft/mediaplayer/ik;->a([BI)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v6, Lcom/inisoft/mediaplayer/ik;->g:Landroid/graphics/Bitmap;

    if-ne v5, v9, :cond_5

    iput-object v7, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget v8, v6, Lcom/inisoft/mediaplayer/ik;->a:I

    int-to-float v8, v8

    iget v6, v6, Lcom/inisoft/mediaplayer/ik;->b:I

    int-to-float v6, v6

    invoke-virtual {v0, v7, v8, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    move-object v0, v4

    move-object v1, v4

    goto :goto_3
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCur()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->cur:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->end:I

    return v0
.end method

.method public getH()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->h:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->start:I

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->w:I

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
