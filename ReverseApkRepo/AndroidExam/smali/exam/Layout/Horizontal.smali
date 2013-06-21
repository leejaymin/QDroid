.class public Lexam/Layout/Horizontal;
.super Landroid/app/Activity;
.source "Horizontal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lexam/Layout/Horizontal;->setContentView(I)V

    .line 14
    const v1, 0x7f0c003e

    invoke-virtual {p0, v1}, Lexam/Layout/Horizontal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 15
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/Layout/Horizontal$1;

    invoke-direct {v1, p0}, Lexam/Layout/Horizontal$1;-><init>(Lexam/Layout/Horizontal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method
