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

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jjcgames/android/airhockey/StagingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    return v0
.end method

.method static synthetic access$2(Lcom/jjcgames/android/airhockey/StagingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getMatchGames()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/jjcgames/android/airhockey/StagingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I

    return v0
.end method

.method static synthetic access$4(Lcom/jjcgames/android/airhockey/StagingActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    return-void
.end method

.method private getMatchGames()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RadioGroup;

    .line 45
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    sget-boolean v0, Lcom/jjcgames/android/airhockey/StagingActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move v0, v1

    .line 57
    :goto_0
    return v0

    .line 50
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 52
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 54
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x7f080018
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 67
    .local v15, extras:Landroid/os/Bundle;
    if-eqz v15, :cond_3

    .line 68
    const-string v5, "players"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    .line 69
    const-string v5, "player_id"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I

    .line 90
    :cond_0
    :goto_1
    const-string v5, "state"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->deleteFile(Ljava/lang/String;)Z

    .line 93
    const-string v5, "prefs"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/jjcgames/android/airhockey/StagingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    .line 95
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 97
    const v5, 0x7f030006

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->setContentView(I)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 100
    .local v12, d:Landroid/view/Display;
    const v5, 0x7f080001

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 101
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    const-string v7, "interfacebackground"

    const/4 v8, 0x0

    .line 103
    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_6

    const/4 v9, 0x1

    .line 101
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    new-instance v17, Lcom/jjcgames/android/airhockey/StagingActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity$1;-><init>(Lcom/jjcgames/android/airhockey/StagingActivity;)V

    .line 122
    .local v17, occl:Landroid/widget/RadioGroup$OnCheckedChangeListener;
    const v5, 0x7f08001d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RadioGroup;

    .line 123
    .local v19, puckSpeedGroup:Landroid/widget/RadioGroup;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 125
    const v5, 0x7f08001e

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 127
    const v5, 0x7f080021

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 128
    .local v20, startMatch:Landroid/widget/Button;
    new-instance v5, Lcom/jjcgames/android/airhockey/StagingActivity$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity$2;-><init>(Lcom/jjcgames/android/airhockey/StagingActivity;)V

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 177
    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f0ccccd

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3e3851ec

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 178
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 176
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 181
    .local v4, scoreboard:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v11, c:Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 184
    .local v18, p:Landroid/graphics/Paint;
    const/4 v5, -0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 186
    const/high16 v5, -0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    const/4 v9, 0x5

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 189
    const v5, 0x7f080022

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 192
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    .local v9, rotate:Landroid/graphics/Matrix;
    const/high16 v5, 0x4334

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 194
    const v5, 0x7f080015

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 196
    .local v16, iv:Landroid/widget/ImageView;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 197
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 195
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    .end local v9           #rotate:Landroid/graphics/Matrix;
    .end local v16           #iv:Landroid/widget/ImageView;
    :cond_1
    const v5, 0x7f080022

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 203
    const v5, 0x7f080015

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->requestFocus()Z

    .line 206
    return-void

    .line 68
    .end local v4           #scoreboard:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v12           #d:Landroid/view/Display;
    .end local v17           #occl:Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .end local v18           #p:Landroid/graphics/Paint;
    .end local v19           #puckSpeedGroup:Landroid/widget/RadioGroup;
    .end local v20           #startMatch:Landroid/widget/Button;
    .restart local p1
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 71
    :cond_3
    const/4 v13, 0x0

    .line 73
    .local v13, defaults:Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/Game;->stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v21

    .line 74
    .local v21, state:Ljava/io/BufferedReader;
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 75
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    :goto_3
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    .line 76
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 77
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    .end local v21           #state:Ljava/io/BufferedReader;
    :cond_4
    :goto_4
    if-eqz v13, :cond_0

    .line 87
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    goto/16 :goto_1

    .line 75
    .restart local v21       #state:Ljava/io/BufferedReader;
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 79
    .end local v21           #state:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 80
    .local v14, e:Ljava/lang/NullPointerException;
    const/4 v13, 0x1

    goto :goto_4

    .line 81
    .end local v14           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    move-object v14, v5

    .line 82
    .local v14, e:Ljava/io/IOException;
    const/4 v13, 0x1

    goto :goto_4

    .line 83
    .end local v14           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v14, v5

    .line 84
    .local v14, e:Ljava/lang/NumberFormatException;
    const/4 v13, 0x1

    goto :goto_4

    .line 103
    .end local v13           #defaults:Z
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #d:Landroid/view/Display;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 210
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    .line 213
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

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    iget-boolean v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    if-nez v3, :cond_2

    .line 222
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateWriter(Landroid/content/Context;)Ljava/io/Writer;

    move-result-object v2

    .line 224
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

    .line 225
    iget-boolean v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-eqz v4, :cond_1

    const-string v4, "2"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 226
    iget-boolean v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-nez v3, :cond_0

    .line 227
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

    .line 229
    :cond_0
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v2           #state:Ljava/io/Writer;
    :goto_1
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 237
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "match_games"

    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/StagingActivity;->getMatchGames()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v4, "puck_speed_custom_enabled"

    .line 239
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 240
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v5, 0x7f08001f

    .line 239
    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    .line 238
    :goto_2
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v4, "puck_speed_custom"

    .line 242
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v3, "sound"

    .line 244
    const v4, 0x7f080004

    invoke-virtual {p0, v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 243
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    return-void

    .line 225
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #state:Ljava/io/Writer;
    .restart local p0
    :cond_1
    :try_start_1
    const-string v4, "1"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 230
    .end local v2           #state:Ljava/io/Writer;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 231
    .local v0, e:Ljava/io/IOException;
    const-string v3, "state"

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 234
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iput-boolean v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z

    goto :goto_1

    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    move v3, v6

    .line 239
    goto :goto_2
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 253
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "match_games"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 255
    .local v2, matchGames:I
    packed-switch v2, :pswitch_data_0

    .line 269
    :pswitch_0
    sget-boolean v6, Lcom/jjcgames/android/airhockey/StagingActivity;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 257
    :pswitch_1
    const v3, 0x7f080018

    .line 273
    .local v3, matchTypeButtonId:I
    :goto_0
    const v6, 0x7f080017

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    invoke-virtual {v6, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 275
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    .line 276
    const-string v7, "puck_speed_custom_enabled"

    .line 275
    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 277
    .local v0, customSpeed:Z
    const v6, 0x7f08001d

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 278
    if-eqz v0, :cond_2

    const v7, 0x7f08001f

    .line 277
    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 280
    const v6, 0x7f080004

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 281
    iget-object v7, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "sound"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 280
    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
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

    .line 289
    :goto_2
    iget-boolean v6, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-nez v6, :cond_0

    .line 291
    const v6, 0x7f08000e

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 292
    .local v4, opponentLevel:Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    const v6, 0x7f060018

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/jjcgames/android/airhockey/StagingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const v6, 0x7f080016

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 298
    .local v5, puckSpeedBanner:Landroid/widget/TextView;
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    const v6, 0x7f060019

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    invoke-static {v8}, Lcom/jjcgames/android/airhockey/Game;->puckSpeed(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/jjcgames/android/airhockey/StagingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .end local v4           #opponentLevel:Landroid/widget/TextView;
    .end local v5           #puckSpeedBanner:Landroid/widget/TextView;
    :cond_0
    const v6, 0x7f080020

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 304
    iget-object v7, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "puck_speed_custom"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 303
    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const v6, 0x7f08001c

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 310
    iget-boolean v7, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-eqz v7, :cond_5

    move v7, v10

    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 311
    return-void

    .line 260
    .end local v0           #customSpeed:Z
    .end local v3           #matchTypeButtonId:I
    :pswitch_2
    const v3, 0x7f080019

    .line 261
    .restart local v3       #matchTypeButtonId:I
    goto/16 :goto_0

    .line 263
    .end local v3           #matchTypeButtonId:I
    :pswitch_3
    const v3, 0x7f08001a

    .line 264
    .restart local v3       #matchTypeButtonId:I
    goto/16 :goto_0

    .line 266
    .end local v3           #matchTypeButtonId:I
    :pswitch_4
    const v3, 0x7f08001b

    .line 267
    .restart local v3       #matchTypeButtonId:I
    goto/16 :goto_0

    .line 270
    .end local v3           #matchTypeButtonId:I
    :cond_1
    const v3, 0x7f080018

    .restart local v3       #matchTypeButtonId:I
    goto/16 :goto_0

    .line 278
    .restart local v0       #customSpeed:Z
    :cond_2
    const v7, 0x7f08001e

    goto/16 :goto_1

    .line 285
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 286
    .local v1, e:Ljava/io/IOException;
    iput v9, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    goto/16 :goto_2

    .line 305
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    const-string v7, "%.01f"

    new-array v8, v9, [Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z

    if-eqz v9, :cond_4

    .line 306
    const/high16 v9, 0x4000

    .line 307
    :goto_5
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 305
    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 307
    :cond_4
    iget v9, p0, Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I

    invoke-static {v9}, Lcom/jjcgames/android/airhockey/Game;->puckSpeed(I)F

    move-result v9

    goto :goto_5

    .line 310
    :cond_5
    const/16 v7, 0x8

    goto :goto_4

    .line 255
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
