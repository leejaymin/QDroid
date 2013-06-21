.class public Liq;
.super Landroid/text/style/ReplacementSpan;

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# static fields
.field public static final 癤욱븳援:Ljava/lang/String;


# instance fields
.field private ㅼ꽑嫄:Ljava/lang/CharSequence;

.field private 弱밧:I

.field private final 궗:Landroid/text/TextPaint;

.field private final 먯꽌:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Ruby"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liq;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Liq;-><init>(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Liq;->궗:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    iput-object p1, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    iput p2, p0, Liq;->弱밧:I

    return-void
.end method

.method private 癤욱븳援(Landroid/graphics/Paint;)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40c0

    div-float/2addr v0, v1

    return v0
.end method

.method private 궗(Landroid/graphics/Paint;)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 8

    iget-object v7, p0, Liq;->궗:Landroid/text/TextPaint;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Liq;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6

    if-ge p2, p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {p7, v0, p2, p3, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-virtual {v1, p7}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-direct {p0, p7}, Liq;->궗(Landroid/graphics/Paint;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    iget-object v2, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, p7}, Liq;->癤욱븳援(Landroid/graphics/Paint;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v0

    iput v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v1, v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9

    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    instance-of v1, p2, Landroid/text/Spanned;

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {v1, p3, p4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_3

    const-class v2, Lir;

    invoke-interface {v1, p3, p4, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lir;

    array-length v2, v1

    if-lez v2, :cond_8

    iget-object v2, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    :cond_0
    array-length v4, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_5

    const/4 v1, 0x1

    move v8, v1

    :goto_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move/from16 v0, p7

    int-to-float v6, v0

    iget-object v7, p0, Liq;->궗:Landroid/text/TextPaint;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Liq;->궗(Landroid/graphics/Paint;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Liq;->癤욱븳援(Landroid/graphics/Paint;)F

    move-result v1

    float-to-int v6, v1

    iget-object v1, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    if-nez v8, :cond_1

    iget-object v1, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    iget-object v3, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lir;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lir;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_3
    if-lt v3, v4, :cond_6

    :cond_1
    iget-object v1, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const/4 v2, 0x0

    iget-object v3, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    const/4 v2, 0x0

    :goto_4
    array-length v3, v1

    if-lt v2, v3, :cond_7

    :cond_2
    iget-object v2, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v1, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v1, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v5, p5, v1

    iget-object v1, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int v1, v1, p7

    sub-int/2addr v1, v6

    int-to-float v6, v1

    iget-object v7, p0, Liq;->궗:Landroid/text/TextPaint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    return-void

    :cond_3
    aget-object v5, v2, v3

    instance-of v6, v5, Landroid/text/style/ReplacementSpan;

    if-nez v6, :cond_4

    iget-object v6, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    aget-object v5, v1, v3

    iget-object v2, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v6, 0x0

    iget-object v7, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v2, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_6
    aget-object v5, v2, v3

    invoke-interface {v1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    aget-object v3, v1, v2

    iget-object v4, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-virtual {v3, v4}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move v8, v4

    goto/16 :goto_2
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v0, p3, p4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_3

    :cond_0
    iget-object v0, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p3, p4, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-direct {p0, p1}, Liq;->궗(Landroid/graphics/Paint;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v3, p0, Liq;->궗:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Liq;->궗:Landroid/text/TextPaint;

    iget-object v4, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Liq;->ㅼ꽑嫄:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Liq;->癤욱븳援(Landroid/graphics/Paint;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Liq;->먯꽌:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    if-eqz p5, :cond_1

    neg-int v2, v1

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v1, v1

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_1
    iget-object v1, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    iget v1, p0, Liq;->弱밧:I

    if-le v0, v1, :cond_2

    iget v0, p0, Liq;->弱밧:I

    :cond_2
    return v0

    :cond_3
    aget-object v3, v0, v1

    instance-of v4, v3, Landroid/text/style/ReplacementSpan;

    if-nez v4, :cond_4

    iget-object v4, p0, Liq;->궗:Landroid/text/TextPaint;

    invoke-virtual {v3, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public 癤욱븳援(I)V
    .locals 0

    iput p1, p0, Liq;->弱밧:I

    return-void
.end method
