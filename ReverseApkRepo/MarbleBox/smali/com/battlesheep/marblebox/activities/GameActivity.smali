.class public Lcom/battlesheep/marblebox/activities/GameActivity;
.super Lcom/stickycoding/rokon/RokonActivity;
.source "GameActivity.java"


# static fields
.field private static final WIDTH_BASIS:F = 12.0f


# instance fields
.field private mIsGameOver:Z

.field private mLivesView:Landroid/widget/TextView;

.field private mOverlayFrame:Landroid/widget/RelativeLayout;

.field private mOverlayMessage:Landroid/widget/TextView;

.field private mScoreView:Landroid/widget/TextView;

.field private mSmallOverlayMessage:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mToastMsg:Ljava/lang/String;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/stickycoding/rokon/RokonActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mIsGameOver:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    .line 39
    return-void
.end method

.method private abandonGameConfirmation()V
    .locals 4

    .prologue
    .line 185
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 187
    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 188
    const v2, 0x7f060018

    new-instance v3, Lcom/battlesheep/marblebox/activities/GameActivity$1;

    invoke-direct {v3, p0}, Lcom/battlesheep/marblebox/activities/GameActivity$1;-><init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 195
    const v2, 0x7f060019

    new-instance v3, Lcom/battlesheep/marblebox/activities/GameActivity$2;

    invoke-direct {v3, p0}, Lcom/battlesheep/marblebox/activities/GameActivity$2;-><init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 203
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void
.end method

