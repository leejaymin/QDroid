.class public Lexam/dialog/Question1;
.super Landroid/app/Activity;
.source "Question1.java"


# instance fields
.field a:I

.field b:I

.field mClick:Landroid/content/DialogInterface$OnClickListener;

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lexam/dialog/Question1;->a:I

    .line 90
    const/4 v0, 0x4

    iput v0, p0, Lexam/dialog/Question1;->b:I

    .line 109
    new-instance v0, Lexam/dialog/Question1$1;

    invoke-direct {v0, p0}, Lexam/dialog/Question1$1;-><init>(Lexam/dialog/Question1;)V

    iput-object v0, p0, Lexam/dialog/Question1;->mClick:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lexam/dialog/Question1;->setContentView(I)V

    .line 96
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lexam/dialog/Question1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 97
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/dialog/Question1$2;

    invoke-direct {v1, p0}, Lexam/dialog/Question1$2;-><init>(Lexam/dialog/Question1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method
