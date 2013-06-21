.class Lorg/tf/ui/FireButton;
.super Lorg/tf/ui/TextButton;
.source "FireButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private m_animation:Landroid/view/animation/Animation;

.field private m_clickListener:Landroid/view/View$OnClickListener;

.field private m_clicking:Z

.field private m_fireShader:Landroid/graphics/BitmapShader;

.field private m_fireShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/tf/ui/TextButton;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->setup()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/tf/ui/TextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->setup()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/tf/ui/TextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->setup()V

    .line 51
    return-void
.end method

.method private click()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/ui/FireButton;->m_clicking:Z

    .line 111
    iget-object v0, p0, Lorg/tf/ui/FireButton;->m_clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/tf/ui/FireButton;->m_clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 114
    :cond_0
    return-void
.end method

.method private endClick()V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/tf/ui/FireButton;->m_clicking:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->click()V

    .line 105
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/tf/ui/TextButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p0}, Lorg/tf/ui/TextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lorg/tf/ui/FireButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/ui/FireButton;->m_animation:Landroid/view/animation/Animation;

    .line 129
    return-void
.end method

.method private startClick()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/tf/ui/FireButton;->m_animation:Landroid/view/animation/Animation;

    invoke-super {p0, v0}, Lorg/tf/ui/TextButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/ui/FireButton;->m_clicking:Z

    .line 100
    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->endClick()V

    .line 69
    invoke-super {p0}, Lorg/tf/ui/TextButton;->clearAnimation()V

    .line 70
    return-void
.end method

.method public onAnimationEnd()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->endClick()V

    .line 95
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 82
    invoke-static {}, Lorg/tf/ui/UISoundEffects;->playInSound()V

    .line 83
    invoke-virtual {p0}, Lorg/tf/ui/FireButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 84
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    iget-boolean v1, p0, Lorg/tf/ui/FireButton;->m_clicking:Z

    if-nez v1, :cond_0

    .line 85
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->click()V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->startClick()V

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->endClick()V

    .line 59
    invoke-super {p0, p1}, Lorg/tf/ui/TextButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 60
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lorg/tf/ui/FireButton;->m_clickListener:Landroid/view/View$OnClickListener;

    .line 55
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/tf/ui/FireButton;->endClick()V

    .line 64
    invoke-super {p0, p1}, Lorg/tf/ui/TextButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    return-void
.end method
