.class public Lcom/ui/LapseIt/project/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/project/Renderer$RenderDialog;,
        Lcom/ui/LapseIt/project/Renderer$RenderTask;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/ui/LapseIt/project/Renderer; = null

.field public static NOTIFICATION_ID:I = 0x0

.field private static final WAKELOCKTAG:Ljava/lang/String; = "LapseItRender"

.field private static audioFile:Ljava/io/File;

.field private static audioOffset:F

.field private static bitrate:I

.field private static contentDir:Ljava/io/File;

.field private static decodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private static encoder:Ljava/lang/String;

.field private static filename:Ljava/lang/String;

.field private static fps:I

.field private static parent:Landroid/app/Activity;

.field private static projectUri:Landroid/net/Uri;

.field private static renderFile:Ljava/io/File;

.field private static thumb:Ljava/lang/String;

.field private static thumbFile:Ljava/io/File;

.field private static useAudio:Z


# instance fields
.field private bitmapToRender:Landroid/graphics/Bitmap;

.field private coloursArray:[I

.field private currentTask:Lcom/ui/LapseIt/project/Renderer$RenderTask;

.field isFullSensor:Z

.field private notificationIntent:Landroid/content/Intent;

.field private notificationManager:Landroid/app/NotificationManager;

.field private notificationView:Landroid/widget/RemoteViews;

.field private onOutMemoryDialogHandler:Landroid/content/DialogInterface$OnClickListener;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private powerManager:Landroid/os/PowerManager;

.field private progress:Landroid/app/ProgressDialog;

.field private renderBegin:J

.field private renderResult:I

.field shit:I

.field shortbuffer:[S

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    new-instance v0, Lcom/ui/LapseIt/project/Renderer;

    invoke-direct {v0}, Lcom/ui/LapseIt/project/Renderer;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/project/Renderer;->INSTANCE:Lcom/ui/LapseIt/project/Renderer;

    .line 69
    const-string v0, "tempThumb"

    sput-object v0, Lcom/ui/LapseIt/project/Renderer;->thumb:Ljava/lang/String;

    .line 91
    const-string v0, "av"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/project/Renderer;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 93
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 94
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 499
    const/16 v0, 0x1f5

    sput v0, Lcom/ui/LapseIt/project/Renderer;->NOTIFICATION_ID:I

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance v0, Lcom/ui/LapseIt/project/Renderer$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/Renderer$1;-><init>(Lcom/ui/LapseIt/project/Renderer;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->onOutMemoryDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10()F
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/ui/LapseIt/project/Renderer;->audioOffset:F

    return v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/ui/LapseIt/project/Renderer;->bitrate:I

    return v0
.end method

.method static synthetic access$12(Lcom/ui/LapseIt/project/Renderer;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;J)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-direct/range {p0 .. p10}, Lcom/ui/LapseIt/project/Renderer;->openVideo(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$13()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/ui/LapseIt/project/Renderer;->fps:I

    return v0
.end method

.method static synthetic access$14(Lcom/ui/LapseIt/project/Renderer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$15(Lcom/ui/LapseIt/project/Renderer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$16(Lcom/ui/LapseIt/project/Renderer;)[I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->coloursArray:[I

    return-object v0
.end method

.method static synthetic access$17(Lcom/ui/LapseIt/project/Renderer;[I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/project/Renderer;->writeFrame([I)I

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/ui/LapseIt/project/Renderer;)I
    .locals 1
    .parameter

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/ui/LapseIt/project/Renderer;->closeVideo()I

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lcom/ui/LapseIt/project/Renderer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/ui/LapseIt/project/Renderer;->renderResult:I

    return-void
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/project/Renderer;)J
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/ui/LapseIt/project/Renderer;->renderBegin:J

    return-wide v0
.end method

.method static synthetic access$20()Ljava/io/File;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->contentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$21()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    sput-object p0, Lcom/ui/LapseIt/project/Renderer;->thumbFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$23()Ljava/io/File;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->thumbFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$24(Lcom/ui/LapseIt/project/Renderer;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/ui/LapseIt/project/Renderer;->renderResult:I

    return v0
.end method

.method static synthetic access$25(Lcom/ui/LapseIt/project/Renderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/ui/LapseIt/project/Renderer;->updateContentProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic access$26(Lcom/ui/LapseIt/project/Renderer;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/ui/LapseIt/project/Renderer;->buildOutOfMemoryDialog()V

    return-void
.end method

.method static synthetic access$27(Lcom/ui/LapseIt/project/Renderer;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/ui/LapseIt/project/Renderer;->createCompletedNotification()V

    return-void
.end method

.method static synthetic access$28(Lcom/ui/LapseIt/project/Renderer;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->onOutMemoryDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/project/Renderer;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/project/Renderer;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/project/Renderer;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/ui/LapseIt/project/Renderer;->renderBegin:J

    return-void
.end method

.method static synthetic access$6()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->decodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ui/LapseIt/project/Renderer;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer;->coloursArray:[I

    return-void
.end method

.method static synthetic access$8()Ljava/io/File;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$9()Ljava/io/File;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->audioFile:Ljava/io/File;

    return-object v0
.end method

.method public static build(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;)Lcom/ui/LapseIt/project/Renderer;
    .locals 10
    .parameter "renderView"
    .parameter "uri"
    .parameter "filename"
    .parameter "renderDir"
    .parameter "encoder"
    .parameter "bitrate"
    .parameter "fps"
    .parameter "useAudio"
    .parameter "audioPath"

    .prologue
    .line 105
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/ui/LapseIt/project/Renderer;->build(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;F)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v0

    return-object v0
.end method

.method public static build(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;F)Lcom/ui/LapseIt/project/Renderer;
    .locals 7
    .parameter "renderView"
    .parameter "uri"
    .parameter "filename"
    .parameter "renderDir"
    .parameter "encoder"
    .parameter "bitrate"
    .parameter "fps"
    .parameter "useAudio"
    .parameter "audioPath"
    .parameter "audioOffset"

    .prologue
    .line 109
    sput-object p0, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    .line 111
    const-string v3, "directory"

    invoke-static {p0, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, CONTENT_PATH:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, contextDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/rendered/"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/ui/LapseIt/project/Renderer;->contentDir:Ljava/io/File;

    .line 118
    sput-object p1, Lcom/ui/LapseIt/project/Renderer;->projectUri:Landroid/net/Uri;

    .line 119
    sput-object p2, Lcom/ui/LapseIt/project/Renderer;->filename:Ljava/lang/String;

    .line 120
    sput-object p4, Lcom/ui/LapseIt/project/Renderer;->encoder:Ljava/lang/String;

    .line 121
    sput p5, Lcom/ui/LapseIt/project/Renderer;->bitrate:I

    .line 122
    sput p6, Lcom/ui/LapseIt/project/Renderer;->fps:I

    .line 124
    sget-object v3, Lcom/ui/LapseIt/project/Renderer;->contentDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    sget-object v3, Lcom/ui/LapseIt/project/Renderer;->contentDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/ui/LapseIt/project/Renderer;->contentDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ui/LapseIt/project/Renderer;->filename:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, renderFileIndex:I
    :goto_0
    sget-object v3, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    sput-boolean p7, Lcom/ui/LapseIt/project/Renderer;->useAudio:Z

    .line 138
    sget-boolean v3, Lcom/ui/LapseIt/project/Renderer;->useAudio:Z

    if-eqz v3, :cond_1

    .line 139
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/ui/LapseIt/project/Renderer;->audioFile:Ljava/io/File;

    .line 140
    sput p9, Lcom/ui/LapseIt/project/Renderer;->audioOffset:F

    .line 143
    :cond_1
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->getInstance()Lcom/ui/LapseIt/project/Renderer;

    move-result-object v3

    return-object v3

    .line 132
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ui/LapseIt/project/Renderer;->filename:Ljava/lang/String;

    .line 133
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/ui/LapseIt/project/Renderer;->contentDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ui/LapseIt/project/Renderer;->filename:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/ui/LapseIt/project/Renderer;->encoder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static buildNoVideoAlert()V
    .locals 5

    .prologue
    .line 562
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 563
    const-string v3, "No suitable video player"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 564
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 565
    const-string v3, "There\'s no suitable player to see this kind of file, please install an app like RockPlayer and try again"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 566
    const-string v3, "Ok"

    new-instance v4, Lcom/ui/LapseIt/project/Renderer$3;

    invoke-direct {v4}, Lcom/ui/LapseIt/project/Renderer$3;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 574
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 580
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 577
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 578
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private buildOutOfMemoryDialog()V
    .locals 2

    .prologue
    .line 447
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 449
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->currentTask:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->currentTask:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->cancel(Z)Z

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 457
    :cond_1
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    new-instance v1, Lcom/ui/LapseIt/project/Renderer$2;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/project/Renderer$2;-><init>(Lcom/ui/LapseIt/project/Renderer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method private native closeVideo()I
.end method

.method private createCompletedNotification()V
    .locals 22

    .prologue
    .line 506
    const-string v12, "Render completed"

    .line 507
    .local v12, tickerText:Ljava/lang/String;
    const-string v9, "Now watch and share with your friends"

    .line 508
    .local v9, renderedText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 510
    .local v15, when:J
    new-instance v17, Ljava/io/File;

    sget-object v18, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 511
    .local v13, uri:Landroid/net/Uri;
    sget-object v17, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 514
    .local v7, mimeType:Ljava/lang/String;
    const-string v17, "mp4"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/Renderer;->notificationView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    const v18, 0x7f0b0046

    const-string v19, "File rendered successful, now you can watch or share online"

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 516
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/Renderer;->notificationIntent:Landroid/content/Intent;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/Renderer;->notificationIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    :try_start_0
    sget-object v17, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/Renderer;->notificationIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/high16 v20, 0x1000

    invoke-static/range {v17 .. v20}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/Renderer;->pendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    new-instance v8, Landroid/app/Notification;

    const v17, 0x7f02004e

    const-string v18, "Render completed"

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide v2, v15

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 551
    .local v8, notification:Landroid/app/Notification;
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 552
    sget-object v17, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    const-string v18, "Render completed"

    const-string v19, "Now watch and share with your friends"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/Renderer;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/Renderer;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    sget v18, Lcom/ui/LapseIt/project/Renderer;->NOTIFICATION_ID:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 555
    return-void

    .line 520
    .end local v8           #notification:Landroid/app/Notification;
    :catch_0
    move-exception v5

    .line 521
    .local v5, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->buildNoVideoAlert()V

    .line 522
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v5           #e:Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/Renderer;->notificationView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    const v18, 0x7f0b0046

    const-string v19, "File rendered successful, now you can watch or share online"

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 526
    new-instance v4, Landroid/content/ContentValues;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 527
    .local v4, content:Landroid/content/ContentValues;
    const-string v17, "title"

    const-string v18, "Lapse It time-lapse video"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v17, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    const-string v17, "mime_type"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v17, "_data"

    sget-object v18, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v17, "_size"

    sget-object v18, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 532
    const-string v17, "title"

    const-string v18, "Time-lapse video created with Lapse It"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    sget-object v17, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 535
    .local v10, resolver:Landroid/content/ContentResolver;
    sget-object v17, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 537
    .local v14, uriUpload:Landroid/net/Uri;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 538
    .local v11, shareIntent:Landroid/content/Intent;
    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {v11, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 543
    :try_start_1
    sget-object v17, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    const/16 v18, 0x0

    const-string v19, "Sharing video"

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v19

    const/high16 v20, 0x1000

    invoke-static/range {v17 .. v20}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/Renderer;->pendingIntent:Landroid/app/PendingIntent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 544
    :catch_1
    move-exception v5

    .line 545
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->buildNoVideoAlert()V

    .line 546
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static getInstance()Lcom/ui/LapseIt/project/Renderer;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->INSTANCE:Lcom/ui/LapseIt/project/Renderer;

    return-object v0
.end method

.method private native openVideo(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;J)I
.end method

.method private updateContentProvider()Z
    .locals 4

    .prologue
    .line 472
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    sget-object v2, Lcom/ui/LapseIt/project/Renderer;->projectUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v1, "filename"

    sget-object v2, Lcom/ui/LapseIt/project/Renderer;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "filepath"

    sget-object v2, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 477
    const-string v1, "framerate"

    sget v2, Lcom/ui/LapseIt/project/Renderer;->fps:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    const-string v1, "quality"

    sget v2, Lcom/ui/LapseIt/project/Renderer;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    const-string v1, "thumb"

    sget-object v2, Lcom/ui/LapseIt/project/Renderer;->thumbFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v1, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    sget-object v2, Lcom/ui/LapseIt/project/Renderer;->projectUri:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->putRenderedVideo(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    .line 484
    const/4 v1, 0x1

    return v1
.end method

.method private native writeFrame([I)I
.end method


# virtual methods
.method getRenderFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 488
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->renderFile:Ljava/io/File;

    return-object v0
.end method

.method public getRenderTask()Lcom/ui/LapseIt/project/Renderer$RenderTask;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->currentTask:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    return-object v0
.end method

.method public renderFileSequence(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->notificationManager:Landroid/app/NotificationManager;

    .line 152
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030012

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->notificationView:Landroid/widget/RemoteViews;

    .line 153
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->notificationView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0044

    const v2, 0x1080041

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 156
    :cond_0
    sget-object v0, Lcom/ui/LapseIt/project/Renderer;->parent:Landroid/app/Activity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->powerManager:Landroid/os/PowerManager;

    .line 157
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "LapseItRender"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    new-instance v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/Renderer$RenderTask;-><init>(Lcom/ui/LapseIt/project/Renderer;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->currentTask:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    .line 161
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer;->currentTask:Lcom/ui/LapseIt/project/Renderer$RenderTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method
