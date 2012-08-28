.class Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "UberColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/util/UberColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorPickerView"
.end annotation


# static fields
.field private static final PALETTE_CENTER_X:I

.field private static final PALETTE_CENTER_Y:I

.field private static final PALETTE_DIM:I

.field private static PALETTE_POS_X:I

.field private static PALETTE_POS_Y:I

.field private static final PALETTE_RADIUS:I

.field private static SWATCH_WIDTH:I

.field private static TEXT_HEX_POS:[I

.field private static TEXT_HSV_POS:[I

.field private static TEXT_RGB_POS:[I

.field private static TEXT_YUV_POS:[I

.field private static VIEW_DIM_X:I

.field private static VIEW_DIM_Y:I


# instance fields
.field private mCoord:[I

.field private mFocusedControl:I

.field private mHSV:[F

.field private mHSVenabled:Z

.field private mHexStr:Ljava/lang/String;

.field private mHexenabled:Z

.field private mHorSlidersBM:[Landroid/graphics/Bitmap;

.field private mHorSlidersCv:[Landroid/graphics/Canvas;

.field private mListener:Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;

.field private mMethod:I

.field private mNewSwatchRect:Landroid/graphics/Rect;

.field private mOldSwatchRect:Landroid/graphics/Rect;

.field private mOriginalColor:I

.field private mOvalHueSat:Landroid/graphics/Paint;

.field private mOvalHueSatSmall:Landroid/graphics/Paint;

.field private mPaletteRect:Landroid/graphics/Rect;

.field private mPosMarker:Landroid/graphics/Paint;

.field private mRGB:[I

.field private mRGBenabled:Z

.field private mSpectrumColorsRev:[I

.field private mSwatchNew:Landroid/graphics/Paint;

.field private mSwatchOld:Landroid/graphics/Paint;

.field private mText:Landroid/graphics/Paint;

.field private mTracking:I

.field private mValDimmer:Landroid/graphics/Paint;

.field private mVerSliderBM:Landroid/graphics/Bitmap;

.field private mVerSliderCv:Landroid/graphics/Canvas;

.field private mVerSliderRect:Landroid/graphics/Rect;

.field private mYUV:[F

.field private mYUVenabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x3c

    const/4 v1, 0x2

    .line 135
    const/16 v0, 0x5f

    sput v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    .line 138
    const/4 v0, 0x0

    sput v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    .line 139
    sput v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    .line 140
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    .line 141
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    .line 142
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    sput v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    .line 143
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    sput v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_Y:I

    .line 147
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    sput v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_X:I

    .line 148
    sput v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_Y:I

    .line 162
    new-array v0, v1, [I

    sput-object v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    .line 163
    new-array v0, v1, [I

    sput-object v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    .line 164
    new-array v0, v1, [I

    sput-object v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    .line 165
    new-array v0, v1, [I

    sput-object v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;III)V
    .locals 10
    .parameter "c"
    .parameter "l"
    .parameter "width"
    .parameter "height"
    .parameter "color"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mMethod:I

    .line 170
    const/4 v1, -0x1

    iput v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    .line 183
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHorSlidersBM:[Landroid/graphics/Bitmap;

    .line 184
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Canvas;

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHorSlidersCv:[Landroid/graphics/Canvas;

    .line 195
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    .line 196
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    .line 197
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPaletteRect:Landroid/graphics/Rect;

    .line 198
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderRect:Landroid/graphics/Rect;

    .line 201
    const/4 v1, 0x0

    iput v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    .line 202
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    .line 203
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    .line 204
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    .line 205
    const-string v1, ""

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSVenabled:Z

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGBenabled:Z

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUVenabled:Z

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHexenabled:Z

    .line 210
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    .line 211
    const/4 v1, -0x1

    iput v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    .line 228
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->setFocusable(Z)V

    .line 230
    iput-object p2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mListener:Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;

    .line 232
    iput p5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    .line 234
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {p5, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 236
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 239
    if-gt p3, p4, :cond_0

    .line 240
    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/lit8 v1, v1, 0x28

    div-int/lit8 v1, v1, 0x2

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    .line 242
    const/4 v1, 0x0

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    .line 243
    const/16 v1, 0x6c

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    .line 246
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/16 v3, 0x30

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    const/16 v5, 0x6c

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    const/16 v3, 0x30

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    const/16 v5, 0x6c

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPaletteRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    sget v5, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v6, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 249
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderRect:Landroid/graphics/Rect;

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/lit8 v4, v4, 0x28

    sget v5, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v6, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 251
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 252
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 253
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    const/4 v2, 0x0

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x32

    aput v3, v1, v2

    .line 254
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    const/4 v2, 0x1

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 255
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    const/4 v2, 0x0

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x64

    aput v3, v1, v2

    .line 256
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    const/4 v2, 0x1

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 257
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    const/4 v2, 0x0

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/lit16 v3, v3, 0x96

    aput v3, v1, v2

    .line 258
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    const/4 v2, 0x1

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 260
    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/lit8 v1, v1, 0x28

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_X:I

    .line 261
    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x30

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_Y:I

    .line 289
    :goto_0
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    .line 299
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchOld:Landroid/graphics/Paint;

    .line 300
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchOld:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchOld:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    .line 304
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    new-instance v9, Landroid/graphics/SweepGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    const/4 v4, 0x0

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 308
    .local v9, shaderA:Landroid/graphics/Shader;
    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    int-to-float v3, v3

    const/4 v4, -0x1

    const/high16 v5, -0x100

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 309
    .local v0, shaderB:Landroid/graphics/Shader;
    new-instance v8, Landroid/graphics/ComposeShader;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v0, v1}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 310
    .local v8, shader:Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    .line 311
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 312
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 315
    const/16 v1, 0x28

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderBM:Landroid/graphics/Bitmap;

    .line 316
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderBM:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderCv:Landroid/graphics/Canvas;

    .line 318
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/4 v1, 0x3

    if-lt v7, v1, :cond_1

    .line 323
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    .line 324
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 326
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 334
    new-instance v9, Landroid/graphics/SweepGradient;

    .end local v9           #shaderA:Landroid/graphics/Shader;
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    const/4 v4, 0x0

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 335
    .restart local v9       #shaderA:Landroid/graphics/Shader;
    new-instance v0, Landroid/graphics/RadialGradient;

    .end local v0           #shaderB:Landroid/graphics/Shader;
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, -0x1

    const/high16 v5, -0x100

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 336
    .restart local v0       #shaderB:Landroid/graphics/Shader;
    new-instance v8, Landroid/graphics/ComposeShader;

    .end local v8           #shader:Landroid/graphics/Shader;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v0, v1}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 337
    .restart local v8       #shader:Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOvalHueSatSmall:Landroid/graphics/Paint;

    .line 338
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOvalHueSatSmall:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 339
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOvalHueSatSmall:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 342
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    .line 343
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 347
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    .line 348
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const/high16 v2, 0x4140

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->initUI()V

    .line 353
    return-void

    .line 264
    .end local v0           #shaderB:Landroid/graphics/Shader;
    .end local v7           #i:I
    .end local v8           #shader:Landroid/graphics/Shader;
    .end local v9           #shaderA:Landroid/graphics/Shader;
    :cond_0
    const/16 v1, 0x6e

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    .line 266
    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    .line 267
    const/4 v1, 0x0

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    .line 270
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/16 v3, 0x54

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    const/16 v5, 0x90

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 271
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/16 v3, 0x90

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    const/16 v5, 0xcc

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPaletteRect:Landroid/graphics/Rect;

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    sget v5, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/2addr v4, v5

    sget v5, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v6, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderRect:Landroid/graphics/Rect;

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/2addr v2, v3

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    sget v5, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x28

    sget v5, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    sget v6, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 276
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 277
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    const/4 v2, 0x0

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 278
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    const/4 v2, 0x1

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4045

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v1, v2

    .line 279
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    const/4 v2, 0x0

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x32

    aput v3, v1, v2

    .line 280
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    const/4 v2, 0x1

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4045

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v1, v2

    .line 281
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    const/4 v2, 0x0

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x32

    aput v3, v1, v2

    .line 282
    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    const/4 v2, 0x1

    sget-object v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 284
    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x28

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_X:I

    .line 285
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_Y:I

    goto/16 :goto_0

    .line 319
    .restart local v0       #shaderB:Landroid/graphics/Shader;
    .restart local v7       #i:I
    .restart local v8       #shader:Landroid/graphics/Shader;
    .restart local v9       #shaderA:Landroid/graphics/Shader;
    :cond_1
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHorSlidersBM:[Landroid/graphics/Bitmap;

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    const/16 v3, 0x28

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    .line 320
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHorSlidersCv:[Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHorSlidersBM:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v7

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v7

    .line 318
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 289
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method private ave(IIF)I
    .locals 2
    .parameter "s"
    .parameter "d"
    .parameter "p"

    .prologue
    .line 636
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private changeHSPalette(FFI)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "jump"

    .prologue
    .line 734
    const/4 v6, 0x0

    .local v6, x2:I
    const/4 v7, 0x0

    .line 735
    .local v7, y2:I
    const/4 v8, 0x0

    cmpg-float v8, p1, v8

    if-gez v8, :cond_6

    .line 736
    move/from16 v0, p3

    neg-int v6, v0

    .line 739
    :cond_0
    :goto_0
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_7

    .line 740
    move/from16 v0, p3

    neg-int v7, v0

    .line 744
    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    add-int/2addr v10, v6

    aput v10, v8, v9

    .line 745
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x1

    aget v10, v8, v9

    add-int/2addr v10, v7

    aput v10, v8, v9

    .line 747
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v9, v9

    if-ge v8, v9, :cond_8

    .line 748
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x0

    sget v10, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v10, v10

    aput v10, v8, v9

    .line 751
    :cond_2
    :goto_2
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sget v9, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v9, v9

    if-ge v8, v9, :cond_9

    .line 752
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x1

    sget v10, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v10, v10

    aput v10, v8, v9

    .line 756
    :cond_3
    :goto_3
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    mul-int/2addr v8, v9

    iget-object v9, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 757
    .local v4, radius:F
    sget v8, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_4

    .line 758
    sget v8, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v4, v8

    .line 760
    :cond_4
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-double v8, v8

    iget-object v10, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v1, v8

    .line 762
    .local v1, angle:F
    const v8, 0x40c90fdb

    div-float v5, v1, v8

    .line 763
    .local v5, unit:F
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gez v8, :cond_5

    .line 764
    const/high16 v8, 0x3f80

    add-float/2addr v5, v8

    .line 767
    :cond_5
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x0

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    float-to-double v12, v4

    mul-double/2addr v10, v12

    invoke-direct {p0, v10, v11}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v10

    aput v10, v8, v9

    .line 768
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x1

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v12, v4

    mul-double/2addr v10, v12

    invoke-direct {p0, v10, v11}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v10

    aput v10, v8, v9

    .line 770
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    invoke-direct {p0, v8, v5}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result v2

    .line 771
    .local v2, c:I
    const/4 v8, 0x3

    new-array v3, v8, [F

    .line 772
    .local v3, hsv:[F
    invoke-static {v2, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 773
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    aput v10, v8, v9

    .line 774
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    const/4 v9, 0x1

    sget v10, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v10, v10

    div-float v10, v4, v10

    aput v10, v8, v9

    .line 775
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 776
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    iget-object v9, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 778
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->setVerValSlider()V

    .line 780
    invoke-virtual {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->invalidate()V

    .line 781
    return-void

    .line 737
    .end local v1           #angle:F
    .end local v2           #c:I
    .end local v3           #hsv:[F
    .end local v4           #radius:F
    .end local v5           #unit:F
    :cond_6
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-lez v8, :cond_0

    .line 738
    move/from16 v6, p3

    goto/16 :goto_0

    .line 741
    :cond_7
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 742
    move/from16 v7, p3

    goto/16 :goto_1

    .line 749
    :cond_8
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    if-le v8, v9, :cond_2

    .line 750
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x0

    sget v10, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    aput v10, v8, v9

    goto/16 :goto_2

    .line 753
    :cond_9
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sget v9, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    if-le v8, v9, :cond_3

    .line 754
    iget-object v8, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v9, 0x1

    sget v10, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    aput v10, v8, v9

    goto/16 :goto_3
.end method

.method private changeSlider(IZI)V
    .locals 5
    .parameter "slider"
    .parameter "increase"
    .parameter "jump"

    .prologue
    const/4 v4, 0x2

    .line 794
    iget v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mMethod:I

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v1, v0, v4

    if-eqz p2, :cond_1

    .end local p3
    :goto_0
    int-to-float v2, p3

    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 798
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->pinToUnit(F)F

    move-result v1

    aput v1, v0, v4

    .line 799
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 800
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v2, v2, v4

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 802
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 804
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->setOvalValDimmer()V

    .line 806
    invoke-virtual {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->invalidate()V

    .line 808
    :cond_0
    return-void

    .line 797
    .restart local p3
    :cond_1
    neg-int p3, p3

    goto :goto_0
.end method

.method private drawHSV1Palette(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 483
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    int-to-float v0, v0

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 486
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    int-to-float v0, v0

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_Y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v1, v1

    int-to-float v1, v1

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v2, v2

    int-to-float v2, v2

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v3, v3

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOvalHueSat:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 488
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v1, v1

    int-to-float v1, v1

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v2, v2

    int-to-float v2, v2

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v3, v3

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 489
    iget v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    if-nez v0, :cond_0

    .line 490
    invoke-direct {p0, p1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->hilightFocusedOvalPalette(Landroid/graphics/Canvas;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    aget v1, v1, v6

    invoke-direct {p0, p1, v0, v1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mark2DPalette(Landroid/graphics/Canvas;II)V

    .line 492
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_Y:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 495
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 496
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderBM:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 497
    iget v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    if-ne v0, v6, :cond_1

    .line 498
    invoke-direct {p0, p1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->hilightFocusedVerSlider(Landroid/graphics/Canvas;)V

    .line 499
    :cond_1
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->markVerSlider(Landroid/graphics/Canvas;I)V

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 502
    return-void
.end method

.method private drawSwatches(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/high16 v8, -0x100

    const/high16 v7, 0x4000

    const-wide/high16 v5, 0x3fe0

    .line 376
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 378
    .local v0, hsv:[F
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 381
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchOld:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 382
    iget v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 385
    aget v1, v0, v10

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    :cond_0
    const-string v1, "Revert"

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const-string v4, "Revert"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    iget-object v4, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 388
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v1, v1, v10

    float-to-double v1, v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_1

    .line 393
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    :cond_1
    const-string v1, "Accept"

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->SWATCH_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const-string v4, "Accept"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    iget-object v4, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 395
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    const/high16 v2, 0x4140

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 398
    return-void
.end method

.method private hilightFocusedOvalPalette(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 468
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v1, v1

    int-to-float v1, v1

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v2, v2

    int-to-float v2, v2

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v3, v3

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 470
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    sget v4, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 472
    return-void
.end method

.method private hilightFocusedVerSlider(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x28

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 459
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x26

    sget v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 461
    return-void
.end method

.method private initHSV1Palette()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 520
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->setOvalValDimmer()V

    .line 521
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->setVerValSlider()V

    .line 523
    const v2, 0x40c90fdb

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v3, v3, v7

    const v4, 0x42652ee0

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 524
    .local v0, angle:F
    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v2, v2, v8

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 525
    .local v1, radius:F
    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v7

    .line 526
    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v8

    .line 528
    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    sget v3, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    iget-object v4, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v4, v4, v9

    sget v5, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    aput v3, v2, v9

    .line 529
    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->initHSV1Palette()V

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    .line 512
    return-void
.end method

.method private interpColor([IF)I
    .locals 10
    .parameter "colors"
    .parameter "unit"

    .prologue
    .line 648
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_0

    .line 649
    const/4 v8, 0x0

    aget v8, p1, v8

    .line 667
    :goto_0
    return v8

    .line 651
    :cond_0
    const/high16 v8, 0x3f80

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_1

    .line 652
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget v8, p1, v8

    goto :goto_0

    .line 655
    :cond_1
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float v6, p2, v8

    .line 656
    .local v6, p:F
    float-to-int v5, v6

    .line 657
    .local v5, i:I
    int-to-float v8, v5

    sub-float/2addr v6, v8

    .line 660
    aget v2, p1, v5

    .line 661
    .local v2, c0:I
    add-int/lit8 v8, v5, 0x1

    aget v3, p1, v8

    .line 662
    .local v3, c1:I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 663
    .local v0, a:I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v7

    .line 664
    .local v7, r:I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 665
    .local v4, g:I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 667
    .local v1, b:I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    goto :goto_0
.end method

.method private mark2DPalette(Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter "canvas"
    .parameter "markerPosX"
    .parameter "markerPosY"

    .prologue
    .line 434
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    new-instance v0, Landroid/graphics/RectF;

    add-int/lit8 v1, p2, -0x5

    int-to-float v1, v1

    add-int/lit8 v2, p3, -0x5

    int-to-float v2, v2

    add-int/lit8 v3, p2, 0x5

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 436
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    new-instance v0, Landroid/graphics/RectF;

    add-int/lit8 v1, p2, -0x3

    int-to-float v1, v1

    add-int/lit8 v2, p3, -0x3

    int-to-float v2, v2

    add-int/lit8 v3, p2, 0x3

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x3

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 438
    return-void
.end method

.method private markVerSlider(Landroid/graphics/Canvas;I)V
    .locals 5
    .parameter "canvas"
    .parameter "markerPos"

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, p2, -0x2

    add-int/lit8 v2, p2, 0x3

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 448
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v3, p2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mPosMarker:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 450
    return-void
.end method

.method private pin(FF)F
    .locals 1
    .parameter "n"
    .parameter "max"

    .prologue
    .line 603
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 604
    const/4 p1, 0x0

    .line 608
    :cond_0
    :goto_0
    return p1

    .line 605
    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    .line 606
    move p1, p2

    goto :goto_0
.end method

.method private pin(FFF)F
    .locals 1
    .parameter "n"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 619
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    .line 620
    move p1, p2

    .line 624
    :cond_0
    :goto_0
    return p1

    .line 621
    :cond_1
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 622
    move p1, p3

    goto :goto_0
.end method

.method private pinToUnit(F)F
    .locals 1
    .parameter "n"

    .prologue
    .line 588
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 589
    const/4 p1, 0x0

    .line 593
    :cond_0
    :goto_0
    return p1

    .line 590
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 591
    const/high16 p1, 0x3f80

    goto :goto_0
.end method

.method private round(D)I
    .locals 2
    .parameter "x"

    .prologue
    .line 579
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private setOvalValDimmer()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 537
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 538
    .local v1, hsv:[F
    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 539
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 540
    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 541
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 542
    .local v0, gray:I
    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mValDimmer:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    return-void
.end method

.method private setVerValSlider()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 549
    const/4 v4, 0x3

    new-array v3, v4, [F

    .line 550
    .local v3, hsv:[F
    iget-object v4, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v4, v4, v6

    aput v4, v3, v6

    .line 551
    iget-object v4, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v4, v4, v5

    aput v4, v3, v5

    .line 552
    const/high16 v4, 0x3f80

    aput v4, v3, v7

    .line 553
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 555
    .local v0, col:I
    new-array v1, v7, [I

    .line 556
    .local v1, colors:[I
    aput v0, v1, v6

    .line 557
    const/high16 v4, -0x100

    aput v4, v1, v5

    .line 558
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 559
    .local v2, gradDraw:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 560
    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setLevel(I)Z

    .line 561
    const/16 v4, 0x28

    sget v5, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 562
    iget-object v4, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderCv:Landroid/graphics/Canvas;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 563
    return-void
.end method

.method private updateAllFromHSV()V
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGBenabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUVenabled:Z

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->updateRGBfromHSV()V

    .line 858
    :cond_1
    iget-boolean v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUVenabled:Z

    if-eqz v0, :cond_2

    .line 859
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->updateYUVfromRGB()V

    .line 862
    :cond_2
    iget-boolean v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGBenabled:Z

    if-eqz v0, :cond_3

    .line 863
    invoke-direct {p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->updateHexFromHSV()V

    .line 864
    :cond_3
    return-void
.end method

.method private updateHexFromHSV()V
    .locals 3

    .prologue
    .line 845
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    .line 846
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    .line 847
    return-void
.end method

.method private updateRGBfromHSV()V
    .locals 4

    .prologue
    .line 814
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 815
    .local v0, color:I
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    aput v3, v1, v2

    .line 816
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    const/4 v2, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    aput v3, v1, v2

    .line 817
    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    const/4 v2, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    aput v3, v1, v2

    .line 818
    return-void
.end method

.method private updateYUVfromRGB()V
    .locals 12

    .prologue
    const/high16 v11, -0x4100

    const/high16 v6, 0x437f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 824
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v5, v5, v8

    int-to-float v5, v5

    div-float v4, v5, v6

    .line 825
    .local v4, r:F
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v5, v5, v9

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 826
    .local v3, g:F
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v5, v5, v10

    int-to-float v5, v5

    div-float v1, v5, v6

    .line 828
    .local v1, b:F
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 829
    .local v2, cm:Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    .line 830
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 832
    .local v0, a:[F
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v6, v0, v8

    mul-float/2addr v6, v4

    aget v7, v0, v9

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    aget v7, v0, v10

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    aput v6, v5, v8

    .line 833
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    iget-object v6, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v6, v6, v8

    invoke-direct {p0, v6}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->pinToUnit(F)F

    move-result v6

    aput v6, v5, v8

    .line 834
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float/2addr v6, v4

    const/4 v7, 0x6

    aget v7, v0, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/4 v7, 0x7

    aget v7, v0, v7

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    aput v6, v5, v9

    .line 835
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    iget-object v6, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v6, v6, v9

    const/high16 v7, 0x3f00

    invoke-direct {p0, v6, v11, v7}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->pin(FFF)F

    move-result v6

    aput v6, v5, v9

    .line 836
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    const/16 v6, 0xa

    aget v6, v0, v6

    mul-float/2addr v6, v4

    const/16 v7, 0xb

    aget v7, v0, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/16 v7, 0xc

    aget v7, v0, v7

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    aput v6, v5, v10

    .line 837
    iget-object v5, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    iget-object v6, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v6, v6, v10

    const/high16 v7, 0x3f00

    invoke-direct {p0, v6, v11, v7}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->pin(FFF)F

    move-result v6

    aput v6, v5, v10

    .line 838
    return-void
.end method

.method private writeColorParams(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x2

    const/high16 v6, 0x437f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    iget-boolean v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSVenabled:Z

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v1, v1, v4

    const/high16 v2, 0x43b4

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v1, v1, v5

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    aget v1, v1, v7

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HSV_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0x24

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 411
    :cond_0
    iget-boolean v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGBenabled:Z

    if-eqz v0, :cond_1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "B: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mRGB:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_RGB_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0x24

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 417
    :cond_1
    iget-boolean v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUVenabled:Z

    if-eqz v0, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Y: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v1, v1, v4

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "U: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v1, v1, v5

    add-float/2addr v1, v8

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mYUV:[F

    aget v1, v1, v7

    add-float/2addr v1, v8

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_YUV_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0x24

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 423
    :cond_2
    iget-boolean v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHexenabled:Z

    if-eqz v0, :cond_3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHexStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->TEXT_HEX_POS:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 687
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 691
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 693
    .local v0, jump:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 721
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 701
    :pswitch_1
    iget v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mMethod:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 703
    :pswitch_2
    iget v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    if-nez v3, :cond_1

    .line 704
    invoke-direct {p0, v1, v2, v0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->changeHSPalette(FFI)V

    goto :goto_0

    .line 706
    :cond_1
    iget v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    if-ne v3, v5, :cond_0

    .line 707
    cmpg-float v3, v2, v4

    if-gez v3, :cond_2

    .line 708
    iget v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    invoke-direct {p0, v3, v5, v0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->changeSlider(IZI)V

    goto :goto_0

    .line 709
    :cond_2
    cmpl-float v3, v2, v4

    if-lez v3, :cond_0

    .line 710
    iget v3, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->changeSlider(IZI)V

    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 701
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->drawSwatches(Landroid/graphics/Canvas;)V

    .line 364
    invoke-direct {p0, p1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->writeColorParams(Landroid/graphics/Canvas;)V

    .line 367
    iget v0, p0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mMethod:I

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->drawHSV1Palette(Landroid/graphics/Canvas;)V

    .line 369
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 570
    sget v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_X:I

    sget v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->VIEW_DIM_Y:I

    invoke-virtual {p0, v0, v1}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->setMeasuredDimension(II)V

    .line 571
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "event"

    .prologue
    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 872
    .local v16, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 875
    .local v17, y:F
    sget v19, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sget v20, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->pin(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 878
    .local v18, y2:I
    sget v19, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_X:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v16, v19

    sget v20, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_X:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v6, v19, v20

    .line 879
    .local v6, circlePinnedX:F
    sget v19, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_POS_Y:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v17, v19

    sget v20, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_CENTER_Y:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v7, v19, v20

    .line 882
    .local v7, circlePinnedY:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v19

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOldSwatchRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->ptInRect(IILandroid/graphics/Rect;)Z

    move-result v11

    .line 883
    .local v11, inSwatchOld:Z
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v19

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mNewSwatchRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->ptInRect(IILandroid/graphics/Rect;)Z

    move-result v10

    .line 886
    .local v10, inSwatchNew:Z
    mul-float v19, v6, v6

    mul-float v20, v7, v7

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v13, v0

    .line 889
    .local v13, radius:F
    sget v19, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v13, v19

    if-gtz v19, :cond_2

    const/4 v9, 0x1

    .line 892
    .local v9, inOvalPalette:Z
    :goto_0
    sget v19, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v13, v19

    if-lez v19, :cond_0

    .line 893
    sget v19, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    move/from16 v0, v19

    int-to-float v13, v0

    .line 896
    :cond_0
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v19

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mVerSliderRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->ptInRect(IILandroid/graphics/Rect;)Z

    move-result v12

    .line 898
    .local v12, inVerSlider:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 979
    :cond_1
    :goto_1
    const/16 v19, 0x1

    return v19

    .line 889
    .end local v9           #inOvalPalette:Z
    .end local v12           #inVerSlider:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 900
    .restart local v9       #inOvalPalette:Z
    .restart local v12       #inVerSlider:Z
    :pswitch_0
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    .line 902
    if-eqz v11, :cond_5

    .line 903
    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    .line 923
    :cond_3
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    move/from16 v19, v0

    const/16 v20, 0x1e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 924
    float-to-double v0, v7

    move-wide/from16 v19, v0

    float-to-double v0, v6

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v4, v0

    .line 926
    .local v4, angle:F
    const v19, 0x40c90fdb

    div-float v14, v4, v19

    .line 927
    .local v14, unit:F
    const/16 v19, 0x0

    cmpg-float v19, v14, v19

    if-gez v19, :cond_4

    .line 928
    const/high16 v19, 0x3f80

    add-float v14, v14, v19

    .line 931
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    float-to-double v0, v4

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    float-to-double v0, v13

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v21

    aput v21, v19, v20

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    float-to-double v0, v4

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    float-to-double v0, v13

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->round(D)I

    move-result v21

    aput v21, v19, v20

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSpectrumColorsRev:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result v5

    .line 935
    .local v5, c:I
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v8, v0, [F

    .line 936
    .local v8, hsv:[F
    invoke-static {v5, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aget v21, v8, v21

    aput v21, v19, v20

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    sget v21, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_RADIUS:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v13, v21

    aput v21, v19, v20

    .line 939
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 942
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->setVerValSlider()V

    .line 944
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->invalidate()V

    goto/16 :goto_1

    .line 904
    .end local v4           #angle:F
    .end local v5           #c:I
    .end local v8           #hsv:[F
    .end local v14           #unit:F
    :cond_5
    if-eqz v10, :cond_6

    .line 905
    const/16 v19, 0xb

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    goto/16 :goto_2

    .line 909
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mMethod:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 910
    if-eqz v9, :cond_7

    .line 911
    const/16 v19, 0x1e

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    .line 912
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    goto/16 :goto_2

    .line 914
    :cond_7
    if-eqz v12, :cond_3

    .line 915
    const/16 v19, 0x1f

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    .line 916
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mFocusedControl:I

    goto/16 :goto_2

    .line 946
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    move/from16 v19, v0

    const/16 v20, 0x1f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mCoord:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aput v18, v19, v20

    .line 949
    const/high16 v19, 0x3f80

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    sget v21, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->PALETTE_DIM:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    sub-float v15, v19, v20

    .line 951
    .local v15, value:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aput v15, v19, v20

    .line 952
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->updateAllFromHSV()V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 955
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->setOvalValDimmer()V

    .line 957
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->invalidate()V

    goto/16 :goto_1

    .line 964
    .end local v15           #value:F
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    if-eqz v11, :cond_a

    .line 965
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mHSV:[F

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mOriginalColor:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 967
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->initUI()V

    .line 968
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->invalidate()V

    .line 975
    :cond_9
    :goto_3
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    goto/16 :goto_1

    .line 970
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mTracking:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    if-eqz v10, :cond_9

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mListener:Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->mSwatchNew:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getColor()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_3

    .line 898
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ptInRect(IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "r"

    .prologue
    .line 678
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-le p1, v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-le p2, v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
