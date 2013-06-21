.class public abstract Lcom/mxtech/videoplayer/ScreenVerticalBar;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Ltb;


# instance fields
.field private ㅼ꽑嫄:Landroid/view/ViewGroup;

.field private final 弱밧:Landroid/os/Handler;

.field private 洹:I

.field protected 癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

.field protected 궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

.field private 꾨뱾:Ljava/lang/Runnable;

.field private 대쫫:Ljava/lang/CharSequence;

.field private 먯껜蹂대떎:Ljava/lang/Runnable;

.field protected 먯꽌:Lly;

.field private 몃Ъ:Ljava/lang/Runnable;

.field private 쇰뒗:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    new-instance v0, Lnx;

    invoke-direct {v0, p0}, Lnx;-><init>(Lcom/mxtech/videoplayer/ScreenVerticalBar;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->몃Ъ:Ljava/lang/Runnable;

    new-instance v0, Lny;

    invoke-direct {v0, p0}, Lny;-><init>(Lcom/mxtech/videoplayer/ScreenVerticalBar;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯껜蹂대떎:Ljava/lang/Runnable;

    new-instance v0, Lnz;

    invoke-direct {v0, p0}, Lnz;-><init>(Lcom/mxtech/videoplayer/ScreenVerticalBar;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->꾨뱾:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    new-instance v0, Lnx;

    invoke-direct {v0, p0}, Lnx;-><init>(Lcom/mxtech/videoplayer/ScreenVerticalBar;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->몃Ъ:Ljava/lang/Runnable;

    new-instance v0, Lny;

    invoke-direct {v0, p0}, Lny;-><init>(Lcom/mxtech/videoplayer/ScreenVerticalBar;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯껜蹂대떎:Ljava/lang/Runnable;

    new-instance v0, Lnz;

    invoke-direct {v0, p0}, Lnz;-><init>(Lcom/mxtech/videoplayer/ScreenVerticalBar;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->꾨뱾:Ljava/lang/Runnable;

    return-void
.end method

.method private final ㅼ꽑嫄()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯꽌:Lly;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯꽌:Lly;

    invoke-interface {v0}, Lly;->롩퐢()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->대쫫:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯꽌:Lly;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lly;->癤욱븳援(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ScreenVerticalBar;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->ㅼ꽑嫄:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static synthetic 궗(Lcom/mxtech/videoplayer/ScreenVerticalBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->ㅼ꽑嫄()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCurrent()I
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getProgress()I

    move-result v1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getProgress()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMax()I
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getMax()I

    move-result v1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getMax()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯껜蹂대떎:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Lno;->bar:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setOnSeekBarChangeListener(Ltb;)V

    sget v0, Lno;->bar2:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setOnSeekBarChangeListener(Ltb;)V

    :cond_0
    const v0, 0x10a0001

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->쇰뒗:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->쇰뒗:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final setPlayer(Lly;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯꽌:Lly;

    iput-object p2, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->ㅼ꽑嫄:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setSupremeText(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯꽌:Lly;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->대쫫:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯꽌:Lly;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lly;->癤욱븳援(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    iget v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->洹:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->꾨뱾:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->꾨뱾:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getMax()I

    move-result v1

    if-le p1, v1, :cond_0

    sub-int v0, p1, v1

    move p1, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->setValue(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(II)V
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-gez p1, :cond_4

    move p1, v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getProgress()I

    move-result v1

    if-eq v1, p1, :cond_7

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v1, p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setProgress(I)V

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    if-eqz v3, :cond_6

    if-gez p2, :cond_5

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v3}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getProgress()I

    move-result v3

    if-eq v3, v0, :cond_2

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v1, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setProgress(I)V

    move v1, v2

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗(II)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getMax()I

    move-result v1

    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getMax()I

    move-result v0

    if-gt p2, v0, :cond_1

    move v0, p2

    goto :goto_2

    :cond_6
    move v0, p2

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method public final 癤욱븳援()V
    .locals 4

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯껜蹂대떎:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->洹:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->몃Ъ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->몃Ъ:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->ㅼ꽑嫄:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final 癤욱븳援(Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗()V

    return-void
.end method

.method public final 癤욱븳援(Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getProgress()I

    move-result v1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getProgress()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->궗(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final 癤욱븳援(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->쇰뒗:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->ㅼ꽑嫄:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->ㅼ꽑嫄:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final 궗()V
    .locals 2

    iget v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->洹:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->洹:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->몃Ъ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->꾨뱾:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected abstract 궗(II)V
.end method

.method public final 궗(Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->먯꽌()V

    return-void
.end method

.method public final 먯꽌()V
    .locals 4

    iget v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->洹:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->洹:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->弱밧:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ScreenVerticalBar;->몃Ъ:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->ㅼ꽑嫄()V

    :cond_0
    return-void
.end method
