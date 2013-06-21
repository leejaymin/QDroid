.class public Lorg/tf/ui/GameMenuView;
.super Landroid/widget/LinearLayout;
.source "GameMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/ui/GameMenuView$Callback;
    }
.end annotation


# instance fields
.field private m_callback:Lorg/tf/ui/GameMenuView$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private animate(Z)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lorg/tf/ui/GameMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    if-eqz p1, :cond_0

    const v2, 0x7f040008

    .line 90
    :goto_0
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 93
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lorg/tf/ui/GameMenuView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    if-eqz p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Lorg/tf/ui/GameMenuView;->setVisibility(I)V

    .line 95
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, p1, v3, v1}, Lorg/tf/ui/UIHelpers;->animateBody(Landroid/view/View;ZI[I)V

    .line 96
    return-void

    .line 92
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    const v2, 0x7f040009

    goto :goto_0

    .line 94
    .restart local v0       #animation:Landroid/view/animation/Animation;
    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    .line 95
    :array_0
    .array-data 0x4
        0x17t 0x0t 0xct 0x7ft
        0x18t 0x0t 0xct 0x7ft
    .end array-data
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/tf/ui/GameMenuView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/tf/ui/GameMenuView;->animate(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/tf/ui/GameMenuView;->m_callback:Lorg/tf/ui/GameMenuView$Callback;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lorg/tf/ui/GameMenuView;->m_callback:Lorg/tf/ui/GameMenuView$Callback;

    invoke-interface {v0}, Lorg/tf/ui/GameMenuView$Callback;->onGameMenuResume()V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lorg/tf/ui/GameMenuView;->m_callback:Lorg/tf/ui/GameMenuView$Callback;

    invoke-interface {v0}, Lorg/tf/ui/GameMenuView$Callback;->onGameMenuRestart()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0017
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 66
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lorg/tf/ui/GameMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lorg/tf/ui/GameMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public setCallback(Lorg/tf/ui/GameMenuView$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/tf/ui/GameMenuView;->m_callback:Lorg/tf/ui/GameMenuView$Callback;

    .line 60
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/tf/ui/GameMenuView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tf/ui/GameMenuView;->animate(Z)V

    .line 43
    :cond_0
    return-void
.end method
