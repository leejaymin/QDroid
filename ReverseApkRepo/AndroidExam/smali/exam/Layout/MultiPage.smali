.class public Lexam/Layout/MultiPage;
.super Landroid/app/Activity;
.source "MultiPage.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mPage1:Landroid/view/View;

.field mPage2:Landroid/view/View;

.field mPage3:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lexam/Layout/MultiPage$1;

    invoke-direct {v0, p0}, Lexam/Layout/MultiPage$1;-><init>(Lexam/Layout/MultiPage;)V

    iput-object v0, p0, Lexam/Layout/MultiPage;->mClickListener:Landroid/view/View$OnClickListener;

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
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lexam/Layout/MultiPage;->setContentView(I)V

    .line 16
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lexam/Layout/MultiPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lexam/Layout/MultiPage;->mPage1:Landroid/view/View;

    .line 17
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lexam/Layout/MultiPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lexam/Layout/MultiPage;->mPage2:Landroid/view/View;

    .line 18
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lexam/Layout/MultiPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lexam/Layout/MultiPage;->mPage3:Landroid/view/View;

    .line 20
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lexam/Layout/MultiPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Layout/MultiPage;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lexam/Layout/MultiPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Layout/MultiPage;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lexam/Layout/MultiPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Layout/MultiPage;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method
