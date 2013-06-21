.class public Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
.super Landroid/app/Activity;
.source "GifAnimationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;
    }
.end annotation


# instance fields
.field private burstId:J

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Picture;",
            ">;"
        }
    .end annotation
.end field

.field progressDialog:Landroid/app/ProgressDialog;

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field private usedBitmap:Landroid/graphics/Bitmap;

.field private usedFilePath:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedBitmap:Landroid/graphics/Bitmap;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->pictures:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 65
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v14, 0x3f80

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    invoke-static/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 69
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v14, :cond_0

    .line 70
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v15, "GifAnimationCreate"

    invoke-virtual {v14, v15}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance v2, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 78
    .local v2, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const v14, 0x7f030014

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->setContentView(I)V

    .line 79
    const v14, 0x7f0d0064

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->webView:Landroid/webkit/WebView;

    .line 80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->webView:Landroid/webkit/WebView;

    const/high16 v15, 0x200

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "burstid"

    const-wide/16 v16, -0x1

    invoke-virtual/range {v14 .. v17}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->burstId:J

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "quality"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, quality:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "size"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 86
    .local v10, size:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "min"

    const-wide/16 v16, -0x1

    invoke-virtual/range {v14 .. v17}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 87
    .local v7, min:J
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "max"

    const-wide/16 v16, -0x1

    invoke-virtual/range {v14 .. v17}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 88
    .local v5, max:J
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "framerate"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, framerate:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "timestretch"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, timestretch:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->burstId:J

    invoke-virtual {v2, v14, v15}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->pictures:Ljava/util/List;

    .line 91
    new-instance v13, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;-><init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)V

    .line 92
    .local v13, worker:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->webView:Landroid/webkit/WebView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    .line 93
    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v9, v14, v15

    const/4 v15, 0x3

    aput-object v10, v14, v15

    const/4 v15, 0x4

    aput-object v3, v14, v15

    const/4 v15, 0x5

    aput-object v12, v14, v15

    invoke-virtual {v13, v14}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    const v14, 0x7f0d0061

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 97
    .local v1, button:Landroid/widget/ImageButton;
    new-instance v14, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$1;-><init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)V

    invoke-virtual {v1, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1           #button:Landroid/widget/ImageButton;
    .end local v3           #framerate:Ljava/lang/String;
    .end local v5           #max:J
    .end local v7           #min:J
    .end local v9           #quality:Ljava/lang/String;
    .end local v10           #size:Ljava/lang/String;
    .end local v12           #timestretch:Ljava/lang/String;
    .end local v13           #worker:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Void;>;"
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v11

    .line 111
    .local v11, t:Ljava/lang/Throwable;
    invoke-static {v11}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->handleMemoryError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method
