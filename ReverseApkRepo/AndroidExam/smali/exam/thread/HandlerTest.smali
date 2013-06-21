.class public Lexam/thread/HandlerTest;
.super Landroid/app/Activity;
.source "HandlerTest.java"


# instance fields
.field mBackText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field mMainText:Landroid/widget/TextView;

.field mMainValue:I

.field mThread:Lexam/thread/BackThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lexam/thread/HandlerTest;->mMainValue:I

    .line 179
    new-instance v0, Lexam/thread/HandlerTest$1;

    invoke-direct {v0, p0}, Lexam/thread/HandlerTest$1;-><init>(Lexam/thread/HandlerTest;)V

    iput-object v0, p0, Lexam/thread/HandlerTest;->mHandler:Landroid/os/Handler;

    .line 155
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    const v1, 0x7f03005d

    invoke-virtual {p0, v1}, Lexam/thread/HandlerTest;->setContentView(I)V

    .line 165
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lexam/thread/HandlerTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/HandlerTest;->mMainText:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f0c0071

    invoke-virtual {p0, v1}, Lexam/thread/HandlerTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/HandlerTest;->mBackText:Landroid/widget/TextView;

    .line 167
    const v1, 0x7f0c0070

    invoke-virtual {p0, v1}, Lexam/thread/HandlerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 168
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/thread/HandlerTest$2;

    invoke-direct {v1, p0}, Lexam/thread/HandlerTest$2;-><init>(Lexam/thread/HandlerTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v1, Lexam/thread/BackThread;

    iget-object v2, p0, Lexam/thread/HandlerTest;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lexam/thread/BackThread;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lexam/thread/HandlerTest;->mThread:Lexam/thread/BackThread;

    .line 175
    iget-object v1, p0, Lexam/thread/HandlerTest;->mThread:Lexam/thread/BackThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lexam/thread/BackThread;->setDaemon(Z)V

    .line 176
    iget-object v1, p0, Lexam/thread/HandlerTest;->mThread:Lexam/thread/BackThread;

    invoke-virtual {v1}, Lexam/thread/BackThread;->start()V

    .line 177
    return-void
.end method
