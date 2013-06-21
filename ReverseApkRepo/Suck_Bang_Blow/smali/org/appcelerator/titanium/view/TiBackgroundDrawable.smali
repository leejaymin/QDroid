.class public Lorg/appcelerator/titanium/view/TiBackgroundDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "TiBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    }
.end annotation


# static fields
.field private static final NOT_SET:I = -0x1


# instance fields
.field private alpha:I

.field private background:Landroid/graphics/drawable/Drawable;

.field private border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

.field private innerRect:Landroid/graphics/RectF;

.field private outerRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    .line 44
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->outerRect:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    .line 48
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "stateSet"
    .parameter "drawable"

    .prologue
    .line 131
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 132
    iget-object p0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 53
    .local v0, paint:Landroid/graphics/Paint;
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    #getter for: Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->color:I
    invoke-static {v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$000(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    #getter for: Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F
    invoke-static {v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_4

    .line 56
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->outerRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    #getter for: Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F
    invoke-static {v4}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    #getter for: Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F
    invoke-static {v5}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v5

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 63
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    #getter for: Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F
    invoke-static {v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_5

    .line 68
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 69
    .local v1, path:Landroid/graphics/Path;
    const/16 v3, 0x8

    new-array v2, v3, [F

    .line 70
    .local v2, radii:[F
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    #getter for: Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->radius:F
    invoke-static {v3}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$100(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 71
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 72
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 73
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 81
    .end local v1           #path:Landroid/graphics/Path;
    .end local v2           #radii:[F
    :goto_1
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 82
    iget v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 83
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 85
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    return-void

    .line 58
    :cond_4
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->outerRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 78
    :cond_5
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_1
.end method

.method public getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 167
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 170
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_0
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 150
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "bounds"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 99
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->outerRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, padding:I
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    #getter for: Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->width:F
    invoke-static {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->access$200(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)F

    move-result v1

    float-to-int v0, v1

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onLevelChange(I)Z

    move-result v1

    .line 139
    .local v1, changed:Z
    const/4 v0, 0x0

    .line 140
    .local v0, backgroundChanged:Z
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 141
    iget-object p0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setLevel(I)Z

    move-result v0

    .line 143
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .parameter "stateSet"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v0

    .line 113
    .local v0, changed:Z
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setState([I)Z

    move-result v0

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, drawableChanged:Z
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->invalidateSelf()V

    .line 126
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseDelegate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 178
    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 180
    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 244
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    .line 245
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "backgroundColor"

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 226
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 236
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->onStateChange([I)Z

    .line 238
    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "backgroundImage"

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 231
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 232
    return-void
.end method

.method public setBorder(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)V
    .locals 0
    .parameter "border"

    .prologue
    .line 216
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    .line 217
    return-void
.end method
