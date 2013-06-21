.class public Lexam/dialog/ErrorMessage1;
.super Landroid/app/Activity;
.source "ErrorMessage1.java"


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
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lexam/dialog/ErrorMessage1;->setContentView(I)V

    .line 14
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lexam/dialog/ErrorMessage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 15
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/dialog/ErrorMessage1$1;

    invoke-direct {v1, p0}, Lexam/dialog/ErrorMessage1$1;-><init>(Lexam/dialog/ErrorMessage1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
