.class public final Lcom/inisoft/mediaplayer/gs;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcom/inisoft/mediaplayer/bi;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/inisoft/mediaplayer/gr;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroid/widget/ImageView;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/inisoft/mediaplayer/bi;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/bi;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gs;->a:Lcom/inisoft/mediaplayer/bi;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/gs;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gs;->e:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/inisoft/mediaplayer/gs;->f:I

    iput v2, p0, Lcom/inisoft/mediaplayer/gs;->g:I

    iput v2, p0, Lcom/inisoft/mediaplayer/gs;->i:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/gs;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/gs;->addView(Landroid/view/View;)V

    return-void
.end method

.method static a(Lcom/inisoft/mediaplayer/gs;)Lcom/inisoft/mediaplayer/bi;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->a:Lcom/inisoft/mediaplayer/bi;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

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

.method private b()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gs;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41a0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    const/high16 v2, 0x3f80

    const/high16 v3, -0x8000

    invoke-virtual {v1, v2, v0, v0, v3}, Lcom/inisoft/mediaplayer/gr;->setShadowLayer(FFFI)V

    :goto_0
    iget v0, p0, Lcom/inisoft/mediaplayer/gs;->g:I

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/gs;->d(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/inisoft/mediaplayer/gr;->setShadowLayer(FFFI)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gr;->getLineHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final a(F)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v0, v1, p1}, Lcom/inisoft/mediaplayer/gr;->setTextSize(IF)V

    :cond_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gs;->b()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iput p1, p0, Lcom/inisoft/mediaplayer/gs;->f:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/inisoft/mediaplayer/gs;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    iget v1, p0, Lcom/inisoft/mediaplayer/gs;->f:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gr;->setMinLines(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v0, p1, v1}, Lcom/inisoft/mediaplayer/gr;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Lcom/inisoft/mediaplayer/gr;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v0, p1, p2}, Lcom/inisoft/mediaplayer/gr;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/gs;->d:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/inisoft/mediaplayer/gs;->a(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-direct {p0, v0, p1}, Lcom/inisoft/mediaplayer/gs;->a(Landroid/widget/TextView;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gs;->b()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/gs;->e:Z

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gs;->b()V

    return-void
.end method

.method public final c(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput p1, p0, Lcom/inisoft/mediaplayer/gs;->g:I

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v3, :cond_2

    :goto_1
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/inisoft/mediaplayer/gr;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/gr;-><init>(Lcom/inisoft/mediaplayer/gs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gr;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/inisoft/mediaplayer/gr;->setTextSize(IF)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gr;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gr;->setGravity(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    iget v1, p0, Lcom/inisoft/mediaplayer/gs;->f:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gr;->setMinLines(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/gs;->d:Z

    invoke-direct {p0, v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {p0, v0, v2}, Lcom/inisoft/mediaplayer/gs;->addView(Landroid/view/View;I)V

    :goto_2
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gs;->b()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/gs;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    goto :goto_2
.end method

.method public final c(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/gr;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gr;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    iput p1, p0, Lcom/inisoft/mediaplayer/gs;->g:I

    iget v0, p0, Lcom/inisoft/mediaplayer/gs;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/gr;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/inisoft/mediaplayer/gs;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x4180

    div-float/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/inisoft/mediaplayer/gs;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gs;->i:I

    return-void
.end method

.method public final f(I)V
    .locals 2

    iget v0, p0, Lcom/inisoft/mediaplayer/gs;->i:I

    if-gt p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gs;->c:Lcom/inisoft/mediaplayer/gr;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gr;->setGravity(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    return-void
.end method
