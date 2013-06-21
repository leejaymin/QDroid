.class public Lexam/Widget/ProgressTitle2;
.super Landroid/app/Activity;
.source "ProgressTitle2.java"


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
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle2;->requestWindowFeature(I)Z

    .line 13
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle2;->setContentView(I)V

    .line 15
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lexam/Widget/ProgressTitle2$1;

    invoke-direct {v1, p0}, Lexam/Widget/ProgressTitle2$1;-><init>(Lexam/Widget/ProgressTitle2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lexam/Widget/ProgressTitle2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lexam/Widget/ProgressTitle2$2;

    invoke-direct {v1, p0}, Lexam/Widget/ProgressTitle2$2;-><init>(Lexam/Widget/ProgressTitle2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
