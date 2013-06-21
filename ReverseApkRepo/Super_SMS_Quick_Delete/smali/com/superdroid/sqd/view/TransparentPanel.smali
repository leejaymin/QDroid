.class public Lcom/superdroid/sqd/view/TransparentPanel;
.super Landroid/widget/LinearLayout;
.source "TransparentPanel.java"


# instance fields
.field private innerPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/superdroid/sqd/view/TransparentPanel;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0}, Lcom/superdroid/sqd/view/TransparentPanel;->init()V

    .line 16
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x6e

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/superdroid/sqd/view/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/superdroid/sqd/view/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 26
    iget-object v0, p0, Lcom/superdroid/sqd/view/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .local v0, drawRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/superdroid/sqd/view/TransparentPanel;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/superdroid/sqd/view/TransparentPanel;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    iget-object v1, p0, Lcom/superdroid/sqd/view/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 38
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 39
    return-void
.end method

.method public setInnerPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "innerPaint"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/superdroid/sqd/view/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    .line 31
    return-void
.end method
