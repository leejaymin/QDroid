.class public Lafzkl/development/mColorPicker/views/ColorPickerView;
.super Landroid/view/View;


# static fields
.field private static 쇰뒗:F


# instance fields
.field private ㅼ꽑嫄:F

.field private ㅼ꽑嫄곗쓽:I

.field private ㅼ쬆:F

.field private 寃껋씠:Landroid/graphics/Shader;

.field private 弱밧:F

.field private 弱방떙:Ljava/lang/String;

.field private 怨:Landroid/graphics/RectF;

.field private 洹:Landroid/graphics/Paint;

.field private 洹멸:F

.field private 湲고빐:Landroid/graphics/RectF;

.field private 癤욱븳援:F

.field private 궗:F

.field private 꾨뱾:Landroid/graphics/Paint;

.field private 꾩:I

.field private 대떎:I

.field private 대쫫:Lc;

.field private 덉넚:Lb;

.field private 덉쓣:Landroid/graphics/Shader;

.field private 뚮Ц:Landroid/graphics/Paint;

.field private 뚮벏:I

.field private 뚮젮議뚮떎怨:Landroid/graphics/Shader;

.field private 롩퐢:F

.field private 먮:Landroid/graphics/Paint;

.field private 먯껜蹂대떎:Landroid/graphics/Paint;

.field private 먯꽌:F

.field private 몃:Landroid/graphics/RectF;

.field private 몃Ъ:Landroid/graphics/Paint;

.field private 붿슧:Landroid/graphics/Paint;

.field private 앸ぐ:Z

.field private 쥌:Landroid/graphics/Point;

.field private 留먰븷:Landroid/graphics/Shader;

.field private 紐낆옱:F

.field private 李:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41f0

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    const/high16 v0, 0x41a0

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    const/high16 v0, 0x4120

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    const/high16 v0, 0x40a0

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄:F

    const/high16 v0, 0x4000

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧:F

    const/16 v0, 0xff

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    const/high16 v0, 0x43b4

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    const-string v0, "Alpha"

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱방떙:Ljava/lang/String;

    const v0, -0xe3e3e4

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대떎:I

    const v0, -0x919192

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄곗쓽:I

    iput-boolean v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    iput v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾩:I

    const/4 v0, 0x0

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쥌:Landroid/graphics/Point;

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援()V

    return-void
.end method

