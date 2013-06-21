.class public Lcom/rafalduraj/crash/Dot;
.super Landroid/view/View;
.source "Dot.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "context"
    .parameter "x"
    .parameter "y"
    .parameter "bitmap"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    iput p2, p0, Lcom/rafalduraj/crash/Dot;->x:F

    .line 17
    iput p3, p0, Lcom/rafalduraj/crash/Dot;->y:F

    .line 18
    iput-object p4, p0, Lcom/rafalduraj/crash/Dot;->bitmap:Landroid/graphics/Bitmap;

    .line 20
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 24
    iget-object v0, p0, Lcom/rafalduraj/crash/Dot;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rafalduraj/crash/Dot;->x:F

    iget v2, p0, Lcom/rafalduraj/crash/Dot;->y:F

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 25
    return-void
.end method
