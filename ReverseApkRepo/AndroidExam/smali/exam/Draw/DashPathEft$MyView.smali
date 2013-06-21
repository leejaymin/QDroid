.class public Lexam/Draw/DashPathEft$MyView;
.super Landroid/view/View;
.source "DashPathEft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/DashPathEft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/DashPathEft;


# direct methods
.method public constructor <init>(Lexam/Draw/DashPathEft;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 16
    iput-object p1, p0, Lexam/Draw/DashPathEft$MyView;->this$0:Lexam/Draw/DashPathEft;

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
    const/4 v8, 0x2

    const/high16 v7, 0x4040

    const/4 v6, 0x0

    const/high16 v3, 0x4348

    const/high16 v1, 0x4120

    .line 21
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .local v5, Pnt:Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-direct {v0, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-object v0, p1

    move v2, v1

    move v4, v1

    .line 28
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 29
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v2, v8, [F

    fill-array-data v2, :array_1

    invoke-direct {v0, v2, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 30
    const/high16 v2, 0x41f0

    const/high16 v4, 0x41f0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 31
    const/high16 v0, 0x40c0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    const/high16 v2, 0x4248

    const/high16 v4, 0x4248

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v2, v8, [F

    fill-array-data v2, :array_2

    invoke-direct {v0, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 35
    const/high16 v2, 0x428c

    const/high16 v4, 0x428c

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 36
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-direct {v0, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 37
    const/high16 v2, 0x42b4

    const/high16 v4, 0x42b4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 38
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_4

    invoke-direct {v0, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 39
    const/high16 v2, 0x42dc

    const/high16 v4, 0x42dc

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 40
    return-void

    .line 27
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    .line 29
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 36
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 38
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method
