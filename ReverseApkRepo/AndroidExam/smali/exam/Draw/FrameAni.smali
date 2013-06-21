.class public Lexam/Draw/FrameAni;
.super Landroid/app/Activity;
.source "FrameAni.java"


# instance fields
.field mAni:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lexam/Draw/FrameAni;->setContentView(I)V

    .line 16
    const v2, 0x7f0c0028

    invoke-virtual {p0, v2}, Lexam/Draw/FrameAni;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 17
    .local v1, img:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lexam/Draw/FrameAni;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 19
    const v2, 0x7f0c0029

    invoke-virtual {p0, v2}, Lexam/Draw/FrameAni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 20
    .local v0, btn:Landroid/widget/Button;
    new-instance v2, Lexam/Draw/FrameAni$1;

    invoke-direct {v2, p0}, Lexam/Draw/FrameAni$1;-><init>(Lexam/Draw/FrameAni;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v2, 0x7f0c002a

    invoke-virtual {p0, v2}, Lexam/Draw/FrameAni;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 27
    .restart local v0       #btn:Landroid/widget/Button;
    new-instance v2, Lexam/Draw/FrameAni$2;

    invoke-direct {v2, p0}, Lexam/Draw/FrameAni$2;-><init>(Lexam/Draw/FrameAni;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
