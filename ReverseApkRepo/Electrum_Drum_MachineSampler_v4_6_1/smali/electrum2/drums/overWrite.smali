.class public Lelectrum2/drums/overWrite;
.super Landroid/app/Activity;
.source "overWrite.java"


# instance fields
.field private noClick:Landroid/view/View$OnClickListener;

.field nobutton:Landroid/widget/Button;

.field private yesClick:Landroid/view/View$OnClickListener;

.field yesbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lelectrum2/drums/overWrite$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/overWrite$1;-><init>(Lelectrum2/drums/overWrite;)V

    iput-object v0, p0, Lelectrum2/drums/overWrite;->yesClick:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lelectrum2/drums/overWrite$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/overWrite$2;-><init>(Lelectrum2/drums/overWrite;)V

    iput-object v0, p0, Lelectrum2/drums/overWrite;->noClick:Landroid/view/View$OnClickListener;

    .line 13
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lelectrum2/drums/overWrite;->setContentView(I)V

    .line 30
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lelectrum2/drums/overWrite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/overWrite;->yesbutton:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lelectrum2/drums/overWrite;->yesbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/overWrite;->yesClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lelectrum2/drums/overWrite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/overWrite;->nobutton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lelectrum2/drums/overWrite;->nobutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/overWrite;->noClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
