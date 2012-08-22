.class public Lcom/jaynux/app/main;
.super Landroid/app/Activity;
.source "main.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mButtonMain:Landroid/widget/Button;

.field private mButtonRetry:Landroid/widget/Button;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;

.field private mMeterView:Landroid/widget/TextView;

.field private mPm:Landroid/os/PowerManager;

.field private mRandomRun:Lcom/jaynux/app/RandomRun;

.field private mSaveDatabases:Lcom/jaynux/app/provider/SaveDatabases;

.field private mTextView:Landroid/widget/TextView;

.field private mTimerView:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field pOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 146
    new-instance v0, Lcom/jaynux/app/main$1;

    invoke-direct {v0, p0}, Lcom/jaynux/app/main$1;-><init>(Lcom/jaynux/app/main;)V

    iput-object v0, p0, Lcom/jaynux/app/main;->pOnClickListener:Landroid/view/View$OnClickListener;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/jaynux/app/main;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jaynux/app/main;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jaynux/app/main;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jaynux/app/main;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jaynux/app/main;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jaynux/app/main;->mMeterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jaynux/app/main;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jaynux/app/main;->mTimerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jaynux/app/main;)Lcom/jaynux/app/RandomRun$ImgThread;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jaynux/app/main;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/jaynux/app/main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, b:Landroid/os/Bundle;
    const v2, 0x7f090038

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/jaynux/app/RandomRun;

    iput-object v2, p0, Lcom/jaynux/app/main;->mRandomRun:Lcom/jaynux/app/RandomRun;

    .line 57
    iget-object v2, p0, Lcom/jaynux/app/main;->mRandomRun:Lcom/jaynux/app/RandomRun;

    invoke-virtual {v2}, Lcom/jaynux/app/RandomRun;->getThread()Lcom/jaynux/app/RandomRun$ImgThread;

    move-result-object v2

    iput-object v2, p0, Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;

    .line 60
    const v2, 0x7f09003b

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jaynux/app/main;->mButton:Landroid/widget/Button;

    .line 62
    iget-object v2, p0, Lcom/jaynux/app/main;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/jaynux/app/main;->pOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v2, 0x7f09003c

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;

    .line 66
    iget-object v2, p0, Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;

    iget-object v3, p0, Lcom/jaynux/app/main;->pOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v2, 0x7f09003a

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;

    .line 69
    iget-object v2, p0, Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;

    iget-object v3, p0, Lcom/jaynux/app/main;->pOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x7f090039

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f09003d

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jaynux/app/main;->mMeterView:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f09003e

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jaynux/app/main;->mTimerView:Landroid/widget/TextView;

    .line 77
    iget-object v2, p0, Lcom/jaynux/app/main;->mRandomRun:Lcom/jaynux/app/RandomRun;

    iget-object v3, p0, Lcom/jaynux/app/main;->mMeterView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/jaynux/app/RandomRun;->setMeterView(Landroid/widget/TextView;)V

    .line 79
    iget-object v2, p0, Lcom/jaynux/app/main;->mRandomRun:Lcom/jaynux/app/RandomRun;

    iget-object v3, p0, Lcom/jaynux/app/main;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/jaynux/app/RandomRun;->setTimerView(Landroid/widget/TextView;)V

    .line 82
    iget-object v2, p0, Lcom/jaynux/app/main;->mRandomRun:Lcom/jaynux/app/RandomRun;

    iget-object v3, p0, Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/jaynux/app/RandomRun;->SetButtonView(Landroid/widget/Button;)V

    .line 84
    iget-object v2, p0, Lcom/jaynux/app/main;->mRandomRun:Lcom/jaynux/app/RandomRun;

    iget-object v3, p0, Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/jaynux/app/RandomRun;->SetButtonMain(Landroid/widget/Button;)V

    .line 86
    iget-object v2, p0, Lcom/jaynux/app/main;->mRandomRun:Lcom/jaynux/app/RandomRun;

    iget-object v3, p0, Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/jaynux/app/RandomRun;->SetTextView(Landroid/widget/TextView;)V

    .line 88
    iget-object v2, p0, Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;

    invoke-virtual {v2, v0}, Lcom/jaynux/app/RandomRun$ImgThread;->setSettingValue(Landroid/os/Bundle;)V

    .line 91
    new-instance v2, Lcom/jaynux/app/provider/SaveDatabases;

    invoke-direct {v2, p0}, Lcom/jaynux/app/provider/SaveDatabases;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jaynux/app/main;->mSaveDatabases:Lcom/jaynux/app/provider/SaveDatabases;

    .line 92
    iget-object v2, p0, Lcom/jaynux/app/main;->mSaveDatabases:Lcom/jaynux/app/provider/SaveDatabases;

    invoke-virtual {v2}, Lcom/jaynux/app/provider/SaveDatabases;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/jaynux/app/main;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    iget-object v2, p0, Lcom/jaynux/app/main;->mRandomRun:Lcom/jaynux/app/RandomRun;

    iget-object v3, p0, Lcom/jaynux/app/main;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/jaynux/app/RandomRun;->setSQLiteDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/jaynux/app/main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/jaynux/app/main;->mPm:Landroid/os/PowerManager;

    .line 97
    iget-object v2, p0, Lcom/jaynux/app/main;->mPm:Landroid/os/PowerManager;

    const/16 v3, 0x1a

    const-string v4, "tag"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/jaynux/app/main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/jaynux/app/main;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 139
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/jaynux/app/main;->onPause()V

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    iget-object v0, p0, Lcom/jaynux/app/main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/jaynux/app/main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;

    iget v0, v0, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jaynux/app/RandomRun$ImgThread;->setGameState(I)V

    .line 110
    iget-object v0, p0, Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/jaynux/app/main;->mMeterView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/jaynux/app/main;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;

    const-string v1, "Paused"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;

    const-string v1, "RESTART"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/jaynux/app/main;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 126
    return-void
.end method
