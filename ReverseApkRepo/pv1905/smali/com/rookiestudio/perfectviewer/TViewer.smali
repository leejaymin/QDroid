.class public Lcom/rookiestudio/perfectviewer/TViewer;
.super Landroid/view/SurfaceView;
.source "TViewer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/rookiestudio/baseclass/TAnimatorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;
    }
.end annotation


# static fields
.field public static CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;


# instance fields
.field private BarCanvas:Landroid/graphics/Canvas;

.field public Callback:Lcom/rookiestudio/baseclass/TViewerCallback;

.field public ChangingPage:Z

.field private ClipX:I

.field private ClipY:I

.field private ClockUpdateTimer:Ljava/util/Timer;

.field private DelayHideHeader:Ljava/lang/Runnable;

.field private DelayHideInfo:Ljava/lang/Runnable;

.field private DelayHideMessage:Ljava/lang/Runnable;

.field public DestHeight:I

.field public DestWidth:I

.field public DrawBackBuf:[I

.field public DrawBuf:[I

.field public final EffectDuration:I

.field public Fling:Z

.field public FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

.field public FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

.field private LastMoveDest:I

.field public LastSurfaceHeight:I

.field public LastSurfaceWidth:I

.field private MTextPaint:Landroid/text/TextPaint;

.field public MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

.field public MainScroller:Landroid/widget/Scroller;

.field private MaxMessageWidth:I

.field private MaxResize:F

.field private MessageBG:Landroid/graphics/Bitmap;

.field private MessageBar:Landroid/graphics/Bitmap;

.field private MessageBarWidth:I

.field public final MessageEffectDuration:I

.field public MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

.field private MessageStartX:I

.field public MessageString:Ljava/lang/String;

.field private NPMessageBG:Landroid/graphics/NinePatch;

.field public NeedDoClip:Z

.field private PageHeaderHandler:Landroid/os/Handler;

.field public PageHeaderStr:Ljava/lang/String;

.field private PageInfoHandler:Landroid/os/Handler;

.field public PageInfoStr:Ljava/lang/String;

.field private PageTransition:I

.field private ParentContext:Landroid/content/Context;

.field public ShowZoomFactor:Z

.field public SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

.field private StatusBarBMP:Landroid/graphics/Bitmap;

.field private StatusBarX:I

.field private StatusBarY:I

.field public StatusStr:Ljava/lang/String;

.field public SurfaceReady:Z

.field private TextRect:Landroid/graphics/Rect;

.field private TextSize:I

.field private UpdateTimeTask:Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

.field public ViewSizeChanged:Z

.field private ZoomStr:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private lineText:Ljava/lang/String;

.field private paint1:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/32 v2, 0xea60

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    .line 37
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBackBuf:[I

    .line 39
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    .line 41
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->LastSurfaceWidth:I

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->LastSurfaceHeight:I

    .line 42
    new-instance v0, Lcom/rookiestudio/baseclass/TSprite;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TSprite;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 43
    new-instance v0, Lcom/rookiestudio/baseclass/TSprite;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TSprite;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 44
    new-instance v0, Lcom/rookiestudio/baseclass/TSprite;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TSprite;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 45
    new-instance v0, Lcom/rookiestudio/baseclass/TSprite;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TSprite;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBarWidth:I

    .line 48
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxMessageWidth:I

    .line 49
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageStartX:I

    .line 50
    const/16 v0, 0xc8

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->EffectDuration:I

    .line 51
    const/16 v0, 0x190

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageEffectDuration:I

    .line 52
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->LastMoveDest:I

    .line 53
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->Callback:Lcom/rookiestudio/baseclass/TViewerCallback;

    .line 54
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NPMessageBG:Landroid/graphics/NinePatch;

    .line 55
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    .line 56
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBG:Landroid/graphics/Bitmap;

    .line 57
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->handler:Landroid/os/Handler;

    .line 61
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SurfaceReady:Z

    .line 62
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 63
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    .line 64
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ViewSizeChanged:Z

    .line 65
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ShowZoomFactor:Z

    .line 66
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->Fling:Z

    .line 67
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusStr:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoStr:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderStr:Ljava/lang/String;

    .line 71
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainScroller:Landroid/widget/Scroller;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->lineText:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ZoomStr:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->BarCanvas:Landroid/graphics/Canvas;

    .line 76
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint2:Landroid/graphics/Paint;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    .line 83
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateTimeTask:Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

    .line 84
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClockUpdateTimer:Ljava/util/Timer;

    .line 85
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderHandler:Landroid/os/Handler;

    .line 86
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoHandler:Landroid/os/Handler;

    .line 1380
    new-instance v0, Lcom/rookiestudio/perfectviewer/TViewer$1;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TViewer$1;-><init>(Lcom/rookiestudio/perfectviewer/TViewer;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideMessage:Ljava/lang/Runnable;

    .line 1482
    new-instance v0, Lcom/rookiestudio/perfectviewer/TViewer$2;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TViewer$2;-><init>(Lcom/rookiestudio/perfectviewer/TViewer;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideHeader:Ljava/lang/Runnable;

    .line 1490
    new-instance v0, Lcom/rookiestudio/perfectviewer/TViewer$3;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TViewer$3;-><init>(Lcom/rookiestudio/perfectviewer/TViewer;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideInfo:Ljava/lang/Runnable;

    .line 96
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ParentContext:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainScroller:Landroid/widget/Scroller;

    .line 98
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    .line 99
    .local v6, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v6, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 101
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    .line 102
    const v1, 0x7f020061

    .line 101
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBG:Landroid/graphics/Bitmap;

    .line 103
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBG:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBG:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-direct {v0, v1, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NPMessageBG:Landroid/graphics/NinePatch;

    .line 105
    new-instance v0, Lcom/rookiestudio/baseclass/TSizeFactor;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TSizeFactor;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoHandler:Landroid/os/Handler;

    .line 108
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateTimeTask:Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

    invoke-direct {v0, p0}, Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;-><init>(Lcom/rookiestudio/perfectviewer/TViewer;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateTimeTask:Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

    .line 110
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClockUpdateTimer:Ljava/util/Timer;

    .line 111
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClockUpdateTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateTimeTask:Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 113
    :cond_0
    return-void
.end method

.method private CreateMessageBitmap()V
    .locals 15

    .prologue
    .line 1387
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1389
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    .line 1391
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1433
    :cond_1
    :goto_0
    return-void

    .line 1394
    :cond_2
    const/high16 v1, 0x4160

    sget v2, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v1, v2

    float-to-int v10, v1

    .line 1395
    .local v10, TextSize:I
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->reset()V

    .line 1396
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1397
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1398
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    int-to-float v2, v10

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1399
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1400
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1401
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    .line 1402
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxMessageWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1401
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1403
    .local v0, TextLayout:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v13

    .line 1404
    .local v13, lineCount:I
    mul-int v9, v13, v10

    .line 1405
    .local v9, TextHeight:I
    const/high16 v1, 0x4220

    sget v2, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 1407
    .local v8, StartY:I
    :try_start_0
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBarWidth:I

    .line 1408
    const/high16 v2, 0x4230

    sget v3, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v9

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1407
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1415
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->BarCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1416
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NPMessageBG:Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->BarCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->BarCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1420
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1422
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v13, :cond_1

    .line 1426
    mul-int v1, v12, v10

    add-int v14, v8, v1

    .line 1427
    .local v14, y:I
    :try_start_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->BarCanvas:Landroid/graphics/Canvas;

    .line 1428
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 1429
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    .line 1428
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1429
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageStartX:I

    int-to-float v3, v3

    int-to-float v4, v14

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    .line 1427
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1422
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1409
    .end local v12           #i:I
    .end local v14           #y:I
    :catch_0
    move-exception v11

    .line 1410
    .local v11, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1411
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1410
    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/TUtility;->ErrorAndExit(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1431
    .end local v11           #e:Ljava/lang/OutOfMemoryError;
    .restart local v12       #i:I
    .restart local v14       #y:I
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public BottomMax()Z
    .locals 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    rsub-int/lit8 v1, v1, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CalcSizeFactor(F)F
    .locals 2
    .parameter "f"

    .prologue
    .line 552
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v0, :cond_0

    .line 553
    const/high16 v0, 0x3f80

    .line 555
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public CheckNeedResize(III)Z
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "f"

    .prologue
    .line 1469
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    if-ne v0, p2, :cond_0

    .line 1470
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentFilter:I

    if-ne v0, p3, :cond_0

    .line 1471
    const/4 v0, 0x0

    .line 1479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ConfigChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x42c8

    .line 140
    const-string v1, "perfectviewer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConfigurationChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->getWidth()I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    .line 142
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->getHeight()I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    .line 143
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    int-to-float v1, v1

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScrollDistance:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    .line 144
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    int-to-float v1, v1

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScrollDistance:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    if-eqz v1, :cond_4

    .line 147
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 149
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRegionNoRotate:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    if-eqz v1, :cond_5

    .line 161
    invoke-static {}, Lcom/rookiestudio/perfectviewer/Config;->CreateTouchRegionL()V

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->ReCreate()V

    .line 178
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->Callback:Lcom/rookiestudio/baseclass/TViewerCallback;

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->Callback:Lcom/rookiestudio/baseclass/TViewerCallback;

    invoke-interface {v1}, Lcom/rookiestudio/baseclass/TViewerCallback;->onViewerReady()V

    .line 181
    :cond_3
    :goto_2
    return-void

    .line 153
    :cond_4
    :try_start_1
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 157
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/TUtility;->ErrorAndExit(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 163
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    invoke-static {}, Lcom/rookiestudio/perfectviewer/Config;->CreateTouchRegion()V

    goto :goto_1
.end method

.method public Delete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NPMessageBG:Landroid/graphics/NinePatch;

    .line 224
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBG:Landroid/graphics/Bitmap;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    .line 236
    :cond_2
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    .line 237
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBackBuf:[I

    .line 238
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateTimeTask:Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateTimeTask:Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;->cancel()Z

    .line 240
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateTimeTask:Lcom/rookiestudio/perfectviewer/TViewer$TUpdateTimeTask;

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClockUpdateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClockUpdateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 244
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClockUpdateTimer:Ljava/util/Timer;

    .line 246
    :cond_4
    return-void
.end method

.method public DoUpdate()V
    .locals 8

    .prologue
    .line 696
    iget-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SurfaceReady:Z

    if-nez v3, :cond_0

    .line 725
    :goto_0
    return-void

    .line 700
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :try_start_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 702
    .local v2, surfaceHolder:Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 703
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_2

    .line 704
    const/high16 v3, -0x100

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->BackgroundColor:I

    or-int/2addr v3, v5

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 705
    iget-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    if-eqz v3, :cond_3

    .line 706
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->onDraw2(Landroid/graphics/Canvas;)V

    .line 710
    :goto_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-boolean v3, v3, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 713
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->X:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v6, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    int-to-float v6, v6

    .line 714
    const/4 v7, 0x0

    .line 713
    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 716
    :cond_1
    iget-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ShowZoomFactor:Z

    if-eqz v3, :cond_2

    .line 717
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawZoomFactor(Landroid/graphics/Canvas;)V

    .line 720
    :cond_2
    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 700
    monitor-exit v4

    goto :goto_0

    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #surfaceHolder:Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 708
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    .restart local v2       #surfaceHolder:Landroid/view/SurfaceHolder;
    :cond_3
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V
    .locals 17
    .parameter "canvas"
    .parameter "Function"
    .parameter "TextRect"

    .prologue
    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->reset()V

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1186
    const/high16 v3, 0x4190

    sget v4, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->TextSize:I

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rookiestudio/perfectviewer/TViewer;->TextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1191
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    aget-object v3, v3, p2

    .line 1192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1191
    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1193
    .local v2, TextLayout:Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v15

    .line 1194
    .local v15, lineCount:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->TextSize:I

    mul-int v12, v15, v3

    .line 1195
    .local v12, TextHeight:I
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rookiestudio/perfectviewer/TViewer;->TextSize:I

    add-int/2addr v3, v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v12

    shr-int/lit8 v4, v4, 0x1

    add-int v11, v3, v4

    .line 1196
    .local v11, StartY:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-lt v14, v15, :cond_0

    .line 1204
    return-void

    .line 1197
    :cond_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    aget-object v3, v3, p2

    .line 1198
    invoke-virtual {v2, v14}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v2, v14}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    .line 1197
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->lineText:Ljava/lang/String;

    .line 1199
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    .line 1200
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/rookiestudio/perfectviewer/TViewer;->lineText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    .line 1199
    add-float/2addr v3, v4

    float-to-int v13, v3

    .line 1201
    .local v13, XX:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->TextSize:I

    mul-int/2addr v3, v14

    add-int v16, v11, v3

    .line 1202
    .local v16, y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rookiestudio/perfectviewer/TViewer;->lineText:Ljava/lang/String;

    int-to-float v5, v13

    move/from16 v0, v16

    int-to-float v6, v0

    const/4 v7, 0x3

    const/4 v8, -0x1

    const/high16 v9, -0x100

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lcom/rookiestudio/perfectviewer/TUtility;->DrawTextEx(Landroid/graphics/Canvas;Ljava/lang/String;FFIIILandroid/text/TextPaint;)V

    .line 1196
    add-int/lit8 v14, v14, 0x1

    goto :goto_0
.end method

.method public DrawNoTouchFunction(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v6, -0x100

    .line 1207
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1208
    .local v1, Str:Ljava/lang/String;
    const/high16 v0, 0x4190

    sget v2, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    .line 1209
    .local v8, TextSize:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1210
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    int-to-float v2, v8

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1211
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1212
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1213
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    float-to-int v9, v0

    .line 1214
    .local v9, XX:I
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    div-int/lit8 v10, v0, 0x2

    .line 1215
    .local v10, y:I
    int-to-float v2, v9

    int-to-float v3, v10

    const/4 v4, 0x3

    const/4 v5, -0x1

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TUtility;->DrawTextEx(Landroid/graphics/Canvas;Ljava/lang/String;FFIIILandroid/text/TextPaint;)V

    .line 1216
    return-void
.end method

.method public DrawPageFooter(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, -0x100

    .line 1238
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1241
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->TextSizeList:[D

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoSize:I

    aget-wide v0, v0, v1

    sget v2, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 1242
    .local v8, TextSize:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1243
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    int-to-float v1, v8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1244
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1245
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1246
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1247
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1248
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1249
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    const/16 v1, 0x1e

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1250
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    .line 1251
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 1250
    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 1252
    .local v9, XX:I
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    add-int/lit8 v10, v0, -0x14

    .line 1253
    .local v10, y:I
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoStr:Ljava/lang/String;

    int-to-float v2, v9

    int-to-float v3, v10

    const/4 v4, 0x3

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoColor:I

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TUtility;->DrawTextEx(Landroid/graphics/Canvas;Ljava/lang/String;FFIIILandroid/text/TextPaint;)V

    goto :goto_0
.end method

.method public DrawPageHeader(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, -0x100

    .line 1219
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1222
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->TextSizeList:[D

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderSize:I

    aget-wide v0, v0, v1

    sget v2, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 1223
    .local v8, TextSize:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1224
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    int-to-float v1, v8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1225
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1226
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1227
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1228
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1229
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1230
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    const/16 v1, 0x1e

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1231
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    .line 1232
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 1231
    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 1233
    .local v9, XX:I
    const/16 v10, 0x1e

    .line 1234
    .local v10, y:I
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderStr:Ljava/lang/String;

    int-to-float v2, v9

    int-to-float v3, v10

    const/4 v4, 0x3

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderColor:I

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TUtility;->DrawTextEx(Landroid/graphics/Canvas;Ljava/lang/String;FFIIILandroid/text/TextPaint;)V

    goto :goto_0
.end method

.method public DrawShadow(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1525
    sget-boolean v5, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/rookiestudio/perfectviewer/Config;->DrawPageShadow:Z

    if-nez v5, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    const/4 v5, 0x5

    new-array v0, v5, [I

    const/4 v5, 0x1

    const/high16 v6, 0x400

    aput v6, v0, v5

    const/4 v5, 0x2

    const/high16 v6, 0x1000

    aput v6, v0, v5

    const/4 v5, 0x3

    const/high16 v6, 0x3000

    aput v6, v0, v5

    const/4 v5, 0x4

    const/high16 v6, -0x8000

    aput v6, v0, v5

    .line 1529
    .local v0, GradientColor:[I
    sget-object v5, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    int-to-float v5, v5

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->PageShadowSize:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 1531
    .local v2, ShadowWidth:I
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v5, :cond_3

    .line 1532
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget-object v6, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Width:I

    add-int v3, v5, v6

    .line 1536
    .local v3, x:I
    :goto_1
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v5, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 1537
    .local v4, y:I
    if-gez v4, :cond_2

    .line 1538
    const/4 v4, 0x0

    .line 1540
    :cond_2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1541
    .local v1, GradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, v3, v2

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v7, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    add-int/2addr v7, v4

    invoke-direct {v5, v6, v4, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1542
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1544
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .end local v1           #GradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1545
    .restart local v1       #GradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v2

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v7, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    add-int/2addr v7, v4

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1546
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1534
    .end local v1           #GradientDrawable1:Landroid/graphics/drawable/GradientDrawable;
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_3
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget-object v6, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Width:I

    add-int v3, v5, v6

    .restart local v3       #x:I
    goto :goto_1
.end method

.method public DrawStatusBar()V
    .locals 11

    .prologue
    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1259
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CurrentDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1260
    const-string v0, "%d%% %tR"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->BatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->CurrentDate:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusStr:Ljava/lang/String;

    .line 1261
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->BarCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1262
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->TextSizeList:[D

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ShowClockSize:I

    aget-wide v0, v0, v1

    sget v2, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 1263
    .local v8, TextSize:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    .line 1264
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1265
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    int-to-float v1, v8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1266
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1267
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1268
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1269
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x4

    .line 1270
    .local v9, XX:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/lit8 v10, v0, 0x4

    .line 1272
    .local v10, y:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->BarCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusStr:Ljava/lang/String;

    int-to-float v2, v9

    int-to-float v3, v10

    const/4 v4, 0x3

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ShowClockColor:I

    const/high16 v6, -0x100

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-static/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TUtility;->DrawTextEx(Landroid/graphics/Canvas;Ljava/lang/String;FFIIILandroid/text/TextPaint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    .end local v8           #TextSize:I
    .end local v9           #XX:I
    .end local v10           #y:I
    :goto_0
    return-void

    .line 1273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public DrawTouchFunction(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawTouchFunction(Landroid/graphics/Canvas;Z)V

    .line 1102
    return-void
.end method

.method public DrawTouchFunction(Landroid/graphics/Canvas;Z)V
    .locals 2
    .parameter "canvas"
    .parameter "Transparent"

    .prologue
    .line 1105
    if-eqz p2, :cond_1

    .line 1106
    const v0, 0x6f9f9f9f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1120
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1121
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1122
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1123
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1165
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1167
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1169
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->TLFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectTL:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1170
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->TCFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectTC:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1171
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->TRFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectTR:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1172
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->LeftFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectLeft:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1173
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->MUFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectMU:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1174
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->MCFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectMC:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1175
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->MDFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectMD:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1176
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->RightFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectRight:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1177
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->BRFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectBR:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1178
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->BCFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectBC:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1179
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->BLFunction:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->TouchRectBL:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawFunctionText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    .line 1180
    :goto_1
    return-void

    .line 1108
    :cond_1
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-eqz v0, :cond_2

    .line 1109
    const/16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    .line 1111
    :cond_2
    const v0, -0x2e281e

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1112
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableTouchZone:Z

    if-nez v0, :cond_0

    .line 1113
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawNoTouchFunction(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public DrawZoomFactor(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v6, -0x100

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ZoomStr:Ljava/lang/String;

    .line 1280
    const/high16 v0, 0x4190

    sget v1, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 1282
    .local v8, TextSize:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    .line 1283
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1284
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    int-to-float v1, v8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1285
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1286
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1287
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1288
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1289
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1290
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    const/16 v1, 0x1e

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1291
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->TextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    .line 1292
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ZoomStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 1291
    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 1293
    .local v9, XX:I
    const/16 v10, 0x32

    .line 1294
    .local v10, y:I
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ZoomStr:Ljava/lang/String;

    int-to-float v2, v9

    int-to-float v3, v10

    const/4 v4, 0x3

    const/4 v5, -0x1

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TUtility;->DrawTextEx(Landroid/graphics/Canvas;Ljava/lang/String;FFIIILandroid/text/TextPaint;)V

    .line 1295
    return-void
.end method

.method public FastZoom(Lcom/rookiestudio/baseclass/TSizeFactor;II)V
    .locals 7
    .parameter "f"
    .parameter "x"
    .parameter "y"

    .prologue
    const v3, 0x3d4ccccd

    .line 559
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    if-nez v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v2, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v2, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 563
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v2, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v2, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 569
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    .line 570
    :cond_2
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iput v3, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 571
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iput v3, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 578
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v2

    .line 579
    :try_start_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 580
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 581
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v3, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 582
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v3, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 584
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 585
    .local v0, OldPage:I
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    invoke-virtual {p0, v1, v3, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->CheckNeedResize(III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 586
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 587
    sget v6, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 586
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V

    .line 589
    :cond_4
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iput v0, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 590
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 591
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 592
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSprite;->X:I

    add-int/2addr v3, p2

    iput v3, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 593
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    add-int/2addr v3, p3

    iput v3, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 594
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-ge v1, v3, :cond_9

    .line 595
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 603
    :cond_5
    :goto_2
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-ge v1, v3, :cond_b

    .line 604
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 612
    :cond_6
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 578
    monitor-exit v2

    goto/16 :goto_0

    .end local v0           #OldPage:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 573
    :cond_7
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_8

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 574
    :cond_8
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    iput v2, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 575
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    iput v2, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    goto/16 :goto_1

    .line 597
    .restart local v0       #OldPage:I
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    add-int/2addr v1, v3

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-ge v1, v3, :cond_a

    .line 598
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_2

    .line 599
    :cond_a
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-lez v1, :cond_5

    .line 600
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x0

    iput v3, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_2

    .line 606
    :cond_b
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    add-int/2addr v1, v3

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-ge v1, v3, :cond_c

    .line 607
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto :goto_3

    .line 608
    :cond_c
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-lez v1, :cond_6

    .line 609
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x0

    iput v3, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public HideMessage()V
    .locals 2

    .prologue
    .line 1314
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-boolean v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    if-eqz v0, :cond_1

    .line 1315
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/16 v1, 0xff

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 1318
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    .line 1319
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SurfaceReady:Z

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :cond_1
    :goto_0
    return-void

    .line 1329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public HideMessage2()V
    .locals 2

    .prologue
    .line 1299
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-boolean v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    if-eqz v0, :cond_0

    .line 1300
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    .line 1301
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/16 v1, 0xff

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 1302
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :cond_1
    :goto_0
    return-void

    .line 1308
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public LeftMax()Z
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReCreate()V
    .locals 5

    .prologue
    const-wide v3, 0x3fee147ae147ae14L

    .line 119
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 120
    const/high16 v0, 0x42c8

    sget v1, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 121
    const/high16 v1, 0x41c0

    sget v2, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 120
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    .line 122
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarX:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarY:I

    .line 124
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawStatusBar()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 127
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBarWidth:I

    .line 128
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBarWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxMessageWidth:I

    .line 129
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBarWidth:I

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxMessageWidth:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageStartX:I

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-boolean v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    if-eqz v0, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->CreateMessageBitmap()V

    .line 136
    :cond_2
    return-void
.end method

.method public RightMax()Z
    .locals 2

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    rsub-int/lit8 v1, v1, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ScrollBackward(II)Z
    .locals 18
    .parameter "PageDirection"
    .parameter "PageCoordinate"

    .prologue
    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 833
    .local v5, TempY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    move/from16 v17, v0

    .line 834
    .local v17, TempX:I
    packed-switch p2, :pswitch_data_0

    move/from16 v8, v17

    .line 962
    .end local v17           #TempX:I
    .local v8, TempX:I
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 963
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 836
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v4, v2, 0x0

    .line 837
    .local v4, MaxDrawX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v16, v2, 0x0

    .line 838
    .local v16, MaxDrawY:I
    if-nez p1, :cond_5

    .line 839
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-le v2, v3, :cond_0

    .line 840
    move/from16 v5, v16

    .line 843
    :cond_0
    const/4 v2, 0x2

    .line 842
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollBackward(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    const/4 v2, 0x1

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto :goto_1

    .line 845
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-lt v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-ne v2, v4, :cond_3

    .line 846
    :cond_2
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto :goto_1

    .line 847
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_4

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 849
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v6, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 850
    sget v7, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    sub-int v4, v6, v7

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    .line 849
    invoke-virtual/range {v2 .. v8}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    .end local v4           #MaxDrawX:I
    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto :goto_0

    .line 853
    .end local v8           #TempX:I
    .restart local v4       #MaxDrawX:I
    .restart local v17       #TempX:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 854
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v6, 0x0

    .line 855
    const/16 v7, 0xc8

    const/4 v8, 0x0

    .line 854
    invoke-virtual/range {v2 .. v8}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 859
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-le v2, v3, :cond_6

    .line 860
    move/from16 v5, v16

    .line 863
    :cond_6
    const/4 v2, 0x2

    .line 862
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollBackward(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 864
    const/4 v2, 0x1

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 865
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-lt v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-nez v2, :cond_9

    .line 866
    :cond_8
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 868
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    add-int/2addr v2, v3

    if-gez v2, :cond_a

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 870
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 871
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    add-int v8, v2, v3

    const/4 v10, 0x0

    const/16 v11, 0xc8

    const/4 v12, 0x0

    move v9, v5

    .line 870
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 874
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 875
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 876
    const/16 v11, 0xc8

    const/4 v12, 0x0

    move v9, v5

    .line 875
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .line 880
    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 882
    .end local v4           #MaxDrawX:I
    .end local v8           #TempX:I
    .end local v16           #MaxDrawY:I
    .restart local v17       #TempX:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v4, v2, 0x0

    .line 883
    .restart local v4       #MaxDrawX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v16, v2, 0x0

    .line 884
    .restart local v16       #MaxDrawY:I
    if-nez p1, :cond_f

    .line 885
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-le v2, v3, :cond_1c

    .line 886
    const/4 v8, 0x0

    .line 889
    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    :goto_2
    const/4 v2, 0x3

    .line 888
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollBackward(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 890
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 891
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-lt v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-nez v2, :cond_d

    .line 892
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 893
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    add-int/2addr v2, v3

    if-gez v2, :cond_e

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 895
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    add-int v9, v2, v3

    const/4 v10, 0x0

    const/16 v11, 0xc8

    const/4 v12, 0x0

    .line 895
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 899
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 900
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 901
    const/16 v11, 0xc8

    const/4 v12, 0x0

    .line 900
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 904
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-le v2, v3, :cond_1b

    .line 905
    move v8, v4

    .line 908
    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    :goto_3
    const/4 v2, 0x3

    .line 907
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollBackward(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 909
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 910
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-lt v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-nez v2, :cond_12

    .line 911
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 912
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    add-int/2addr v2, v3

    if-gez v2, :cond_13

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 914
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    add-int v9, v2, v3

    const/4 v10, 0x0

    const/16 v11, 0xc8

    const/4 v12, 0x0

    .line 914
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 918
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 919
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 920
    const/16 v11, 0xc8

    const/4 v12, 0x0

    .line 919
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 925
    .end local v4           #MaxDrawX:I
    .end local v8           #TempX:I
    .end local v16           #MaxDrawY:I
    .restart local v17       #TempX:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-lt v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-nez v2, :cond_15

    .line 926
    :cond_14
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 927
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    add-int/2addr v2, v3

    if-gez v2, :cond_16

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 929
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v11, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    add-int v12, v2, v3

    const/4 v13, 0x0

    const/16 v14, 0xc8

    const/4 v15, 0x0

    .line 929
    invoke-virtual/range {v9 .. v15}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 933
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 934
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v11, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    const/4 v12, 0x0

    .line 935
    const/4 v13, 0x0

    const/16 v14, 0xc8

    const/4 v15, 0x0

    .line 934
    invoke-virtual/range {v9 .. v15}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .line 938
    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 940
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :pswitch_3
    if-nez p1, :cond_1a

    .line 941
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v4, v2, 0x0

    .line 942
    .restart local v4       #MaxDrawX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-lt v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-ne v2, v4, :cond_18

    .line 943
    :cond_17
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 944
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_19

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 946
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 947
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    sub-int v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v12, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    const/4 v13, 0x0

    const/16 v14, 0xc8

    const/4 v15, 0x0

    .line 946
    invoke-virtual/range {v9 .. v15}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 950
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 951
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v12, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    const/4 v13, 0x0

    const/16 v14, 0xc8

    const/4 v15, 0x0

    move v11, v4

    .line 951
    invoke-virtual/range {v9 .. v15}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 956
    .end local v4           #MaxDrawX:I
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollForward(II)Z

    move-result v2

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 960
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :pswitch_4
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .end local v8           #TempX:I
    .restart local v4       #MaxDrawX:I
    .restart local v16       #MaxDrawY:I
    .restart local v17       #TempX:I
    :cond_1b
    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_3

    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_1c
    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_2

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ScrollForward(II)Z
    .locals 18
    .parameter "PageDirection"
    .parameter "PageCoordinate"

    .prologue
    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 969
    .local v5, TempY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    move/from16 v17, v0

    .line 970
    .local v17, TempX:I
    packed-switch p2, :pswitch_data_0

    move/from16 v8, v17

    .line 1096
    .end local v17           #TempX:I
    .local v8, TempX:I
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 1097
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 972
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :pswitch_0
    if-nez p1, :cond_5

    .line 973
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-le v2, v3, :cond_0

    .line 974
    const/4 v5, 0x0

    .line 977
    :cond_0
    const/4 v2, 0x2

    .line 976
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollForward(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 978
    const/4 v2, 0x1

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto :goto_1

    .line 979
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-lt v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-nez v2, :cond_3

    .line 980
    :cond_2
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto :goto_1

    .line 981
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    add-int/2addr v2, v3

    if-gez v2, :cond_4

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 983
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v6, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 984
    sget v7, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    add-int v4, v6, v7

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    .line 983
    invoke-virtual/range {v2 .. v8}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto :goto_0

    .line 987
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 988
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 989
    const/16 v7, 0xc8

    const/4 v8, 0x0

    .line 988
    invoke-virtual/range {v2 .. v8}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto :goto_0

    .line 993
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v4, v2, 0x0

    .line 994
    .local v4, MaxDrawX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v9, v2, 0x0

    .line 995
    .local v9, MaxDrawY:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-le v2, v3, :cond_6

    .line 996
    const/4 v5, 0x0

    .line 999
    :cond_6
    const/4 v2, 0x2

    .line 998
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollForward(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1000
    const/4 v2, 0x1

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 1001
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-lt v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-ne v2, v4, :cond_9

    .line 1002
    :cond_8
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 1003
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_a

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1005
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v6, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 1006
    sget v7, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    sub-int v4, v6, v7

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    .line 1005
    invoke-virtual/range {v2 .. v8}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    .end local v4           #MaxDrawX:I
    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 1009
    .end local v8           #TempX:I
    .restart local v4       #MaxDrawX:I
    .restart local v17       #TempX:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1010
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v6, 0x0

    .line 1011
    const/16 v7, 0xc8

    const/4 v8, 0x0

    .line 1010
    invoke-virtual/range {v2 .. v8}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .line 1015
    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 1017
    .end local v4           #MaxDrawX:I
    .end local v8           #TempX:I
    .end local v9           #MaxDrawY:I
    .restart local v17       #TempX:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v4, v2, 0x0

    .line 1018
    .restart local v4       #MaxDrawX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v9, v2, 0x0

    .line 1019
    .restart local v9       #MaxDrawY:I
    if-nez p1, :cond_f

    .line 1020
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-le v2, v3, :cond_1c

    .line 1021
    move v8, v4

    .line 1023
    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    :goto_2
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollForward(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1024
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1025
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-lt v2, v3, :cond_c

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-ne v2, v9, :cond_d

    .line 1027
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1028
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    sub-int/2addr v2, v3

    if-le v2, v9, :cond_e

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1030
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    sub-int v9, v2, v3

    const/4 v10, 0x0

    const/16 v11, 0xc8

    const/4 v12, 0x0

    .line 1030
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 1034
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1035
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v10, 0x0

    .line 1036
    const/16 v11, 0xc8

    const/4 v12, 0x0

    .line 1035
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 1039
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-le v2, v3, :cond_1b

    .line 1040
    const/4 v8, 0x0

    .line 1042
    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    :goto_3
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollForward(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1043
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1044
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-lt v2, v3, :cond_11

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-ne v2, v9, :cond_12

    .line 1046
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1047
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    sub-int/2addr v2, v3

    if-le v2, v9, :cond_13

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1049
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    sub-int v13, v2, v3

    const/4 v14, 0x0

    const/16 v15, 0xc8

    const/16 v16, 0x0

    move v12, v8

    .line 1049
    invoke-virtual/range {v10 .. v16}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 1052
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1053
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v10, 0x0

    .line 1054
    const/16 v11, 0xc8

    const/4 v12, 0x0

    .line 1053
    invoke-virtual/range {v6 .. v12}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 1059
    .end local v4           #MaxDrawX:I
    .end local v8           #TempX:I
    .end local v9           #MaxDrawY:I
    .restart local v17       #TempX:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sub-int/2addr v2, v3

    rsub-int/lit8 v9, v2, 0x0

    .line 1060
    .restart local v9       #MaxDrawY:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-lt v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-ne v2, v9, :cond_15

    .line 1061
    :cond_14
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 1062
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    sub-int/2addr v2, v3

    if-le v2, v9, :cond_16

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1064
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v12, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollHeight:I

    sub-int v13, v2, v3

    const/4 v14, 0x0

    const/16 v15, 0xc8

    const/16 v16, 0x0

    .line 1064
    invoke-virtual/range {v10 .. v16}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 1068
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1069
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v12, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 1070
    const/4 v14, 0x0

    const/16 v15, 0xc8

    const/16 v16, 0x0

    move v13, v9

    .line 1069
    invoke-virtual/range {v10 .. v16}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .line 1073
    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 1075
    .end local v8           #TempX:I
    .end local v9           #MaxDrawY:I
    .restart local v17       #TempX:I
    :pswitch_3
    if-nez p1, :cond_1a

    .line 1076
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-lt v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-nez v2, :cond_18

    .line 1077
    :cond_17
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 1078
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    add-int/2addr v2, v3

    if-gez v2, :cond_19

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1080
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 1081
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScrollWidth:I

    add-int v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v13, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    const/4 v14, 0x0

    const/16 v15, 0xc8

    const/16 v16, 0x0

    .line 1080
    invoke-virtual/range {v10 .. v16}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 1084
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 1085
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v12, 0x0

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v13, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    const/4 v14, 0x0

    const/16 v15, 0xc8

    const/16 v16, 0x0

    .line 1085
    invoke-virtual/range {v10 .. v16}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_0

    .line 1090
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollBackward(II)Z

    move-result v2

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .line 1094
    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :pswitch_4
    const/4 v2, 0x0

    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_1

    .end local v8           #TempX:I
    .restart local v4       #MaxDrawX:I
    .restart local v9       #MaxDrawY:I
    .restart local v17       #TempX:I
    :cond_1b
    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_3

    .end local v8           #TempX:I
    .restart local v17       #TempX:I
    :cond_1c
    move/from16 v8, v17

    .end local v17           #TempX:I
    .restart local v8       #TempX:I
    goto/16 :goto_2

    .line 970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SetPageFit(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 280
    sput p1, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    .line 281
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateBitmap()V

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 285
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    .line 288
    :cond_0
    return-void
.end method

.method public SetPageHeaderStr(Ljava/lang/String;)V
    .locals 4
    .parameter "S"

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderStr:Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideHeader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1511
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderDelay:I

    if-lez v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageHeaderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideHeader:Ljava/lang/Runnable;

    .line 1513
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderDelay:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 1512
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1515
    :cond_0
    return-void
.end method

.method public SetPageInfoStr(Ljava/lang/String;)V
    .locals 4
    .parameter "S"

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoStr:Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1502
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoDelay:I

    if-lez v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageInfoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideInfo:Ljava/lang/Runnable;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoDelay:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1505
    :cond_0
    return-void
.end method

.method public SetPosition(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 421
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 424
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-le v0, v1, :cond_1

    .line 425
    if-lez p1, :cond_3

    .line 426
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    add-int/2addr v0, p1

    if-gtz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 435
    :cond_1
    :goto_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-le v0, v1, :cond_2

    .line 436
    if-lez p2, :cond_4

    .line 437
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    add-int/2addr v0, p2

    if-gtz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 446
    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 447
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto :goto_0

    .line 429
    :cond_3
    if-gez p1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    add-int/2addr v0, p1

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_1

    .line 440
    :cond_4
    if-gez p2, :cond_2

    .line 441
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    add-int/2addr v0, p2

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 442
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto :goto_2
.end method

.method public SetResampling(I)V
    .locals 10
    .parameter "value"

    .prologue
    .line 249
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v5

    .line 250
    :try_start_0
    const-string v4, "perfectviewer"

    const-string v6, "locked DrawBuf"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    if-eq v4, p1, :cond_2

    .line 252
    sput p1, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 253
    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-eqz v4, :cond_2

    .line 254
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v6, v6, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v6, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 255
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v6, v6, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v6, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 258
    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TBitmap;->getWidth()I

    move-result v4

    int-to-double v2, v4

    .line 259
    .local v2, w:D
    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TBitmap;->getHeight()I

    move-result v4

    int-to-double v0, v4

    .line 260
    .local v0, h:D
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    float-to-double v6, v4

    mul-double/2addr v6, v2

    double-to-int v4, v6

    iput v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 261
    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v4, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-eqz v4, :cond_0

    .line 262
    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 264
    :cond_0
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    float-to-double v6, v4

    mul-double/2addr v6, v0

    double-to-int v4, v6

    iput v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 265
    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v7, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    invoke-virtual {p0, v4, v6, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->CheckNeedResize(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v8, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 267
    sget v9, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 266
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V

    .line 269
    :cond_1
    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v4, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    iput v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 270
    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v4, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    iput v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 271
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 272
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 249
    .end local v0           #h:D
    .end local v2           #w:D
    :cond_2
    monitor-exit v5

    .line 276
    return-void

    .line 249
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public ShowMessage(II)V
    .locals 2
    .parameter "ResStr"
    .parameter "Duration"

    .prologue
    .line 1342
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    .line 1343
    return-void
.end method

.method public ShowMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "S"

    .prologue
    .line 1335
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public ShowMessage(Ljava/lang/String;IZ)V
    .locals 4
    .parameter "S"
    .parameter "Duration"
    .parameter "animate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1346
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1350
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1351
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    .line 1352
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SurfaceReady:Z

    if-nez v0, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v2, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 1354
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v2, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 1355
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v2, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 1356
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput-boolean v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    goto :goto_0

    .line 1360
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->CreateMessageBitmap()V

    .line 1361
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v1, 0x0

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 1362
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageBar:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 1363
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v1, 0x0

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 1364
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :goto_1
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SurfaceReady:Z

    if-eqz v0, :cond_3

    .line 1372
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 1374
    :cond_3
    if-lez p2, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DelayHideMessage:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public ShowPage(Z)V
    .locals 13
    .parameter "isForward"

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 617
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    if-nez v0, :cond_2

    .line 621
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 622
    iput-boolean v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    goto :goto_0

    .line 625
    :cond_2
    iput-boolean v10, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    .line 626
    const/4 v7, 0x0

    .line 627
    .local v7, dest_x:I
    const/4 v8, 0x0

    .line 628
    .local v8, dest_y:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 629
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 630
    iput v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    .line 631
    iput v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    .line 632
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-ltz v0, :cond_6

    .line 633
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v8, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 637
    :goto_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-ltz v0, :cond_7

    .line 638
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 642
    :goto_2
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    if-le v0, v1, :cond_3

    .line 643
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 645
    :cond_3
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    if-le v0, v1, :cond_4

    .line 646
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 648
    :cond_4
    iget-object v11, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v11

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBackBuf:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 657
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 658
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 659
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    const/16 v1, 0xff

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 660
    iget-object v12, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    .line 661
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 660
    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TBitmap;->Clip([IIIII)I

    move-result v0

    iput v0, v12, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 662
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v8, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 663
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v1, 0x0

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 648
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    .line 666
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-ne v0, v10, :cond_5

    .line 667
    if-eqz p1, :cond_8

    move p1, v6

    .line 669
    :cond_5
    :goto_3
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    if-ne v0, v10, :cond_a

    .line 670
    if-eqz p1, :cond_9

    .line 671
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    rsub-int/lit8 v1, v1, 0x0

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 676
    :goto_4
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->LastMoveDest:I

    .line 677
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 678
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    move v2, v7

    move v3, v8

    move v4, v6

    move-object v6, p0

    .line 677
    invoke-virtual/range {v0 .. v6}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 635
    :cond_6
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    neg-int v0, v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    goto/16 :goto_1

    .line 640
    :cond_7
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    neg-int v0, v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    goto/16 :goto_2

    .line 651
    :catch_0
    move-exception v9

    .line 652
    .local v9, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    .line 654
    monitor-exit v11

    goto/16 :goto_0

    .line 648
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_8
    move p1, v10

    .line 667
    goto :goto_3

    .line 673
    :cond_9
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 674
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    goto :goto_4

    .line 679
    :cond_a
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 680
    if-eqz p1, :cond_b

    .line 681
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    rsub-int/lit8 v1, v1, 0x0

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 685
    :goto_5
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 686
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    move v2, v7

    move v3, v8

    move v4, v6

    move-object v6, p0

    .line 685
    invoke-virtual/range {v0 .. v6}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0

    .line 683
    :cond_b
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_5

    .line 687
    :cond_c
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 688
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v7, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 689
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    .line 690
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    .line 689
    invoke-virtual {v0, v1, v6, v2, p0}, Lcom/rookiestudio/perfectviewer/TAnimator;->AddFadeInEffect(Lcom/rookiestudio/baseclass/TSprite;IILcom/rookiestudio/baseclass/TAnimatorCallback;)V

    goto/16 :goto_0
.end method

.method public TopMax()Z
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public UpdateBitmap()V
    .locals 8

    .prologue
    .line 291
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v3

    .line 295
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TBitmap;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 296
    .local v1, w:F
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TBitmap;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 299
    .local v0, h:F
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-eqz v2, :cond_2

    .line 300
    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 302
    :cond_2
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    invoke-static {v2, v1, v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->CalcPageFit(IFF)Lcom/rookiestudio/baseclass/TSizeFactor;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    .line 307
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    iput v4, v2, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 309
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    iput v4, v2, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 311
    :cond_4
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-eqz v2, :cond_6

    .line 312
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TBitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 320
    :goto_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 321
    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v4, v2, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 322
    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v4, v2, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 324
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    invoke-virtual {p0, v2, v4, v5}, Lcom/rookiestudio/perfectviewer/TViewer;->CheckNeedResize(III)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 325
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 326
    sget v7, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 325
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V

    .line 330
    :cond_5
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 331
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 332
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 294
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #h:F
    .end local v1           #w:F
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 314
    .restart local v0       #h:F
    .restart local v1       #w:F
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public UpdateClock()V
    .locals 1

    .prologue
    .line 1518
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowClock:Z

    if-eqz v0, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawStatusBar()V

    .line 1520
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 1522
    :cond_0
    return-void
.end method

.method public UpdateCoordinate(Z)V
    .locals 5
    .parameter "isForward"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 337
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v3, :cond_0

    .line 415
    :goto_0
    return-void

    .line 340
    :cond_0
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    .line 341
    .local v0, PageCoordinate:I
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-gt v3, v4, :cond_1

    .line 342
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-gt v3, v4, :cond_1

    .line 343
    const/4 v0, 0x4

    .line 345
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 348
    :pswitch_0
    if-eqz p1, :cond_5

    .line 349
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-gt v2, v3, :cond_2

    .line 350
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v4, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 358
    :goto_1
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-le v2, v3, :cond_4

    .line 359
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v1, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto :goto_0

    .line 352
    :cond_2
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v2, :cond_3

    .line 353
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v4, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_1

    .line 355
    :cond_3
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v1, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_1

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto :goto_0

    .line 365
    :cond_5
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-gt v2, v3, :cond_6

    .line 366
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 374
    :goto_2
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-le v1, v2, :cond_8

    .line 375
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto/16 :goto_0

    .line 368
    :cond_6
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v2, :cond_7

    .line 369
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v1, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_2

    .line 371
    :cond_7
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_2

    .line 377
    :cond_8
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto/16 :goto_0

    .line 382
    :pswitch_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v4, v4, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 383
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-ge v2, v3, :cond_9

    .line 384
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto/16 :goto_0

    .line 386
    :cond_9
    if-eqz p1, :cond_a

    .line 387
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v1, v2, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto/16 :goto_0

    .line 389
    :cond_a
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto/16 :goto_0

    .line 394
    :pswitch_2
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-ne v3, v2, :cond_b

    .line 395
    if-eqz p1, :cond_c

    move p1, v1

    .line 397
    :cond_b
    :goto_3
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-ge v2, v3, :cond_d

    .line 398
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 404
    :goto_4
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto/16 :goto_0

    :cond_c
    move p1, v2

    .line 395
    goto :goto_3

    .line 399
    :cond_d
    if-eqz p1, :cond_e

    .line 400
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_4

    .line 402
    :cond_e
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v1, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_4

    .line 408
    :pswitch_3
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 409
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto/16 :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ZoomIn()V
    .locals 9

    .prologue
    .line 451
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 452
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    if-eqz v3, :cond_0

    .line 458
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ZoomPitch:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 459
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v4, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 460
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 461
    :cond_2
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    iput v4, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 462
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MaxResize:F

    iput v4, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 463
    const v3, 0x7f0a000d

    const/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    .line 465
    :cond_3
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v4

    .line 468
    :try_start_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 469
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 470
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    .line 471
    .local v2, WidthAdd:I
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    .line 472
    .local v0, HeightAdd:I
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v5, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 473
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v5, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 475
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 476
    .local v1, OldPage:I
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    invoke-virtual {p0, v3, v5, v6}, Lcom/rookiestudio/perfectviewer/TViewer;->CheckNeedResize(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 477
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 478
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 477
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V

    .line 480
    :cond_4
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iput v1, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 481
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 482
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 483
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int v2, v3, v2

    .line 484
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int v0, v3, v0

    .line 485
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->X:I

    shr-int/lit8 v6, v2, 0x1

    sub-int/2addr v5, v6

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 486
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    shr-int/lit8 v6, v0, 0x1

    sub-int/2addr v5, v6

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 487
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 465
    monitor-exit v4

    goto/16 :goto_0

    .end local v0           #HeightAdd:I
    .end local v1           #OldPage:I
    .end local v2           #WidthAdd:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public ZoomOut()V
    .locals 9

    .prologue
    const v6, 0x3d4ccccd

    .line 492
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    .line 493
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    if-eqz v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ZoomPitch:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 500
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v4, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 501
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    cmpg-float v3, v3, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    .line 502
    :cond_2
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iput v6, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 503
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iput v6, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 504
    const v3, 0x7f0a000e

    const/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    .line 507
    :cond_3
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v4

    .line 510
    :try_start_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 511
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 512
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    .line 513
    .local v2, WidthSub:I
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    .line 514
    .local v0, HeightSub:I
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v5, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 515
    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v5, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 517
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 518
    .local v1, OldPage:I
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    invoke-virtual {p0, v3, v5, v6}, Lcom/rookiestudio/perfectviewer/TViewer;->CheckNeedResize(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 519
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    iget v7, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 520
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 519
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V

    .line 522
    :cond_4
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iput v1, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 523
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 524
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    .line 525
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    sub-int/2addr v2, v3

    .line 526
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    sub-int/2addr v0, v3

    .line 527
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->X:I

    shr-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v6

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 528
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    shr-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 529
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-le v3, v5, :cond_8

    .line 530
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    add-int/2addr v3, v5

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-ge v3, v5, :cond_7

    .line 531
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sub-int/2addr v5, v6

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 538
    :cond_5
    :goto_1
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-le v3, v5, :cond_a

    .line 539
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-ge v3, v5, :cond_9

    .line 540
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sub-int/2addr v5, v6

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 547
    :cond_6
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 507
    monitor-exit v4

    goto/16 :goto_0

    .end local v0           #HeightSub:I
    .end local v1           #OldPage:I
    .end local v2           #WidthSub:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 532
    .restart local v0       #HeightSub:I
    .restart local v1       #OldPage:I
    .restart local v2       #WidthSub:I
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-lez v3, :cond_5

    .line 533
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v5, 0x0

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_1

    .line 536
    :cond_8
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sub-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->X:I

    goto :goto_1

    .line 541
    :cond_9
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-lez v3, :cond_6

    .line 542
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/4 v5, 0x0

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    goto :goto_2

    .line 545
    :cond_a
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sub-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onAnimationFinished(Lcom/rookiestudio/perfectviewer/TAnimateData;)V
    .locals 3
    .parameter "AnimateData"

    .prologue
    const/4 v2, 0x0

    .line 1453
    iget-object v0, p1, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iput-boolean v2, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    .line 1456
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    const/16 v1, 0xff

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 1457
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageString:Ljava/lang/String;

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    iget-object v0, p1, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    iput-boolean v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    .line 1464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBackBuf:[I

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 220
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 770
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v0, :cond_1

    .line 771
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawTouchFunction(Landroid/graphics/Canvas;)V

    .line 772
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v10, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 780
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iput v10, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 781
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 782
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 783
    iput v10, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    .line 784
    iput v10, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    .line 785
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    if-ltz v0, :cond_6

    .line 786
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 790
    :goto_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    if-ltz v0, :cond_7

    .line 791
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 795
    :goto_2
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    if-le v0, v1, :cond_2

    .line 796
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 798
    :cond_2
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    if-le v0, v1, :cond_3

    .line 799
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 801
    :cond_3
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    if-eqz v0, :cond_4

    .line 802
    iput-boolean v10, p0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 803
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    .line 804
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v5, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 803
    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TBitmap;->Clip([IIIII)I

    move-result v0

    iput v0, v6, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 806
    :cond_4
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    if-lez v0, :cond_5

    .line 807
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 808
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    move-object v0, p1

    move v2, v10

    move v8, v10

    .line 807
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 811
    :cond_5
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawShadow(Landroid/graphics/Canvas;)V

    .line 816
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-eqz v0, :cond_8

    .line 817
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawTouchFunction(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_0

    .line 788
    :cond_6
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    neg-int v0, v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipY:I

    goto/16 :goto_1

    .line 793
    :cond_7
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    neg-int v0, v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->ClipX:I

    goto/16 :goto_2

    .line 819
    :cond_8
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawPageHeader(Landroid/graphics/Canvas;)V

    .line 820
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TViewer;->DrawPageFooter(Landroid/graphics/Canvas;)V

    .line 821
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowClock:Z

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarBMP:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewer;->StatusBarY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onDraw2(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 728
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    if-ne v0, v8, :cond_1

    .line 729
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBackBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 730
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->LastMoveDest:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSprite;->X:I

    add-int/2addr v0, v4

    .line 731
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 730
    add-int/2addr v4, v0

    .line 731
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 732
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    move-object v0, p1

    move v8, v2

    .line 729
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 733
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 734
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    move-object v0, p1

    move v8, v2

    .line 733
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 737
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBackBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 738
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v0, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->LastMoveDest:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v4, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    sub-int v4, v0, v4

    .line 739
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    move-object v0, p1

    move v8, v2

    .line 737
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 741
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 742
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    move-object v0, p1

    move v8, v2

    .line 741
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 744
    :cond_2
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 745
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBackBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 746
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 747
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    move-object v0, p1

    move v8, v2

    .line 745
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 748
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 749
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    move-object v0, p1

    move v8, v2

    .line 748
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 751
    :cond_3
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->PageTransition:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 754
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 755
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 756
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint2:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 757
    const-string v0, "perfectviewer"

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "paint1:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  paint2:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBackBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 760
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 761
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage2Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    .line 759
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 762
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v4, v0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 763
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v5, v0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->FlipPage1Sprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v7, v0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 764
    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TViewer;->paint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v8, v2

    .line 762
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 215
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 187
    const-string v0, "perfectviewer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewer;->ConfigChanged()V

    .line 189
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SurfaceReady:Z

    .line 200
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 204
    const-string v0, "perfectviewer"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewer;->SurfaceReady:Z

    .line 206
    return-void
.end method
