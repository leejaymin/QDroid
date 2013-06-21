.class public Lten/thirty/three/resistoridlite/ResistorView;
.super Landroid/view/View;
.source "ResistorView.java"


# instance fields
.field FiveBand:Z

.field TouchBand:I

.field TouchedBand:Z

.field protected final antiPaint:Landroid/graphics/Paint;

.field protected final bandBmps:[Landroid/graphics/Bitmap;

.field protected final bandColors:[I

.field public bandFive:I

.field public bandFour:I

.field bandGap:F

.field public bandOne:I

.field bandRect:Landroid/graphics/RectF;

.field bandRectFive:Landroid/graphics/RectF;

.field bandRectFour:Landroid/graphics/RectF;

.field bandRectOne:Landroid/graphics/RectF;

.field bandRectThree:Landroid/graphics/RectF;

.field bandRectTwo:Landroid/graphics/RectF;

.field public bandThree:I

.field public bandTwo:I

.field bandWidth:F

.field bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

.field bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

.field bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

.field bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

.field bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

.field bbc:Lten/thirty/three/resistoridlite/BandButtonColumn;

.field protected final blackImg:Landroid/graphics/Bitmap;

.field protected final blankImg:Landroid/graphics/Bitmap;

.field blankRectBounds:Landroid/graphics/Rect;

.field protected final blueImg:Landroid/graphics/Bitmap;

.field protected final brownImg:Landroid/graphics/Bitmap;

.field buff:I

.field protected final buttonImg:Landroid/graphics/Bitmap;

.field bx:F

.field by:F

.field currCol:I

.field df:Ljava/text/DecimalFormat;

.field protected final dimImg:Landroid/graphics/Bitmap;

.field doDrawSetup:Z

.field protected final goldImg:Landroid/graphics/Bitmap;

.field protected final greenImg:Landroid/graphics/Bitmap;

.field protected final greyImg:Landroid/graphics/Bitmap;

.field horizStretch:F

.field metrics:Landroid/util/DisplayMetrics;

.field protected final nonePaint:Landroid/graphics/Paint;

.field ohmStringtmp:Ljava/lang/String;

.field protected final omega:Ljava/lang/String;

.field protected final orangeImg:Landroid/graphics/Bitmap;

.field panelFiveRect:Landroid/graphics/RectF;

.field panelFourRect:Landroid/graphics/RectF;

.field panelOneRect:Landroid/graphics/RectF;

.field panelRect:Landroid/graphics/RectF;

.field panelThreeRect:Landroid/graphics/RectF;

.field panelTwoRect:Landroid/graphics/RectF;

.field pixelsTall:F

.field pixelsTop:F

.field protected final plusm:Ljava/lang/String;

.field protected final redImg:Landroid/graphics/Bitmap;

.field resEng:Lten/thirty/three/resistoridlite/ResistorEngine;

.field protected final resistorImg:Landroid/graphics/Bitmap;

.field resistorRect:Landroid/graphics/RectF;

.field resistorYOffset:F

.field screenHeight:F

.field screenWidth:F

.field protected final silverImg:Landroid/graphics/Bitmap;

.field protected final somePaint:Landroid/graphics/Paint;

.field textX:F

.field textY:F

.field thirdScreenWidth:F

.field protected final tolbandBmps:[Landroid/graphics/Bitmap;

.field protected final tolbandColors:[I

.field protected final tolbandValues:[D

.field ugPaint:Landroid/graphics/Paint;

.field ugPath:Landroid/graphics/Path;

.field protected final violetImg:Landroid/graphics/Bitmap;

.field protected final whiteImg:Landroid/graphics/Bitmap;

.field protected final yellowImg:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 8
    .parameter "context"
    .parameter "winMgr"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->somePaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->antiPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2126

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->omega:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0xb1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->plusm:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorImg:Landroid/graphics/Bitmap;

    .line 28
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->buttonImg:Landroid/graphics/Bitmap;

    .line 30
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankImg:Landroid/graphics/Bitmap;

    .line 32
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->dimImg:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->blackImg:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->brownImg:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->redImg:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->orangeImg:Landroid/graphics/Bitmap;

    .line 42
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020017

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->yellowImg:Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->greenImg:Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->blueImg:Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->violetImg:Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->greyImg:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->whiteImg:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->goldImg:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->silverImg:Landroid/graphics/Bitmap;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->blackImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v6

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->brownImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->redImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    .line 58
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->orangeImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->yellowImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->greenImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->blueImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->violetImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->greyImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 59
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->whiteImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandBmps:[Landroid/graphics/Bitmap;

    .line 60
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 62
    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandColors:[I

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->goldImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v6

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->silverImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    .line 64
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->brownImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->redImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->orangeImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->yellowImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->greenImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->blueImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 65
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->violetImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->greyImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->tolbandBmps:[Landroid/graphics/Bitmap;

    .line 66
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->tolbandColors:[I

    .line 67
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    .line 68
    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->tolbandValues:[D

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPaint:Landroid/graphics/Paint;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankRectBounds:Landroid/graphics/Rect;

    .line 105
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbc:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 107
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 108
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 109
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 110
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 111
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 114
    iput v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 304
    iput-boolean v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 305
    iput v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->textX:F

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->textY:F

    .line 334
    iput-boolean v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    .line 399
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->df:Ljava/text/DecimalFormat;

    .line 546
    iput-boolean v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->doDrawSetup:Z

    .line 554
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandRectOne:Landroid/graphics/RectF;

    .line 555
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandRectTwo:Landroid/graphics/RectF;

    .line 556
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandRectThree:Landroid/graphics/RectF;

    .line 557
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandRectFour:Landroid/graphics/RectF;

    .line 558
    iput-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandRectFive:Landroid/graphics/RectF;

    .line 72
    invoke-virtual {p0, v3}, Lten/thirty/three/resistoridlite/ResistorView;->setFocusable(Z)V

    .line 73
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->metrics:Landroid/util/DisplayMetrics;

    .line 74
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->somePaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 76
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->somePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x190

    if-le v1, v2, :cond_0

    const/16 v1, 0x30

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->somePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 78
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->somePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 79
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->somePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 81
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 83
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 85
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->antiPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 91
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    new-instance v0, Lten/thirty/three/resistoridlite/ResistorEngine;

    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lten/thirty/three/resistoridlite/ResistorEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resEng:Lten/thirty/three/resistoridlite/ResistorEngine;

    .line 96
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resEng:Lten/thirty/three/resistoridlite/ResistorEngine;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1}, Lten/thirty/three/resistoridlite/ResistorEngine;->SetBands([I)V

    .line 97
    return-void

    .line 76
    :cond_0
    const/16 v1, 0x24

    goto :goto_0

    .line 60
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x33t 0x66t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x66t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
        0x66t 0x66t 0x66t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0x0t 0x99t 0xcct 0xfft
        0xcct 0x99t 0x99t 0xfft
    .end array-data

    .line 67
    :array_2
    .array-data 0x8
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xa9t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xc9t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x84t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x94t 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x9et 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xa4t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x74t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x64t 0x3ft
        0xfct 0xa9t 0xf1t 0xd2t 0x4dt 0x62t 0x50t 0x3ft
        0xfct 0xa9t 0xf1t 0xd2t 0x4dt 0x62t 0x40t 0x3ft
    .end array-data

    .line 96
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private GetOhmString()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4022

    const-wide/high16 v10, 0x4018

    const-wide/high16 v8, 0x4008

    const-wide/high16 v6, 0x4024

    .line 403
    const-wide/16 v0, 0x0

    .line 404
    .local v0, ohm:D
    iget-boolean v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v2, :cond_1

    .line 405
    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 406
    iget v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    int-to-double v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 405
    mul-double v0, v2, v4

    .line 410
    :goto_0
    const-string v2, ""

    iput-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->ohmStringtmp:Ljava/lang/String;

    .line 411
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    .line 412
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 413
    const-string v2, "G"

    iput-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->ohmStringtmp:Ljava/lang/String;

    .line 425
    :cond_0
    :goto_1
    const-string v2, "%s%s%s %s%s%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->ohmStringtmp:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 426
    iget-object v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->omega:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->plusm:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->tolbandValues:[D

    iget v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    aget-wide v5, v5, v6

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "%"

    .line 425
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 408
    :cond_1
    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    int-to-double v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v0, v2, v4

    goto :goto_0

    .line 414
    :cond_2
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    .line 415
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 416
    const-string v2, "M"

    iput-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->ohmStringtmp:Ljava/lang/String;

    goto :goto_1

    .line 417
    :cond_3
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 418
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 419
    const-string v2, "k"

    iput-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->ohmStringtmp:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method DrawAd(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upgrade to Pro version for 5 Bands"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x320

    if-le v1, v2, :cond_0

    const-string v1, " (Click on Menu)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPath:Landroid/graphics/Path;

    .line 651
    iget-object v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v3

    .line 650
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 652
    return-void

    .line 650
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method DrawSetup(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, 0x40a0

    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/high16 v6, 0x4040

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenWidth:F

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenHeight:F

    .line 339
    iget v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenWidth:F

    float-to-double v0, v0

    const-wide v2, 0x3fd51eb851eb851fL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->thirdScreenWidth:F

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorYOffset:F

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandGap:F

    .line 342
    const/high16 v0, 0x3fa0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->horizStretch:F

    .line 344
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorYOffset:F

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenWidth:F

    .line 345
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorImg:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenWidth:F

    .line 344
    mul-float/2addr v3, v4

    .line 345
    iget-object v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 344
    div-float/2addr v3, v4

    .line 346
    iget v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->horizStretch:F

    .line 344
    mul-float/2addr v3, v4

    invoke-direct {v0, v8, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    .line 348
    const v0, 0x3f428f5c

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->pixelsTall:F

    .line 349
    const v0, 0x3e428f5c

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->pixelsTop:F

    .line 350
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->thirdScreenWidth:F

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->pixelsTop:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->thirdScreenWidth:F

    mul-float/2addr v3, v7

    .line 351
    iget v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->pixelsTop:F

    iget v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->pixelsTall:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandRect:Landroid/graphics/RectF;

    .line 353
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v9

    const v1, 0x3f266666

    mul-float/2addr v0, v1

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandWidth:F

    .line 355
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 356
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenWidth:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenHeight:F

    const v4, 0x3f666666

    mul-float/2addr v3, v4

    invoke-direct {v0, v8, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 355
    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelRect:Landroid/graphics/RectF;

    .line 358
    iget v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenWidth:F

    div-float/2addr v0, v7

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->textX:F

    .line 359
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 360
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x4100

    add-float/2addr v0, v1

    .line 359
    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->textY:F

    .line 362
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    .line 363
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v9

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 365
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelTwoRect:Landroid/graphics/RectF;

    .line 366
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelTwoRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 367
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelTwoRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v7

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 369
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelThreeRect:Landroid/graphics/RectF;

    .line 370
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelThreeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelTwoRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 371
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelThreeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v6

    const/high16 v2, 0x40c0

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 373
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    .line 374
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelThreeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 375
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    const/high16 v2, 0x4110

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 377
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPath:Landroid/graphics/Path;

    .line 380
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPath:Landroid/graphics/Path;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 381
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->ugPath:Landroid/graphics/Path;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, -0x4080

    mul-float/2addr v1, v2

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 384
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFiveRect:Landroid/graphics/RectF;

    .line 385
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFiveRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 386
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFiveRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v9

    const/high16 v2, 0x4140

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 388
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->df:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 390
    new-instance v0, Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelOneRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandBmps:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->dimImg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3}, Lten/thirty/three/resistoridlite/BandButtonColumn;-><init>(Landroid/graphics/RectF;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 391
    new-instance v0, Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelTwoRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandBmps:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->dimImg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3}, Lten/thirty/three/resistoridlite/BandButtonColumn;-><init>(Landroid/graphics/RectF;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 392
    new-instance v0, Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelThreeRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandBmps:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->dimImg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3}, Lten/thirty/three/resistoridlite/BandButtonColumn;-><init>(Landroid/graphics/RectF;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 393
    new-instance v0, Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFourRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandBmps:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->dimImg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3}, Lten/thirty/three/resistoridlite/BandButtonColumn;-><init>(Landroid/graphics/RectF;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 394
    new-instance v0, Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->panelFiveRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->tolbandBmps:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->dimImg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3}, Lten/thirty/three/resistoridlite/BandButtonColumn;-><init>(Landroid/graphics/RectF;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->doDrawSetup:Z

    .line 397
    return-void
.end method

.method public FiveBandResistor()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    return v0
.end method

.method public SetAllBands(IIIII)V
    .locals 0
    .parameter "b1"
    .parameter "b2"
    .parameter "b3"
    .parameter "b4"
    .parameter "b5"

    .prologue
    .line 443
    iput p1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    .line 444
    iput p2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    .line 445
    iput p3, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    .line 446
    iput p4, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 447
    iput p5, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    .line 449
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    .line 450
    return-void
.end method

.method SetClosestResEx(II)V
    .locals 12
    .parameter "val"
    .parameter "bands"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 501
    const v0, 0x77359400

    if-le p1, v0, :cond_0

    const p1, 0x77359400

    .line 502
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 503
    .local v9, vs:Ljava/lang/String;
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v7, v0, v2

    .line 504
    .local v7, ppd:D
    invoke-virtual {p0, v7, v8}, Lten/thirty/three/resistoridlite/ResistorView;->powerRound(D)I

    move-result v4

    .line 508
    .local v4, powt:I
    if-lez v4, :cond_1

    if-ne p2, v11, :cond_6

    move v0, v10

    :goto_0
    sub-int/2addr v4, v0

    .line 509
    :cond_1
    if-gez v4, :cond_2

    const/4 v4, 0x0

    .line 513
    :cond_2
    if-ne p2, v11, :cond_7

    .line 515
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    const-string v0, "%03d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 516
    :cond_3
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->SetResistorModeRetIfFiveBand()Z

    .line 518
    :cond_4
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 519
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 520
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 522
    iget v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    move-object v0, p0

    .line 518
    invoke-virtual/range {v0 .. v5}, Lten/thirty/three/resistoridlite/ResistorView;->SetAllBands(IIIII)V

    .line 540
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v5

    .line 508
    goto :goto_0

    .line 525
    :cond_7
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 527
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v10, :cond_8

    const-string v0, "%02d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 530
    :cond_8
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->SetResistorModeRetIfFiveBand()Z

    .line 531
    :cond_9
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 532
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 534
    iget v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 535
    iget v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    move-object v1, p0

    .line 531
    invoke-virtual/range {v1 .. v6}, Lten/thirty/three/resistoridlite/ResistorView;->SetAllBands(IIIII)V

    goto :goto_1
.end method

.method SetClosestResExOld(II)V
    .locals 10
    .parameter "val"
    .parameter "bands"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 468
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, vs:Ljava/lang/String;
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v4, v0

    .line 470
    .local v4, powt:I
    if-lez v4, :cond_0

    if-ne p2, v9, :cond_5

    move v0, v8

    :goto_0
    sub-int/2addr v4, v0

    .line 471
    :cond_0
    if-gez v4, :cond_1

    const/4 v4, 0x0

    .line 473
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const-string v0, "%03d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 474
    :cond_2
    if-ne p2, v9, :cond_6

    .line 476
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->SetResistorModeRetIfFiveBand()Z

    .line 478
    :cond_3
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 479
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 480
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 482
    iget v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    move-object v0, p0

    .line 478
    invoke-virtual/range {v0 .. v5}, Lten/thirty/three/resistoridlite/ResistorView;->SetAllBands(IIIII)V

    .line 497
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v0, v5

    .line 470
    goto :goto_0

    .line 485
    :cond_6
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 487
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->SetResistorModeRetIfFiveBand()Z

    .line 488
    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 489
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 491
    iget v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 492
    iget v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    move-object v1, p0

    .line 488
    invoke-virtual/range {v1 .. v6}, Lten/thirty/three/resistoridlite/ResistorView;->SetAllBands(IIIII)V

    goto :goto_1
.end method

.method public SetClosestResistor(II)V
    .locals 0
    .parameter "val"
    .parameter "bands"

    .prologue
    .line 543
    invoke-virtual {p0, p1, p2}, Lten/thirty/three/resistoridlite/ResistorView;->SetClosestResEx(II)V

    .line 544
    return-void
.end method

.method public SetResistorModeRetIfFiveBand()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    .line 436
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    .line 437
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    return v0

    .line 435
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "None"

    .line 562
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->doDrawSetup:Z

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0, p1}, Lten/thirty/three/resistoridlite/ResistorView;->DrawSetup(Landroid/graphics/Canvas;)V

    .line 566
    :cond_0
    iput-boolean v8, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    .line 594
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resEng:Lten/thirty/three/resistoridlite/ResistorEngine;

    const/4 v1, 0x5

    new-array v1, v1, [I

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    aput v2, v1, v8

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    aput v2, v1, v9

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    aput v2, v1, v10

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    aput v2, v1, v11

    const/4 v2, 0x4

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lten/thirty/three/resistoridlite/ResistorEngine;->SetBands([I)V

    .line 599
    :goto_0
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resEng:Lten/thirty/three/resistoridlite/ResistorEngine;

    const/4 v2, 0x0

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->resistorYOffset:F

    iget v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->screenWidth:F

    const/high16 v5, 0x3fa0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lten/thirty/three/resistoridlite/ResistorEngine;->drawOnCanvasScaled(Landroid/graphics/Canvas;FFFF)V

    .line 601
    const-string v0, "%s"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-direct {p0}, Lten/thirty/three/resistoridlite/ResistorView;->GetOhmString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->textX:F

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->textY:F

    .line 602
    iget-object v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->somePaint:Landroid/graphics/Paint;

    .line 601
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 604
    sget-boolean v0, Lten/thirty/three/resistoridlite/ResistorId;->OPT_DIM:Z

    if-nez v0, :cond_1

    .line 605
    iput-boolean v8, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 607
    :cond_1
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    if-eqz v0, :cond_9

    .line 608
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    if-eq v1, v9, :cond_3

    move v1, v9

    :goto_1
    invoke-virtual {v0, p1, v1}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 609
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    if-eq v1, v10, :cond_4

    move v1, v9

    :goto_2
    invoke-virtual {v0, p1, v1}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 610
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    if-eq v1, v11, :cond_5

    move v1, v9

    :goto_3
    invoke-virtual {v0, p1, v1}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 611
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v0, :cond_7

    .line 612
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    move v1, v9

    :goto_4
    invoke-virtual {v0, p1, v1}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 615
    :goto_5
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    move v1, v9

    :goto_6
    invoke-virtual {v0, p1, v1}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 616
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    const-string v1, "None"

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankRectBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v8, v11, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 617
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v0, v0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 620
    .local v6, x:F
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v0, v0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 621
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankRectBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 620
    add-float/2addr v0, v1

    .line 622
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankRectBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 620
    add-float v7, v0, v1

    .line 624
    .local v7, y:F
    const-string v0, "None"

    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 645
    :goto_7
    return-void

    .line 597
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_2
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->resEng:Lten/thirty/three/resistoridlite/ResistorEngine;

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    aput v2, v1, v8

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    aput v2, v1, v9

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    aput v2, v1, v10

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    aput v2, v1, v11

    invoke-virtual {v0, v1}, Lten/thirty/three/resistoridlite/ResistorEngine;->SetBands([I)V

    goto/16 :goto_0

    :cond_3
    move v1, v8

    .line 608
    goto/16 :goto_1

    :cond_4
    move v1, v8

    .line 609
    goto/16 :goto_2

    :cond_5
    move v1, v8

    .line 610
    goto :goto_3

    :cond_6
    move v1, v8

    .line 612
    goto :goto_4

    .line 614
    :cond_7
    invoke-virtual {p0, p1}, Lten/thirty/three/resistoridlite/ResistorView;->DrawAd(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_8
    move v1, v8

    .line 615
    goto :goto_6

    .line 626
    :cond_9
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    invoke-virtual {v0, p1, v8}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 627
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    invoke-virtual {v0, p1, v8}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 628
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    invoke-virtual {v0, p1, v8}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 629
    iget-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v0, :cond_a

    .line 630
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    invoke-virtual {v0, p1, v8}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 633
    :goto_8
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    invoke-virtual {v0, p1, v8}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onDraw(Landroid/graphics/Canvas;Z)V

    .line 634
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    const-string v1, "None"

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankRectBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v8, v11, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 635
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v0, v0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 638
    .restart local v6       #x:F
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v0, v0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 639
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget-object v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankRectBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 638
    add-float/2addr v0, v1

    .line 640
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->blankRectBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 638
    add-float v7, v0, v1

    .line 642
    .restart local v7       #y:F
    const-string v0, "None"

    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->nonePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 632
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_a
    invoke-virtual {p0, p1}, Lten/thirty/three/resistoridlite/ResistorView;->DrawAd(Landroid/graphics/Canvas;)V

    goto :goto_8
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lten/thirty/three/resistoridlite/ResistorView;->doDrawSetup:Z

    .line 551
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    .line 552
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 121
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    .line 123
    sget-boolean v1, Lten/thirty/three/resistoridlite/ResistorId;->OPT_LOCK:Z

    if-eqz v1, :cond_d

    .line 124
    if-nez v0, :cond_6

    .line 125
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_0

    .line 126
    iput v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 127
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    .line 128
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 129
    iput v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 130
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 301
    :goto_0
    return v1

    .line 132
    :cond_0
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_1

    .line 133
    iput v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 134
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    .line 135
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 136
    iput v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 137
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_2

    .line 140
    iput v7, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 141
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    .line 142
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 143
    iput v7, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 144
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_3

    iget-boolean v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v1, :cond_3

    .line 147
    iput v8, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 148
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 149
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 150
    iput v8, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 151
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 152
    goto :goto_0

    .line 153
    :cond_3
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_4

    .line 154
    const/4 v1, 0x5

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 155
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    .line 156
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 157
    const/4 v1, 0x5

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 158
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 159
    goto :goto_0

    .line 161
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 162
    iput v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 163
    iput-boolean v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 164
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    .line 301
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 169
    :cond_6
    if-ne v0, v6, :cond_c

    .line 170
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    if-lez v1, :cond_5

    .line 171
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    packed-switch v1, :pswitch_data_0

    :goto_2
    move v1, v4

    .line 204
    goto/16 :goto_0

    .line 173
    :pswitch_0
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v4}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 174
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_7

    .line 175
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    .line 176
    :cond_7
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto :goto_2

    .line 179
    :pswitch_1
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v4}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 180
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_8

    .line 181
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    .line 182
    :cond_8
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto :goto_2

    .line 185
    :pswitch_2
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v4}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 186
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_9

    .line 187
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    .line 188
    :cond_9
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto :goto_2

    .line 191
    :pswitch_3
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v4}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 192
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_a

    .line 193
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 194
    :cond_a
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto :goto_2

    .line 197
    :pswitch_4
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v4}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 198
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_b

    .line 199
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    .line 200
    :cond_b
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto :goto_2

    .line 206
    :cond_c
    if-ne v0, v4, :cond_5

    .line 207
    const/4 v1, -0x1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 208
    iput-boolean v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 209
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto/16 :goto_1

    .line 213
    :cond_d
    if-nez v0, :cond_13

    .line 214
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_e

    .line 215
    iput v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 216
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    .line 217
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 218
    iput v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 219
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 220
    goto/16 :goto_0

    .line 221
    :cond_e
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_f

    .line 222
    iput v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 223
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    .line 224
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 225
    iput v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 226
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 227
    goto/16 :goto_0

    .line 228
    :cond_f
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_10

    .line 229
    iput v7, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 230
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    .line 231
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 232
    iput v7, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 233
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 234
    goto/16 :goto_0

    .line 235
    :cond_10
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_11

    iget-boolean v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->FiveBand:Z

    if-eqz v1, :cond_11

    .line 236
    iput v8, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 237
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 238
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 239
    iput v8, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 240
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 241
    goto/16 :goto_0

    .line 242
    :cond_11
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    if-ltz v1, :cond_12

    .line 243
    const/4 v1, 0x5

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 244
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v1, v1, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    .line 245
    iput-boolean v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 246
    const/4 v1, 0x5

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 247
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 248
    goto/16 :goto_0

    .line 250
    :cond_12
    const/4 v1, -0x1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 251
    iput v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 252
    iput-boolean v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 253
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto/16 :goto_1

    .line 258
    :cond_13
    if-ne v0, v6, :cond_19

    .line 260
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbOne:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 261
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_14

    .line 262
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandOne:I

    .line 263
    iput v4, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 266
    :cond_14
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbTwo:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 267
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_15

    .line 268
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandTwo:I

    .line 269
    iput v6, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 272
    :cond_15
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbThree:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 273
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_16

    .line 274
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandThree:I

    .line 275
    iput v7, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 278
    :cond_16
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFour:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 279
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_17

    .line 280
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFour:I

    .line 281
    iput v8, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 284
    :cond_17
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bbFive:Lten/thirty/three/resistoridlite/BandButtonColumn;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorView;->bx:F

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorView;->by:F

    invoke-virtual {v1, v2, v3, v5}, Lten/thirty/three/resistoridlite/BandButtonColumn;->onTouch(FFZ)I

    move-result v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    .line 285
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    if-ltz v1, :cond_18

    .line 286
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->buff:I

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->bandFive:I

    .line 287
    const/4 v1, 0x5

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchBand:I

    .line 289
    :cond_18
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    move v1, v4

    .line 291
    goto/16 :goto_0

    .line 293
    :cond_19
    if-ne v0, v4, :cond_5

    .line 294
    const/4 v1, -0x1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorView;->currCol:I

    .line 295
    iput-boolean v5, p0, Lten/thirty/three/resistoridlite/ResistorView;->TouchedBand:Z

    .line 296
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorView;->invalidate()V

    goto/16 :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method powerRound(D)I
    .locals 5
    .parameter "n"

    .prologue
    .line 456
    const-wide v0, 0x3fefffffffffdcd1L

    .line 457
    .local v0, d:D
    double-to-int v2, p1

    .line 458
    .local v2, i:I
    int-to-double v3, v2

    sub-double v3, p1, v3

    cmpl-double v3, v3, v0

    if-lez v3, :cond_0

    .line 460
    add-int/lit8 v2, v2, 0x1

    .line 463
    :cond_0
    return v2
.end method
