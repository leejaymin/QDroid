.class public final Lcom/google/devtools/simple/runtime/components/android/Canvas;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "Canvas.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A two-dimensional touch-sensitive rectangular panel on which drawing can be done and sprites can be moved.</p> <p>The <code>BackgroundColor</code>, <code>PaintColor</code>, <code>BackgroundImage</code>, <code>Width</code>, and <code>Height</code> of the Canvas can be set in either the Designer or in the Blocks Editor.  The <code>Width</code> and <code>Height</code> are measured in pixels and must be positive.</p><p>Any location on the Canvas can be specified as a pair of (X, Y) values, where <ul> <li>X is the number of pixels away from the left edge of the Canvas</li><li>Y is the number of pixels away from the top edge of the Canvas</li></ul></p> <p>There are events to tell when and where a Canvas has been touched or a <code>Sprite</code> (<code>ImageSprite</code> or <code>Ball</code>) has been dragged.  There are also methods for drawing points, lines, and circles.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;,
        Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final context:Landroid/app/Activity;

.field private drawn:Z

.field private final motionEventParser:Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;

.field private final paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private final sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/devtools/simple/runtime/components/android/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundImagePath:Ljava/lang/String;

    .line 340
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->context:Landroid/app/Activity;

    .line 343
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;-><init>(Lcom/google/devtools/simple/runtime/components/android/Canvas;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    .line 344
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 346
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paint:Landroid/graphics/Paint;

    .line 347
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundPaint:Landroid/graphics/Paint;

    .line 351
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 352
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->PaintColor(I)V

    .line 353
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->BackgroundColor(I)V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->sprites:Ljava/util/List;

    .line 356
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;-><init>(Lcom/google/devtools/simple/runtime/components/android/Canvas;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->motionEventParser:Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->sprites:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/devtools/simple/runtime/components/android/Canvas;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->drawn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->motionEventParser:Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;

    return-object v0
.end method

.method private clearViewCanvas()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->access$400(Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->invalidate()V

    .line 371
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->access$400(Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public $add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 2
    .parameter "component"

    .prologue
    .line 423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.$add() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/devtools/simple/runtime/components/android/Form;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    return-object v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 510
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 525
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundColor:I

    .line 526
    if-eqz p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 532
    :goto_0
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->clearViewCanvas()V

    .line 533
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 558
    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundImagePath:Ljava/lang/String;

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundImagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->getDrawable(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_1
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 568
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->clearViewCanvas()V

    .line 569
    return-void

    :cond_0
    move-object v1, p1

    .line 558
    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 563
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "Canvas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public Clear()V
    .locals 0
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->clearViewCanvas()V

    .line 668
    return-void
.end method

.method public Dragged(FFFFFFZ)V
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "prevX"
    .parameter "prevY"
    .parameter "currentX"
    .parameter "currentY"
    .parameter "draggedSprite"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "startX As Single, startY As Single, prevX As Single, prevY As Single, currentX As Single, currentY As Single, draggedSprite As Boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 654
    const-string v0, "Dragged"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    return-void
.end method

.method public DrawCircle(IIF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "r"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->access$400(Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 693
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->invalidate()V

    .line 694
    return-void
.end method

.method public DrawLine(IIII)V
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->access$400(Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 707
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->invalidate()V

    .line 708
    return-void
.end method

.method public DrawPoint(II)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->access$400(Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 679
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->invalidate()V

    .line 680
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 582
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paintColor:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 597
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paintColor:I

    .line 598
    if-eqz p1, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paint:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public Touched(FFZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "touchedSprite"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "x As Single, y As Single, touchedSprite As Boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 628
    const-string v0, "Touched"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    return-void
.end method

.method public addSprite(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method protected findSpriteCollisions(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V
    .locals 3
    .parameter "movedSprite"

    .prologue
    .line 468
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devtools/simple/runtime/components/android/Sprite;

    .line 469
    .local v1, sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    if-eq v1, p1, :cond_0

    .line 471
    invoke-virtual {p1, v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->CollidingWith(Lcom/google/devtools/simple/runtime/components/android/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->colliding(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Lcom/google/devtools/simple/runtime/components/SpriteComponent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->NoLongerCollidingWith(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    .line 477
    invoke-virtual {v1, p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->NoLongerCollidingWith(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->colliding(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Lcom/google/devtools/simple/runtime/components/SpriteComponent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-virtual {p1, v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->CollidedWith(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    .line 487
    invoke-virtual {v1, p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->CollidedWith(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    goto :goto_0

    .line 494
    .end local v1           #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    :cond_3
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    return-object v0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->drawn:Z

    return v0
.end method

.method registerChange(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->view:Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas$CanvasView;->invalidate()V

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->findSpriteCollisions(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    .line 447
    return-void
.end method

.method public removeSprite(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public setChildHeight(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V
    .locals 2
    .parameter "component"
    .parameter "height"

    .prologue
    .line 433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildHeight() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V
    .locals 2
    .parameter "component"
    .parameter "width"

    .prologue
    .line 428
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildWidth() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
