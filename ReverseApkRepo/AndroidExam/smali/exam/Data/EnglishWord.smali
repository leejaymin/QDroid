.class public Lexam/Data/EnglishWord;
.super Landroid/app/Activity;
.source "EnglishWord.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mHelper:Lexam/Data/WordDBHelper;

.field mText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Lexam/Data/EnglishWord$1;

    invoke-direct {v0, p0}, Lexam/Data/EnglishWord$1;-><init>(Lexam/Data/EnglishWord;)V

    iput-object v0, p0, Lexam/Data/EnglishWord;->mClickListener:Landroid/view/View$OnClickListener;

    .line 12
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lexam/Data/EnglishWord;->setContentView(I)V

    .line 19
    new-instance v0, Lexam/Data/WordDBHelper;

    invoke-direct {v0, p0}, Lexam/Data/WordDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    .line 20
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lexam/Data/EnglishWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lexam/Data/EnglishWord;->mText:Landroid/widget/EditText;

    .line 22
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lexam/Data/EnglishWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Data/EnglishWord;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lexam/Data/EnglishWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Data/EnglishWord;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lexam/Data/EnglishWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Data/EnglishWord;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lexam/Data/EnglishWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Data/EnglishWord;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
