.class public Lcom/ui/LapseIt/project/TrimWidget;
.super Landroid/widget/RelativeLayout;
.source "TrimWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;
    }
.end annotation


# static fields
.field public static endFrame:I

.field public static endTrimmedFrame:I

.field private static isTrimEnabled:Z

.field private static margin:D

.field public static startFrame:I

.field public static startTrimmedFrame:I

.field private static totalFrames:D

.field private static totalSize:D

.field private static trimLeftSlider:Landroid/widget/ImageView;

.field private static trimRightSlider:Landroid/widget/ImageView;


# instance fields
.field private MAX_THUMBS:I

.field private framesInfo:Lorg/json/JSONArray;

.field private leftSliderPos:D

.field private listener:Lcom/ui/LapseIt/project/OnTrimChangedListener;

.field private perc:I

.field private rightSliderPos:D

.field touchListener:Landroid/view/View$OnTouchListener;

.field private trimWidget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "parent"

    .prologue
    const/4 v6, -0x2

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v3, Lcom/ui/LapseIt/project/TrimWidget$1;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/project/TrimWidget$1;-><init>(Lcom/ui/LapseIt/project/TrimWidget;)V

    iput-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget;->touchListener:Landroid/view/View$OnTouchListener;

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03002c

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget;->trimWidget:Landroid/view/View;

    .line 53
    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget;->trimWidget:Landroid/view/View;

    const v4, 0x7f0b00a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sput-object v3, Lcom/ui/LapseIt/project/TrimWidget;->trimLeftSlider:Landroid/widget/ImageView;

    .line 54
    sget-object v3, Lcom/ui/LapseIt/project/TrimWidget;->trimLeftSlider:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimWidget;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget;->trimWidget:Landroid/view/View;

    const v4, 0x7f0b00a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sput-object v3, Lcom/ui/LapseIt/project/TrimWidget;->trimRightSlider:Landroid/widget/ImageView;

    .line 57
    sget-object v3, Lcom/ui/LapseIt/project/TrimWidget;->trimRightSlider:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimWidget;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    const v3, 0x7f0b009f

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/project/TrimWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 61
    .local v2, trimFrame:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x1

    const/high16 v4, 0x41a0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 64
    .local v0, marginTop:F
    float-to-int v3, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 66
    invoke-virtual {p1, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v2, v6, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 70
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-double v3, v3

    sput-wide v3, Lcom/ui/LapseIt/project/TrimWidget;->totalSize:D

    .line 71
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    sget-wide v5, Lcom/ui/LapseIt/project/TrimWidget;->totalSize:D

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    div-double/2addr v3, v5

    sput-wide v3, Lcom/ui/LapseIt/project/TrimWidget;->margin:D

    .line 72
    return-void
.end method

.method static synthetic access$0()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/ui/LapseIt/project/TrimWidget;->trimLeftSlider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/project/TrimWidget;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D

    return-void
.end method

.method static synthetic access$10(Lcom/ui/LapseIt/project/TrimWidget;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/ui/LapseIt/project/TrimWidget;->perc:I

    return v0
.end method

.method static synthetic access$11(Lcom/ui/LapseIt/project/TrimWidget;)Lcom/ui/LapseIt/project/OnTrimChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget;->listener:Lcom/ui/LapseIt/project/OnTrimChangedListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ui/LapseIt/project/TrimWidget;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/ui/LapseIt/project/TrimWidget;->MAX_THUMBS:I

    return-void
.end method

.method static synthetic access$13(Lcom/ui/LapseIt/project/TrimWidget;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/ui/LapseIt/project/TrimWidget;->MAX_THUMBS:I

    return v0
.end method

.method static synthetic access$2()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/ui/LapseIt/project/TrimWidget;->trimRightSlider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/project/TrimWidget;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D

    return-void
.end method

.method static synthetic access$4()D
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Lcom/ui/LapseIt/project/TrimWidget;->margin:D

    return-wide v0
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/project/TrimWidget;)D
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D

    return-wide v0
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/project/TrimWidget;)D
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D

    return-wide v0
.end method

.method static synthetic access$7()D
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/ui/LapseIt/project/TrimWidget;->totalSize:D

    return-wide v0
.end method

.method static synthetic access$8(Lcom/ui/LapseIt/project/TrimWidget;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/ui/LapseIt/project/TrimWidget;->perc:I

    return-void
.end method

.method static synthetic access$9()D
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/ui/LapseIt/project/TrimWidget;->totalFrames:D

    return-wide v0
.end method

.method static getEndFrame()I
    .locals 3

    .prologue
    .line 222
    sget-boolean v0, Lcom/ui/LapseIt/project/TrimWidget;->isTrimEnabled:Z

    if-eqz v0, :cond_1

    .line 223
    sget-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isBackwards:Z

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->endFrame:I

    sget v1, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    sub-int/2addr v0, v1

    .line 229
    :goto_0
    return v0

    .line 227
    :cond_0
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    goto :goto_0

    .line 229
    :cond_1
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->endFrame:I

    goto :goto_0
.end method

.method static getStartFrame()I
    .locals 4

    .prologue
    .line 209
    sget-boolean v0, Lcom/ui/LapseIt/project/TrimWidget;->isTrimEnabled:Z

    if-eqz v0, :cond_1

    .line 210
    sget-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isBackwards:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "End "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ui/LapseIt/project/TrimWidget;->endFrame:I

    sget v3, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->startFrame:I

    sget v1, Lcom/ui/LapseIt/project/TrimWidget;->endFrame:I

    sget v2, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 216
    :goto_0
    return v0

    .line 214
    :cond_0
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    goto :goto_0

    .line 216
    :cond_1
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->startFrame:I

    goto :goto_0
.end method

.method static getTotalFrames()I
    .locals 2

    .prologue
    .line 234
    sget-wide v0, Lcom/ui/LapseIt/project/TrimWidget;->totalFrames:D

    double-to-int v0, v0

    return v0
.end method

.method public static isTrimEnabled()Z
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcom/ui/LapseIt/project/TrimWidget;->isTrimEnabled:Z

    return v0
.end method

.method static moveTrimSlider(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "frame"

    .prologue
    const/4 v7, -0x2

    .line 94
    const-string v3, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Moving trim "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    add-int/lit8 p1, p1, -0x1

    .line 97
    int-to-float v3, p1

    sget-wide v4, Lcom/ui/LapseIt/project/TrimWidget;->totalFrames:D

    double-to-float v4, v4

    div-float v1, v3, v4

    .line 98
    .local v1, percFrame:F
    sget-wide v3, Lcom/ui/LapseIt/project/TrimWidget;->totalSize:D

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-float v2, v3

    .line 99
    .local v2, percPos:F
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v0, objParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 103
    :pswitch_0
    sput p1, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    .line 104
    float-to-int v3, v2

    sget-wide v4, Lcom/ui/LapseIt/project/TrimWidget;->margin:D

    double-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 105
    sget-object v3, Lcom/ui/LapseIt/project/TrimWidget;->trimLeftSlider:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 109
    :pswitch_1
    sput p1, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    .line 110
    float-to-int v3, v2

    sget-object v4, Lcom/ui/LapseIt/project/TrimWidget;->trimLeftSlider:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 111
    sget-object v3, Lcom/ui/LapseIt/project/TrimWidget;->trimRightSlider:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x7f0b009b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setTrimEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 238
    sput-boolean p0, Lcom/ui/LapseIt/project/TrimWidget;->isTrimEnabled:Z

    .line 239
    return-void
.end method

.method public static setupNumberOfFrames(Lorg/json/JSONArray;)V
    .locals 2
    .parameter "frames"

    .prologue
    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/ui/LapseIt/project/TrimWidget;->startFrame:I

    .line 76
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ui/LapseIt/project/TrimWidget;->endFrame:I

    .line 78
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    if-gtz v0, :cond_0

    .line 79
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->startFrame:I

    sput v0, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    .line 80
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->endFrame:I

    sput v0, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    sput-wide v0, Lcom/ui/LapseIt/project/TrimWidget;->totalFrames:D

    .line 84
    return-void
.end method


# virtual methods
.method getBitmapInFrame(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "frameIndex"

    .prologue
    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget;->framesInfo:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->drawBitmap(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1           #filePath:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method setOnTrimChangedListener(Lcom/ui/LapseIt/project/OnTrimChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/ui/LapseIt/project/TrimWidget;->listener:Lcom/ui/LapseIt/project/OnTrimChangedListener;

    .line 195
    return-void
.end method

.method public setupThumbnails(Lorg/json/JSONArray;)V
    .locals 3
    .parameter "frames"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ui/LapseIt/project/TrimWidget;->framesInfo:Lorg/json/JSONArray;

    .line 88
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimWidget;->listener:Lcom/ui/LapseIt/project/OnTrimChangedListener;

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v1

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ui/LapseIt/project/OnTrimChangedListener;->onTrimChangedListener(II)V

    .line 89
    new-instance v0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;

    invoke-direct {v0, p0, p1}, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;-><init>(Lcom/ui/LapseIt/project/TrimWidget;Lorg/json/JSONArray;)V

    invoke-virtual {v0}, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->start()V

    .line 90
    return-void
.end method
