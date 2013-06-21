.class public Lcom/mxtech/videoplayer/SubtitleOverlay;
.super Landroid/widget/ViewSwitcher;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field public static final 癤욱븳援:Ljava/lang/String;


# instance fields
.field private ㅼ꽑嫄:I

.field private 弱밧:Landroid/view/animation/Animation;

.field private 洹:Landroid/view/animation/Animation;

.field private 궗:Lod;

.field private 꾨뱾:Loc;

.field private 대쫫:Landroid/view/animation/Animation;

.field private 먯껜蹂대떎:Z

.field private 먯꽌:I

.field private 몃Ъ:Landroid/view/animation/Animation;

.field private 쇰뒗:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lhg;->ㅼ꽑嫄:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Overlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-direct {v1, p0, p1}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;-><init>(Lcom/mxtech/videoplayer/SubtitleOverlay;Landroid/content/Context;)V

    invoke-virtual {p0, v1, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-direct {v1, p0, p1}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;-><init>(Lcom/mxtech/videoplayer/SubtitleOverlay;Landroid/content/Context;)V

    invoke-virtual {p0, v1, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lms;->寃껋씠()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setEnableFadeOut(Z)V

    return-void
.end method

.method static synthetic ㅼ꽑嫄(Lcom/mxtech/videoplayer/SubtitleOverlay;)Loc;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->꾨뱾:Loc;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;)I
    .locals 1

    iget v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->먯꽌:I

    return v0
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;Loc;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->꾨뱾:Loc;

    return-void
.end method

.method static synthetic 궗(Lcom/mxtech/videoplayer/SubtitleOverlay;)I
    .locals 1

    iget v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->ㅼ꽑嫄:I

    return v0
.end method

.method static synthetic 먯꽌(Lcom/mxtech/videoplayer/SubtitleOverlay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->먯껜蹂대떎:Z

    return v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->궗:Lod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->궗:Lod;

    invoke-interface {v0, p0}, Lod;->癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/16 v3, 0xb

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->먯껜蹂대떎:Z

    sget-object v1, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Creating subtitle overlay with "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->먯껜蹂대떎:Z

    if-eqz v0, :cond_1

    const-string v0, "single"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " buffer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " (HW Accel="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "dual"

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->꾨뱾:Loc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->꾨뱾:Loc;

    iget-object v0, v0, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->꾨뱾:Loc;

    iget-object v0, v0, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->꾨뱾:Loc;

    const/4 v1, 0x0

    iput-object v1, v0, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ViewSwitcher;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->꾨뱾:Loc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->꾨뱾:Loc;

    invoke-virtual {v0, p1, p2}, Loc;->癤욱븳援(II)V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->궗:Lod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->궗:Lod;

    invoke-interface {v0, p0, p1, p2}, Lod;->癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;II)V

    :cond_1
    return-void
.end method

.method public setEnableFadeOut(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->弱밧:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->弱밧:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->弱밧:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->弱밧:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public setListener(Lod;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->궗:Lod;

    return-void
.end method

.method public setRenderingComplex(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    sget-object v1, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v0, "Enabled"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " drawing cache."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "Disabled"

    goto :goto_0
.end method

.method public setVideoSize(II)V
    .locals 3

    iget v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->먯꽌:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->ㅼ꽑嫄:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->먯꽌:I

    iput p2, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->ㅼ꽑嫄:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->invalidate()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄()V

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->먯꽌()V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public showNext()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗()V

    return-void
.end method

.method public 癤욱븳援(Ljava/util/List;I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown animation code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->setFrames(Ljava/util/List;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-virtual {v0, p1}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->setFrames(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->showNext()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-virtual {v0, p1}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->setFrames(Ljava/util/List;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->대쫫:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lni;->slide_in_right:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->대쫫:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->대쫫:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->洹:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lni;->slide_out_left:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->洹:Landroid/view/animation/Animation;

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->대쫫:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->洹:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->showNext()V

    invoke-virtual {p0, v3}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->弱밧:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;

    invoke-virtual {v0, p1}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->setFrames(Ljava/util/List;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->쇰뒗:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lni;->slide_in_left:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->쇰뒗:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->쇰뒗:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->몃Ъ:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lni;->slide_out_right:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->몃Ъ:Landroid/view/animation/Animation;

    :cond_4
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->쇰뒗:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->몃Ъ:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->showNext()V

    invoke-virtual {p0, v3}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay;->弱밧:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
