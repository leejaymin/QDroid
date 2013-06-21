.class public Lcom/rookiestudio/customize/AmbilWarnaKotak;
.super Landroid/view/View;
.source "AmbilWarnaKotak.java"


# instance fields
.field dalam:Landroid/graphics/Shader;

.field hue:F

.field luar:Landroid/graphics/Shader;

.field paint:Landroid/graphics/Paint;

.field satudp:F

.field tmp00:[F

.field ukuranUiDp:F

.field ukuranUiPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rookiestudio/customize/AmbilWarnaKotak;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/rookiestudio/customize/AmbilWarnaKotak;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/high16 v0, 0x4370

    iput v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->ukuranUiDp:F

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->tmp00:[F

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->satudp:F

    .line 33
    iget v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->ukuranUiDp:F

    iget v1, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->satudp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->ukuranUiPx:F

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->paint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->ukuranUiPx:F

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->luar:Landroid/graphics/Shader;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->tmp00:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->tmp00:[F

    const/4 v4, 0x2

    const/high16 v7, 0x3f80

    aput v7, v3, v4

    aput v7, v0, v2

    .line 46
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->tmp00:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->hue:F

    aput v3, v0, v2

    .line 47
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->tmp00:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 49
    .local v6, rgb:I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->ukuranUiPx:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->dalam:Landroid/graphics/Shader;

    .line 50
    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->luar:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->dalam:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 52
    .local v8, shader:Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 54
    iget v3, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->ukuranUiPx:F

    iget v4, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->ukuranUiPx:F

    iget-object v5, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    return-void
.end method

.method setHue(F)V
    .locals 0
    .parameter "hue"

    .prologue
    .line 58
    iput p1, p0, Lcom/rookiestudio/customize/AmbilWarnaKotak;->hue:F

    .line 59
    invoke-virtual {p0}, Lcom/rookiestudio/customize/AmbilWarnaKotak;->invalidate()V

    .line 60
    return-void
.end method
