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
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->tick()V

    return-void
.end method

.method static synthetic access$1(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z

    return-void
.end method

.method private tick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 30
    iget v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    if-gtz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 44
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    .line 35
    new-instance v1, Ljava/text/ChoiceFormat;

    const v2, 0x7f06003e

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    .line 36
    iget v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/ChoiceFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 34
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$1;

    invoke-direct {v1, p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$1;-><init>(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V

    .line 42
    const-wide/16 v2, 0x3e8

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 51
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->setContentView(I)V

    .line 52
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 53
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 54
    const-string v4, "interfacebackground"

    .line 53
    invoke-static {p0, v4, v5, v5}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, b:Landroid/widget/Button;
    const v2, 0x7f060007

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getLocalPrice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v2, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$2;

    invoke-direct {v2, p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$2;-><init>(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->backToTitleScreen:Landroid/widget/TextView;

    new-instance v3, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$3;

    invoke-direct {v3, p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$3;-><init>(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->handler:Landroid/os/Handler;

    .line 76
    const/16 v2, 0xa

    iput v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 79
    .local v1, state:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 80
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1           #state:Ljava/io/BufferedReader;
    :goto_0
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->tick()V

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v2

    goto :goto_0

    .line 81
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 108
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const-string v2, "\n"

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    iget-boolean v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z

    if-nez v2, :cond_0

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateWriter(Landroid/content/Context;)Ljava/io/Writer;

    move-result-object v1

    .line 95
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

    .line 96
    iget v3, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->waitingTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1           #state:Ljava/io/Writer;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 99
    .local v0, e:Ljava/io/IOException;
    const-string v2, "state"

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z

    goto :goto_0
.end method
