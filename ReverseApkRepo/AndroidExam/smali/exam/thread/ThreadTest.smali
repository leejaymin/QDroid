.class public Lexam/thread/ThreadTest;
.super Landroid/app/Activity;
.source "ThreadTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/thread/ThreadTest$BackThread;
    }
.end annotation


# instance fields
.field mBackText:Landroid/widget/TextView;

.field mBackValue:I

.field mMainText:Landroid/widget/TextView;

.field mMainValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    iput v0, p0, Lexam/thread/ThreadTest;->mMainValue:I

    .line 12
    iput v0, p0, Lexam/thread/ThreadTest;->mBackValue:I

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f03005d

    invoke-virtual {p0, v2}, Lexam/thread/ThreadTest;->setContentView(I)V

    .line 20
    const v2, 0x7f0c006f

    invoke-virtual {p0, v2}, Lexam/thread/ThreadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lexam/thread/ThreadTest;->mMainText:Landroid/widget/TextView;

    .line 21
    const v2, 0x7f0c0071

    invoke-virtual {p0, v2}, Lexam/thread/ThreadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lexam/thread/ThreadTest;->mBackText:Landroid/widget/TextView;

    .line 22
    const v2, 0x7f0c0070

    invoke-virtual {p0, v2}, Lexam/thread/ThreadTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 23
    .local v0, btn:Landroid/widget/Button;
    new-instance v2, Lexam/thread/ThreadTest$1;

    invoke-direct {v2, p0}, Lexam/thread/ThreadTest$1;-><init>(Lexam/thread/ThreadTest;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance v1, Lexam/thread/ThreadTest$BackThread;

    invoke-direct {v1, p0}, Lexam/thread/ThreadTest$BackThread;-><init>(Lexam/thread/ThreadTest;)V

    .line 32
    .local v1, thread:Lexam/thread/ThreadTest$BackThread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lexam/thread/ThreadTest$BackThread;->setDaemon(Z)V

    .line 33
    invoke-virtual {v1}, Lexam/thread/ThreadTest$BackThread;->start()V

    .line 34
    return-void
.end method