.method private getPrefferedHeight()I
    .locals 3

    const/high16 v0, 0x4348

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-boolean v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 3

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    iget-boolean v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    int-to-float v0, v0

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    add-float/2addr v0, v1

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private ㅼ꽑嫄()[I
    .locals 7

    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    const/16 v0, 0x169

    new-array v3, v0, [I

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_0
    if-gez v0, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [F

    int-to-float v5, v0

    aput v5, v4, v2

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private 弱밧()V
    .locals 5

    const/high16 v4, 0x3f80

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x4000

    sub-float/2addr v0, v2

    iget-boolean v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    add-float v3, v1, v0

    add-float/2addr v0, v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v1, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃:Landroid/graphics/RectF;

    return-void
.end method

.method private 癤욱븳援(II)I
    .locals 1

    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_0
.end method

.method private 癤욱븳援(F)Landroid/graphics/Point;
    .locals 5

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->怨:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    mul-float v3, p1, v1

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    return-object v2
.end method

.method private 癤욱븳援(FF)Landroid/graphics/Point;
    .locals 5

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    mul-float/2addr v2, p1

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Point;->x:I

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    return-object v3
.end method

.method private 癤욱븳援(I)Landroid/graphics/Point;
    .locals 5

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    int-to-float v3, p1

    mul-float/2addr v3, v1

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    return-object v2
.end method

.method private 癤욱븳援()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lee;->궗:F

    sput v0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄:F

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧:F

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌()F

    move-result v0

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹멸:F

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗()V

    invoke-virtual {p0, v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private 癤욱븳援(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v8, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃:Landroid/graphics/RectF;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먮:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄곗쓽:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v8, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먮:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮젮議뚮떎怨:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v5, -0x1

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮젮議뚮떎怨:Landroid/graphics/Shader;

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->留먰븷:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮젮議뚮떎怨:Landroid/graphics/Shader;

    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->留먰븷:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    invoke-direct {p0, v0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援(FF)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃Ъ:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄:F

    const/high16 v4, 0x3f80

    sget v5, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃Ъ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃Ъ:Landroid/graphics/Paint;

    const v2, -0x222223

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄:F

    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃Ъ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쥌:Landroid/graphics/Point;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쥌:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쥌:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->怨:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾩:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗(F)F

    move-result v1

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾩:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗(FF)[F

    move-result-object v2

    aget v1, v2, v1

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    aget v1, v2, v0

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾩:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗(I)I

    move-result v1

    iput v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private 궗(F)F
    .locals 4

    const/high16 v3, 0x43b4

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->怨:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    return v0

    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, p1, v0

    goto :goto_0
.end method

.method private 궗(I)I
    .locals 4

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v1

    rsub-int v0, v0, 0xff

    return v0

    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private 궗(II)I
    .locals 1

    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_0
.end method

.method private 궗()V
    .locals 4

    const/high16 v2, 0x4000

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃Ъ:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯껜蹂대떎:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾨뱾:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮Ц:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->붿슧:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먮:Landroid/graphics/Paint;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃Ъ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃Ъ:Landroid/graphics/Paint;

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃Ъ:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾨뱾:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대떎:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾨뱾:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾨뱾:Landroid/graphics/Paint;

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾨뱾:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->붿슧:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->붿슧:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    sget v2, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->붿슧:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->붿슧:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->붿슧:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private 궗(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x4000

    const/high16 v4, 0x3f80

    iget-object v8, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->怨:Landroid/graphics/RectF;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먮:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄곗쓽:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v8, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먮:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->덉쓣:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->덉쓣:Landroid/graphics/Shader;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯껜蹂대떎:Landroid/graphics/Paint;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->덉쓣:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯껜蹂대떎:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    sget v1, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v9

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    invoke-direct {p0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援(F)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾨뱾:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private 궗(FF)[F
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->몃:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v5, v0, [F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v0, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v6, p2, v6

    if-gez v6, :cond_2

    :goto_1
    const/4 v4, 0x0

    div-float v2, v7, v2

    mul-float/2addr v0, v2

    aput v0, v5, v4

    const/4 v0, 0x1

    div-float v2, v7, v3

    mul-float/2addr v1, v2

    sub-float v1, v7, v1

    aput v1, v5, v0

    return-object v5

    :cond_0
    iget v0, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v0

    goto :goto_0

    :cond_2
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    iget v1, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    goto :goto_1
.end method

.method private 대쫫()V
    .locals 5

    const/high16 v4, 0x3f80

    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v4

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    new-instance v0, Lb;

    const/high16 v1, 0x40a0

    sget v2, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lb;-><init>(I)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->덉넚:Lb;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->덉넚:Lb;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lb;->setBounds(IIII)V

    goto :goto_0
.end method

.method private 먯꽌()F
    .locals 3

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄:F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    sget v2, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    return v0
.end method

.method private 먯꽌(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v6, 0x0

    const/high16 v10, 0x4080

    const/high16 v9, 0x4000

    const/high16 v4, 0x3f80

    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->덉넚:Lb;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먮:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄곗쓽:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v8, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먮:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->덉넚:Lb;

    invoke-virtual {v0, p1}, Lb;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    aput v1, v0, v6

    const/4 v1, 0x1

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    invoke-static {v6, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->寃껋씠:Landroid/graphics/Shader;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮Ц:Landroid/graphics/Paint;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->寃껋씠:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮Ц:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱방떙:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱방떙:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱방떙:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sget v3, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->붿슧:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    sget v0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗:F

    mul-float/2addr v0, v10

    div-float/2addr v0, v9

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    invoke-direct {p0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援(I)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧:F

    sub-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->top:F

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾨뱾:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private 쇰뒗()V
    .locals 7

    const/high16 v6, 0x3f80

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    sub-float/2addr v0, v2

    add-float v2, v0, v6

    iget v0, v1, Landroid/graphics/RectF;->top:F

    add-float v3, v0, v6

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, v6

    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    add-float/2addr v0, v5

    :goto_0
    sub-float v0, v4, v0

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v6

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->怨:Landroid/graphics/RectF;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱방떙:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄곗쓽:I

    return v0
.end method

.method public getColor()I
    .locals 4

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹멸:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대떎:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-direct {p0, v0, v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援(II)I

    move-result v2

    invoke-direct {p0, v1, v3}, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗(II)I

    move-result v0

    iget-boolean v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-nez v1, :cond_2

    int-to-float v1, v2

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    sub-float/2addr v1, v3

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    if-le v1, v0, :cond_1

    int-to-float v1, v0

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->먯꽌:F

    add-float/2addr v1, v2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    int-to-float v1, v0

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    sub-float/2addr v1, v3

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    if-le v1, v2, :cond_0

    int-to-float v0, v2

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援:F

    sub-float/2addr v0, v1

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->궗:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹멸:F

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹멸:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹멸:F

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->李:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->洹멸:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱밧()V

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->쇰뒗()V

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->대쫫()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대쫫:Lc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대쫫:Lc;

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    aput v5, v4, v2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    aput v2, v4, v0

    const/4 v2, 0x2

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    aput v5, v4, v2

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-interface {v1, v2}, Lc;->癤욱븳援(I)V

    :cond_0
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    :goto_1
    return v0

    :pswitch_0
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쥌:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->쥌:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->癤욱븳援(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x4120

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾩:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대쫫:Lc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대쫫:Lc;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    aput v5, v2, v3

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    aput v3, v2, v4

    const/4 v3, 0x2

    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    aput v5, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {v0, v1}, Lc;->癤욱븳援(I)V

    :cond_1
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    move v0, v4

    :goto_1
    return v0

    :pswitch_0
    iget v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    const/high16 v7, 0x4248

    div-float/2addr v2, v7

    add-float/2addr v5, v2

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    const/high16 v7, 0x4248

    div-float/2addr v6, v7

    sub-float/2addr v2, v6

    cmpg-float v6, v5, v0

    if-gez v6, :cond_3

    move v5, v0

    :cond_2
    :goto_2
    cmpg-float v6, v2, v0

    if-gez v6, :cond_4

    :goto_3
    iput v5, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    move v0, v4

    goto :goto_0

    :cond_3
    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    move v5, v1

    goto :goto_2

    :cond_4
    cmpl-float v0, v2, v1

    if-lez v0, :cond_c

    move v0, v1

    goto :goto_3

    :pswitch_1
    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    mul-float v2, v6, v8

    sub-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_5

    :goto_4
    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    move v0, v4

    goto :goto_0

    :cond_5
    const/high16 v0, 0x43b4

    cmpl-float v0, v1, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x43b4

    goto :goto_4

    :pswitch_2
    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->湲고빐:Landroid/graphics/RectF;

    if-nez v0, :cond_7

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    int-to-float v0, v0

    mul-float v1, v2, v8

    sub-float/2addr v0, v1

    float-to-int v0, v0

    if-gez v0, :cond_9

    move v0, v3

    :cond_8
    :goto_5
    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    move v0, v4

    goto :goto_0

    :cond_9
    const/16 v1, 0xff

    if-le v0, v1, :cond_8

    const/16 v0, 0xff

    goto :goto_5

    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 1

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->弱방떙:Ljava/lang/String;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->앸ぐ:Z

    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮젮議뚮떎怨:Landroid/graphics/Shader;

    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->留먰븷:Landroid/graphics/Shader;

    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->덉쓣:Landroid/graphics/Shader;

    iput-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->寃껋씠:Landroid/graphics/Shader;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ꽑嫄곗쓽:I

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    new-array v4, v8, [F

    invoke-static {v1, v3, v2, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    aget v0, v4, v5

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    aget v0, v4, v6

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    aget v0, v4, v7

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    if-eqz p2, :cond_0

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대쫫:Lc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대쫫:Lc;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->뚮벏:I

    new-array v2, v8, [F

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->紐낆옱:F

    aput v3, v2, v5

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->롩퐢:F

    aput v3, v2, v6

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->ㅼ쬆:F

    aput v3, v2, v7

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {v0, v1}, Lc;->癤욱븳援(I)V

    :cond_0
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lc;)V
    .locals 0

    iput-object p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대쫫:Lc;

    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 2

    iput p1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대떎:I

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->꾨뱾:Landroid/graphics/Paint;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPickerView;->대떎:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->invalidate()V

    return-void
.end method
