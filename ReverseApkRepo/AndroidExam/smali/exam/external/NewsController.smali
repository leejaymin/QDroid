.class public Lexam/external/NewsController;
.super Landroid/app/Activity;
.source "NewsController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v2, 0x7f030056

    invoke-virtual {p0, v2}, Lexam/external/NewsController;->setContentView(I)V

    .line 15
    const v2, 0x7f0c006c

    invoke-virtual {p0, v2}, Lexam/external/NewsController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 16
    .local v1, btnstart:Landroid/widget/Button;
    new-instance v2, Lexam/external/NewsController$1;

    invoke-direct {v2, p0}, Lexam/external/NewsController$1;-><init>(Lexam/external/NewsController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v2, 0x7f0c006d

    invoke-virtual {p0, v2}, Lexam/external/NewsController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    .local v0, btnend:Landroid/widget/Button;
    new-instance v2, Lexam/external/NewsController$2;

    invoke-direct {v2, p0}, Lexam/external/NewsController$2;-><init>(Lexam/external/NewsController;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
