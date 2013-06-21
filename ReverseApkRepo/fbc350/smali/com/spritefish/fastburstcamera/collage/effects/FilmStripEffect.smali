.class public Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;
.super Ljava/lang/Object;
.source "FilmStripEffect.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/collage/effects/Effect;


# instance fields
.field private filmstrip:Landroid/graphics/drawable/Drawable;

.field filmstripTall:Landroid/graphics/drawable/Drawable;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public applyEffect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 3
    .parameter "full"
    .parameter "r"
    .parameter "text"

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;->filmstrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 47
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;->filmstrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x19

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 58
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 59
    return-void

    .line 51
    .end local v0           #p:Landroid/graphics/Paint;
    :cond_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;->filmstripTall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;->filmstripTall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public destroyEffect()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "Film strip"

    return-object v0
.end method

.method public initEffect(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;->res:Landroid/content/res/Resources;

    .line 31
    const v0, 0x7f020014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;->filmstrip:Landroid/graphics/drawable/Drawable;

    .line 32
    const v0, 0x7f020015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/FilmStripEffect;->filmstripTall:Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method
