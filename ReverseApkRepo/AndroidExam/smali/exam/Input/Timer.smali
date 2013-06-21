.class public Lexam/Input/Timer;
.super Landroid/app/Activity;
.source "Timer.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mText:Landroid/widget/TextView;

.field value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lexam/Input/Timer;->value:I

    .line 32
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lexam/Input/Timer;->setContentView(I)V

    .line 41
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lexam/Input/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lexam/Input/Timer;->mText:Landroid/widget/TextView;

    .line 43
    new-instance v0, Lexam/Input/Timer$1;

    invoke-direct {v0, p0}, Lexam/Input/Timer$1;-><init>(Lexam/Input/Timer;)V

    iput-object v0, p0, Lexam/Input/Timer;->mHandler:Landroid/os/Handler;

    .line 52
    iget-object v0, p0, Lexam/Input/Timer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    return-void
.end method
