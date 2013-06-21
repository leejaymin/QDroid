.class public Lcom/rafalduraj/crash/Crash;
.super Landroid/app/Activity;
.source "Crash.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private adView:Lcom/google/ads/AdView;

.field private flayout:Landroid/widget/FrameLayout;

.field private l:I

.field private mp:Landroid/media/MediaPlayer;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/rafalduraj/crash/Crash;->l:I

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f070001

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/rafalduraj/crash/Crash;->setContentView(I)V

    .line 41
    invoke-virtual {p0, v4}, Lcom/rafalduraj/crash/Crash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    .line 42
    iget-object v2, p0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/rafalduraj/crash/Crash;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/rafalduraj/crash/Crash;->mp:Landroid/media/MediaPlayer;

    .line 46
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/rafalduraj/crash/Crash;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/rafalduraj/crash/Crash;->vibrator:Landroid/os/Vibrator;

    .line 49
    const-string v0, "a14ec14464c6e5a"

    .line 50
    .local v0, PRIVATE_ID:Ljava/lang/String;
    new-instance v2, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/rafalduraj/crash/Crash;->adView:Lcom/google/ads/AdView;

    .line 54
    invoke-virtual {p0, v4}, Lcom/rafalduraj/crash/Crash;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 57
    .local v1, layout:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/rafalduraj/crash/Crash;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v2, p0, Lcom/rafalduraj/crash/Crash;->adView:Lcom/google/ads/AdView;

    new-instance v3, Lcom/google/ads/AdRequest;

    invoke-direct {v3}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 126
    invoke-virtual {p0}, Lcom/rafalduraj/crash/Crash;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 128
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rafalduraj/crash/Crash;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "element"

    .prologue
    const/4 v4, 0x1

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 151
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 137
    :pswitch_0
    const-string v3, "http://rafalduraj.wordpress.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, adress:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .local v1, browser:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/rafalduraj/crash/Crash;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 140
    goto :goto_0

    .line 143
    .end local v0           #adress:Landroid/net/Uri;
    .end local v1           #browser:Landroid/content/Intent;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/rafalduraj/crash/informacje;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v2, info:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/rafalduraj/crash/Crash;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 145
    goto :goto_0

    .line 148
    .end local v2           #info:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/rafalduraj/crash/Crash;->finish()V

    move v3, v4

    .line 149
    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x7f070002
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "v"
    .parameter "event"

    .prologue
    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 71
    .local v17, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 73
    .local v18, y:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v19

    const-wide/high16 v21, 0x401c

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move v14, v0

    .line 75
    .local v14, test:I
    packed-switch v14, :pswitch_data_0

    .line 107
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->vibrator:Landroid/os/Vibrator;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v19 .. v21}, Landroid/os/Vibrator;->vibrate(J)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->mp:Landroid/media/MediaPlayer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->start()V

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rafalduraj/crash/Crash;->l:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rafalduraj/crash/Crash;->l:I

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rafalduraj/crash/Crash;->l:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 112
    .local v12, context:Landroid/content/Context;
    const-string v15, "You destroyed your screen!"

    .line 113
    .local v15, text:Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 115
    .local v13, duration:I
    invoke-static {v12, v15, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 116
    .local v16, toast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->finish()V

    .line 120
    .end local v12           #context:Landroid/content/Context;
    .end local v13           #duration:I
    .end local v15           #text:Ljava/lang/CharSequence;
    .end local v16           #toast:Landroid/widget/Toast;
    :cond_0
    const/16 v19, 0x0

    return v19

    .line 77
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f02

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 78
    .local v5, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/rafalduraj/crash/Dot;

    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getParent()Landroid/app/Activity;

    move-result-object v21

    const/high16 v22, 0x428a

    sub-float v22, v17, v22

    const/high16 v23, 0x42e0

    sub-float v23, v18, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rafalduraj/crash/Dot;-><init>(Landroid/content/Context;FFLandroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 81
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020001

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 82
    .local v6, bitmap1:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/rafalduraj/crash/Dot;

    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getParent()Landroid/app/Activity;

    move-result-object v21

    const/high16 v22, 0x42e2

    sub-float v22, v17, v22

    const/high16 v23, 0x42cc

    sub-float v23, v18, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rafalduraj/crash/Dot;-><init>(Landroid/content/Context;FFLandroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 85
    .end local v6           #bitmap1:Landroid/graphics/Bitmap;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020002

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 86
    .local v7, bitmap2:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/rafalduraj/crash/Dot;

    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getParent()Landroid/app/Activity;

    move-result-object v21

    const/high16 v22, 0x4296

    sub-float v22, v17, v22

    const/high16 v23, 0x4306

    sub-float v23, v18, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rafalduraj/crash/Dot;-><init>(Landroid/content/Context;FFLandroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 89
    .end local v7           #bitmap2:Landroid/graphics/Bitmap;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020003

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 90
    .local v8, bitmap3:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/rafalduraj/crash/Dot;

    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getParent()Landroid/app/Activity;

    move-result-object v21

    const/high16 v22, 0x42b6

    sub-float v22, v17, v22

    const/high16 v23, 0x42c6

    sub-float v23, v18, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rafalduraj/crash/Dot;-><init>(Landroid/content/Context;FFLandroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 93
    .end local v8           #bitmap3:Landroid/graphics/Bitmap;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020004

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 94
    .local v9, bitmap4:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/rafalduraj/crash/Dot;

    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getParent()Landroid/app/Activity;

    move-result-object v21

    const/high16 v22, 0x42ac

    sub-float v22, v17, v22

    const/high16 v23, 0x42a8

    sub-float v23, v18, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rafalduraj/crash/Dot;-><init>(Landroid/content/Context;FFLandroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 97
    .end local v9           #bitmap4:Landroid/graphics/Bitmap;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020005

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 98
    .local v10, bitmap5:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/rafalduraj/crash/Dot;

    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getParent()Landroid/app/Activity;

    move-result-object v21

    const/high16 v22, 0x42c0

    sub-float v22, v17, v22

    const/high16 v23, 0x42e0

    sub-float v23, v18, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rafalduraj/crash/Dot;-><init>(Landroid/content/Context;FFLandroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 101
    .end local v10           #bitmap5:Landroid/graphics/Bitmap;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020007

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 102
    .local v11, bitmap6:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rafalduraj/crash/Crash;->flayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/rafalduraj/crash/Dot;

    invoke-virtual/range {p0 .. p0}, Lcom/rafalduraj/crash/Crash;->getParent()Landroid/app/Activity;

    move-result-object v21

    const/high16 v22, 0x42d8

    sub-float v22, v17, v22

    const/high16 v23, 0x42be

    sub-float v23, v18, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rafalduraj/crash/Dot;-><init>(Landroid/content/Context;FFLandroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
