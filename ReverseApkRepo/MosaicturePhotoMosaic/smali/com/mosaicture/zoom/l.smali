.class public final Lcom/mosaicture/zoom/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/mosaicture/zoom/n;

.field private b:Lcom/mosaicture/zoom/c;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/view/VelocityTracker;

.field private final h:I

.field private final i:I

.field private final j:Landroid/os/Vibrator;

.field private final k:I

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mosaicture/zoom/n;->a:Lcom/mosaicture/zoom/n;

    iput-object v0, p0, Lcom/mosaicture/zoom/l;->a:Lcom/mosaicture/zoom/n;

    new-instance v0, Lcom/mosaicture/zoom/m;

    invoke-direct {v0, p0}, Lcom/mosaicture/zoom/m;-><init>(Lcom/mosaicture/zoom/l;)V

    iput-object v0, p0, Lcom/mosaicture/zoom/l;->l:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/mosaicture/zoom/l;->i:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mosaicture/zoom/l;->h:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/mosaicture/zoom/l;->k:I

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/mosaicture/zoom/l;->j:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/zoom/l;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->j:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic a(Lcom/mosaicture/zoom/l;Lcom/mosaicture/zoom/n;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/zoom/l;->a:Lcom/mosaicture/zoom/n;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mosaicture/zoom/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/zoom/l;->b:Lcom/mosaicture/zoom/c;

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v3, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v5, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/mosaicture/zoom/n;->a:Lcom/mosaicture/zoom/n;

    iput-object v0, p0, Lcom/mosaicture/zoom/l;->a:Lcom/mosaicture/zoom/n;

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/mosaicture/zoom/l;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/c;->b()V

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->l:Ljava/lang/Runnable;

    iget v3, p0, Lcom/mosaicture/zoom/l;->i:I

    int-to-long v3, v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v1, p0, Lcom/mosaicture/zoom/l;->e:F

    iput v2, p0, Lcom/mosaicture/zoom/l;->f:F

    iput v1, p0, Lcom/mosaicture/zoom/l;->c:F

    iput v2, p0, Lcom/mosaicture/zoom/l;->d:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/mosaicture/zoom/l;->c:F

    sub-float v0, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget v3, p0, Lcom/mosaicture/zoom/l;->d:F

    sub-float v3, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/mosaicture/zoom/l;->a:Lcom/mosaicture/zoom/n;

    sget-object v5, Lcom/mosaicture/zoom/n;->c:Lcom/mosaicture/zoom/n;

    if-ne v4, v5, :cond_2

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->b:Lcom/mosaicture/zoom/c;

    const-wide/high16 v4, 0x4034

    neg-float v3, v3

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lcom/mosaicture/zoom/l;->e:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/mosaicture/zoom/l;->f:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lcom/mosaicture/zoom/c;->a(FFF)V

    :cond_1
    :goto_1
    iput v1, p0, Lcom/mosaicture/zoom/l;->c:F

    iput v2, p0, Lcom/mosaicture/zoom/l;->d:F

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/mosaicture/zoom/l;->a:Lcom/mosaicture/zoom/n;

    sget-object v5, Lcom/mosaicture/zoom/n;->b:Lcom/mosaicture/zoom/n;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/mosaicture/zoom/l;->b:Lcom/mosaicture/zoom/c;

    neg-float v0, v0

    neg-float v3, v3

    invoke-virtual {v4, v0, v3}, Lcom/mosaicture/zoom/c;->a(FF)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/mosaicture/zoom/l;->e:F

    sub-float/2addr v0, v1

    iget v3, p0, Lcom/mosaicture/zoom/l;->f:F

    sub-float/2addr v3, v2

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget v3, p0, Lcom/mosaicture/zoom/l;->h:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/mosaicture/zoom/n;->b:Lcom/mosaicture/zoom/n;

    iput-object v0, p0, Lcom/mosaicture/zoom/l;->a:Lcom/mosaicture/zoom/n;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/mosaicture/zoom/l;->a:Lcom/mosaicture/zoom/n;

    sget-object v1, Lcom/mosaicture/zoom/n;->b:Lcom/mosaicture/zoom/n;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/mosaicture/zoom/l;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->b:Lcom/mosaicture/zoom/c;

    iget-object v1, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mosaicture/zoom/c;->b(FF)V

    :goto_2
    iget-object v0, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v5, p0, Lcom/mosaicture/zoom/l;->g:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/mosaicture/zoom/l;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/mosaicture/zoom/n;->a:Lcom/mosaicture/zoom/n;

    iput-object v0, p0, Lcom/mosaicture/zoom/l;->a:Lcom/mosaicture/zoom/n;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mosaicture/zoom/l;->b:Lcom/mosaicture/zoom/c;

    invoke-virtual {v0, v4, v4}, Lcom/mosaicture/zoom/c;->b(FF)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
