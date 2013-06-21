.class public final Lcom/inisoft/mediaplayer/ik;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field c:I

.field d:I

.field e:I

.field f:[I

.field g:Landroid/graphics/Bitmap;

.field final synthetic h:Lcom/inisoft/mediaplayer/VobSubtitleFrame;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/VobSubtitleFrame;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ik;->h:Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/ik;->g:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->a:I

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->b:I

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->c:I

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->d:I

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->e:I

    iput-object v1, p0, Lcom/inisoft/mediaplayer/ik;->f:[I

    return-void
.end method

.method private b([BI)V
    .locals 10

    const/4 v1, 0x0

    iget v5, p0, Lcom/inisoft/mediaplayer/ik;->c:I

    iget v6, p0, Lcom/inisoft/mediaplayer/ik;->d:I

    mul-int v0, v5, v6

    new-array v7, v0, [I

    move v4, v1

    move v0, p2

    :goto_0
    if-lt v4, v6, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ik;->g:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    move v2, v0

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int v8, v4, v5

    add-int/2addr v8, v0

    iget-object v9, p0, Lcom/inisoft/mediaplayer/ik;->f:[I

    aget v2, v9, v2

    aput v2, v7, v8

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public final a([BI)I
    .locals 7

    const/16 v4, 0x40

    const-string v0, ""

    :goto_0
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    if-ne v2, v4, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->a:I

    const-string v0, ""

    :goto_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->b:I

    const-string v0, ""

    :goto_2
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->c:I

    const-string v0, ""

    :goto_3
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->d:I

    const-string v0, ""

    :goto_4
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/ik;->e:I

    iget v0, p0, Lcom/inisoft/mediaplayer/ik;->e:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ik;->f:[I

    const/4 v0, 0x0

    :goto_5
    iget v2, p0, Lcom/inisoft/mediaplayer/ik;->e:I

    if-lt v0, v2, :cond_5

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/inisoft/mediaplayer/ik;->b([BI)V

    iget v1, p0, Lcom/inisoft/mediaplayer/ik;->c:I

    iget v2, p0, Lcom/inisoft/mediaplayer/ik;->d:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v2, -0x30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move p2, v1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v2, -0x30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v2, -0x30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v3, v1, 0xff

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iget-object v6, p0, Lcom/inisoft/mediaplayer/ik;->f:[I

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method
