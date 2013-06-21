.class public Lcom/ui/LapseIt/capture/CaptureThread;
.super Ljava/lang/Thread;
.source "CaptureThread.java"


# static fields
.field private static decodeOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private cResolver:Landroid/content/ContentResolver;

.field private captureInterval:I

.field private captureLength:J

.field private capturedFrames:I

.field private enableSave:Z

.field private hourTimer:J

.field private imageRect:Landroid/graphics/Rect;

.field isCapturing:Z

.field isFullSensor:Z

.field isPaused:Z

.field private jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private limitMode:Ljava/lang/String;

.field private limitValue:I

.field private minTimer:J

.field private onOutMemoryDialogHandler:Landroid/content/DialogInterface$OnClickListener;

.field private outStream:Ljava/io/OutputStream;

.field private parent:Lcom/ui/LapseIt/capture/CaptureView;

.field projectUri:Landroid/net/Uri;

.field private qualityLevel:I

.field private saveImageReady:Z

.field private sdRunnable:Ljava/lang/Runnable;

.field private secsTimer:J

.field private shutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private startedAt:J

.field private timerRunnable:Ljava/lang/Runnable;

.field private timerThread:Ljava/lang/Thread;

.field private totalTime:Ljava/lang/String;

.field private updateCapturedInfo:Ljava/lang/Runnable;

.field private updateElapsedInfo:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/capture/CaptureThread;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 46
    sget-object v0, Lcom/ui/LapseIt/capture/CaptureThread;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 47
    sget-object v0, Lcom/ui/LapseIt/capture/CaptureThread;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/ui/LapseIt/capture/CaptureView;)V
    .locals 2
    .parameter "captureView"

    .prologue
    .line 73
    const-string v0, "CaptureThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 69
    const/16 v0, 0x50

    iput v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->qualityLevel:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->enableSave:Z

    .line 90
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureThread$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureThread$1;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->updateElapsedInfo:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureThread$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureThread$2;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->timerRunnable:Ljava/lang/Runnable;

    .line 374
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureThread$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureThread$3;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 419
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureThread$4;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureThread$4;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 424
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureThread$5;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureThread$5;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->updateCapturedInfo:Ljava/lang/Runnable;

    .line 450
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureThread$6;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureThread$6;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->sdRunnable:Ljava/lang/Runnable;

    .line 460
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureThread$7;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureThread$7;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->onOutMemoryDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    .line 77
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->cResolver:Landroid/content/ContentResolver;

    .line 81
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "limitmode"

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->limitMode:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->limitMode:Ljava/lang/String;

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->limitMode:Ljava/lang/String;

    const-string v1, "frames"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "limitvalue"

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->limitValue:I

    .line 87
    :cond_1
    sget-object v0, Lcom/ui/LapseIt/Main;->uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/capture/CaptureThread;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->capturedFrames:I

    return v0
.end method

