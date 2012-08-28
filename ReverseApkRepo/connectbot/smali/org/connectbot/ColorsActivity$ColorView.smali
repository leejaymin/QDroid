.class Lorg/connectbot/ColorsActivity$ColorView;
.super Landroid/view/View;
.source "ColorsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/ColorsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorView"
.end annotation


# instance fields
.field private mAscent:I

.field private mBackgroundColor:I

.field private mHeightCenter:I

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mSquare:Z

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mWidthCenter:I

.field final synthetic this$0:Lorg/connectbot/ColorsActivity;


# direct methods
.method public constructor <init>(Lorg/connectbot/ColorsActivity;Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "square"

    .prologue
    const/16 v2, 0xa

    .line 162
    iput-object p1, p0, Lorg/connectbot/ColorsActivity$ColorView;->this$0:Lorg/connectbot/ColorsActivity;

    .line 163
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 165
    iput-boolean p3, p0, Lorg/connectbot/ColorsActivity$ColorView;->mSquare:Z

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    .line 168
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mShadowPaint:Landroid/graphics/Paint;

    .line 174
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 176
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 177
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    invoke-virtual {p0, v2, v2, v2, v2}, Lorg/connectbot/ColorsActivity$ColorView;->setPadding(IIII)V

    .line 181
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 233
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 235
    .local v2, specSize:I
    iget-object v3, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/connectbot/ColorsActivity$ColorView;->mAscent:I

    .line 236
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 238
    move v0, v2

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    iget v3, p0, Lorg/connectbot/ColorsActivity$ColorView;->mAscent:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 242
    invoke-virtual {p0}, Lorg/connectbot/ColorsActivity$ColorView;->getPaddingTop()I

    move-result v4

    .line 241
    add-int/2addr v3, v4

    .line 242
    invoke-virtual {p0}, Lorg/connectbot/ColorsActivity$ColorView;->getPaddingBottom()I

    move-result v4

    .line 241
    add-int v0, v3, v4

    .line 243
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 246
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 211
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 213
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 215
    move v0, v2

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    iget-object v3, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/connectbot/ColorsActivity$ColorView;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lorg/connectbot/ColorsActivity$ColorView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 219
    invoke-virtual {p0}, Lorg/connectbot/ColorsActivity$ColorView;->getPaddingRight()I

    move-result v4

    .line 218
    add-int v0, v3, v4

    .line 220
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 223
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 257
    iget v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 259
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mText:Ljava/lang/String;

    iget v1, p0, Lorg/connectbot/ColorsActivity$ColorView;->mWidthCenter:I

    int-to-float v1, v1

    iget v2, p0, Lorg/connectbot/ColorsActivity$ColorView;->mHeightCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/ColorsActivity$ColorView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mText:Ljava/lang/String;

    iget v1, p0, Lorg/connectbot/ColorsActivity$ColorView;->mWidthCenter:I

    int-to-float v1, v1

    iget v2, p0, Lorg/connectbot/ColorsActivity$ColorView;->mHeightCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/connectbot/ColorsActivity$ColorView;->measureWidth(I)I

    move-result v1

    .line 196
    .local v1, width:I
    iget-boolean v2, p0, Lorg/connectbot/ColorsActivity$ColorView;->mSquare:Z

    if-eqz v2, :cond_0

    .line 197
    move v0, v1

    .line 201
    .local v0, height:I
    :goto_0
    iget-object v2, p0, Lorg/connectbot/ColorsActivity$ColorView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/connectbot/ColorsActivity$ColorView;->mAscent:I

    .line 202
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lorg/connectbot/ColorsActivity$ColorView;->mWidthCenter:I

    .line 203
    div-int/lit8 v2, v0, 0x2

    iget v3, p0, Lorg/connectbot/ColorsActivity$ColorView;->mAscent:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/connectbot/ColorsActivity$ColorView;->mHeightCenter:I

    .line 205
    invoke-virtual {p0, v1, v0}, Lorg/connectbot/ColorsActivity$ColorView;->setMeasuredDimension(II)V

    .line 206
    return-void

    .line 199
    .end local v0           #height:I
    :cond_0
    invoke-direct {p0, p2}, Lorg/connectbot/ColorsActivity$ColorView;->measureHeight(I)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 184
    iput p1, p0, Lorg/connectbot/ColorsActivity$ColorView;->mBackgroundColor:I

    .line 185
    return-void
.end method

.method public setNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/ColorsActivity$ColorView;->mText:Ljava/lang/String;

    .line 189
    return-void
.end method
