.class Lexam/Widget/ColorView;
.super Landroid/view/View;
.source "ScrollViewTest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/16 v7, 0xff

    .line 30
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 31
    .local v5, Pnt:Landroid/graphics/Paint;
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    const/16 v0, 0x400

    if-lt v6, v0, :cond_0

    .line 35
    return-void

    .line 32
    :cond_0
    div-int/lit8 v0, v6, 0x4

    rsub-int v0, v0, 0xff

    div-int/lit8 v1, v6, 0x4

    rsub-int v1, v1, 0xff

    invoke-virtual {v5, v7, v0, v1, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 33
    const/4 v1, 0x0

    int-to-float v2, v6

    const/high16 v3, 0x43fa

    add-int/lit8 v0, v6, 0x4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 31
    add-int/lit8 v6, v6, 0x4

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 38
    const/16 v0, 0x1f4

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lexam/Widget/ColorView;->setMeasuredDimension(II)V

    .line 39
    return-void
.end method