.method static synthetic access$10(Lcom/ui/LapseIt/capture/CaptureThread;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->minTimer:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/ui/LapseIt/capture/CaptureThread;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->hourTimer:J

    return-void
.end method

.method static synthetic access$12(Lcom/ui/LapseIt/capture/CaptureThread;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->hourTimer:J

    return-wide v0
.end method

.method static synthetic access$13(Lcom/ui/LapseIt/capture/CaptureThread;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->totalTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->updateElapsedInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$15()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/ui/LapseIt/capture/CaptureThread;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$16(Lcom/ui/LapseIt/capture/CaptureThread;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$17(Lcom/ui/LapseIt/capture/CaptureThread;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->cResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$18(Lcom/ui/LapseIt/capture/CaptureThread;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->outStream:Ljava/io/OutputStream;

    return-void
.end method

.method static synthetic access$19(Lcom/ui/LapseIt/capture/CaptureThread;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->qualityLevel:I

    return v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->totalTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$21(Lcom/ui/LapseIt/capture/CaptureThread;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->saveImageReady:Z

    return-void
.end method

.method static synthetic access$22(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->sdRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$23(Lcom/ui/LapseIt/capture/CaptureThread;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/ui/LapseIt/capture/CaptureThread;->buildOutOfMemoryDialog()V

    return-void
.end method

.method static synthetic access$24(Lcom/ui/LapseIt/capture/CaptureThread;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->onOutMemoryDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/capture/CaptureThread;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->captureLength:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/capture/CaptureThread;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->startedAt:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/capture/CaptureThread;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->captureLength:J

    return-void
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/capture/CaptureThread;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->startedAt:J

    return-void
.end method

.method static synthetic access$7(Lcom/ui/LapseIt/capture/CaptureThread;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->secsTimer:J

    return-void
.end method

.method static synthetic access$8(Lcom/ui/LapseIt/capture/CaptureThread;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->secsTimer:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/ui/LapseIt/capture/CaptureThread;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->minTimer:J

    return-void
.end method

.method private buildOutOfMemoryDialog()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    new-instance v1, Lcom/ui/LapseIt/capture/CaptureThread$11;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/capture/CaptureThread$11;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method


# virtual methods
.method public beginCaptureProcess()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0x3c

    const/4 v8, 0x1

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->startedAt:J

    .line 138
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureThread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    sget-object v6, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v5, v6, :cond_2

    .line 139
    iput-boolean v8, p0, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    .line 141
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureView;->zoomWidget:Lcom/ui/LapseIt/capture/ZoomWidget;

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    new-instance v6, Lcom/ui/LapseIt/capture/CaptureThread$8;

    invoke-direct {v6, p0}, Lcom/ui/LapseIt/capture/CaptureThread$8;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    invoke-virtual {v5, v6}, Lcom/ui/LapseIt/capture/CaptureView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureThread;->createContent()V

    .line 153
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v6, "interval"

    invoke-static {v5, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, settingsInterval:I
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v6, "timescale"

    invoke-static {v5, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, settingsTimeScale:Ljava/lang/String;
    const-string v5, "minutes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    mul-int/lit16 v5, v2, 0x3e8

    mul-int/lit8 v2, v5, 0x3c

    .line 165
    :cond_1
    :goto_0
    iput v2, p0, Lcom/ui/LapseIt/capture/CaptureThread;->captureInterval:I

    .line 167
    const/4 v1, 0x0

    .line 170
    .local v1, qualityString:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v7, "renderquality"

    invoke-static {v6, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->parseQuality(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_1
    if-nez v1, :cond_6

    .line 176
    iput v9, p0, Lcom/ui/LapseIt/capture/CaptureThread;->qualityLevel:I

    .line 185
    :goto_2
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureThread;->start()V

    .line 187
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureThread;->timerRunnable:Ljava/lang/Runnable;

    const-string v7, "CaptureTimer"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->timerThread:Ljava/lang/Thread;

    .line 188
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->timerThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 191
    .end local v1           #qualityString:Ljava/lang/String;
    .end local v2           #settingsInterval:I
    .end local v3           #settingsTimeScale:Ljava/lang/String;
    :cond_2
    iget-boolean v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->isPaused:Z

    if-eqz v5, :cond_3

    .line 192
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->isPaused:Z

    .line 193
    iput-boolean v8, p0, Lcom/ui/LapseIt/capture/CaptureThread;->saveImageReady:Z

    .line 196
    :cond_3
    new-instance v4, Lcom/ui/LapseIt/capture/CaptureThread$9;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/capture/CaptureThread$9;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    .line 204
    .local v4, toggleRunnable:Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v5, v4}, Lcom/ui/LapseIt/capture/CaptureView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void

    .line 158
    .end local v4           #toggleRunnable:Ljava/lang/Runnable;
    .restart local v2       #settingsInterval:I
    .restart local v3       #settingsTimeScale:Ljava/lang/String;
    :cond_4
    const-string v5, "seconds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    mul-int/lit16 v2, v2, 0x3e8

    goto :goto_0

    .line 160
    :cond_5
    const-string v5, "milliseconds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    if-ge v2, v10, :cond_1

    .line 162
    const/16 v2, 0x64

    goto :goto_0

    .line 171
    .restart local v1       #qualityString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08005a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 178
    iput v9, p0, Lcom/ui/LapseIt/capture/CaptureThread;->qualityLevel:I

    goto :goto_2

    .line 179
    :cond_7
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 180
    :cond_8
    iput v10, p0, Lcom/ui/LapseIt/capture/CaptureThread;->qualityLevel:I

    goto/16 :goto_2

    .line 182
    :cond_9
    const/16 v5, 0x50

    iput v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->qualityLevel:I

    goto/16 :goto_2
.end method

.method protected createContent()V
    .locals 4

    .prologue
    .line 437
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 439
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "description"

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 442
    const-string v1, "resolution"

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "resolution"

    invoke-static {v2, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "framesinfo"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "renderedinfo"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->cResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureThread;->projectUri:Landroid/net/Uri;

    .line 447
    const/4 v1, 0x0

    sput v1, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->imageId:I

    .line 448
    return-void
.end method

.method protected fixZero(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 286
    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public pauseCaptureProcess()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->isPaused:Z

    .line 211
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    new-instance v1, Lcom/ui/LapseIt/capture/CaptureThread$10;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/capture/CaptureThread$10;-><init>(Lcom/ui/LapseIt/capture/CaptureThread;)V

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x1e0

    const/16 v8, 0x140

    const/16 v7, 0xf0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 296
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v4, "resolution"

    invoke-static {v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, fullSensor:Ljava/lang/String;
    const-string v3, "fullsensor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->isFullSensor:Z

    .line 299
    iput-boolean v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->saveImageReady:Z

    .line 301
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v4, "resolution"

    invoke-static {v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, resolution:Ljava/lang/String;
    const-string v3, "1080p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;

    .line 318
    :goto_0
    iget-boolean v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-nez v3, :cond_5

    .line 371
    const-string v3, "trace"

    const-string v4, "Finishing capture thread"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void

    .line 305
    :cond_0
    const-string v3, "720p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 307
    :cond_1
    const-string v3, "480p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x2d0

    invoke-direct {v3, v6, v6, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 309
    :cond_2
    const-string v3, "360p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x168

    invoke-direct {v3, v6, v6, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 311
    :cond_3
    const-string v3, "240p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 314
    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 320
    :cond_5
    :try_start_0
    iget-boolean v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->isPaused:Z

    if-nez v3, :cond_c

    .line 321
    iget-boolean v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->saveImageReady:Z

    if-eqz v3, :cond_6

    .line 322
    iget v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->capturedFrames:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->capturedFrames:I

    .line 323
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->saveImageReady:Z

    .line 325
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 326
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    .line 327
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 328
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureThread;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 329
    const-string v3, "trace"

    const-string v4, "After picture"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread;->updateCapturedInfo:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/ui/LapseIt/capture/CaptureView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    :cond_6
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-boolean v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isManual:Z

    if-eqz v3, :cond_7

    .line 335
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureThread;->pauseCaptureProcess()V

    .line 337
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Runtime Exception on capture thread "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-boolean v5, v5, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 339
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->limitMode:Ljava/lang/String;

    const-string v4, "timer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 340
    iget-wide v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->secsTimer:J

    iget v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->limitValue:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_8

    .line 341
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureThread;->stopCaptureProcess()V

    .line 349
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-wide v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->endScheduledTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-wide v5, v5, Lcom/ui/LapseIt/capture/CaptureView;->endScheduledTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_9

    .line 350
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureThread;->stopCaptureProcess()V

    .line 353
    :cond_9
    iget-boolean v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->saveImageReady:Z

    if-eqz v3, :cond_b

    .line 354
    iget v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->captureInterval:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 366
    :catch_1
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "trace"

    const-string v4, "Exception on capture thread"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_2
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->limitMode:Ljava/lang/String;

    const-string v4, "frames"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 344
    iget v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->capturedFrames:I

    iget v4, p0, Lcom/ui/LapseIt/capture/CaptureThread;->limitValue:I

    if-le v3, v4, :cond_8

    .line 345
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureThread;->stopCaptureProcess()V

    goto :goto_1

    .line 356
    :cond_b
    const-string v3, "trace"

    const-string v4, "Camera is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget v3, p0, Lcom/ui/LapseIt/capture/CaptureThread;->captureInterval:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 361
    :cond_c
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public stopCaptureProcess()V
    .locals 19

    .prologue
    .line 221
    const-string v1, "trace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Stop has been called "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-eqz v1, :cond_3

    .line 223
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    .line 225
    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    .line 226
    const-string v2, "timestamp"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    .line 227
    const-string v2, "directory"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    .line 228
    const-string v2, "resolution"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    .line 230
    const-string v2, "renderedinfo"

    aput-object v2, v3, v1

    .line 232
    .local v3, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureThread;->projectUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ui/LapseIt/capture/CaptureView;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 234
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 235
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureView;->finish()V

    .line 283
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #cur:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 240
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v7       #cur:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 242
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 243
    .local v15, rowId:J
    const-string v1, "timestamp"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 244
    .local v17, timestamp:J
    const-string v1, "directory"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, directory:Ljava/lang/String;
    const-string v1, "resolution"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 247
    .local v14, resolution:Ljava/lang/String;
    const-string v1, "renderedinfo"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 249
    .local v13, renderedinfo:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 251
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v10, extras:Landroid/os/Bundle;
    const-string v1, "_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "timestamp"

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "directory"

    invoke-virtual {v10, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "resolution"

    invoke-virtual {v10, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "framesinfo"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "renderedinfo"

    invoke-virtual {v10, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-class v2, Lcom/ui/LapseIt/project/ProjectView;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v8, data:Landroid/content/Intent;
    invoke-virtual {v8, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 264
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v12, infoCapture:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "timestamp"

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "pro_version"

    invoke-static {}, Lcom/ui/LapseIt/Main;->isFullVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 269
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v11, framesDir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const-string v1, "frames_number"

    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_1
    const-string v1, "captured_info"

    invoke-static {v1, v12}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    .end local v11           #framesDir:Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v8}, Lcom/ui/LapseIt/capture/CaptureView;->setResult(ILandroid/content/Intent;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureView;->finish()V

    goto/16 :goto_0

    .line 280
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #data:Landroid/content/Intent;
    .end local v9           #directory:Ljava/lang/String;
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v12           #infoCapture:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #renderedinfo:Ljava/lang/String;
    .end local v14           #resolution:Ljava/lang/String;
    .end local v15           #rowId:J
    .end local v17           #timestamp:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/capture/CaptureView;->setResult(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureView;->finish()V

    goto/16 :goto_0
.end method
