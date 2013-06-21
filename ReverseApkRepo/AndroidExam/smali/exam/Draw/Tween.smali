.class public Lexam/Draw/Tween;
.super Landroid/app/Activity;
.source "Tween.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Lexam/Draw/Tween$1;

    invoke-direct {v0, p0}, Lexam/Draw/Tween$1;-><init>(Lexam/Draw/Tween;)V

    iput-object v0, p0, Lexam/Draw/Tween;->mClickListener:Landroid/view/View$OnClickListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lexam/Draw/Tween;->setContentView(I)V

    .line 16
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lexam/Draw/Tween;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lexam/Draw/Tween;->mLinear:Landroid/widget/LinearLayout;

    .line 17
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lexam/Draw/Tween;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Draw/Tween;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lexam/Draw/Tween;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Draw/Tween;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lexam/Draw/Tween;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Draw/Tween;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lexam/Draw/Tween;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Draw/Tween;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lexam/Draw/Tween;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Draw/Tween;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method
