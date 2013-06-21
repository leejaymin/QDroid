.class public Lexam/Widget/ProgressBarTest;
.super Landroid/app/Activity;
.source "ProgressBarTest.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mProgBar:Landroid/widget/ProgressBar;

.field mProgCircle:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lexam/Widget/ProgressBarTest$1;

    invoke-direct {v0, p0}, Lexam/Widget/ProgressBarTest$1;-><init>(Lexam/Widget/ProgressBarTest;)V

    iput-object v0, p0, Lexam/Widget/ProgressBarTest;->mClickListener:Landroid/view/View$OnClickListener;

    .line 9
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
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->setContentView(I)V

    .line 16
    const v0, 0x7f0c008a

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lexam/Widget/ProgressBarTest;->mProgBar:Landroid/widget/ProgressBar;

    .line 17
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lexam/Widget/ProgressBarTest;->mProgCircle:Landroid/widget/ProgressBar;

    .line 19
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Widget/ProgressBarTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Widget/ProgressBarTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Widget/ProgressBarTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0c008e

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Widget/ProgressBarTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Widget/ProgressBarTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressBarTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Widget/ProgressBarTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
