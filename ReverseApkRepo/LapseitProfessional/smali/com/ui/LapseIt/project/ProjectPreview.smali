.class public Lcom/ui/LapseIt/project/ProjectPreview;
.super Ljava/lang/Object;
.source "ProjectPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;
    }
.end annotation


# static fields
.field private static currentBitmap:Landroid/graphics/Bitmap;

.field private static currentFrame:I

.field private static imagePath:Ljava/lang/String;

.field static isBackwards:Z

.field static isLooping:Z

.field static isPaused:Z

.field static isPreviewning:Z

.field private static previewImage:Landroid/widget/ImageView;

.field private static previewProgress:Landroid/widget/ProgressBar;

.field public static previewRunnable:Ljava/lang/Runnable;

.field private static previewThread:Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

.field private static projectPreview:Lcom/ui/LapseIt/project/ProjectPreview;

.field static showFrame:I

.field private static toggleButtonRunnable:Ljava/lang/Runnable;


# instance fields
.field private backFramesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private framesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/ui/LapseIt/project/ProjectPreview;

    invoke-direct {v0}, Lcom/ui/LapseIt/project/ProjectPreview;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->projectPreview:Lcom/ui/LapseIt/project/ProjectPreview;

    .line 178
    new-instance v0, Lcom/ui/LapseIt/project/ProjectPreview$1;

    invoke-direct {v0}, Lcom/ui/LapseIt/project/ProjectPreview$1;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->toggleButtonRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/ui/LapseIt/project/ProjectPreview$2;

    invoke-direct {v0}, Lcom/ui/LapseIt/project/ProjectPreview$2;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewRunnable:Ljava/lang/Runnable;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$0()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/project/ProjectPreview;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/project/ProjectPreview;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectPreview;->backFramesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(I)V
    .locals 0
    .parameter

    .prologue
    .line 27
    sput p0, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    return-void
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    return v0
.end method

.method static synthetic access$7()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->toggleButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    sput-object p0, Lcom/ui/LapseIt/project/ProjectPreview;->previewThread:Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

    return-void
.end method

.method public static drawBitmap()V
    .locals 5

    .prologue
    .line 193
    :try_start_0
    sget-object v1, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    sget-object v2, Lui/utils/ImageUtils$EFFECTS;->NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

    if-ne v1, v2, :cond_0

    .line 194
    sget-object v1, Lcom/ui/LapseIt/project/ProjectPreview;->imagePath:Ljava/lang/String;

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/ui/LapseIt/project/ProjectPreview;->currentBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/ui/LapseIt/project/ProjectPreview;->currentBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 203
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 207
    :goto_1
    return-void

    .line 196
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ui/LapseIt/project/ProjectPreview;->imagePath:Ljava/lang/String;

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    invoke-static {v1, v2}, Lui/utils/ImageUtils;->applyBitmapEffect(Landroid/graphics/Bitmap;Lui/utils/ImageUtils$EFFECTS;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/ui/LapseIt/project/ProjectPreview;->currentBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v1

    sget-object v2, Lcom/ui/LapseIt/project/ProjectPreview;->previewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/project/ProjectView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static drawBitmap(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 187
    sput-object p0, Lcom/ui/LapseIt/project/ProjectPreview;->imagePath:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->drawBitmap()V

    .line 189
    return-void
.end method

.method public static getCurrentFrame()I
    .locals 1

    .prologue
    .line 220
    sget v0, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    return v0
.end method

.method public static getPreviewImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static pausePreview()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-static {v0}, Lcom/ui/LapseIt/project/ProjectControls;->toggleButtonStatus(Z)V

    .line 115
    sput-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isPaused:Z

    .line 116
    return-void
.end method

.method static setBackwards(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 81
    sput-boolean p0, Lcom/ui/LapseIt/project/ProjectPreview;->isBackwards:Z

    .line 82
    return-void
.end method

.method public static setCurrentFrame(I)V
    .locals 1
    .parameter "frameNumber"

    .prologue
    .line 224
    sput p0, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    .line 225
    sget v0, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    sput v0, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    .line 226
    return-void
.end method

.method static setFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectControls;->toggleButtonStatus(Z)V

    .line 94
    sput-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isPaused:Z

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    .line 96
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewThread:Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewThread:Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

    iput-boolean v1, v0, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;->isFinished:Z

    .line 100
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewThread:Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

    .line 101
    return-void
.end method

.method static setFrameRate(I)V
    .locals 3
    .parameter "newFrameRate"

    .prologue
    .line 85
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "renderfps"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method static setLoop(Z)V
    .locals 0
    .parameter "newLoop"

    .prologue
    .line 89
    sput-boolean p0, Lcom/ui/LapseIt/project/ProjectPreview;->isLooping:Z

    .line 90
    return-void
.end method

.method static setupInstance(Landroid/view/ViewGroup;)Lcom/ui/LapseIt/project/ProjectPreview;
    .locals 3
    .parameter "container"

    .prologue
    .line 40
    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lcom/ui/LapseIt/project/ProjectPreview;->previewImage:Landroid/widget/ImageView;

    .line 41
    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    sput-object v1, Lcom/ui/LapseIt/project/ProjectPreview;->previewProgress:Landroid/widget/ProgressBar;

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "renderfps"

    invoke-static {v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, currentFPS:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->setFrameRate(I)V

    .line 50
    :goto_0
    sget-object v1, Lcom/ui/LapseIt/project/ProjectPreview;->projectPreview:Lcom/ui/LapseIt/project/ProjectPreview;

    return-object v1

    .line 47
    :cond_0
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->setFrameRate(I)V

    goto :goto_0
.end method


# virtual methods
.method getFramesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method playPreview()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewThread:Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;-><init>(Lcom/ui/LapseIt/project/ProjectPreview;)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewThread:Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

    .line 106
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewThread:Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;

    invoke-virtual {v0}, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;->start()V

    .line 110
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    .line 111
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isPaused:Z

    goto :goto_0
.end method

.method setupPreview(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, framesPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ui/LapseIt/project/ProjectPreview;->setupPreview(Ljava/util/ArrayList;I)V

    .line 55
    return-void
.end method

.method setupPreview(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "startInFrame"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, framesPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 60
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v0

    sput v0, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ui/LapseIt/project/ProjectPreview;->backFramesList:Ljava/util/ArrayList;

    .line 65
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectPreview;->backFramesList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 67
    sput-boolean v2, Lcom/ui/LapseIt/project/ProjectPreview;->isBackwards:Z

    .line 69
    sput p2, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    .line 70
    sget v0, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 71
    sput v2, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;

    sget v1, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ui/LapseIt/project/ProjectPreview;->drawBitmap(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewProgress:Landroid/widget/ProgressBar;

    sget v1, Lcom/ui/LapseIt/project/ProjectPreview;->currentFrame:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    sget-object v0, Lcom/ui/LapseIt/project/ProjectPreview;->previewProgress:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 78
    return-void
.end method
