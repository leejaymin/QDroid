.class final Lcom/mosaicture/view/t;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/MosaictureActivity;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/MosaictureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x4348

    const/high16 v2, 0x42f0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/mosaicture/view/BaseApp;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->b(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->b(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/TabHost;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v2}, Lcom/mosaicture/view/MosaictureActivity;->d(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v2}, Lcom/mosaicture/view/MosaictureActivity;->e(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->b(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->b(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/TabHost;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v2}, Lcom/mosaicture/view/MosaictureActivity;->f(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v2}, Lcom/mosaicture/view/MosaictureActivity;->g(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/mosaicture/view/t;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_0
.end method
