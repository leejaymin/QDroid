.class public Lcom/jjcgames/android/airhockey/StagingActivity;
.super Landroid/app/Activity;
.source "StagingActivity.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final speedFormat:Ljava/lang/String; = "%.01f"


# instance fields
.field private cpuLevel:I

.field private movingOn:Z

.field private multitouch:Z

.field private playerID:I

.field private prefs:Landroid/content/SharedPreferences;

.field private twoPlayer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/jjcgames/android/airhockey/StagingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jjcgames/android/airhockey/StagingActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jjcgames/android/airhockey/StagingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jjcgames/android/airhockey/StagingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    return v0
.end method

.method static synthetic access$3(Lcom/jjcgames/android/airhockey/StagingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getMatchGames()I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/jjcgames/android/airhockey/StagingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I

    return v0
.end method

.method static synthetic access$5(Lcom/jjcgames/android/airhockey/StagingActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jjcgames/android/airhockey/StagingActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    return-void
.end method

.method private getMatchGames()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RadioGroup;

    .line 70
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    sget-boolean v0, Lcom/jjcgames/android/airhockey/StagingActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 75
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 77
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 79
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static isMultitouchDefinitelyAvailable()Z
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/jjcgames/android/airhockey/StagingActivity;->isMultitouchPossiblyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "sholes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 53
    goto :goto_0
.end method

.method static isMultitouchPossiblyAvailable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, m:Z
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 39
    :goto_0
    if-eqz v1, :cond_2

    .line 40
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 42
    .local v0, device:Ljava/lang/String;
    const-string v2, "dream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const-string v2, "sapphire"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const-string v2, "hero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    .line 49
    .end local v0           #device:Ljava/lang/String;
    :goto_1
    return v2

    :cond_1
    move v1, v4

    .line 36
    goto :goto_0

    :cond_2
    move v2, v1

    .line 49
    goto :goto_1

    .line 37
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 92
    .local v14, extras:Landroid/os/Bundle;
    if-eqz v14, :cond_5

    .line 93
    const-string v4, "players"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    .line 94
    const-string v4, "player_id"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I

    .line 115
    :cond_0
    :goto_1
    const-string v4, "state"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->deleteFile(Ljava/lang/String;)Z

    .line 118
    const-string v4, "prefs"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/jjcgames/android/airhockey/StagingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    .line 120
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->requestWindowFeature(I)Z

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 122
    const v4, 0x7f030007

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->setContentView(I)V

    .line 125
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    move v4, v0

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/jjcgames/android/airhockey/StagingActivity;->isMultitouchPossiblyAvailable()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 127
    .local v16, multitouchPossible:Z
    :goto_2
    invoke-static {}, Lcom/jjcgames/android/airhockey/StagingActivity;->isMultitouchDefinitelyAvailable()Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z

    .line 128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    move-object v4, v0

    const-string v5, "multitouch"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z

    .line 131
    :cond_1
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z

    move v4, v0

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    move-object v4, v0

    const-string v5, "multitouch"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    const v4, 0x7f090028

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 133
    .local v20, retestMultitouch:Landroid/view/View;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    new-instance v4, Lcom/jjcgames/android/airhockey/StagingActivity$1;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity$1;-><init>(Lcom/jjcgames/android/airhockey/StagingActivity;)V

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .end local v20           #retestMultitouch:Landroid/view/View;
    :cond_2
    new-instance v17, Lcom/jjcgames/android/airhockey/StagingActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity$2;-><init>(Lcom/jjcgames/android/airhockey/StagingActivity;)V

    .line 161
    .local v17, occl:Landroid/widget/RadioGroup$OnCheckedChangeListener;
    const v4, 0x7f090023

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RadioGroup;

    .line 162
    .local v19, puckSpeedGroup:Landroid/widget/RadioGroup;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 164
    const v4, 0x7f090024

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 166
    const v4, 0x7f090027

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 167
    .local v21, startMatch:Landroid/widget/Button;
    new-instance v4, Lcom/jjcgames/android/airhockey/StagingActivity$3;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/StagingActivity$3;-><init>(Lcom/jjcgames/android/airhockey/StagingActivity;Z)V

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 226
    .local v11, d:Landroid/view/Display;
    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f0ccccd

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e3851ec

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 227
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 225
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 230
    .local v3, scoreboard:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .local v10, c:Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 233
    .local v18, p:Landroid/graphics/Paint;
    const/4 v4, -0x1

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 235
    const/high16 v4, -0x1

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x5

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 238
    const v4, 0x7f090029

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    move v4, v0

    if-eqz v4, :cond_3

    .line 241
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    .local v8, rotate:Landroid/graphics/Matrix;
    const/high16 v4, 0x4334

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 243
    const v4, 0x7f09001b

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 245
    .local v15, iv:Landroid/widget/ImageView;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 246
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 244
    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    .end local v8           #rotate:Landroid/graphics/Matrix;
    .end local v15           #iv:Landroid/widget/ImageView;
    :cond_3
    const v4, 0x7f090029

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 252
    const v4, 0x7f09001b

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 254
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Button;->requestFocus()Z

    .line 255
    return-void

    .line 93
    .end local v3           #scoreboard:Landroid/graphics/Bitmap;
    .end local v10           #c:Landroid/graphics/Canvas;
    .end local v11           #d:Landroid/view/Display;
    .end local v16           #multitouchPossible:Z
    .end local v17           #occl:Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .end local v18           #p:Landroid/graphics/Paint;
    .end local v19           #puckSpeedGroup:Landroid/widget/RadioGroup;
    .end local v21           #startMatch:Landroid/widget/Button;
    .restart local p1
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 96
    :cond_5
    const/4 v12, 0x0

    .line 98
    .local v12, defaults:Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/Game;->stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v22

    .line 99
    .local v22, state:Ljava/io/BufferedReader;
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 100
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_3
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    .line 101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    move v4, v0

    if-nez v4, :cond_6

    .line 102
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    .end local v22           #state:Ljava/io/BufferedReader;
    :cond_6
    :goto_4
    if-eqz v12, :cond_0

    .line 112
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    goto/16 :goto_1

    .line 100
    .restart local v22       #state:Ljava/io/BufferedReader;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 104
    .end local v22           #state:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 105
    .local v13, e:Ljava/lang/NullPointerException;
    const/4 v12, 0x1

    goto :goto_4

    .line 106
    .end local v13           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    move-object v13, v4

    .line 107
    .local v13, e:Ljava/io/IOException;
    const/4 v12, 0x1

    goto :goto_4

    .line 108
    .end local v13           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v13, v4

    .line 109
    .local v13, e:Ljava/lang/NumberFormatException;
    const/4 v12, 0x1

    goto :goto_4

    .line 125
    .end local v12           #defaults:Z
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :cond_8
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 259
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    .line 262
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v3, "\n"

    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 269
    iget-boolean v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    if-nez v3, :cond_2

    .line 271
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateWriter(Landroid/content/Context;)Ljava/io/Writer;

    move-result-object v2

    .line 273
    .local v2, state:Ljava/io/Writer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 274
    iget-boolean v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-eqz v4, :cond_1

    const-string v4, "2"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 275
    iget-boolean v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-nez v3, :cond_0

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v2           #state:Ljava/io/Writer;
    :goto_1
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 286
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "match_games"

    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getMatchGames()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v4, "puck_speed_custom_enabled"

    .line 288
    const v3, 0x7f090023

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 289
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v5, 0x7f090025

    .line 288
    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    .line 287
    :goto_2
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v4, "puck_speed_custom"

    .line 291
    const v3, 0x7f090026

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string v3, "sound"

    .line 293
    const v4, 0x7f090008

    invoke-virtual {p0, v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 292
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void

    .line 274
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #state:Ljava/io/Writer;
    .restart local p0
    :cond_1
    :try_start_1
    const-string v4, "1"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 279
    .end local v2           #state:Ljava/io/Writer;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 280
    .local v0, e:Ljava/io/IOException;
    const-string v3, "state"

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 283
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iput-boolean v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    goto :goto_1

    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    move v3, v6

    .line 288
    goto :goto_2
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 302
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "match_games"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 304
    .local v2, matchGames:I
    packed-switch v2, :pswitch_data_0

    .line 318
    :pswitch_0
    sget-boolean v6, Lcom/jjcgames/android/airhockey/StagingActivity;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 306
    :pswitch_1
    const v3, 0x7f09001e

    .line 322
    .local v3, matchTypeButtonId:I
    :goto_0
    const v6, 0x7f09001d

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    invoke-virtual {v6, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 324
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    .line 325
    const-string v7, "puck_speed_custom_enabled"

    .line 324
    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 326
    .local v0, customSpeed:Z
    const v6, 0x7f090023

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 327
    if-eqz v0, :cond_2

    const v7, 0x7f090025

    .line 326
    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 329
    const v6, 0x7f090008

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 330
    iget-object v7, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "sound"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 329
    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 333
    :try_start_0
    new-instance v6, Lcom/jjcgames/android/airhockey/Player;

    iget v7, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I

    invoke-direct {v6, p0, v7}, Lcom/jjcgames/android/airhockey/Player;-><init>(Landroid/content/Context;I)V

    iget v6, v6, Lcom/jjcgames/android/airhockey/Player;->level:I

    invoke-static {v6}, Lcom/jjcgames/android/airhockey/Game;->opponentLevel(I)I

    move-result v6

    iput v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_2
    iget-boolean v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-nez v6, :cond_0

    .line 340
    const v6, 0x7f090015

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 341
    .local v4, opponentLevel:Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    const v6, 0x7f070018

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/jjcgames/android/airhockey/StagingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 342
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const v6, 0x7f09001c

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 347
    .local v5, puckSpeedBanner:Landroid/widget/TextView;
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    const v6, 0x7f070019

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    invoke-static {v8}, Lcom/jjcgames/android/airhockey/Game;->puckSpeed(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/jjcgames/android/airhockey/StagingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .end local v4           #opponentLevel:Landroid/widget/TextView;
    .end local v5           #puckSpeedBanner:Landroid/widget/TextView;
    :cond_0
    const v6, 0x7f090026

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 353
    iget-object v7, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "puck_speed_custom"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 352
    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    const v6, 0x7f090022

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 360
    iget-boolean v7, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-eqz v7, :cond_6

    move v7, v10

    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 361
    return-void

    .line 309
    .end local v0           #customSpeed:Z
    .end local v3           #matchTypeButtonId:I
    :pswitch_2
    const v3, 0x7f09001f

    .line 310
    .restart local v3       #matchTypeButtonId:I
    goto/16 :goto_0

    .line 312
    .end local v3           #matchTypeButtonId:I
    :pswitch_3
    const v3, 0x7f090020

    .line 313
    .restart local v3       #matchTypeButtonId:I
    goto/16 :goto_0

    .line 315
    .end local v3           #matchTypeButtonId:I
    :pswitch_4
    const v3, 0x7f090021

    .line 316
    .restart local v3       #matchTypeButtonId:I
    goto/16 :goto_0

    .line 319
    .end local v3           #matchTypeButtonId:I
    :cond_1
    const v3, 0x7f09001e

    .restart local v3       #matchTypeButtonId:I
    goto/16 :goto_0

    .line 327
    .restart local v0       #customSpeed:Z
    :cond_2
    const v7, 0x7f090024

    goto/16 :goto_1

    .line 334
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 335
    .local v1, e:Ljava/io/IOException;
    iput v9, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    goto/16 :goto_2

    .line 354
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    const-string v7, "%.01f"

    new-array v8, v9, [Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z

    if-eqz v9, :cond_4

    .line 355
    const v9, 0x40466666

    .line 357
    :goto_5
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 354
    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 356
    :cond_4
    const/high16 v9, 0x4000

    goto :goto_5

    .line 357
    :cond_5
    iget v9, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    invoke-static {v9}, Lcom/jjcgames/android/airhockey/Game;->puckSpeed(I)F

    move-result v9

    goto :goto_5

    .line 360
    :cond_6
    const/16 v7, 0x8

    goto :goto_4

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
