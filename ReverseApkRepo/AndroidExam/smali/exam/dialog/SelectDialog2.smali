.class public Lexam/dialog/SelectDialog2;
.super Landroid/app/Activity;
.source "SelectDialog2.java"


# instance fields
.field mSelect:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lexam/dialog/SelectDialog2;->mSelect:I

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
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lexam/dialog/SelectDialog2;->setContentView(I)V

    .line 16
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lexam/dialog/SelectDialog2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 17
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/dialog/SelectDialog2$1;

    invoke-direct {v1, p0}, Lexam/dialog/SelectDialog2$1;-><init>(Lexam/dialog/SelectDialog2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
