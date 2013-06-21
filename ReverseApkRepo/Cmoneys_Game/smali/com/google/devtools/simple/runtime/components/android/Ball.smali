.class public final Lcom/google/devtools/simple/runtime/components/android/Ball;
.super Lcom/google/devtools/simple/runtime/components/android/Sprite;
.source "Ball.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->ANIMATION:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A round \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>ImageSprite</code>s and other <code>Ball</code>s) and the edge of the Canvas, and move according to its property values.</p><p>For example, to have a <code>Ball</code> move 4 pixels toward the top of a <code>Canvas</code> every 500 milliseconds (half second), you would set the <code>Speed</code> property to 4 [pixels], the <code>Interval</code> property to 500 [milliseconds], the <code>Heading</code> property to 90 [degrees], and the <code>Enabled</code> property to <code>True</code>.  These and its other properties can be changed at any time.</p><p>The difference between a Ball and an <code>ImageSprite</code> is that the latter can get its appearance from an image file, while a Ball\'s appearance can only be changed by varying its <code>PaintColor</code> and <code>Radius</code> properties.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field static final DEFAULT_RADIUS:I = 0x5


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private radius:I


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->paint:Landroid/graphics/Paint;

    .line 53
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Ball;->PaintColor(I)V

    .line 54
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Ball;->Radius(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public Height()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Height(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 77
    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->paintColor:I

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
    .line 135
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->paintColor:I

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->paint:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Ball;->registerChange()V

    .line 143
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public Radius()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    return v0
.end method

.method public Radius(I)V
    .locals 0
    .parameter "radius"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 106
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    .line 107
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Ball;->registerChange()V

    .line 108
    return-void
.end method

.method public Width()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Width(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 87
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 10
    .parameter "qx"
    .parameter "qy"

    .prologue
    .line 91
    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->xLeft:D

    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    int-to-double v6, v6

    add-double v0, v4, v6

    .line 92
    .local v0, xCenter:D
    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->yTop:D

    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    int-to-double v6, v6

    add-double v2, v4, v6

    .line 93
    .local v2, yCenter:D
    sub-double v4, p1, v0

    sub-double v6, p1, v0

    mul-double/2addr v4, v6

    sub-double v6, p3, v2

    sub-double v8, p3, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    mul-int/2addr v6, v7

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->visible:Z

    if-eqz v0, :cond_0

    .line 62
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->xLeft:D

    double-to-float v0, v0

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-wide v1, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->yTop:D

    double-to-float v1, v1

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Ball;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    :cond_0
    return-void
.end method
