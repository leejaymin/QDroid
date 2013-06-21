.class public final Lcom/rubycell/pianisthd/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:Landroid/media/SoundPool;

.field c:F


# direct methods
.method public constructor <init>(ILandroid/media/SoundPool;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rubycell/pianisthd/d/j;->a:I

    iput-object p2, p0, Lcom/rubycell/pianisthd/d/j;->b:Landroid/media/SoundPool;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/rubycell/pianisthd/d/j;->c:F

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/rubycell/pianisthd/d/j;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/d/j;->b:Landroid/media/SoundPool;

    iget v1, p0, Lcom/rubycell/pianisthd/d/j;->a:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/rubycell/pianisthd/d/j;->c:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/rubycell/pianisthd/d/j;->c:F

    iget-object v0, p0, Lcom/rubycell/pianisthd/d/j;->b:Landroid/media/SoundPool;

    iget v1, p0, Lcom/rubycell/pianisthd/d/j;->a:I

    iget v2, p0, Lcom/rubycell/pianisthd/d/j;->c:F

    iget v3, p0, Lcom/rubycell/pianisthd/d/j;->c:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    :try_start_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
