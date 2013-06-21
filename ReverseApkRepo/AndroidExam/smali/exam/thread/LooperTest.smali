.class public Lexam/thread/LooperTest;
.super Landroid/app/Activity;
.source "LooperTest.java"


# instance fields
.field mBackText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field mMainText:Landroid/widget/TextView;

.field mMainValue:I

.field mNumEdit:Landroid/widget/EditText;

.field mThread:Lexam/thread/CalcThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lexam/thread/LooperTest;->mMainValue:I

    .line 56
    new-instance v0, Lexam/thread/LooperTest$1;

    invoke-direct {v0, p0}, Lexam/thread/LooperTest$1;-><init>(Lexam/thread/LooperTest;)V

    iput-object v0, p0, Lexam/thread/LooperTest;->mHandler:Landroid/os/Handler;

    .line 9
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
    const v1, 0x7f03005c

    invoke-virtual {p0, v1}, Lexam/thread/LooperTest;->setContentView(I)V

    .line 20
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lexam/thread/LooperTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/LooperTest;->mMainText:Landroid/widget/TextView;

    .line 21
    const v1, 0x7f0c0071

    invoke-virtual {p0, v1}, Lexam/thread/LooperTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/LooperTest;->mBackText:Landroid/widget/TextView;

    .line 22
    const v1, 0x7f0c0023

    invoke-virtual {p0, v1}, Lexam/thread/LooperTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lexam/thread/LooperTest;->mNumEdit:Landroid/widget/EditText;

    .line 24
    const v1, 0x7f0c0070

    invoke-virtual {p0, v1}, Lexam/thread/LooperTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 25
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/thread/LooperTest$2;

    invoke-direct {v1, p0}, Lexam/thread/LooperTest$2;-><init>(Lexam/thread/LooperTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v1, 0x7f0c0072

    invoke-virtual {p0, v1}, Lexam/thread/LooperTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 33
    .restart local v0       #btn:Landroid/widget/Button;
    new-instance v1, Lexam/thread/LooperTest$3;

    invoke-direct {v1, p0}, Lexam/thread/LooperTest$3;-><init>(Lexam/thread/LooperTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v1, 0x7f0c0073

    invoke-virtual {p0, v1}, Lexam/thread/LooperTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 43
    .restart local v0       #btn:Landroid/widget/Button;
    new-instance v1, Lexam/thread/LooperTest$4;

    invoke-direct {v1, p0}, Lexam/thread/LooperTest$4;-><init>(Lexam/thread/LooperTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v1, Lexam/thread/CalcThread;

    iget-object v2, p0, Lexam/thread/LooperTest;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lexam/thread/CalcThread;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lexam/thread/LooperTest;->mThread:Lexam/thread/CalcThread;

    .line 52
    iget-object v1, p0, Lexam/thread/LooperTest;->mThread:Lexam/thread/CalcThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lexam/thread/CalcThread;->setDaemon(Z)V

    .line 53
    iget-object v1, p0, Lexam/thread/LooperTest;->mThread:Lexam/thread/CalcThread;

    invoke-virtual {v1}, Lexam/thread/CalcThread;->start()V

    .line 54
    return-void
.end method
