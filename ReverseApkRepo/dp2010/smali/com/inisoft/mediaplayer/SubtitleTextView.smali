.class public Lcom/inisoft/mediaplayer/SubtitleTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:Z

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->b:F

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/SubtitleTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->b:F

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/SubtitleTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->a:Z

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->b:F

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->c:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SubtitleTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SubtitleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SubtitleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->b:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/inisoft/mediaplayer/SubtitleTextView;->c:I

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/SubtitleTextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SubtitleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/SubtitleTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
