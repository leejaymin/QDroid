.class public Lexam/Draw/PathDashEft$MyView;
.super Landroid/view/View;
.source "PathDashEft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/PathDashEft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/PathDashEft;


# direct methods
.method public constructor <init>(Lexam/Draw/PathDashEft;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 16
    iput-object p1, p0, Lexam/Draw/PathDashEft$MyView;->this$0:Lexam/Draw/PathDashEft;

    .line 17
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 21
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .local v5, Pnt:Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 27
    .local v7, dash:Landroid/graphics/Path;
    const/4 v0, 0x0

    const/high16 v1, -0x3f80

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 28
    const/high16 v0, 0x4080

    const/high16 v1, -0x3f80

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    const/high16 v0, 0x4080

    const/high16 v1, -0x3f00

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    const/high16 v0, 0x4120

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    const/high16 v0, 0x4080

    const/high16 v1, 0x4100

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    const/high16 v0, 0x4080

    const/high16 v1, 0x4080

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    const/4 v0, 0x0

    const/high16 v1, 0x4080

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    new-instance v8, Landroid/graphics/PathDashPathEffect;

    const/high16 v0, 0x4160

    const/4 v1, 0x0

    .line 36
    sget-object v2, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    .line 35
    invoke-direct {v8, v7, v0, v1, v2}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    .line 37
    .local v8, pathdash:Landroid/graphics/PathDashPathEffect;
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 38
    const/high16 v1, 0x4120

    const/high16 v2, 0x4120

    const/high16 v3, 0x4120

    const/high16 v4, 0x4348

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 39
    const/high16 v0, 0x4334

    const/high16 v1, 0x42c8

    const/high16 v2, 0x42a0

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 41
    new-instance v6, Landroid/graphics/ComposePathEffect;

    .line 42
    new-instance v0, Landroid/graphics/CornerPathEffect;

    const/high16 v1, 0x4180

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 41
    invoke-direct {v6, v8, v0}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    .line 43
    .local v6, comp:Landroid/graphics/ComposePathEffect;
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 44
    const/high16 v1, 0x4248

    const/high16 v2, 0x4348

    const/high16 v3, 0x437a

    const/high16 v4, 0x4396

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method
