.class public Lexam/Widget/ProgressTitle;
.super Landroid/app/Activity;
.source "ProgressTitle.java"


# instance fields
.field mProg:I


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
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle;->requestWindowFeature(I)Z

    .line 14
    const v0, 0x7f030079

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle;->setContentView(I)V

    .line 16
    const/16 v0, 0x1388

    iput v0, p0, Lexam/Widget/ProgressTitle;->mProg:I

    .line 17
    iget v0, p0, Lexam/Widget/ProgressTitle;->mProg:I

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle;->setProgress(I)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle;->setProgressBarVisibility(Z)V

    .line 20
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lexam/Widget/ProgressTitle$1;

    invoke-direct {v1, p0}, Lexam/Widget/ProgressTitle$1;-><init>(Lexam/Widget/ProgressTitle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lexam/Widget/ProgressTitle$2;

    invoke-direct {v1, p0}, Lexam/Widget/ProgressTitle$2;-><init>(Lexam/Widget/ProgressTitle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
