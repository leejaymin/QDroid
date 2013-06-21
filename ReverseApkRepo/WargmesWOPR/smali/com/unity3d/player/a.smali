.class final Lcom/unity3d/player/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/q;
.end annotation


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:[B

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method constructor <init>(IIII)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iput-object v1, p0, Lcom/unity3d/player/a;->b:[B

    iput v0, p0, Lcom/unity3d/player/a;->c:I

    iput v0, p0, Lcom/unity3d/player/a;->d:I

    iput v0, p0, Lcom/unity3d/player/a;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/player/a;->f:I

    if-nez p2, :cond_0

    const/16 p2, 0x280

    :cond_0
    if-nez p3, :cond_1

    const/16 p3, 0x1e0

    :cond_1
    if-nez p4, :cond_2

    const/16 p4, 0x18

    :cond_2
    iput p1, p0, Lcom/unity3d/player/a;->f:I

    iput p4, p0, Lcom/unity3d/player/a;->i:I

    iput p2, p0, Lcom/unity3d/player/a;->g:I

    iput p3, p0, Lcom/unity3d/player/a;->h:I

    invoke-direct {p0}, Lcom/unity3d/player/a;->g()V

    invoke-direct {p0}, Lcom/unity3d/player/a;->h()V

    return-void
.end method

.method private g()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/unity3d/player/a;->f:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method private h()V
    .locals 15

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    iget v2, p0, Lcom/unity3d/player/a;->g:I

    iget v3, p0, Lcom/unity3d/player/a;->h:I

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    int-to-float v1, v2

    int-to-float v6, v3

    div-float v6, v1, v6

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v1, v1

    int-to-float v7, v7

    div-float/2addr v1, v7

    sub-float v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-int v7, v2, v3

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    sub-int v2, v7, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v0

    move v4, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    int-to-float v9, v9

    div-float/2addr v2, v9

    sub-float v2, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v9, v2, v1

    if-gez v9, :cond_0

    move v1, v2

    move-object v3, v0

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v9

    sub-int v2, v7, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v4, :cond_9

    :goto_1
    move-object v3, v0

    move v4, v2

    goto :goto_0

    :cond_1
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_4

    iget v6, p0, Lcom/unity3d/player/a;->i:I

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v0, v4, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v2, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_8

    move v1, v2

    :goto_3
    move v4, v1

    move v1, v0

    goto :goto_2

    :cond_2
    const/16 v4, 0x18

    :cond_3
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    const-string v0, "%d"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/unity3d/player/a;->d:I

    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/unity3d/player/a;->e:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v1, v4, :cond_6

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    mul-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/unity3d/player/a;->c:I

    const-string v3, ", bpp=%d"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    const-string v3, "cam[%d]: size = %dx%d; format=%d, fps=%s%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/unity3d/player/a;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget v5, p0, Lcom/unity3d/player/a;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    iget v5, p0, Lcom/unity3d/player/a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v13

    const/4 v2, 0x4

    aput-object v0, v4, v2

    const/4 v0, 0x5

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void

    :cond_4
    iget v0, p0, Lcom/unity3d/player/a;->i:I

    mul-int/lit16 v4, v0, 0x3e8

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v1, v0, v10

    sub-int v1, v4, v1

    aget v6, v0, v11

    sub-int/2addr v6, v4

    add-int/2addr v1, v6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v0

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v7, v0, v10

    sub-int v7, v4, v7

    aget v8, v0, v11

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    if-ge v7, v1, :cond_7

    aget v1, v0, v10

    sub-int v1, v4, v1

    aget v2, v0, v11

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_7
    move-object v2, v1

    move v1, v0

    goto :goto_6

    :cond_5
    aget v0, v2, v10

    aget v1, v2, v11

    invoke-virtual {v5, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const-string v0, "(%d, %d)"

    new-array v1, v12, [Ljava/lang/Object;

    aget v4, v2, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v10

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_6
    const-string v1, ""

    goto/16 :goto_5

    :cond_7
    move v0, v1

    move-object v1, v2

    goto :goto_7

    :cond_8
    move v0, v1

    move v1, v4

    goto/16 :goto_3

    :cond_9
    move-object v0, v3

    move v2, v4

    goto/16 :goto_1
.end method


# virtual methods
.method final a()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final a(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/unity3d/player/a;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method final b(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/a;->g()V

    invoke-direct {p0}, Lcom/unity3d/player/a;->h()V

    invoke-virtual {p0, p1}, Lcom/unity3d/player/a;->a(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method final b()[B
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->b:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/a;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/unity3d/player/a;->b:[B

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a;->b:[B

    return-object v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/a;->e:I

    return v0
.end method

.method final d()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/a;->d:I

    return v0
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/a;->f:I

    return v0
.end method

.method final f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method
