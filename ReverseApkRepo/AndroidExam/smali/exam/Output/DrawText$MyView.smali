.class public Lexam/Output/DrawText$MyView;
.super Landroid/view/View;
.source "DrawText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/DrawText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/DrawText;


# direct methods
.method public constructor <init>(Lexam/Output/DrawText;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 17
    iput-object p1, p0, Lexam/Output/DrawText$MyView;->this$0:Lexam/Output/DrawText;

    .line 18
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 22
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .local v6, Pnt:Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 24
    const-string v1, "Made in Korea"

    .line 25
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v8, v0, [C

    fill-array-data v8, :array_0

    .line 28
    .local v8, arCh:[C
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    const/high16 v0, -0x100

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    const/high16 v0, 0x4120

    const/high16 v2, 0x4120

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 31
    const/4 v2, 0x2

    const/16 v3, 0xb

    const/high16 v4, 0x4120

    const/high16 v5, 0x41f0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 32
    const/4 v9, 0x0

    const/4 v10, 0x3

    const/high16 v11, 0x4120

    const/high16 v12, 0x4248

    move-object v7, p1

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 35
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 36
    const-string v0, "Left Align"

    const/high16 v2, 0x42c8

    const/high16 v3, 0x42b4

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 37
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 38
    const-string v0, "Center Align"

    const/high16 v2, 0x42c8

    const/high16 v3, 0x42dc

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 39
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 40
    const-string v0, "Right Align"

    const/high16 v2, 0x42c8

    const/high16 v3, 0x4302

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 43
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    const/high16 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    const-string v0, "Small"

    const/high16 v2, 0x4120

    const/high16 v3, 0x4334

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 46
    const/high16 v0, 0x41a0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    const-string v0, "Mid"

    const/high16 v2, 0x4220

    const/high16 v3, 0x4334

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 48
    const/high16 v0, 0x41f0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    const-string v0, "Big"

    const/high16 v2, 0x42a0

    const/high16 v3, 0x4334

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 50
    const/high16 v0, 0x4220

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    const-string v0, "Hy"

    const/high16 v2, 0x42fa

    const/high16 v3, 0x4334

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 54
    const v0, -0xffff01

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 56
    const/high16 v0, 0x41f0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 61
    const/high16 v0, -0x4180

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 62
    const v0, 0x3f4ccccd

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 63
    const/high16 v0, 0x4120

    const/high16 v2, 0x435c

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    return-void

    .line 25
    :array_0
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
    .end array-data
.end method
