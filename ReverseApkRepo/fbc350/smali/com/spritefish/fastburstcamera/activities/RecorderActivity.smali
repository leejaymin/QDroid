.class public Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
.super Landroid/app/Activity;
.source "RecorderActivity.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;
.implements Lcom/spritefish/camera/RotationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;,
        Lcom/spritefish/fastburstcamera/activities/RecorderActivity$LightMode;,
        Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;,
        Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;,
        Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;,
        Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation:[I = null

.field protected static final MSF:I = 0x4

.field private static cameraparams:Ljava/lang/String;


# instance fields
.field private appearAnimation:Landroid/view/animation/Animation;

.field private bootLock:Ljava/util/concurrent/locks/Lock;

.field private cancelPreshotButton:Landroid/widget/ImageButton;

.field private cancelPreshotButton2:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

.field private changeCamButton:Landroid/widget/ImageButton;

.field currentBurstId:J

.field currentBurstLastActivity:J

.field currentTag:Ljava/lang/String;

.field dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field private final df:Ljava/text/DecimalFormat;

.field executor:Ljava/util/concurrent/ExecutorService;

.field private exposureButton:Landroid/widget/ImageButton;

.field exposureUsed:I

.field faceBuffer:[I

.field private faceButton:Landroid/widget/ImageButton;

.field faceDetectOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field fastIdx:I

.field private fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

.field private firstPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

.field firstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field flashState:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

.field flashTorchAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

.field focusAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private focusButton:Landroid/widget/ImageButton;

.field private focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

.field focusPressTime:J

.field formatter:Ljava/text/NumberFormat;

.field fps_frames:J

.field fps_since:J

.field private frameLayout:Lcom/spritefish/camera/controls/PreviewFrameLayout;

.field height:I

.field private infoLabel:Landroid/widget/TextView;

.field isBlackWhiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

.field isBufferAnimActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field isFocusOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field isLiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected lastFrame:J

.field lastGreyMap:[B

.field lastPicId:J

.field private lastPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

.field lastPreview:J

.field lastRecordingPressed:J

.field lastSnapshot:J

.field private lastUri:Landroid/net/Uri;

.field private lightButton:Landroid/widget/ImageButton;

.field motionSensitivityValue:I

.field mrec:Landroid/media/MediaRecorder;

.field private okPreshotButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

.field oldAngle:F

.field private onTouch:Landroid/view/View$OnTouchListener;

.field private preShotLayout:Landroid/view/View;

.field private preShotText:Landroid/widget/TextView;

.field private preThumbs:Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;

.field preferences:Landroid/content/SharedPreferences;

.field private prerec:Z

.field private preshotStatusLayout:Landroid/view/View;

.field private preshot_ago:Landroid/widget/TextView;

.field private preshot_photos:Landroid/widget/TextView;

.field private previewControl:Lcom/spritefish/camera/controls/PreviewControl;

.field private progressLayout:Landroid/view/View;

.field private progressText:Landroid/widget/TextView;

.field private queueProgress:Landroid/widget/ProgressBar;

.field recording:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/spritefish/fastburstcamera/activities/RecordMode;",
            ">;"
        }
    .end annotation
.end field

.field recordingStartTime:J

.field private restartIntent:Landroid/app/PendingIntent;

.field rotationManager:Lcom/spritefish/camera/RotationManager;

.field scaledBitmap:Landroid/graphics/Bitmap;

.field scrollDetector:Landroid/view/GestureDetector;

.field private settingsButton:Landroid/widget/ImageButton;

.field shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

.field shotsInCurrentBurst:J

.field sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

.field private snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

.field snapsInRow:Ljava/util/concurrent/atomic/AtomicLong;

.field private soundButton:Landroid/widget/ImageButton;

.field soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field storagePath:Ljava/lang/String;

.field thisGreyMap:[B

.field private thumbView:Landroid/view/View;

.field private topControl:Lcom/spritefish/camera/controls/PreviewTopControl;

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field width:I

.field zoomAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zoomButton:Landroid/widget/ImageButton;

.field zoomLevel:Ljava/util/concurrent/atomic/AtomicLong;

.field zoomMode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;


# direct methods
.method static synthetic $SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/spritefish/camera/RotationManager$Rotation;->values()[Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    const-string v0, ""

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cameraparams:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 154
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->df:Ljava/text/DecimalFormat;

    .line 192
    iput v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastIdx:I

    .line 195
    iput-object v8, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->firstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPreview:J

    .line 205
    iput-wide v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastSnapshot:J

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapsInRow:Ljava/util/concurrent/atomic/AtomicLong;

    .line 212
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;->OFF:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashState:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    .line 213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomLevel:Ljava/util/concurrent/atomic/AtomicLong;

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->faceDetectOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isBufferAnimActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isFocusOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashTorchAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isLiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 228
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isBlackWhiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    iput-wide v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstId:J

    .line 231
    iput-wide v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstLastActivity:J

    .line 232
    iput-wide v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPicId:J

    .line 235
    iput v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->exposureUsed:I

    .line 238
    iput-wide v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recordingStartTime:J

    .line 239
    iput-wide v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    .line 240
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->CONT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentTag:Ljava/lang/String;

    .line 242
    iput v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->motionSensitivityValue:I

    .line 244
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->NO_ACTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomMode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    .line 250
    iput-object v8, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->storagePath:Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;

    .line 261
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->executor:Ljava/util/concurrent/ExecutorService;

    .line 358
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->formatter:Ljava/text/NumberFormat;

    .line 1709
    iput-wide v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_frames:J

    .line 1710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_since:J

    .line 1713
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/FocusMode;->INACTIVE:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    .line 2492
    iput-boolean v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->prerec:Z

    .line 2494
    iput-object v8, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->mrec:Landroid/media/MediaRecorder;

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    return-object v0
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preThumbs:Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;

    return-object v0
.end method

.method static synthetic access$12(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 674
    invoke-static {p0, p1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stringArrayContains(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewFrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->frameLayout:Lcom/spritefish/camera/controls/PreviewFrameLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$15(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$16(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lightButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$17(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    sput-object p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cameraparams:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cameraparams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setPreviewCallback()V

    return-void
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V

    return-void
.end method

.method static synthetic access$20(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateLabel()V

    return-void
.end method

.method static synthetic access$21(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2714
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showLiteStartInfoSpecific(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$24(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2538
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startRecording()V

    return-void
.end method

.method static synthetic access$25(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2670
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopRecording()V

    return-void
.end method

.method static synthetic access$26(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->faceButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$27(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshot()V

    return-void
.end method

.method static synthetic access$28(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    return-object v0
.end method

.method static synthetic access$29(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/activities/FocusMode;
    .locals 1
    .parameter

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    return-object v0
.end method

.method static synthetic access$3(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1701
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateSoundButton()V

    return-void
.end method

.method static synthetic access$30(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/camera/memory/ByteArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2315
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->addToWriteQueue(Lcom/spritefish/camera/memory/ByteArray;)V

    return-void
.end method

.method static synthetic access$31(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    return-object v0
.end method

.method static synthetic access$32(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->appearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-object v0
.end method

.method static synthetic access$6(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/activities/FocusMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    return-void
.end method

.method static synthetic access$7(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewTopControl;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->topControl:Lcom/spritefish/camera/controls/PreviewTopControl;

    return-object v0
.end method

.method static synthetic access$8(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$9(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->firstPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    return-object v0
.end method

.method private addToWriteQueue(Lcom/spritefish/camera/memory/ByteArray;)V
    .locals 1
    .parameter "arr"

    .prologue
    .line 2316
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getWriteQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 2317
    return-void
.end method

.method private cancelPreshot()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-wide v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstId:J

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->deleteBurst(J)Z

    .line 354
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->cancelPreshotBuffers()V

    .line 356
    return-void
.end method

.method private getWriteQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/spritefish/camera/memory/ByteArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2320
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getWriteQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method private initUiControls()V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 689
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "labelprefix"

    const-string v15, ""

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentTag:Ljava/lang/String;

    .line 690
    invoke-direct/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateLabel()V

    .line 691
    const v1, 0x7f0d002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/camera/controls/PreviewFrameLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->frameLayout:Lcom/spritefish/camera/controls/PreviewFrameLayout;

    .line 692
    const v1, 0x7f0d001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/camera/controls/PreviewControl;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->setPreviewControl(Lcom/spritefish/camera/controls/PreviewControl;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/controls/PreviewControl;->setCameraInitializeListener(Lcom/spritefish/camera/controls/CameraInitListener;)V

    .line 976
    new-instance v1, Lcom/spritefish/camera/controls/PreviewTopControl;

    const v2, 0x7f020016

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/spritefish/camera/controls/PreviewTopControl;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->topControl:Lcom/spritefish/camera/controls/PreviewTopControl;

    .line 977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->topControl:Lcom/spritefish/camera/controls/PreviewTopControl;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    const v1, 0x7f0d0040

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->infoLabel:Landroid/widget/TextView;

    .line 986
    const v1, 0x7f0d0044

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 987
    .local v8, labelLayout:Landroid/view/View;
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$10;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    new-instance v14, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;

    invoke-direct {v14}, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;-><init>()V

    .line 1028
    .local v14, zoombar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;
    const-string v1, "Zoom"

    invoke-virtual {v14, v1}, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->setTitle(Ljava/lang/String;)V

    .line 1029
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$11;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v14, v1}, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1055
    const v1, 0x7f0d0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomButton:Landroid/widget/ImageButton;

    .line 1056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    new-instance v7, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;

    invoke-direct {v7}, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;-><init>()V

    .line 1093
    .local v7, exposurebar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;
    const-string v1, "Exposure"

    invoke-virtual {v7, v1}, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->setTitle(Ljava/lang/String;)V

    .line 1094
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$13;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v7, v1}, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1118
    const v1, 0x7f0d0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->exposureButton:Landroid/widget/ImageButton;

    .line 1119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->exposureButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$14;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    const v1, 0x7f0d0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusButton:Landroid/widget/ImageButton;

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$15;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    const v1, 0x7f0d0034

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundButton:Landroid/widget/ImageButton;

    .line 1174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    new-instance v3, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;

    invoke-direct {v3}, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;-><init>()V

    .line 1222
    .local v3, preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;
    new-instance v5, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

    invoke-direct {v5}, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;-><init>()V

    .line 1223
    .local v5, delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;
    new-instance v4, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;

    invoke-direct {v4}, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;-><init>()V

    .line 1226
    .local v4, motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1228
    .local v6, delayVals:[Ljava/lang/String;
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5, v6}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;[Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->setOnBufferBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1249
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;)V

    invoke-virtual {v3, v1}, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->setOnBufferBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1281
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$19;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;)V

    invoke-virtual {v4, v1}, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->setOnBufferBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1305
    const v1, 0x7f0d003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    .line 1306
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;[Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    const v1, 0x7f0d003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    .line 1367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f020031

    invoke-static {v2, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setSecondGlyph(Landroid/graphics/Bitmap;)V

    .line 1368
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$21;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->onTouch:Landroid/view/View$OnTouchListener;

    .line 1396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->onTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1398
    const v1, 0x7f0d001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1404
    .local v11, preview:Landroid/view/View;
    const v1, 0x7f0d0033

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lightButton:Landroid/widget/ImageButton;

    .line 1405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lightButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1432
    const v1, 0x7f0d0035

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->faceButton:Landroid/widget/ImageButton;

    .line 1433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->faceButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$23;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$23;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    const v1, 0x7f0d0037

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->changeCamButton:Landroid/widget/ImageButton;

    .line 1462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->changeCamButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1464
    const/4 v10, 0x1

    .line 1466
    .local v10, numberOfCameras:I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    .line 1467
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v10

    .line 1470
    :cond_0
    const/4 v1, 0x1

    if-le v10, v1, :cond_3

    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->support2ndCam()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->changeCamButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1475
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->changeCamButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    const v1, 0x7f0d0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->settingsButton:Landroid/widget/ImageButton;

    .line 1499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->settingsButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1500
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isNextVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->settingsButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1503
    :cond_1
    new-instance v12, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1504
    .local v12, settingsBar:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->settingsButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1587
    const v1, 0x7f0d0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->thumbView:Landroid/view/View;

    .line 1588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->thumbView:Landroid/view/View;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$26;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1608
    const v1, 0x7f0d0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preShotLayout:Landroid/view/View;

    .line 1609
    const v1, 0x7f0d0042

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preShotText:Landroid/widget/TextView;

    .line 1611
    const v1, 0x7f0d004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->okPreshotButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    .line 1612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->okPreshotButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f020011

    invoke-static {v2, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setFirstGlyph(Landroid/graphics/Bitmap;)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->okPreshotButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f020031

    invoke-static {v2, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setSecondGlyph(Landroid/graphics/Bitmap;)V

    .line 1614
    const v1, 0x7f0d0047

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshotButton2:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    .line 1616
    const v1, 0x7f0d004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->firstPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    .line 1617
    const v1, 0x7f0d0048

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    .line 1618
    const v1, 0x7f0d004a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preThumbs:Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;

    .line 1619
    const v1, 0x7f0d004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preshot_ago:Landroid/widget/TextView;

    .line 1620
    const v1, 0x7f0d004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preshot_photos:Landroid/widget/TextView;

    .line 1622
    const v1, 0x7f0d0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshotButton:Landroid/widget/ImageButton;

    .line 1623
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshotButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$27;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$27;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshotButton2:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$28;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->okPreshotButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$29;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$29;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1658
    const v1, 0x7f0d003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    .line 1659
    const v1, 0x7f0d0046

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preshotStatusLayout:Landroid/view/View;

    .line 1660
    const v1, 0x7f0d0041

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->queueProgress:Landroid/widget/ProgressBar;

    .line 1661
    sget v1, Lcom/spritefish/fastburstcamera/core/SoundManager;->USED_SOUND_STREAM:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setVolumeControlStream(I)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    invoke-virtual {v1}, Lcom/spritefish/camera/controls/PreviewControl;->requestFocus()Z

    .line 1663
    const v1, 0x7f0d003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressText:Landroid/widget/TextView;

    .line 1664
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 1665
    .local v13, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1668
    const v1, 0x7f070079

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1672
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getSaveLocation()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->storagePath:Ljava/lang/String;

    .line 1673
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->storagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1676
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 1677
    .local v9, layout:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1678
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1682
    new-instance v1, Lcom/spritefish/camera/RotationManager;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/spritefish/camera/RotationManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->rotationManager:Lcom/spritefish/camera/RotationManager;

    .line 1685
    const-string v1, "insta"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const-string v1, "insta"

    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setVisibility(I)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "motionSensitivity"

    const/4 v15, 0x0

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->motionSensitivityValue:I

    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showFastSettingsButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1697
    return-void

    .line 1473
    .end local v9           #layout:Landroid/view/WindowManager$LayoutParams;
    .end local v12           #settingsBar:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;
    .end local v13           #state:Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->changeCamButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1694
    .end local v3           #preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;
    .end local v4           #motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;
    .end local v5           #delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;
    .end local v6           #delayVals:[Ljava/lang/String;
    .end local v7           #exposurebar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;
    .end local v8           #labelLayout:Landroid/view/View;
    .end local v10           #numberOfCameras:I
    .end local v11           #preview:Landroid/view/View;
    .end local v14           #zoombar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;
    :catchall_0
    move-exception v1

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1696
    throw v1
.end method

.method private liteMenus()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isLiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isTrialEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareShutdown()V
    .locals 0

    .prologue
    .line 2365
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2366
    return-void
.end method

.method public static reportIssue(Landroid/app/Activity;)V
    .locals 12
    .parameter "act"

    .prologue
    const/4 v11, 0x0

    .line 2756
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2757
    .local v2, emailIntent:Landroid/content/Intent;
    const-string v7, "text/plain"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2758
    const-string v6, ""

    .line 2760
    .local v6, versionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2761
    .local v4, pkg:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2766
    .end local v4           #pkg:Ljava/lang/String;
    :goto_0
    const-string v5, "Reporting problem with Fast Burst Camera"

    .line 2767
    .local v5, subject:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Please explain the problem you see\n-----------------------------------\n\n-----------------------------------\nTechnical info ( please leave this in email )\n\nApp version : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2772
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2773
    const-string v8, "\nAndroid Build version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2774
    sget-object v8, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cameraparams:Ljava/lang/String;

    const-string v9, ";"

    const-string v10, "\n"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2767
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2780
    .local v0, body:Ljava/lang/String;
    const-string v7, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2781
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2782
    const-string v7, "android.intent.extra.EMAIL"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "support@spritefish.com"

    aput-object v9, v8, v11

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2784
    :try_start_1
    const-string v7, "Select email app"

    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2788
    :goto_1
    return-void

    .line 2762
    .end local v0           #body:Ljava/lang/String;
    .end local v5           #subject:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2763
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "?"

    goto :goto_0

    .line 2785
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #body:Ljava/lang/String;
    .restart local v5       #subject:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2786
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    const-string v7, "There are no email clients installed."

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static runWhenDoneSaving(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "activity"
    .parameter "runWhenDone"

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    .line 515
    .local v1, app:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;
    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isSavingIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 517
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 518
    .local v2, builder2:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f070033

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 521
    .local v0, alert2:Landroid/app/AlertDialog;
    new-instance v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$6;

    invoke-direct {v4, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$6;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 529
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;

    invoke-direct {v4, v1, v0, p1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;-><init>(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;Landroid/app/AlertDialog;Ljava/lang/Runnable;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 548
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 554
    .end local v0           #alert2:Landroid/app/AlertDialog;
    .end local v2           #builder2:Landroid/app/AlertDialog$Builder;
    .end local v3           #t:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private setPreviewCallback()V
    .locals 4

    .prologue
    .line 1716
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isBlackWhiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1717
    .local v0, bitsPrPixel:I
    :goto_0
    const-string v1, "insta"

    const-string v2, "setPreviewCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    invoke-direct {v2, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1946
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isBlackWhiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1719
    invoke-virtual {v1, v2, v3}, Lcom/spritefish/camera/controls/PreviewControl;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;Z)V

    .line 1947
    return-void

    .line 1716
    .end local v0           #bitsPrPixel:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private showLiteStartInfo()V
    .locals 3

    .prologue
    .line 2708
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f07007f

    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2710
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showLiteStartInfoSpecific(Ljava/lang/String;)V

    .line 2712
    return-void
.end method

.method private showLiteStartInfoSpecific(Ljava/lang/String;)V
    .locals 6
    .parameter "firstLine"

    .prologue
    .line 2716
    move-object v2, p1

    .line 2717
    .local v2, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2719
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f070080

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070081

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2722
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070082

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2725
    :cond_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070083

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2728
    :cond_1
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashTorchAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070084

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2730
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070085

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070086

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2733
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2734
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2735
    const v4, 0x7f070069

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$35;

    invoke-direct {v5, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$35;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2741
    const v4, 0x7f070031

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$36;

    invoke-direct {v5, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$36;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2750
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2751
    .local v0, alert2:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2752
    return-void
.end method

.method private startRecording()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x3

    .line 2539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastRecordingPressed:J

    .line 2540
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/FocusMode;->INACTIVE:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    .line 2541
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v0, v1, :cond_1

    .line 2543
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopPrerecording(ZZ)V

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2547
    :cond_1
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v0, v1, :cond_2

    .line 2549
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2550
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->stopFlashTimer()V

    goto :goto_0

    .line 2554
    :cond_2
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    if-ne v0, v1, :cond_4

    .line 2556
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->okPreshotButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->startFlashTimer()V

    .line 2559
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preShotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2560
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2561
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setVisibility(I)V

    .line 2562
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setVisibility(I)V

    .line 2563
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preshotStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2564
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2565
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2567
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->addBurst(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstId:J

    .line 2568
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2571
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2572
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    invoke-virtual {v0, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->playSoundAlways(I)V

    goto :goto_0

    .line 2574
    :cond_3
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    invoke-virtual {v0, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->playSound(I)V

    goto :goto_0

    .line 2579
    :cond_4
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    if-ne v0, v1, :cond_6

    .line 2581
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->startFlashTimer()V

    .line 2582
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2583
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressText:Landroid/widget/TextView;

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2585
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2588
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2589
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    invoke-virtual {v0, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->playSoundAlways(I)V

    goto/16 :goto_0

    .line 2591
    :cond_5
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    invoke-virtual {v0, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->playSound(I)V

    goto/16 :goto_0

    .line 2598
    :cond_6
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NORMAL:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-eq v0, v1, :cond_0

    .line 2600
    const-string v0, "insta"

    const-string v1, "start RECORDING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iput-wide v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    .line 2602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recordingStartTime:J

    .line 2604
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateCurrentBurst()V

    .line 2606
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapsInRow:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2607
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NORMAL:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2608
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressText:Landroid/widget/TextView;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private stopRecording()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/high16 v7, 0x447a

    .line 2672
    const-string v3, "insta"

    const-string v4, "stop RECORDING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v3, v4, :cond_0

    .line 2705
    :goto_0
    return-void

    .line 2676
    :cond_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NORMAL:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v3, v4, :cond_2

    .line 2678
    iget-wide v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    const-wide/16 v5, 0x5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 2680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recordingStartTime:J

    sub-long v0, v3, v5

    .line 2683
    .local v0, msecSpent:J
    iget-wide v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    sub-long/2addr v3, v8

    long-to-float v3, v3

    long-to-float v4, v0

    div-float/2addr v4, v7

    div-float v2, v3, v4

    .line 2684
    .local v2, shotsPerSec:F
    const-string v3, "insta"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    sub-long/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " shots in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-float v5, v0

    div-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shots/sec)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    .end local v0           #msecSpent:J
    .end local v2           #shotsPerSec:F
    :cond_1
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapsInRow:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2689
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2690
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressText:Landroid/widget/TextView;

    const v4, 0x7f070033

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2695
    :cond_2
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    goto :goto_0
.end method

.method private static stringArrayContains(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, arr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 680
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 676
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 677
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateLabel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 658
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "showlabel"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 659
    .local v3, shown:Z
    const v4, 0x7f0d0044

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 660
    .local v2, labelLayout:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 661
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 665
    :goto_0
    const v4, 0x7f0d0045

    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 666
    .local v1, label:Landroid/widget/TextView;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "labelprefix"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, l:Ljava/lang/String;
    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentTag:Ljava/lang/String;

    .line 668
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    const-string v0, "<no label set>"

    .line 670
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    return-void

    .line 663
    .end local v0           #l:Ljava/lang/String;
    .end local v1           #label:Landroid/widget/TextView;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSoundButton()V
    .locals 3

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1706
    :goto_0
    return-void

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public activateFocus(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 624
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isFocusOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    :goto_0
    return-void

    .line 627
    :cond_0
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/FocusMode;->FOCUSING:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    .line 629
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showLiteStartInfoSpecific(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_1
    if-eqz p1, :cond_2

    .line 636
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->topControl:Lcom/spritefish/camera/controls/PreviewTopControl;

    invoke-virtual {v0, v2}, Lcom/spritefish/camera/controls/PreviewTopControl;->setFocusMode(Z)V

    .line 638
    const-string v0, "insta"

    const-string v1, "Starting focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isFocusOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 640
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$8;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->startCameraFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getBam()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v0

    return-object v0
.end method

.method public getBufferManager()Lcom/spritefish/camera/memory/BufferManager;
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getBm()Lcom/spritefish/camera/memory/BufferManager;

    move-result-object v0

    return-object v0
.end method

.method public handlePicture(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 1
    .parameter "b"
    .parameter "path"
    .parameter "rotate"

    .prologue
    .line 2794
    const/16 v0, 0xc8

    invoke-static {p1, p2, p3, v0}, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;->createThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 2796
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$37;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$37;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2811
    return-void
.end method

.method public hideFastSettingsButton()V
    .locals 2

    .prologue
    .line 1965
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1968
    const v1, 0x7f040004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1969
    .local v0, disappearAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->clearAnimation()V

    .line 1970
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$31;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$31;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1978
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v1, v0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1980
    .end local v0           #disappearAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 288
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v2, v3, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshot()V

    .line 291
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopPrerecording(ZZ)V

    .line 350
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v3, "RecorderLeave"

    invoke-virtual {v2, v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 303
    const v3, 0x7f070071

    new-instance v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$1;

    invoke-direct {v4, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 310
    const v3, 0x7f070032

    new-instance v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$2;

    invoke-direct {v4, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$2;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 345
    .local v0, alert2:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 348
    .end local v0           #alert2:Landroid/app/AlertDialog;
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 2381
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2393
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 404
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 405
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 408
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->appearAnimation:Landroid/view/animation/Animation;

    .line 409
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->scrollDetector:Landroid/view/GestureDetector;

    .line 411
    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setRequestedOrientation(I)V

    .line 412
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->restartIntent:Landroid/app/PendingIntent;

    .line 413
    new-instance v1, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 415
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isLiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 417
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isBlackWhiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isUltraVersion()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 418
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    .line 419
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "labelprefix"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentTag:Ljava/lang/String;

    .line 420
    const-string v1, "insta"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-object v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$4;

    invoke-direct {v2, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$4;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->registerNewPictureListener(Lcom/spritefish/fastburstcamera/activities/NewPictureListener;)V

    .line 432
    invoke-virtual {p0, v5}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->requestWindowFeature(I)Z

    .line 433
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 435
    new-instance v1, Lcom/spritefish/fastburstcamera/core/SoundManager;

    invoke-direct {v1}, Lcom/spritefish/fastburstcamera/core/SoundManager;-><init>()V

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    .line 436
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    invoke-virtual {v1, p0}, Lcom/spritefish/fastburstcamera/core/SoundManager;->initSounds(Landroid/content/Context;)V

    .line 437
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    const v2, 0x7f060004

    invoke-virtual {v1, v4, v2}, Lcom/spritefish/fastburstcamera/core/SoundManager;->addSound(II)V

    .line 438
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    const v2, 0x7f060005

    invoke-virtual {v1, v5, v2}, Lcom/spritefish/fastburstcamera/core/SoundManager;->addSound(II)V

    .line 439
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    const/4 v2, 0x2

    const v3, 0x7f060007

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->addSound(II)V

    .line 440
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    const/4 v2, 0x3

    const v3, 0x7f060001

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->addSound(II)V

    .line 441
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    const/4 v2, 0x4

    const/high16 v3, 0x7f06

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->addSound(II)V

    .line 442
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    const/4 v2, 0x5

    const v3, 0x7f060002

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->addSound(II)V

    .line 445
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setContentView(I)V

    .line 447
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 503
    .local v0, r:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 505
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2002
    .local v0, inflater:Landroid/view/MenuInflater;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2003
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2006
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2005
    :cond_0
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 272
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 273
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "Destroy"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 278
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2398
    const-string v1, "insta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key down "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " evt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    .line 2401
    :cond_0
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startRecording()V

    .line 2449
    :cond_1
    :goto_0
    return v0

    .line 2405
    :cond_2
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->hasShootZoomFocusButton()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2409
    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    .line 2413
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x215

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x216

    if-eq v1, v2, :cond_1

    .line 2416
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x221

    if-eq v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x222

    if-ne v1, v2, :cond_7

    .line 2418
    :cond_3
    const/16 v1, 0xa8

    if-ne p1, v1, :cond_5

    .line 2420
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomMode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ZOOM_IN:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    if-eq v1, v2, :cond_4

    .line 2421
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    const-string v2, "zoom-action"

    const-string v3, "optical-tele-start"

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/camera/controls/PreviewControl;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    :cond_4
    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ZOOM_IN:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomMode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    goto :goto_0

    .line 2427
    :cond_5
    const/16 v1, 0xa9

    if-ne p1, v1, :cond_7

    .line 2429
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomMode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ZOOM_OUT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    if-eq v1, v2, :cond_6

    .line 2430
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    const-string v2, "zoom-action"

    const-string v3, "optical-wide-start"

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/camera/controls/PreviewControl;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    :cond_6
    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->ZOOM_OUT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomMode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    goto :goto_0

    .line 2437
    :cond_7
    const/16 v1, 0x50

    if-ne p1, v1, :cond_8

    .line 2439
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/FocusMode;->INACTIVE:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    if-ne v1, v2, :cond_1

    .line 2441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusPressTime:J

    .line 2442
    sget-object v1, Lcom/spritefish/fastburstcamera/activities/FocusMode;->ACTIVE:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    goto :goto_0

    .line 2449
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2455
    const-string v1, "insta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key up "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " evt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 2489
    :cond_0
    :goto_0
    return v0

    .line 2460
    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_2

    const/16 v1, 0x17

    if-ne p1, v1, :cond_3

    .line 2462
    :cond_2
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopRecording()V

    goto :goto_0

    .line 2466
    :cond_3
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->hasShootZoomFocusButton()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2468
    const/16 v1, 0x50

    if-ne p1, v1, :cond_4

    .line 2470
    sget-object v1, Lcom/spritefish/fastburstcamera/activities/FocusMode;->INACTIVE:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    goto :goto_0

    .line 2474
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x215

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x216

    if-eq v1, v2, :cond_0

    .line 2478
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x221

    if-eq v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x222

    if-ne v1, v2, :cond_7

    .line 2480
    :cond_5
    const/16 v1, 0xa8

    if-eq p1, v1, :cond_6

    const/16 v1, 0xa9

    if-ne p1, v1, :cond_7

    .line 2483
    :cond_6
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    const-string v2, "zoom-action"

    const-string v3, "zoom-stop"

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/camera/controls/PreviewControl;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;->NO_ACTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomMode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ZoomMode;

    goto :goto_0

    .line 2489
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 2012
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 2145
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v18

    :goto_1
    return v18

    .line 2014
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->reportIssue(Landroid/app/Activity;)V

    .line 2015
    const/16 v18, 0x1

    goto :goto_1

    .line 2036
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showLastIn3dGallery()Z

    move-result v18

    if-nez v18, :cond_1

    .line 2038
    invoke-static/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/core/FastBurstUtil;->gotoCameraImageGallery(Landroid/app/Activity;)Z

    move-result v12

    .line 2040
    .local v12, found:Z
    if-nez v12, :cond_1

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2044
    new-instance v14, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2046
    .local v14, intent:Landroid/content/Intent;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2047
    const/4 v12, 0x1

    .line 2054
    .end local v14           #intent:Landroid/content/Intent;
    :cond_0
    :goto_2
    if-nez v12, :cond_1

    .line 2056
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v18, "Could not open gallery. Pictures are stored in "

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v18

    check-cast v18, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual/range {v18 .. v18}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getSaveLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 2065
    .end local v12           #found:Z
    :cond_1
    const/16 v18, 0x1

    goto :goto_1

    .line 2048
    .restart local v12       #found:Z
    .restart local v14       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 2050
    .local v9, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_2

    .line 2068
    .end local v9           #e:Ljava/lang/Exception;
    .end local v12           #found:Z
    .end local v14           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2069
    .local v7, builder2:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v18

    check-cast v18, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual/range {v18 .. v18}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getInfoBoxString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 2070
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 2071
    const v19, 0x7f070037

    new-instance v20, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$32;

    invoke-direct/range {v20 .. v21}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$32;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2076
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 2077
    .local v5, alert2:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2078
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2080
    .end local v5           #alert2:Landroid/app/AlertDialog;
    .end local v7           #builder2:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    const-string v19, "https://plus.google.com/101117658924186104159/about"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2081
    .local v11, followIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2083
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2085
    .end local v11           #followIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    const-string v19, "http://www.facebook.com/fastburstcamera"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2086
    .restart local v11       #followIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2088
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2090
    .end local v11           #followIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/spritefish/fastburstcamera/activities/SupportActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2091
    .local v17, support:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2092
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2094
    .end local v17           #support:Landroid/content/Intent;
    :pswitch_6
    new-instance v14, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    const-string v19, "market://details?id=com.spritefish.fastburstcamera"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2095
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2096
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2098
    .end local v14           #intent:Landroid/content/Intent;
    :pswitch_7
    new-instance v8, Landroid/content/Intent;

    const-class v18, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2103
    .local v8, burstlist:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2104
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2109
    .end local v8           #burstlist:Landroid/content/Intent;
    :pswitch_8
    new-instance v10, Landroid/content/Intent;

    const-class v18, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2110
    .local v10, facesInt:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2111
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2113
    .end local v10           #facesInt:Landroid/content/Intent;
    :pswitch_9
    new-instance v13, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;

    invoke-direct {v13}, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;-><init>()V

    .line 2114
    .local v13, helper:Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p0

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;->showWhatsNew(Landroid/app/Activity;ZLcom/google/android/apps/analytics/GoogleAnalyticsTracker;Landroid/content/Context;)Z

    .line 2116
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2118
    .end local v13           #helper:Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;
    :pswitch_a
    new-instance v15, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    const-string v19, "market://details?id=com.spritefish.fastburstcamera"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2119
    .local v15, intent3:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2120
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2124
    .end local v15           #intent3:Landroid/content/Intent;
    :pswitch_b
    new-instance v16, Landroid/content/Intent;

    const-class v18, Lcom/spritefish/fastburstcamera/activities/Preferences;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2125
    .local v16, prefInt:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2126
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2128
    .end local v16           #prefInt:Landroid/content/Intent;
    :pswitch_c
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2129
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f07007a

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 2130
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 2131
    const v19, 0x7f07007b

    new-instance v20, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$33;

    invoke-direct/range {v20 .. v21}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$33;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 2136
    const v19, 0x7f07007c

    new-instance v20, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$34;

    invoke-direct/range {v20 .. v21}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$34;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2141
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 2142
    .local v4, alert:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2012
    :pswitch_data_0
    .packed-switch 0x7f0d0070
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_b
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2326
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2327
    const-string v0, "insta"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    sget-object v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->registerPictureHandler(Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;)V

    .line 2331
    sget-object v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->registerActivity(Landroid/app/Activity;)V

    .line 2333
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v0, v1, :cond_0

    .line 2335
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshot()V

    .line 2336
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopPrerecording(ZZ)V

    .line 2340
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    .line 2168
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2170
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2174
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 2175
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v6, :cond_0

    .line 2176
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v7, "Recorder"

    invoke-virtual {v6, v7}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 2178
    :cond_0
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateLabel()V

    .line 2181
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateShootMode()V

    .line 2183
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v6, p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->registerPictureHandler(Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;)V

    .line 2184
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v6, p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->registerActivity(Landroid/app/Activity;)V

    .line 2185
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v7}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->registerRecorderStateHandler(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 2186
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "mediascanner"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2188
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->ensureMediaScannerStarted()V

    .line 2191
    :cond_1
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "mediascanner"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2193
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->ensureMediaScannerStopped()V

    .line 2198
    :cond_2
    const-string v6, "insta"

    const-string v7, "onResume"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setPreviewCallback()V

    .line 2201
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    invoke-virtual {v6}, Lcom/spritefish/camera/controls/PreviewControl;->startCameraPreview()V

    .line 2203
    const-string v6, "insta"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Memory tot:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " max:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->findNewestPicture()Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2207
    .local v3, latestPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v3, :cond_3

    .line 2210
    :try_start_1
    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2211
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v0, v6, v7}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->handlePicture(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 2212
    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setLastPicId(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2219
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    :try_start_2
    new-instance v2, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;

    invoke-direct {v2}, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;-><init>()V

    .line 2220
    .local v2, helper:Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v2, p0, v6, v7, p0}, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;->showWhatsNew(Landroid/app/Activity;ZLcom/google/android/apps/analytics/GoogleAnalyticsTracker;Landroid/content/Context;)Z

    move-result v5

    .line 2222
    .local v5, whatsnewWasShown:Z
    if-nez v5, :cond_4

    if-eqz v3, :cond_4

    .line 2224
    new-instance v4, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;

    invoke-direct {v4}, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;-><init>()V

    .line 2225
    .local v4, ph:Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;
    invoke-virtual {v4, p0}, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->showCurrentPromotion(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2230
    .end local v4           #ph:Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;
    :cond_4
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2232
    return-void

    .line 2214
    .end local v2           #helper:Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;
    .end local v5           #whatsnewWasShown:Z
    :catch_0
    move-exception v1

    .line 2216
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "insta"

    const-string v7, "could not create initial thumbnail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2229
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #latestPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :catchall_0
    move-exception v6

    .line 2230
    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2231
    throw v6
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 2308
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2309
    const-string v0, "insta"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Memory tot:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 2343
    const-string v0, "insta"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    invoke-virtual {v0}, Lcom/spritefish/camera/controls/PreviewControl;->stopCamera()V

    .line 2345
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->prepareShutdown()V

    .line 2347
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2352
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 607
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "screenclickPref"

    const-string v5, "Nothing"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, clickPref:Ljava/lang/String;
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v3

    invoke-interface {v3}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->hasShootZoomFocusButton()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 610
    .local v1, slideZoom:Z
    :goto_0
    const-string v3, "Focus and Zoom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 611
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->scrollDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 619
    :cond_0
    :goto_1
    return v2

    .end local v1           #slideZoom:Z
    :cond_1
    move v1, v2

    .line 609
    goto :goto_0

    .line 615
    .restart local v1       #slideZoom:Z
    :cond_2
    const-string v3, "Shoot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->onTouch:Landroid/view/View$OnTouchListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method

.method public rotateUi(Lcom/spritefish/camera/RotationManager$Rotation;)V
    .locals 12
    .parameter "r"

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v9, 0x1

    const/high16 v8, 0x4248

    const/4 v7, 0x0

    .line 564
    const-string v4, "insta"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rotate to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, newAngle:F
    invoke-static {}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->$SWITCH_TABLE$com$spritefish$camera$RotationManager$Rotation()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/spritefish/camera/RotationManager$Rotation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 573
    :goto_0
    iget v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->oldAngle:F

    invoke-static {v0, v4}, Lcom/spritefish/camera/RotationManager$Rotation;->getShortest(FF)F

    move-result v3

    .line 575
    .local v3, useAngle:F
    new-instance v1, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->oldAngle:F

    invoke-direct {v1, v4, v3, v8, v8}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 576
    .local v1, rotateAnim:Landroid/view/animation/Animation;
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 577
    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 579
    new-instance v2, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->oldAngle:F

    invoke-direct {v2, v4, v3, v7, v7}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 580
    .local v2, rotateAnim2:Landroid/view/animation/Animation;
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 581
    invoke-virtual {v2, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 583
    const-string v4, "insta"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rotate from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->oldAngle:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iput v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->oldAngle:F

    .line 586
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lightButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 589
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 590
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->exposureButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 591
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->thumbView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 592
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v4, v1}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 595
    return-void

    .line 568
    .end local v1           #rotateAnim:Landroid/view/animation/Animation;
    .end local v2           #rotateAnim2:Landroid/view/animation/Animation;
    .end local v3           #useAngle:F
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 569
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 570
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 571
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public rotationChanged(Lcom/spritefish/camera/RotationManager$Rotation;)V
    .locals 0
    .parameter "newRotation"

    .prologue
    .line 560
    return-void
.end method

.method protected setLastPicId(J)V
    .locals 0
    .parameter "lastId"

    .prologue
    .line 1983
    iput-wide p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPicId:J

    .line 1991
    return-void
.end method

.method public showFastSettingsButton()V
    .locals 3

    .prologue
    .line 1951
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isNextVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1961
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1956
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setVisibility(I)V

    .line 1957
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1958
    .local v0, appearAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->clearAnimation()V

    .line 1959
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v1, v0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showLastIn3dGallery()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2151
    :try_start_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 2161
    :goto_0
    return v2

    .line 2153
    :cond_0
    const-string v3, "insta"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "starting gallery : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.cooliris.media.action.REVIEW"

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastUri:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2155
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    const/4 v2, 0x1

    goto :goto_0

    .line 2156
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2159
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public stopPrerecording(ZZ)V
    .locals 8
    .parameter "showtext"
    .parameter "cancelling"

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2625
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->okPreshotButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->stopFlashTimer()V

    .line 2627
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preshotStatusLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2628
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v2, v6}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setVisibility(I)V

    .line 2629
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v2, v6}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setVisibility(I)V

    .line 2631
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getWriteQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/spritefish/camera/memory/NewByteArrayManager;->movePreRecordsToWriteQueue(Ljava/util/concurrent/BlockingQueue;)I

    move-result v1

    .line 2632
    .local v1, saved:I
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2634
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isWriteQueueEmpty()Z

    move-result v0

    .line 2635
    .local v0, isWriteQueueEmpty:Z
    if-eqz v0, :cond_2

    .line 2637
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preShotLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2659
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2662
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2663
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    if-eqz p2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/spritefish/fastburstcamera/core/SoundManager;->playSoundAlways(I)V

    .line 2668
    :cond_1
    :goto_2
    return-void

    .line 2653
    :cond_2
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preShotLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2654
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 2655
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2656
    if-lez v1, :cond_0

    .line 2657
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressText:Landroid/widget/TextView;

    const v5, 0x7f07007e

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 2663
    goto :goto_1

    .line 2665
    :cond_4
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    if-eqz p2, :cond_5

    :goto_3
    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/core/SoundManager;->playSound(I)V

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method public updateCurrentBurst()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 2614
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstLastActivity:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstLastActivity:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2616
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->addBurst(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstId:J

    .line 2617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstLastActivity:J

    .line 2620
    :cond_1
    return-void
.end method

.method public updatePreshotStatus()V
    .locals 8

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getPreshotStats()Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;

    move-result-object v0

    .line 361
    .local v0, stat:Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preShotText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->shots:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " shots\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->milliseconds:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preshot_ago:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->formatter:Ljava/text/NumberFormat;

    iget-wide v4, v0, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->milliseconds:J

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " secs ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preshot_photos:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->shots:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " shots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

.method public updateProgress(II)V
    .locals 6
    .parameter "current"
    .parameter "total"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->queueProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 368
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->queueProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 370
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v4, v5, :cond_0

    .line 390
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 374
    .local v1, wasVisible:Z
    :goto_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isBufferAnimActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_2

    .line 376
    const v2, 0x7f040004

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 377
    .local v0, disappearAnimation:Landroid/view/animation/Animation;
    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$3;

    invoke-direct {v2, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$3;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 385
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 386
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isBufferAnimActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .end local v0           #disappearAnimation:Landroid/view/animation/Animation;
    .end local v1           #wasVisible:Z
    :cond_1
    move v1, v2

    .line 372
    goto :goto_1

    .line 389
    .restart local v1       #wasVisible:Z
    :cond_2
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->progressLayout:Landroid/view/View;

    if-nez p1, :cond_3

    const/4 v2, 0x4

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateShootMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f02000c

    .line 2237
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2239
    .local v0, before:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2240
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "shootmodePref"

    const-string v4, "cont"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2241
    .local v1, shootModeString:Ljava/lang/String;
    const-string v2, "cont"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2243
    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->CONT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2245
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v2, v6}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setFirstGlyph(Landroid/graphics/Bitmap;)V

    .line 2246
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showFastSettingsButton()V

    .line 2250
    :cond_0
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2252
    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2253
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setFirstGlyph(Landroid/graphics/Bitmap;)V

    .line 2254
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->hideFastSettingsButton()V

    .line 2257
    :cond_1
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2259
    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT3:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2260
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setFirstGlyph(Landroid/graphics/Bitmap;)V

    .line 2261
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showFastSettingsButton()V

    .line 2263
    :cond_2
    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2265
    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT5:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2266
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setFirstGlyph(Landroid/graphics/Bitmap;)V

    .line 2267
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showFastSettingsButton()V

    .line 2269
    :cond_3
    const-string v2, "motion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2271
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isNextVersion()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2273
    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->CONT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2283
    :cond_4
    :goto_0
    const-string v2, "preshot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2285
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isNextVersion()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2287
    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->CONT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2298
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isNextVersion()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2300
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {v2, v6}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setFirstGlyph(Landroid/graphics/Bitmap;)V

    .line 2304
    :cond_6
    return-void

    .line 2277
    :cond_7
    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2278
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000f

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setFirstGlyph(Landroid/graphics/Bitmap;)V

    .line 2279
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showFastSettingsButton()V

    goto :goto_0

    .line 2291
    :cond_8
    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 2292
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020011

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setFirstGlyph(Landroid/graphics/Bitmap;)V

    .line 2293
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showFastSettingsButton()V

    goto :goto_1
.end method
