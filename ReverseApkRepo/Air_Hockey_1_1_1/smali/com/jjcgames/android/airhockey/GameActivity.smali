.class public Lcom/jjcgames/android/airhockey/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjcgames/android/airhockey/GameActivity$Finisher;
    }
.end annotation


# instance fields
.field private gameView:Lcom/jjcgames/android/airhockey/GameView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/GameActivity;)Lcom/jjcgames/android/airhockey/GameView;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity;->gameView:Lcom/jjcgames/android/airhockey/GameView;

    return-object v0
.end method

.method private userPause()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity;->gameView:Lcom/jjcgames/android/airhockey/GameView;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/GameView;->userPause()V

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 66
    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    const v1, 0x7f070029

    .line 68
    new-instance v2, Lcom/jjcgames/android/airhockey/GameActivity$1;

    invoke-direct {v2, p0}, Lcom/jjcgames/android/airhockey/GameActivity$1;-><init>(Lcom/jjcgames/android/airhockey/GameActivity;)V

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 76
    const v1, 0x7f07002a

    .line 77
    new-instance v2, Lcom/jjcgames/android/airhockey/GameActivity$2;

    invoke-direct {v2, p0}, Lcom/jjcgames/android/airhockey/GameActivity$2;-><init>(Lcom/jjcgames/android/airhockey/GameActivity;)V

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/jjcgames/android/airhockey/GameActivity$3;

    invoke-direct {v1, p0}, Lcom/jjcgames/android/airhockey/GameActivity$3;-><init>(Lcom/jjcgames/android/airhockey/GameActivity;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jjcgames/android/airhockey/GameActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 45
    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/GameActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    new-instance v0, Lcom/jjcgames/android/airhockey/GameView;

    new-instance v2, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;

    invoke-direct {v2, p0}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;-><init>(Lcom/jjcgames/android/airhockey/GameActivity;)V

    .line 47
    iget v3, v6, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v6, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jjcgames/android/airhockey/GameView;-><init>(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;FFLandroid/content/Intent;)V

    .line 46
    iput-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity;->gameView:Lcom/jjcgames/android/airhockey/GameView;

    .line 48
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity;->gameView:Lcom/jjcgames/android/airhockey/GameView;

    invoke-virtual {p0, v0}, Lcom/jjcgames/android/airhockey/GameActivity;->setContentView(Landroid/view/View;)V

    .line 49
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jjcgames/android/airhockey/GameActivity;->setVolumeControlStream(I)V

    .line 52
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/GameActivity;->userPause()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 110
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/GameActivity;->userPause()V

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity;->gameView:Lcom/jjcgames/android/airhockey/GameView;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/GameView;->onPause()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity;->gameView:Lcom/jjcgames/android/airhockey/GameView;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/GameView;->onResume()V

    .line 99
    return-void
.end method
