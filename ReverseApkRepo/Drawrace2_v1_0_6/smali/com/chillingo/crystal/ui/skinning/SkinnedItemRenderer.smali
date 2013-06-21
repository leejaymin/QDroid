.class public Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_BADGE_HEIGHT:I = 0x16

.field private static final MAX_BADGE_WIDTH:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FontSizeToRenderAt(Ljava/lang/String;FFF)F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p0, v3, p1, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/high16 v0, 0x3f80

    sub-float/2addr p3, v0

    cmpg-float v0, p3, p2

    if-gtz v0, :cond_0

    move v0, p3

    :goto_1
    cmpg-float v1, v0, p2

    if-gez v1, :cond_1

    :goto_2
    return p2

    :cond_0
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p0, v3, p1, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_2

    :cond_2
    move v0, p3

    goto :goto_1
.end method

.method public static RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static RenderMultilineTextItem(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;FFZLcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;I)V
    .locals 8

    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v2, p7}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Centre:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    if-ne p6, v0, :cond_2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_0
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    :goto_1
    cmpl-float v1, p4, p3

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v1, v3, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p5, v3, :cond_4

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v2, v4, v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    invoke-virtual {v0, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_2
    sget-object v0, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Right:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    if-ne p6, v0, :cond_0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f80

    sub-float/2addr p4, v0

    invoke-virtual {v2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_1

    :cond_4
    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v2, v4, v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2
.end method

.method public static RenderOneLineTextItem(Landroid/graphics/Canvas;Ljava/lang/String;FFFFFILcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;Z)V
    .locals 5

    const/4 v2, 0x1

    invoke-static {p1, p4, p5, p6}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->FontSizeToRenderAt(Ljava/lang/String;FFF)F

    move-result v0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v1, p7}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    const/4 v0, 0x0

    sget-object v4, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Centre:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    if-ne p8, v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p4, v0

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    :cond_0
    :goto_0
    add-float/2addr v0, p2

    iget v2, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v2, p3, v2

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    sget-object v4, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Right:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    if-ne p8, v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p4, v0

    float-to-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public static RenderOneLineTextItem(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Point;FFFILcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;)V
    .locals 10

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderOneLineTextItem(Landroid/graphics/Canvas;Ljava/lang/String;FFFFFILcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;Z)V

    return-void
.end method

.method public static drawBadge(Landroid/graphics/Canvas;Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;Landroid/graphics/Rect;FF)V
    .locals 10

    const/16 v1, 0x16

    const/high16 v9, 0x4140

    const/high16 v5, 0x4100

    const/high16 v8, 0x4000

    const/high16 v2, 0x3f80

    const-string v0, "images/global_components/badge.png"

    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v7, 0x1a

    if-ge v0, v7, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v7, v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_0
    if-le v0, v1, :cond_4

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v7, v1, :cond_5

    int-to-float v1, v1

    int-to-float v7, v6

    div-float/2addr v1, v7

    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v0, :cond_1

    int-to-float v0, v0

    int-to-float v2, v4

    div-float v2, v0, v2

    :cond_1
    int-to-float v0, v6

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p5

    float-to-int v1, v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v4, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    add-int/2addr v1, v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0, v3, v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v9, p4

    invoke-static {p2, v0, v5, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->FontSizeToRenderAt(Ljava/lang/String;FFF)F

    move-result v0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v2, v0

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, v1

    div-float/2addr v1, v8

    iget v2, v6, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v3, v1, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    mul-float v6, v9, p4

    const/4 v7, -0x1

    sget-object v8, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;->Left:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderOneLineTextItem(Landroid/graphics/Canvas;Ljava/lang/String;FFFFFILcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;Z)V

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public static drawRectangle(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static heightForStretchyText(Ljava/lang/String;IF)I
    .locals 8

    const/4 v0, 0x1

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v2, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static renderStretchyText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;FZLcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;I)V
    .locals 8

    const/high16 v0, 0x3f80

    add-float v3, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderMultilineTextItem(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;FFZLcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;I)V

    return-void
.end method
