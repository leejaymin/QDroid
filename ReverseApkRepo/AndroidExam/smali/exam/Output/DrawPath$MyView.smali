.class public Lexam/Output/DrawPath$MyView;
.super Landroid/view/View;
.source "DrawPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/DrawPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/DrawPath;


# direct methods
.method public constructor <init>(Lexam/Output/DrawPath;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 17
    iput-object p1, p0, Lexam/Output/DrawPath$MyView;->this$0:Lexam/Output/DrawPath;

    .line 18
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4120

    const/high16 v8, 0x435c

    const/4 v2, 0x0

    const/high16 v3, 0x4316

    const/high16 v6, 0x4248

    .line 22
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 23
    .local v0, path:Landroid/graphics/Path;
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 25
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .local v11, Pnt:Landroid/graphics/Paint;
    const/high16 v1, 0x40a0

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    const/high16 v1, -0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    const/high16 v1, 0x42c8

    const/high16 v4, 0x42b4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 32
    const/high16 v1, 0x4220

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v6, v6, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 33
    invoke-virtual {p1, v0, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 37
    const/high16 v1, 0x42dc

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 38
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    const/high16 v1, -0x3e10

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 40
    const/high16 v1, 0x42f0

    const/high16 v4, 0x432a

    const/high16 v5, 0x4348

    const/high16 v6, 0x42dc

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 41
    const/high16 v1, 0x4040

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    const v1, -0xffff01

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p1, v0, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 47
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 48
    const/high16 v5, 0x42a0

    const/high16 v10, 0x4334

    move-object v4, v0

    move v6, v3

    move v7, v3

    move v9, v8

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 49
    const/high16 v1, 0x4000

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    const/high16 v1, -0x100

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-virtual {p1, v0, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 54
    const/high16 v1, 0x41a0

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    const-string v4, "Curved Text on Path."

    move-object v3, p1

    move-object v5, v0

    move v6, v2

    move v7, v2

    move-object v8, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 58
    return-void
.end method
