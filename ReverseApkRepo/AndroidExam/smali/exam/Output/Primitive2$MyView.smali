.class public Lexam/Output/Primitive2$MyView;
.super Landroid/view/View;
.source "Primitive2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/Primitive2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/Primitive2;


# direct methods
.method public constructor <init>(Lexam/Output/Primitive2;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 17
    iput-object p1, p0, Lexam/Output/Primitive2$MyView;->this$0:Lexam/Output/Primitive2;

    .line 18
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, 0x4348

    const/high16 v3, 0x4316

    const/high16 v8, 0x42dc

    const/high16 v4, 0x42c8

    const/high16 v2, 0x4120

    .line 22
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .local v5, Pnt:Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 28
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 29
    .local v1, r:Landroid/graphics/RectF;
    const/high16 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    invoke-virtual {p1, v1, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 31
    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 33
    const v0, -0xff01

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    invoke-virtual {v1, v2, v8, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 35
    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 36
    invoke-virtual {v1, v8, v8, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 38
    const v0, -0xffff01

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    const/16 v0, 0x8

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    .line 40
    .local v6, pts:[F
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 41
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    const/4 v0, 0x6

    new-array v7, v0, [F

    fill-array-data v7, :array_1

    .line 43
    .local v7, pts2:[F
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 44
    return-void

    .line 39
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x52t 0x43t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x7at 0x43t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x7at 0x43t
        0x0t 0x0t 0xdct 0x42t
        0x0t 0x0t 0x5ct 0x43t
    .end array-data

    .line 42
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x52t 0x43t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x70t 0x43t
        0x0t 0x0t 0xc8t 0x42t
        0x0t 0x0t 0x5ct 0x43t
    .end array-data
.end method
