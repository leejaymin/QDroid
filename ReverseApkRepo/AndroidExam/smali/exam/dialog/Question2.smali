.class public Lexam/dialog/Question2;
.super Landroid/app/Activity;
.source "Question2.java"


# instance fields
.field a:I

.field b:I

.field mClickLeft:Landroid/content/DialogInterface$OnClickListener;

.field mClickOperator:Landroid/content/DialogInterface$OnClickListener;

.field mClickRight:Landroid/content/DialogInterface$OnClickListener;

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Lexam/dialog/Question2$1;

    invoke-direct {v0, p0}, Lexam/dialog/Question2$1;-><init>(Lexam/dialog/Question2;)V

    iput-object v0, p0, Lexam/dialog/Question2;->mClickLeft:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    new-instance v0, Lexam/dialog/Question2$2;

    invoke-direct {v0, p0}, Lexam/dialog/Question2$2;-><init>(Lexam/dialog/Question2;)V

    iput-object v0, p0, Lexam/dialog/Question2;->mClickRight:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    new-instance v0, Lexam/dialog/Question2$3;

    invoke-direct {v0, p0}, Lexam/dialog/Question2$3;-><init>(Lexam/dialog/Question2;)V

    iput-object v0, p0, Lexam/dialog/Question2;->mClickOperator:Landroid/content/DialogInterface$OnClickListener;

    .line 10
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
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lexam/dialog/Question2;->setContentView(I)V

    .line 18
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lexam/dialog/Question2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 19
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/dialog/Question2$4;

    invoke-direct {v1, p0}, Lexam/dialog/Question2$4;-><init>(Lexam/dialog/Question2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
