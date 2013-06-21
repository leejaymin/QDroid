.class public Lexam/Input/Fruit;
.super Landroid/app/Activity;
.source "Fruit.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Lexam/Input/Fruit$1;

    invoke-direct {v0, p0}, Lexam/Input/Fruit$1;-><init>(Lexam/Input/Fruit;)V

    iput-object v0, p0, Lexam/Input/Fruit;->mClickListener:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lexam/Input/Fruit;->setContentView(I)V

    .line 66
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lexam/Input/Fruit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Input/Fruit;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lexam/Input/Fruit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Input/Fruit;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
