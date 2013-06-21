.class public Lcom/battlesheep/marblebox/activities/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final MARKET_URI:Ljava/lang/String; = "market://search?q=pub:\"Battlesheep labs\""


# instance fields
.field private mHelpOnClickListener:Landroid/view/View$OnClickListener;

.field private mHighscoresOnClickListener:Landroid/view/View$OnClickListener;

.field private mLevelBackOnClickListener:Landroid/view/View$OnClickListener;

.field private mLevelDifficultOnClickListener:Landroid/view/View$OnClickListener;

.field private mLevelEasyOnClickListener:Landroid/view/View$OnClickListener;

.field private mLevelNormalOnClickListener:Landroid/view/View$OnClickListener;

.field private mMoreGamesOnClickListener:Landroid/view/View$OnClickListener;

.field private mSettingsOnClickListener:Landroid/view/View$OnClickListener;

.field private mStartGameOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$1;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mStartGameOnClickListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$2;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mHighscoresOnClickListener:Landroid/view/View$OnClickListener;

    .line 169
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$3;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mSettingsOnClickListener:Landroid/view/View$OnClickListener;

    .line 179
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$4;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mHelpOnClickListener:Landroid/view/View$OnClickListener;

    .line 189
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$5;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mMoreGamesOnClickListener:Landroid/view/View$OnClickListener;

    .line 199
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$6;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mLevelEasyOnClickListener:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$7;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mLevelNormalOnClickListener:Landroid/view/View$OnClickListener;

    .line 219
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$8;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mLevelDifficultOnClickListener:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v0, Lcom/battlesheep/marblebox/activities/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/MainActivity$9;-><init>(Lcom/battlesheep/marblebox/activities/MainActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mLevelBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/battlesheep/marblebox/activities/MainActivity;Lcom/battlesheep/marblebox/LevelParameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/battlesheep/marblebox/activities/MainActivity;->startGame(Lcom/battlesheep/marblebox/LevelParameters;)V

    return-void
.end method

.method private animateLogo()V
    .locals 5

    .prologue
    .line 106
    const v4, 0x7f040002

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 107
    .local v1, logoAnim:Landroid/view/animation/Animation;
    const v4, 0x7f080012

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    .local v0, logo:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    const v4, 0x7f040003

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 112
    .local v3, reflectionAnim:Landroid/view/animation/Animation;
    const v4, 0x7f080013

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 113
    .local v2, reflection:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 114
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method

.method private setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "button"
    .parameter "tf"
    .parameter "handler"

    .prologue
    .line 124
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 126
    const/high16 v0, 0x41a0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 128
    if-eqz p3, :cond_0

    .line 129
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    return-void
.end method

.method private startGame(Lcom/battlesheep/marblebox/LevelParameters;)V
    .locals 4
    .parameter "level"

    .prologue
    .line 268
    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 269
    .local v0, levelLayout:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    sput-object p1, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    .line 273
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/battlesheep/marblebox/activities/GameActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v1, startIntent:Landroid/content/Intent;
    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 275
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v4, "HS_HISCORE_SCORE"

    const-string v3, "HS_HISCORE_LEVEL"

    .line 251
    const/16 v1, 0x3e8

    if-ne v1, p1, :cond_0

    .line 252
    const/16 v1, 0x1b58

    if-ne v1, p2, :cond_0

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "HS_HISCORE_LEVEL"

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "HS_HISCORE_LEVEL"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "HS_HISCORE_SCORE"

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "HS_HISCORE_SCORE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/battlesheep/marblebox/Highscores;->initialize(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 43
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 44
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 46
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "airstrip.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 49
    .local v0, tf:Landroid/graphics/Typeface;
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mStartGameOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mHighscoresOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mSettingsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mHelpOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mMoreGamesOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mLevelEasyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mLevelNormalOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mLevelDifficultOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/MainActivity;->mLevelBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/battlesheep/marblebox/activities/MainActivity;->setupButton(Landroid/widget/Button;Landroid/graphics/Typeface;Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    invoke-direct {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->animateLogo()V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v7, 0x7f080010

    const/16 v6, 0x8

    .line 69
    const/4 v4, 0x4

    if-ne v4, p1, :cond_0

    .line 70
    invoke-virtual {p0, v7}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v6, v4, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 73
    .local v1, fadeOut:Landroid/view/animation/Animation;
    const v4, 0x7f08001a

    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 74
    .local v2, levelLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 75
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f04

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 80
    .local v0, fadeIn:Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 81
    invoke-virtual {p0, v7}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 82
    .local v3, mainLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 84
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    const/4 v4, 0x1

    .line 89
    .end local v0           #fadeIn:Landroid/view/animation/Animation;
    .end local v1           #fadeOut:Landroid/view/animation/Animation;
    .end local v2           #levelLayout:Landroid/widget/LinearLayout;
    .end local v3           #mainLayout:Landroid/widget/LinearLayout;
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, mainMenu:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    return-void
.end method
