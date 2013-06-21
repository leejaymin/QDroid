.class public Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;
.super Landroid/app/Activity;
.source "TwoPlayerInstructionsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 100
    invoke-virtual {p0, p2, p3}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->finish()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 26
    const v6, 0x7f030008

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->setContentView(I)V

    .line 27
    const v6, 0x7f080001

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 28
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    const-string v8, "interfacebackground"

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 28
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    const-string v6, "layout_inflater"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/LayoutInflater;

    .line 33
    const v6, 0x7f030009

    .line 34
    const v7, 0x7f080027

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 35
    const/4 v7, 0x0

    .line 33
    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 40
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 41
    .local v14, d:Landroid/view/Display;
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f733333

    mul-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 42
    .local v19, width:I
    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    const v7, 0x3f7851ec

    mul-float/2addr v6, v7

    float-to-int v15, v6

    .line 45
    .local v15, height:I
    const/high16 v6, 0x4000

    .line 44
    move/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 47
    const/high16 v7, 0x4000

    .line 46
    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 43
    move-object/from16 v0, v18

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 48
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    move v1, v6

    move v2, v7

    move/from16 v3, v19

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 51
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 50
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 52
    .local v5, bitmap:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v12, canvas:Landroid/graphics/Canvas;
    invoke-static {v12}, Lcom/jjcgames/android/airhockey/Game;->drawShadowedBackground(Landroid/graphics/Canvas;)V

    .line 54
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 56
    const v6, 0x7f080028

    .line 55
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 57
    .local v16, p1:Landroid/widget/ImageView;
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 60
    .local v10, m:Landroid/graphics/Matrix;
    const/high16 v6, 0x4334

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 62
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    .line 61
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 65
    const v6, 0x7f080026

    .line 64
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 66
    .local v17, p2:Landroid/widget/ImageView;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    new-instance v13, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity$1;-><init>(Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;)V

    .line 84
    .local v13, clicker:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 93
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;->finish()V

    .line 94
    return-void
.end method
