.class public final Lcom/wooboo/adlib_android/gg;
.super Landroid/view/View;
.source "gg.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field volatile bAnim:Z

.field private bmb:Landroid/graphics/Bitmap;

.field private decode:Lcom/wooboo/adlib_android/g;

.field private gifCount:I

.field ind:I

.field private p:Landroid/graphics/Paint;

.field t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 2
    .parameter "context"
    .parameter "is"

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/gg;->t:Ljava/lang/Thread;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wooboo/adlib_android/gg;->p:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/gg;->bAnim:Z

    .line 17
    new-instance v0, Lcom/wooboo/adlib_android/g;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/g;-><init>()V

    iput-object v0, p0, Lcom/wooboo/adlib_android/gg;->decode:Lcom/wooboo/adlib_android/g;

    .line 18
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->decode:Lcom/wooboo/adlib_android/g;

    invoke-virtual {v0, p2}, Lcom/wooboo/adlib_android/g;->read(Ljava/io/InputStream;)I

    .line 19
    iput v1, p0, Lcom/wooboo/adlib_android/gg;->ind:I

    .line 20
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->decode:Lcom/wooboo/adlib_android/g;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/g;->getFrameCount()I

    move-result v0

    iput v0, p0, Lcom/wooboo/adlib_android/gg;->gifCount:I

    .line 21
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->decode:Lcom/wooboo/adlib_android/g;

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/g;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wooboo/adlib_android/gg;->bmb:Landroid/graphics/Bitmap;

    .line 23
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->bmb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->bmb:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/wooboo/adlib_android/gg;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 50
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->decode:Lcom/wooboo/adlib_android/g;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/g;->next()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wooboo/adlib_android/gg;->bmb:Landroid/graphics/Bitmap;

    .line 53
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 59
    :goto_0
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/gg;->bAnim:Z

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/gg;->postInvalidate()V

    .line 62
    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/gg;->stop()V

    .line 29
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->bmb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wooboo/adlib_android/gg;->gifCount:I

    if-lez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/wooboo/adlib_android/gg;->t:Ljava/lang/Thread;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/gg;->bAnim:Z

    .line 32
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/gg;->bAnim:Z

    .line 39
    iget-object v0, p0, Lcom/wooboo/adlib_android/gg;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/gg;->t:Ljava/lang/Thread;

    .line 42
    :cond_0
    return-void
.end method
