.class public Lexam/thread/BackWork2;
.super Landroid/app/Activity;
.source "BackWork2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/thread/BackWork2$AccumThread;
    }
.end annotation


# instance fields
.field mAfterAccum:Landroid/os/Handler;

.field mProgress:Landroid/app/ProgressDialog;

.field mResult:Landroid/widget/TextView;

.field mThread:Lexam/thread/BackWork2$AccumThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Lexam/thread/BackWork2$1;

    invoke-direct {v0, p0}, Lexam/thread/BackWork2$1;-><init>(Lexam/thread/BackWork2;)V

    iput-object v0, p0, Lexam/thread/BackWork2;->mAfterAccum:Landroid/os/Handler;

    .line 10
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
    const v1, 0x7f03005a

    invoke-virtual {p0, v1}, Lexam/thread/BackWork2;->setContentView(I)V

    .line 19
    const v1, 0x7f0c0050

    invoke-virtual {p0, v1}, Lexam/thread/BackWork2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/BackWork2;->mResult:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0c0029

    invoke-virtual {p0, v1}, Lexam/thread/BackWork2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/thread/BackWork2$2;

    invoke-direct {v1, p0}, Lexam/thread/BackWork2$2;-><init>(Lexam/thread/BackWork2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
