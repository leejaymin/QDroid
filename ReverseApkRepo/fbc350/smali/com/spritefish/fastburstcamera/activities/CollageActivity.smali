.class public Lcom/spritefish/fastburstcamera/activities/CollageActivity;
.super Landroid/app/Activity;
.source "CollageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;
    }
.end annotation


# instance fields
.field private burstId:J

.field private cc:Lcom/spritefish/fastburstcamera/collage/CollageCreator;

.field private imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

.field progressDialog:Landroid/app/ProgressDialog;

.field private selectedEffect:Lcom/spritefish/fastburstcamera/collage/effects/Effect;

.field private selectedLayout:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field private usedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->usedBitmap:Landroid/graphics/Bitmap;

    .line 52
    new-instance v0, Lcom/spritefish/fastburstcamera/collage/effects/NoneEffect;

    invoke-direct {v0}, Lcom/spritefish/fastburstcamera/collage/effects/NoneEffect;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedEffect:Lcom/spritefish/fastburstcamera/collage/effects/Effect;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->usedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->usedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedLayout:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/collage/CollageCreator;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->cc:Lcom/spritefish/fastburstcamera/collage/CollageCreator;

    return-object v0
.end method

.method static synthetic access$5(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/collage/effects/Effect;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedEffect:Lcom/spritefish/fastburstcamera/collage/effects/Effect;

    return-object v0
.end method

.method static synthetic access$6(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Lcom/spritefish/fastburstcamera/collage/effects/Effect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedEffect:Lcom/spritefish/fastburstcamera/collage/effects/Effect;

    return-void
.end method

.method static synthetic access$7(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->applyLayout(Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;)V

    return-void
.end method

.method private applyLayout(Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedLayout:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

    .line 195
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 61
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v9, 0x3f80

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 62
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 65
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v9, :cond_0

    .line 66
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v10, "ViewImageStart"

    invoke-virtual {v9, v10}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    const-string v9, "layout"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

    .line 72
    .local v3, l:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    if-eqz v3, :cond_1

    .line 73
    iput-object v3, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedLayout:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

    .line 76
    .end local v3           #l:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;
    :cond_1
    new-instance v1, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const v9, 0x7f030013

    :try_start_0
    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->setContentView(I)V

    .line 80
    const v9, 0x7f0d005f

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iput-object v9, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    .line 81
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "burstid"

    const-wide/16 v11, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->burstId:J

    .line 83
    iget-wide v9, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->burstId:J

    invoke-virtual {v1, v9, v10}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v6

    .line 85
    .local v6, pictures:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    new-instance v9, Lcom/spritefish/fastburstcamera/collage/CollageCreator;

    invoke-direct {v9, v6}, Lcom/spritefish/fastburstcamera/collage/CollageCreator;-><init>(Ljava/util/List;)V

    iput-object v9, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->cc:Lcom/spritefish/fastburstcamera/collage/CollageCreator;

    .line 87
    new-instance v8, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)V

    .line 88
    .local v8, t:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Void;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    const v9, 0x7f0d0063

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 92
    .local v2, effectButton:Landroid/widget/ImageButton;
    new-instance v9, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;

    invoke-direct {v9, p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v9, 0x7f0d0062

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 127
    .local v4, layoutButton:Landroid/widget/ImageButton;
    new-instance v9, Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;

    invoke-direct {v9, p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$2;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v9, 0x7f0d0061

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 161
    .local v0, button:Landroid/widget/ImageButton;
    new-instance v9, Lcom/spritefish/fastburstcamera/activities/CollageActivity$3;

    invoke-direct {v9, p0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$3;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0           #button:Landroid/widget/ImageButton;
    .end local v2           #effectButton:Landroid/widget/ImageButton;
    .end local v4           #layoutButton:Landroid/widget/ImageButton;
    .end local v6           #pictures:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    .end local v8           #t:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v7

    .line 181
    .local v7, t:Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->handleMemoryError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 201
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "layout"

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedLayout:Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    return-void
.end method
