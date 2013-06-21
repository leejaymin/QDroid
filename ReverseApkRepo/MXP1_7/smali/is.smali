.class public Lis;
.super Ljava/lang/Object;


# direct methods
.method public static 癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    new-array v5, v7, [C

    const/16 v0, 0x30

    aput-char v0, v5, v1

    move v0, v1

    :goto_0
    const/16 v6, 0xa

    if-lt v0, v6, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v4, v5, v1, v7, v2}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    aget-char v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    int-to-char v6, v6

    aput-char v6, v5, v1

    goto :goto_0
.end method

.method public static 癤욱븳援(Landroid/widget/TextView;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method
