.class public Lexam/thread/LongTime3;
.super Landroid/app/Activity;
.source "LongTime3.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mProgress:Landroid/app/ProgressDialog;

.field mQuit:Z

.field mText:Landroid/widget/TextView;

.field mValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Lexam/thread/LongTime3$1;

    invoke-direct {v0, p0}, Lexam/thread/LongTime3$1;-><init>(Lexam/thread/LongTime3;)V

    iput-object v0, p0, Lexam/thread/LongTime3;->mHandler:Landroid/os/Handler;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f03005b

    invoke-virtual {p0, v1}, Lexam/thread/LongTime3;->setContentView(I)V

    .line 20
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lexam/thread/LongTime3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/LongTime3;->mText:Landroid/widget/TextView;

    .line 21
    const v1, 0x7f0c0017

    invoke-virtual {p0, v1}, Lexam/thread/LongTime3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 22
    .local v0, btnUpdate:Landroid/widget/Button;
    new-instance v1, Lexam/thread/LongTime3$2;

    invoke-direct {v1, p0}, Lexam/thread/LongTime3$2;-><init>(Lexam/thread/LongTime3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexam/thread/LongTime3;->mProgress:Landroid/app/ProgressDialog;

    .line 36
    iget-object v0, p0, Lexam/thread/LongTime3;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 37
    iget-object v0, p0, Lexam/thread/LongTime3;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, "Updating"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lexam/thread/LongTime3;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, "Wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lexam/thread/LongTime3;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 40
    iget-object v0, p0, Lexam/thread/LongTime3;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, "Cancel"

    new-instance v2, Lexam/thread/LongTime3$3;

    invoke-direct {v2, p0}, Lexam/thread/LongTime3$3;-><init>(Lexam/thread/LongTime3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lexam/thread/LongTime3;->mProgress:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
