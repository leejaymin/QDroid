.class public Lcom/mxtech/widget/StrokeView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private ㅼ꽑嫄:Z

.field private 弱밧:Z

.field private 洹:F

.field private final 癤욱븳援:Lrl;

.field private final 궗:Lrk;

.field private 대쫫:F

.field private 먯꽌:Lrm;

.field private 쇰뒗:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lrl;

    invoke-direct {v0}, Lrl;-><init>()V

    iput-object v0, p0, Lcom/mxtech/widget/StrokeView;->癤욱븳援:Lrl;

    new-instance v0, Lrk;

    invoke-virtual {p0}, Lcom/mxtech/widget/StrokeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lrk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/StrokeView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/widget/StrokeView;)Lrl;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->癤욱븳援:Lrl;

    return-object v0
.end method

.method private 癤욱븳援()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/mxtech/widget/StrokeView;->弱밧:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0}, Lrk;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41a0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    const/high16 v2, 0x3f80

    const/high16 v3, -0x8000

    invoke-virtual {v1, v2, v0, v0, v3}, Lrm;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0, v4, v4, v4, v5}, Lrk;->setShadowLayer(FFFI)V

    :goto_0
    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0}, Lrk;->getTextSize()F

    move-result v1

    iget-boolean v0, p0, Lcom/mxtech/widget/StrokeView;->ㅼ꽑嫄:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mxtech/widget/StrokeView;->洹:F

    :goto_1
    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v1}, Lrk;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v1}, Lrm;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    const/high16 v2, 0x4000

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v0, v0, v3}, Lrk;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v0, v4, v4, v4, v5}, Lrm;->setShadowLayer(FFFI)V

    :cond_3
    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0, v4, v4, v4, v5}, Lrk;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/mxtech/widget/StrokeView;->대쫫:F

    goto :goto_1
.end method

.method private 癤욱븳援(Landroid/widget/TextView;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v1}, Lrk;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0}, Lrk;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0}, Lrk;->getTextSize()F

    move-result v0

    return v0
.end method

.method public setBold(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mxtech/widget/StrokeView;->ㅼ꽑嫄:Z

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-direct {p0, v0, p1}, Lcom/mxtech/widget/StrokeView;->癤욱븳援(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-direct {p0, v0, p1}, Lcom/mxtech/widget/StrokeView;->癤욱븳援(Landroid/widget/TextView;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/mxtech/widget/StrokeView;->癤욱븳援()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->癤욱븳援:Lrl;

    iput p1, v0, Lrl;->癤욱븳援:I

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v0}, Lrm;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderThickness(FF)V
    .locals 1

    iput p1, p0, Lcom/mxtech/widget/StrokeView;->대쫫:F

    iput p2, p0, Lcom/mxtech/widget/StrokeView;->洹:F

    invoke-direct {p0}, Lcom/mxtech/widget/StrokeView;->癤욱븳援()V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v0}, Lrm;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0, p1}, Lrk;->setGravity(I)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v0, p1}, Lrm;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    iput p1, p0, Lcom/mxtech/widget/StrokeView;->쇰뒗:I

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0, p1}, Lrk;->setMinLines(I)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v0, p1}, Lrm;->setMinLines(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0, p1, p2}, Lrk;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v0, p1, p2}, Lrm;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0, p1}, Lrk;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0, p1, p2}, Lrk;->setTextSize(IF)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v0, p1, p2}, Lrm;->setTextSize(IF)V

    :cond_0
    invoke-direct {p0}, Lcom/mxtech/widget/StrokeView;->癤욱븳援()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v0, p1}, Lrk;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {v0, p1}, Lrm;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mxtech/widget/StrokeView;->弱밧:Z

    invoke-direct {p0}, Lcom/mxtech/widget/StrokeView;->癤욱븳援()V

    return-void
.end method

.method public 궗(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lrm;

    invoke-direct {v0, p0}, Lrm;-><init>(Lcom/mxtech/widget/StrokeView;)V

    iput-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    iget-object v2, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v2}, Lrk;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrm;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    iget-object v2, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v2}, Lrk;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lrm;->setTextSize(IF)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    iget-object v2, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v2}, Lrk;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrm;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    iget-object v2, p0, Lcom/mxtech/widget/StrokeView;->궗:Lrk;

    invoke-virtual {v2}, Lrk;->getGravity()I

    move-result v2

    invoke-virtual {v0, v2}, Lrm;->setGravity(I)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    iget v2, p0, Lcom/mxtech/widget/StrokeView;->쇰뒗:I

    invoke-virtual {v0, v2}, Lrm;->setMinLines(I)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    iget-boolean v2, p0, Lcom/mxtech/widget/StrokeView;->ㅼ꽑嫄:Z

    invoke-direct {p0, v0, v2}, Lcom/mxtech/widget/StrokeView;->癤욱븳援(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/widget/StrokeView;->addView(Landroid/view/View;I)V

    :goto_2
    invoke-direct {p0}, Lcom/mxtech/widget/StrokeView;->癤욱븳援()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/StrokeView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/widget/StrokeView;->먯꽌:Lrm;

    goto :goto_2
.end method