.method static synthetic access$0(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1(Lcom/battlesheep/marblebox/activities/GameActivity;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/battlesheep/marblebox/activities/GameActivity;->showMessage(IIZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/battlesheep/marblebox/activities/GameActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToastMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/battlesheep/marblebox/activities/GameActivity;Landroid/widget/Toast;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$4(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/graphics/Typeface;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private applyPreferences()V
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/GameScene;->refreshPreferences()V

    .line 364
    invoke-static {}, Lcom/battlesheep/marblebox/SoundFX;->refreshPreferences()V

    .line 365
    return-void
.end method

.method private showMessage(IIZ)V
    .locals 3
    .parameter "msgId"
    .parameter "tapMsgId"
    .parameter "fadeIn"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mSmallOverlayMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayFrame:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    if-eqz p3, :cond_0

    .line 284
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 285
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 286
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 288
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method


# virtual methods
.method public gameOver()V
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mIsGameOver:Z

    .line 240
    const v0, 0x7f060008

    const v1, 0x7f06000b

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->showMessage(IIZ)V

    .line 241
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 244
    :cond_0
    return-void
.end method

.method public getGameScene()Lcom/battlesheep/marblebox/GameScene;
    .locals 0

    .prologue
    .line 110
    invoke-static {}, Lcom/battlesheep/marblebox/activities/GameActivity;->getScene()Lcom/stickycoding/rokon/Scene;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/battlesheep/marblebox/GameScene;

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->resume()V

    .line 318
    sparse-switch p1, :sswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 320
    :sswitch_0
    invoke-static {}, Lcom/stickycoding/rokon/GameThread;->stopThread()V

    .line 321
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->finish()V

    goto :goto_0

    .line 324
    :sswitch_1
    invoke-direct {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->applyPreferences()V

    goto :goto_0

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0xbb8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4140

    .line 64
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 68
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v3, v4

    .line 69
    .local v3, ratio:F
    mul-float v1, v6, v3

    .line 73
    .local v1, height:F
    invoke-static {}, Lcom/battlesheep/marblebox/activities/GameActivity;->debugMode()V

    .line 74
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->forceFullscreen()V

    .line 75
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->forcePortrait()V

    .line 76
    invoke-virtual {p0, v6, v1}, Lcom/battlesheep/marblebox/activities/GameActivity;->setGameSize(FF)F

    .line 77
    invoke-static {v7}, Lcom/battlesheep/marblebox/activities/GameActivity;->setDrawPriority(I)V

    .line 78
    const-string v4, "textures/"

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->setGraphicsPath(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v7}, Lcom/battlesheep/marblebox/activities/GameActivity;->createEngine(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 83
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f03

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getInterface()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    const v4, 0x7f030004

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getInterface()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayFrame:Landroid/widget/RelativeLayout;

    .line 88
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayMessage:Landroid/widget/TextView;

    .line 89
    const v4, 0x7f080022

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mSmallOverlayMessage:Landroid/widget/TextView;

    .line 90
    const v4, 0x7f080001

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mScoreView:Landroid/widget/TextView;

    .line 91
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mLivesView:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "airstrip.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;

    .line 95
    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayMessage:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mSmallOverlayMessage:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mScoreView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v4, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mLivesView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    const v4, 0x7f080003

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    const v4, 0x7f080004

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 105
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->stopListening()V

    .line 106
    invoke-super {p0}, Lcom/stickycoding/rokon/RokonActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 208
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 212
    :cond_0
    iget-boolean v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mIsGameOver:Z

    if-eqz v1, :cond_1

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v0, resultData:Landroid/content/Intent;
    const-string v1, "HS_HISCORE_LEVEL"

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget v3, v3, Lcom/battlesheep/marblebox/LevelParameters;->nameResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v1, "HS_HISCORE_SCORE"

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/GameScene;->getScore()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 216
    const/16 v1, 0x1b58

    invoke-virtual {p0, v1, v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->setResult(ILandroid/content/Intent;)V

    .line 217
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->finish()V

    .line 222
    .end local v0           #resultData:Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    .line 224
    :goto_1
    return v1

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->pause()V

    .line 220
    invoke-direct {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->abandonGameConfirmation()V

    goto :goto_0

    .line 224
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/stickycoding/rokon/RokonActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onLoadComplete()V
    .locals 1

    .prologue
    .line 117
    invoke-static {p0}, Lcom/battlesheep/marblebox/Textures;->load(Landroid/content/Context;)V

    .line 118
    new-instance v0, Lcom/battlesheep/marblebox/GameScene;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene;-><init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->setScene(Lcom/stickycoding/rokon/Scene;)V

    .line 119
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->pause()V

    .line 142
    invoke-super {p0, p1, p2}, Lcom/stickycoding/rokon/RokonActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/RokonActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->abandonGameConfirmation()V

    goto :goto_0

    .line 161
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/battlesheep/marblebox/activities/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/battlesheep/marblebox/activities/GameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 165
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/battlesheep/marblebox/activities/GameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 169
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/battlesheep/marblebox/activities/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1}, Lcom/battlesheep/marblebox/activities/GameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x7f080023
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->resume()V

    .line 136
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/RokonActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 137
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 297
    iget-boolean v1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mIsGameOver:Z

    if-eqz v1, :cond_0

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    .local v0, resultData:Landroid/content/Intent;
    const-string v1, "HS_HISCORE_LEVEL"

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget v3, v3, Lcom/battlesheep/marblebox/LevelParameters;->nameResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v1, "HS_HISCORE_SCORE"

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/GameScene;->getScore()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 301
    const/16 v1, 0x1b58

    invoke-virtual {p0, v1, v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->setResult(ILandroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->finish()V

    .line 306
    .end local v0           #resultData:Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    .line 309
    :goto_1
    return v1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/GameActivity;->resume()V

    goto :goto_0

    .line 309
    :cond_1
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/RokonActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/stickycoding/rokon/GameThread;->pauseGame()V

    .line 251
    invoke-static {}, Lcom/stickycoding/rokon/Time;->pause()V

    .line 252
    new-instance v0, Lcom/battlesheep/marblebox/activities/GameActivity$3;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/GameActivity$3;-><init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Lcom/stickycoding/rokon/Time;->resume()V

    .line 269
    invoke-static {}, Lcom/stickycoding/rokon/GameThread;->resumeGame()V

    .line 270
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mOverlayFrame:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mToastMsg:Ljava/lang/String;

    .line 335
    new-instance v0, Lcom/battlesheep/marblebox/activities/GameActivity$4;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/GameActivity$4;-><init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method

.method public updateLives(I)V
    .locals 2
    .parameter "lives"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mLivesView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public updateScore(J)V
    .locals 2
    .parameter "score"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity;->mScoreView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method
