.class public final Lcom/admob/android/ads/af;
.super Landroid/widget/TextView;
.source "DynamicTextView.java"


# instance fields
.field public a:F

.field public b:Z

.field public c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/admob/android/ads/af;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/af;->b:Z

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/af;->setGravity(I)V

    iput p2, p0, Lcom/admob/android/ads/af;->c:F

    .line 46
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 105
    iget-boolean v0, p0, Lcom/admob/android/ads/af;->b:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/admob/android/ads/af;->getMeasuredWidth()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/admob/android/ads/af;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/admob/android/ads/af;->getTextSize()F

    move-result v2

    .line 113
    invoke-virtual {p0}, Lcom/admob/android/ads/af;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 114
    new-instance v4, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/admob/android/ads/af;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 115
    if-eqz v3, :cond_1

    move v5, v2

    .line 118
    :goto_0
    iget v6, p0, Lcom/admob/android/ads/af;->a:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    .line 120
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 121
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 122
    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4, v3, v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 124
    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-lez v6, :cond_0

    .line 126
    const/high16 v6, 0x3f00

    sub-float/2addr v5, v6

    goto :goto_0

    .line 131
    :cond_0
    cmpl-float v0, v2, v5

    if-eqz v0, :cond_1

    .line 134
    iget v0, p0, Lcom/admob/android/ads/af;->c:F

    div-float v0, v5, v0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/af;->setTextSize(F)V

    .line 138
    :cond_1
    return-void
.end method