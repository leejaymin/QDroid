.class public Lexam/Draw/TweenListener;
.super Landroid/app/Activity;
.source "TweenListener.java"


# instance fields
.field mAni1:Landroid/view/animation/Animation;

.field mAni2:Landroid/view/animation/Animation;

.field mAni3:Landroid/view/animation/Animation;

.field mBtn:Landroid/widget/Button;

.field mLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lexam/Draw/TweenListener;->setContentView(I)V

    .line 22
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lexam/Draw/TweenListener;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lexam/Draw/TweenListener;->mLinear:Landroid/widget/LinearLayout;

    .line 24
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lexam/Draw/TweenListener;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lexam/Draw/TweenListener;->mBtn:Landroid/widget/Button;

    .line 25
    iget-object v0, p0, Lexam/Draw/TweenListener;->mBtn:Landroid/widget/Button;

    new-instance v1, Lexam/Draw/TweenListener$1;

    invoke-direct {v1, p0}, Lexam/Draw/TweenListener$1;-><init>(Lexam/Draw/TweenListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f040003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lexam/Draw/TweenListener;->mAni1:Landroid/view/animation/Animation;

    .line 32
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lexam/Draw/TweenListener;->mAni2:Landroid/view/animation/Animation;

    .line 33
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lexam/Draw/TweenListener;->mAni3:Landroid/view/animation/Animation;

    .line 35
    iget-object v0, p0, Lexam/Draw/TweenListener;->mAni1:Landroid/view/animation/Animation;

    new-instance v1, Lexam/Draw/TweenListener$2;

    invoke-direct {v1, p0}, Lexam/Draw/TweenListener$2;-><init>(Lexam/Draw/TweenListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44
    iget-object v0, p0, Lexam/Draw/TweenListener;->mAni2:Landroid/view/animation/Animation;

    new-instance v1, Lexam/Draw/TweenListener$3;

    invoke-direct {v1, p0}, Lexam/Draw/TweenListener$3;-><init>(Lexam/Draw/TweenListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    iget-object v0, p0, Lexam/Draw/TweenListener;->mAni3:Landroid/view/animation/Animation;

    new-instance v1, Lexam/Draw/TweenListener$4;

    invoke-direct {v1, p0}, Lexam/Draw/TweenListener$4;-><init>(Lexam/Draw/TweenListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 61
    return-void
.end method
