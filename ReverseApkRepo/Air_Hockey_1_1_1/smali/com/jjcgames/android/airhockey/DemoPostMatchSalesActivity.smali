.class public Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;
.super Landroid/app/Activity;
.source "DemoPostMatchSalesActivity.java"


# instance fields
.field private backToTitleScreen:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private movingOn:Z

.field private waitingTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->tick()V

    return-void
.end method

.method static synthetic access$1(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z

    return-void
.end method

.method private tick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 29
    iget v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    if-gtz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    const v1, 0x7f070043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 43
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    .line 34
    new-instance v1, Ljava/text/ChoiceFormat;

    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    .line 35
    iget v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/ChoiceFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 33
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$1;

    invoke-direct {v1, p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$1;-><init>(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V

    .line 41
    const-wide/16 v2, 0x3e8

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f090002

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v5}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 50
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->setContentView(I)V

    .line 51
    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, b:Landroid/widget/Button;
    const v3, 0x7f070007

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getLocalPrice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v3, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$2;

    invoke-direct {v3, p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$2;-><init>(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V

    .line 54
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-static {}, Lcom/jjcgames/android/airhockey/StagingActivity;->isMultitouchDefinitelyAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p0, v8}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v3, 0x7f090003

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_0
    :goto_0
    const v3, 0x7f090007

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    new-instance v4, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$4;

    invoke-direct {v4, p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$4;-><init>(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->handler:Landroid/os/Handler;

    .line 94
    const/16 v3, 0xa

    iput v3, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    .line 96
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 97
    .local v1, state:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 98
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1           #state:Ljava/io/BufferedReader;
    :goto_1
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->tick()V

    .line 103
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/jjcgames/android/airhockey/StagingActivity;->isMultitouchPossiblyAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p0, v8}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, testMultitouch:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    new-instance v3, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$3;

    invoke-direct {v3, p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$3;-><init>(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V

    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 100
    .end local v2           #testMultitouch:Landroid/view/View;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 99
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 126
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    .line 130
    :cond_0
    iget v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    if-gtz v0, :cond_1

    .line 131
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 133
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const-string v2, "\n"

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    iget-boolean v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z

    if-nez v2, :cond_0

    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateWriter(Landroid/content/Context;)Ljava/io/Writer;

    move-result-object v1

    .line 113
    .local v1, state:Ljava/io/Writer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    iget v3, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #state:Ljava/io/Writer;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 117
    .local v0, e:Ljava/io/IOException;
    const-string v2, "state"

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z

    goto :goto_0
.end method
