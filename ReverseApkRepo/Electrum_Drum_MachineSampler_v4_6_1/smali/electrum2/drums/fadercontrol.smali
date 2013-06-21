.class public Lelectrum2/drums/fadercontrol;
.super Landroid/widget/ImageView;
.source "fadercontrol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lelectrum2/drums/fadercontrol$Detector;
    }
.end annotation


# instance fields
.field DPIVAL:F

.field colorpaint:Landroid/graphics/Paint;

.field fadeknob:Landroid/graphics/drawable/Drawable;

.field fadeknobtouch:Landroid/graphics/drawable/Drawable;

.field faderhighlight:Landroid/graphics/drawable/Drawable;

.field highlightpaint:Landroid/graphics/Paint;

.field ismoving:Z

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field mygesturedetector:Landroid/view/GestureDetector;

.field newypos:I

.field oldy:F

.field slidery:I

.field volumeval:F

.field ydiff:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v1, p0, Lelectrum2/drums/fadercontrol;->slidery:I

    .line 25
    const/high16 v0, 0x3f00

    iput v0, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    .line 26
    iput-boolean v1, p0, Lelectrum2/drums/fadercontrol;->ismoving:Z

    .line 27
    iput v1, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    .line 37
    const-string v0, "temp"

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->mText:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0xff

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v1, p0, Lelectrum2/drums/fadercontrol;->slidery:I

    .line 25
    const/high16 v0, 0x3f00

    iput v0, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    .line 26
    iput-boolean v1, p0, Lelectrum2/drums/fadercontrol;->ismoving:Z

    .line 27
    iput v1, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    .line 37
    const-string v0, "temp"

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->mText:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->fadeknob:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->fadeknobtouch:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->faderhighlight:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lelectrum2/drums/fadercontrol;->DPIVAL:F

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->highlightpaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->highlightpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->highlightpaint:Landroid/graphics/Paint;

    const/16 v1, 0x5d

    const/16 v2, 0x21

    invoke-static {v3, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->mTextPaint:Landroid/text/TextPaint;

    .line 65
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4130

    iget v2, p0, Lelectrum2/drums/fadercontrol;->DPIVAL:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 67
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 70
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lelectrum2/drums/fadercontrol$Detector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lelectrum2/drums/fadercontrol$Detector;-><init>(Lelectrum2/drums/fadercontrol;Lelectrum2/drums/fadercontrol$Detector;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->mygesturedetector:Landroid/view/GestureDetector;

    .line 72
    return-void
.end method


# virtual methods
.method public GetVolume()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    return v0
.end method

.method public SetColor(I)V
    .locals 2
    .parameter "colorin"

    .prologue
    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/fadercontrol;->colorpaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->colorpaint:Landroid/graphics/Paint;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->colorpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->colorpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    return-void
.end method

.method public SetVolume(F)V
    .locals 0
    .parameter "volumein"

    .prologue
    .line 97
    iput p1, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    .line 101
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->invalidate()V

    .line 103
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->getHeight()I

    move-result v0

    int-to-float v6, v0

    .line 130
    .local v6, heightval:F
    const/high16 v0, 0x437a

    div-float v7, v0, v6

    .line 133
    .local v7, scale:F
    iget v0, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    div-float/2addr v0, v7

    sub-float v0, v6, v0

    float-to-int v0, v0

    iput v0, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    .line 134
    iget v0, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    int-to-float v0, v0

    sget v1, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    .line 139
    sget v0, Lelectrum2/drums/globalSounds;->faderhighlightwidth:I

    int-to-float v1, v0

    iget v0, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    sget v2, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    sget v0, Lelectrum2/drums/globalSounds;->faderhighlightwidth:I

    sget v3, Lelectrum2/drums/globalSounds;->faderhighlightright:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    sget v0, Lelectrum2/drums/globalSounds;->faderhighlightheight:I

    int-to-float v0, v0

    sub-float v4, v6, v0

    iget-object v5, p0, Lelectrum2/drums/fadercontrol;->highlightpaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 144
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->mText:Ljava/lang/String;

    const/high16 v1, 0x4140

    iget v2, p0, Lelectrum2/drums/fadercontrol;->DPIVAL:F

    mul-float/2addr v1, v2

    const/high16 v2, -0x3f60

    iget v3, p0, Lelectrum2/drums/fadercontrol;->DPIVAL:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lelectrum2/drums/fadercontrol;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    const/high16 v0, -0x3d4c

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 151
    iget-boolean v0, p0, Lelectrum2/drums/fadercontrol;->ismoving:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->fadeknob:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    sget v2, Lelectrum2/drums/globalSounds;->mixerknobsizex:I

    iget v3, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    sget v4, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->fadeknob:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->fadeknobtouch:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    sget v2, Lelectrum2/drums/globalSounds;->mixerknobsizex:I

    iget v3, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    sget v4, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v0, p0, Lelectrum2/drums/fadercontrol;->fadeknobtouch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "e"

    .prologue
    const/high16 v9, 0x4020

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 172
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    iget-object v4, p0, Lelectrum2/drums/fadercontrol;->mygesturedetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v3, v4

    .line 186
    .local v3, tempy:F
    iget v4, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    iget v4, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    sget v5, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 189
    iput v3, p0, Lelectrum2/drums/fadercontrol;->oldy:F

    .line 190
    iget v4, p0, Lelectrum2/drums/fadercontrol;->newypos:I

    int-to-float v4, v4

    iget v5, p0, Lelectrum2/drums/fadercontrol;->oldy:F

    sub-float/2addr v4, v5

    iput v4, p0, Lelectrum2/drums/fadercontrol;->ydiff:F

    .line 193
    iput-boolean v7, p0, Lelectrum2/drums/fadercontrol;->ismoving:Z

    .line 195
    :cond_0
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->invalidate()V

    .line 200
    .end local v3           #tempy:F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 203
    const/4 v4, 0x0

    iput-boolean v4, p0, Lelectrum2/drums/fadercontrol;->ismoving:Z

    .line 204
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->invalidate()V

    .line 209
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 212
    iget-boolean v4, p0, Lelectrum2/drums/fadercontrol;->ismoving:Z

    if-eqz v4, :cond_5

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v3, v4

    .line 218
    .restart local v3       #tempy:F
    iget v4, p0, Lelectrum2/drums/fadercontrol;->ydiff:F

    add-float/2addr v3, v4

    .line 223
    sget v4, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->getHeight()I

    move-result v4

    sget v5, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    .line 226
    move v1, v3

    .line 229
    .local v1, temppos:F
    const/high16 v4, 0x437a

    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 231
    .local v0, scale:F
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    sget v5, Lelectrum2/drums/globalSounds;->mixerknobsizey:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 234
    .local v2, tempval:F
    mul-float/2addr v2, v0

    .line 236
    const/high16 v4, 0x42c8

    div-float v4, v2, v4

    iput v4, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    .line 244
    iget v4, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_3

    iput v8, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    .line 245
    :cond_3
    iget v4, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    iput v9, p0, Lelectrum2/drums/fadercontrol;->volumeval:F

    .line 248
    :cond_4
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->invalidate()V

    .line 256
    .end local v0           #scale:F
    .end local v1           #temppos:F
    .end local v2           #tempval:F
    .end local v3           #tempy:F
    :cond_5
    return v7
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 76
    iput-object p1, p0, Lelectrum2/drums/fadercontrol;->mText:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lelectrum2/drums/fadercontrol;->invalidate()V

    .line 79
    return-void
.end method
