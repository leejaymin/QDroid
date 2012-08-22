.class final Lcom/cauly/android/ad/AdView$DisplayRolling;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cauly/android/ad/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayRolling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cauly/android/ad/AdView;


# direct methods
.method private constructor <init>(Lcom/cauly/android/ad/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/cauly/android/ad/AdView$DisplayRolling;->this$0:Lcom/cauly/android/ad/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cauly/android/ad/AdView;Lcom/cauly/android/ad/AdView$DisplayRolling;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 965
    invoke-direct {p0, p1}, Lcom/cauly/android/ad/AdView$DisplayRolling;-><init>(Lcom/cauly/android/ad/AdView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 969
    iget-object v1, p0, Lcom/cauly/android/ad/AdView$DisplayRolling;->this$0:Lcom/cauly/android/ad/AdView;

    invoke-virtual {v1}, Lcom/cauly/android/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 970
    .local v7, context:Landroid/content/Context;
    const-string v1, "window"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 971
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v3, v1, v2

    .line 973
    .local v3, centerX:F
    new-instance v0, Lcom/cauly/android/ad/Rotate3dAnimation;

    const/high16 v1, 0x4334

    const/high16 v2, 0x43b4

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/cauly/android/ad/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 974
    .local v0, rotation:Lcom/cauly/android/ad/Rotate3dAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/cauly/android/ad/Rotate3dAnimation;->setDuration(J)V

    .line 975
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/Rotate3dAnimation;->setFillAfter(Z)V

    .line 976
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 977
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cauly/android/ad/AdLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 978
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 982
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 986
    return-void
.end method
