.class public Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;
.super Landroid/app/Activity;
.source "GifSetupActivity.java"


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

.field private selectedMax:J

.field private selectedMin:J

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMin:J

    .line 37
    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMax:J

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->burstId:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMin:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMax:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->updateSelectionText()V

    return-void
.end method

.method static synthetic access$4(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMin:J

    return-void
.end method

.method static synthetic access$5(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMax:J

    return-void
.end method

.method private updateSelectionText()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 41
    const v1, 0x7f0d001a

    invoke-virtual {p0, v1}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, t:Landroid/widget/TextView;
    iget-wide v1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMax:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 43
    const v1, 0x7f0700d4

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->pictures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    const v1, 0x7f0700d5

    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMax:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMin:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "burstid"

    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->burstId:J

    .line 56
    new-instance v13, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 58
    .local v13, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    new-instance v21, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;-><init>(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V

    .line 59
    .local v21, tnm:Lcom/spritefish/fastburstcamera/core/ThumbnailManager;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->burstId:J

    invoke-virtual {v13, v2, v3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getBurst(J)Lcom/spritefish/fastburstcamera/db/dao/Burst;

    move-result-object v11

    .line 60
    .local v11, burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    const/16 v2, 0x190

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v2}, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;->getThumbnailForBurst(Lcom/spritefish/fastburstcamera/db/dao/Burst;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 64
    .local v20, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->burstId:J

    invoke-virtual {v13, v2, v3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->pictures:Ljava/util/List;

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 66
    .local v16, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f80

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 69
    invoke-static/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v2, :cond_0

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v3, "ViewGifSetup"

    invoke-virtual {v2, v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 73
    :cond_0
    const v2, 0x7f03000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->setContentView(I)V

    .line 75
    const v2, 0x7f0d0021

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 76
    .local v15, imgView:Landroid/widget/ImageView;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->updateSelectionText()V

    .line 79
    const v2, 0x7f0d0023

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 80
    .local v6, qualitySpinner:Landroid/widget/Spinner;
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    const v2, 0x7f070036

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v17, v3

    const/4 v3, 0x1

    const v2, 0x7f070035

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v17, v3

    const/4 v3, 0x2

    const v2, 0x7f070034

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v17, v3

    const/4 v3, 0x3

    const v2, 0x7f0700cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v17, v3

    .line 81
    .local v17, qualities:[Ljava/lang/String;
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 82
    .local v8, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v8, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 83
    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    const v2, 0x7f0d0024

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 86
    .local v5, sizeSpinner:Landroid/widget/Spinner;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const v2, 0x7f0700ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v19, v3

    const/4 v3, 0x1

    const v2, 0x7f070035

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v19, v3

    const/4 v3, 0x2

    const v2, 0x7f0700ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v19, v3

    .line 87
    .local v19, sizes:[Ljava/lang/String;
    new-instance v9, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 88
    .local v9, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v9, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 89
    invoke-virtual {v5, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    const v2, 0x7f0d0025

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 92
    .local v7, fpsSpinner:Landroid/widget/Spinner;
    const/4 v2, 0x6

    new-array v14, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v2, 0x7f0700ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v3

    const/4 v3, 0x1

    const v2, 0x7f0700cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v3

    const/4 v3, 0x2

    const v2, 0x7f0700d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v3

    const/4 v3, 0x3

    const v2, 0x7f0700d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v3

    const/4 v3, 0x4

    const v2, 0x7f0700d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v3

    const/4 v3, 0x5

    const v2, 0x7f0700d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v14, v3

    .line 93
    .local v14, fpss:[Ljava/lang/String;
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 94
    .local v10, adapter3:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v10, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 95
    invoke-virtual {v7, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 97
    const v2, 0x7f0d0027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 100
    .local v4, timestretchSpinner:Landroid/widget/Spinner;
    const v2, 0x7f0d0028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 101
    .local v12, createAnimationButton:Landroid/widget/Button;
    new-instance v2, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;-><init>(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v2, 0x7f0d0022

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 124
    .local v18, selectPicturesButton:Landroid/widget/Button;
    new-instance v2, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;-><init>(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method
