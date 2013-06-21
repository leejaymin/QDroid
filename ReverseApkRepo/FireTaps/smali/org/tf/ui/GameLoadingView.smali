.class public Lorg/tf/ui/GameLoadingView;
.super Landroid/widget/RelativeLayout;
.source "GameLoadingView.java"


# instance fields
.field private m_animation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attributes"
    .parameter "style"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public static getHideDuratioin(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    .line 65
    const v0, 0x7f090008

    .line 63
    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->getInteger(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    const v1, 0x7f04000c

    .line 43
    invoke-virtual {p0}, Lorg/tf/ui/GameLoadingView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 46
    :cond_0
    const v0, 0x7f0c0014

    invoke-static {p0, v0, v1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/view/View;II)I

    .line 47
    const v0, 0x7f0c0015

    invoke-static {p0, v0, v1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/view/View;II)I

    .line 48
    iget-object v0, p0, Lorg/tf/ui/GameLoadingView;->m_animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lorg/tf/ui/GameLoadingView;->m_animation:Landroid/view/animation/Animation;

    .line 50
    iget-object v0, p0, Lorg/tf/ui/GameLoadingView;->m_animation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lorg/tf/ui/GameLoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/tf/ui/GameLoadingView;->getHideDuratioin(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/tf/ui/GameLoadingView;->m_animation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lorg/tf/ui/GameLoadingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tf/ui/GameLoadingView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/tf/ui/GameLoadingView;->setVisibility(I)V

    .line 58
    return-void
.end method
