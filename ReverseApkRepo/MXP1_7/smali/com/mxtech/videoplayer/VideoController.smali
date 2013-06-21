.class public final Lcom/mxtech/videoplayer/VideoController;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private ㅼ꽑嫄:Landroid/view/animation/Animation;

.field private 弱밧:Landroid/view/animation/Animation;

.field private 洹:I

.field private final 癤욱븳援:Landroid/os/Handler;

.field private 궗:Lnb;

.field private 꾨뱾:I

.field private 대쫫:Landroid/widget/SeekBar;

.field private 뚮Ц:I

.field private 먮:I

.field private 먯껜蹂대떎:I

.field private 먯꽌:Lqk;

.field private 몃Ъ:I

.field private 붿슧:I

.field private 쇰뒗:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/VideoController;)Lqk;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯꽌:Lqk;

    return-object v0
.end method

.method private 癤욱븳援(IIZ)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯껜蹂대떎:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯꽌:Lqk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯꽌:Lqk;

    invoke-interface {v0, p0, p1}, Lqk;->癤욱븳援(Lcom/mxtech/videoplayer/VideoController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->쇰뒗:Landroid/view/View;

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/mxtech/videoplayer/VideoController;->꾨뱾:I

    iget-object v3, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/mxtech/videoplayer/VideoController;->뚮Ц:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/mxtech/videoplayer/VideoController;->붿슧:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestLayout()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->쇰뒗:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0, v6}, Lcom/mxtech/videoplayer/VideoController;->setVisibility(I)V

    if-ne p2, v7, :cond_5

    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯껜蹂대떎:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->弱밧:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/VideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->弱밧:Landroid/view/animation/Animation;

    :cond_4
    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->弱밧:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/VideoController;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    :goto_2
    iput p1, p0, Lcom/mxtech/videoplayer/VideoController;->먯껜蹂대떎:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯꽌:Lqk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯꽌:Lqk;

    invoke-interface {v0, p0, p1, p2, p3}, Lqk;->癤욱븳援(Lcom/mxtech/videoplayer/VideoController;IIZ)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->붿슧:I

    iget v1, p0, Lcom/mxtech/videoplayer/VideoController;->먮:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/mxtech/videoplayer/VideoController;->꾨뱾:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/mxtech/videoplayer/VideoController;->뚮Ц:I

    sub-int v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/mxtech/videoplayer/VideoController;->먮:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestLayout()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->쇰뒗:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->몃Ъ:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯꽌:Lqk;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯꽌:Lqk;

    invoke-interface {v0, p0}, Lqk;->궗(Lcom/mxtech/videoplayer/VideoController;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/VideoController;->setVisibility(I)V

    if-ne p2, v7, :cond_5

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->ㅼ꽑嫄:Landroid/view/animation/Animation;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/VideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->ㅼ꽑嫄:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->ㅼ꽑嫄:Landroid/view/animation/Animation;

    new-instance v1, Lqj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lqj;-><init>(Lcom/mxtech/videoplayer/VideoController;Lqj;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_9
    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->ㅼ꽑嫄:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/VideoController;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援(I)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDefaultHeight()I
    .locals 1

    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->洹:I

    return v0
.end method

.method public getVisibleParts()I
    .locals 1

    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->먯껜蹂대떎:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援(IIZ)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lno;->subNaviBar:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/VideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->쇰뒗:Landroid/view/View;

    sget v0, Lno;->videoProgress:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/VideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/mxtech/videoplayer/VideoController;->붿슧:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/mxtech/videoplayer/VideoController;->꾨뱾:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/mxtech/videoplayer/VideoController;->뚮Ц:I

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/VideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnm;->video_progress_narrow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mxtech/videoplayer/VideoController;->먮:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-lez p2, :cond_0

    iput p2, p0, Lcom/mxtech/videoplayer/VideoController;->洹:I

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setOnVisibilityChangedListener(Lqk;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/VideoController;->먯꽌:Lqk;

    return-void
.end method

.method public setPlayer(Lnb;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/VideoController;->궗:Lnb;

    return-void
.end method

.method public setVisibleParts(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援(IIZ)V

    return-void
.end method

.method public 癤욱븳援()V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->몃Ъ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->궗:Lnb;

    invoke-virtual {v0}, Lnb;->덉쓣()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    sget v1, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public 癤욱븳援(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mxtech/videoplayer/VideoController;->setVisibleParts(II)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援()V

    return-void
.end method

.method public 癤욱븳援(II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/VideoController;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/mxtech/videoplayer/VideoController;->洹:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final 궗()V
    .locals 2

    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->몃Ъ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mxtech/videoplayer/VideoController;->몃Ъ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public 궗(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mxtech/videoplayer/VideoController;->setVisibleParts(II)V

    return-void
.end method

.method public final 먯꽌()V
    .locals 4

    iget v0, p0, Lcom/mxtech/videoplayer/VideoController;->몃Ъ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/VideoController;->몃Ъ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->궗:Lnb;

    invoke-virtual {v0}, Lnb;->덉쓣()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    const/4 v1, 0x1

    sget v2, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public 먯꽌(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/VideoController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    sget v1, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
