.class public Lexam/Data/FileIO;
.super Landroid/app/Activity;
.source "FileIO.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lexam/Data/FileIO$1;

    invoke-direct {v0, p0}, Lexam/Data/FileIO$1;-><init>(Lexam/Data/FileIO;)V

    iput-object v0, p0, Lexam/Data/FileIO;->mClickListener:Landroid/view/View$OnClickListener;

    .line 12
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lexam/Data/FileIO;->setContentView(I)V

    .line 18
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lexam/Data/FileIO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lexam/Data/FileIO;->mEdit:Landroid/widget/EditText;

    .line 19
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lexam/Data/FileIO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Data/FileIO;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lexam/Data/FileIO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Data/FileIO;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lexam/Data/FileIO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Data/FileIO;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lexam/Data/FileIO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Data/FileIO;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method
