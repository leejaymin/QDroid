.class Lexam/Draw/ReDraw5$MyView;
.super Landroid/view/View;
.source "ReDraw5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyView"
.end annotation


# instance fields
.field Picture:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Draw/ReDraw5$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field arPath:[[Landroid/graphics/Path;

.field mBack:Landroid/graphics/Bitmap;

.field mPntBack:Landroid/graphics/Paint;

.field mPntFore:Landroid/graphics/Paint;

.field mPntPath:Landroid/graphics/Paint;

.field final synthetic this$0:Lexam/Draw/ReDraw5;


# direct methods
.method public constructor <init>(Lexam/Draw/ReDraw5;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x5

    const/4 v1, 0x0

    .line 26
    iput-object p1, p0, Lexam/Draw/ReDraw5$MyView;->this$0:Lexam/Draw/ReDraw5;

    .line 27
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    .line 30
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntBack:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x43a0

    .line 32
    const v5, -0xbbbbbc

    const v6, -0x333334

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    .line 31
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 33
    .local v0, lshader:Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntBack:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntPath:Landroid/graphics/Paint;

    .line 36
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntPath:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntPath:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntPath:Landroid/graphics/Paint;

    const/high16 v3, -0x7f01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntFore:Landroid/graphics/Paint;

    .line 41
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntFore:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntFore:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntFore:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    filled-new-array {v11, v11}, [I

    move-result-object v2

    const-class v3, Landroid/graphics/Path;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/graphics/Path;

    iput-object v2, p0, Lexam/Draw/ReDraw5$MyView;->arPath:[[Landroid/graphics/Path;

    .line 46
    const/4 v9, 0x0

    .local v9, x:I
    :goto_0
    if-lt v9, v11, :cond_0

    .line 60
    return-void

    .line 47
    :cond_0
    const/4 v10, 0x0

    .local v10, y:I
    :goto_1
    if-lt v10, v11, :cond_1

    .line 46
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    aput-object v3, v2, v10

    .line 49
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v9, 0x46

    int-to-float v3, v3

    mul-int/lit8 v4, v10, 0x46

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    const/16 v8, 0x20

    .local v8, dis:I
    :goto_2
    if-gt v8, v12, :cond_2

    .line 47
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 51
    :cond_2
    rem-int/lit8 v2, v8, 0x4

    packed-switch v2, :pswitch_data_0

    .line 50
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 52
    :pswitch_0
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 53
    :pswitch_1
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 54
    :pswitch_2
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    neg-int v3, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 55
    :pswitch_3
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    neg-int v3, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method BuildBack()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0}, Lexam/Draw/ReDraw5$MyView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lexam/Draw/ReDraw5$MyView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mBack:Landroid/graphics/Bitmap;

    .line 78
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mBack:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lexam/Draw/ReDraw5$MyView;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p0}, Lexam/Draw/ReDraw5$MyView;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lexam/Draw/ReDraw5$MyView;->mPntBack:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    const/4 v6, 0x0

    .local v6, x:I
    :goto_0
    if-lt v6, v8, :cond_0

    .line 87
    return-void

    .line 83
    :cond_0
    const/4 v7, 0x0

    .local v7, y:I
    :goto_1
    if-lt v7, v8, :cond_1

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lexam/Draw/ReDraw5$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v1, v1, v6

    aget-object v1, v1, v7

    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->mPntPath:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method GetLineRect(I)Landroid/graphics/Rect;
    .locals 8
    .parameter "idx"

    .prologue
    .line 104
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 105
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/ReDraw5$Vertex;

    .line 106
    .local v1, prev:Lexam/Draw/ReDraw5$Vertex;
    iget-object v3, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw5$Vertex;

    .line 107
    .local v0, now:Lexam/Draw/ReDraw5$Vertex;
    iget v3, v0, Lexam/Draw/ReDraw5$Vertex;->x:F

    iget v4, v1, Lexam/Draw/ReDraw5$Vertex;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x2

    iget v4, v0, Lexam/Draw/ReDraw5$Vertex;->y:F

    iget v5, v1, Lexam/Draw/ReDraw5$Vertex;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x2

    .line 108
    iget v5, v0, Lexam/Draw/ReDraw5$Vertex;->x:F

    iget v6, v1, Lexam/Draw/ReDraw5$Vertex;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x3

    iget v6, v0, Lexam/Draw/ReDraw5$Vertex;->y:F

    iget v7, v1, Lexam/Draw/ReDraw5$Vertex;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x3

    .line 107
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    return-object v2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lexam/Draw/ReDraw5$MyView;->mBack:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lexam/Draw/ReDraw5$MyView;->BuildBack()V

    .line 66
    :cond_0
    iget-object v0, p0, Lexam/Draw/ReDraw5$MyView;->mBack:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 68
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 74
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw5$Vertex;

    iget-boolean v0, v0, Lexam/Draw/ReDraw5$Vertex;->Draw:Z

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw5$Vertex;

    iget v1, v0, Lexam/Draw/ReDraw5$Vertex;->x:F

    iget-object v0, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw5$Vertex;

    iget v2, v0, Lexam/Draw/ReDraw5$Vertex;->y:F

    .line 71
    iget-object v0, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw5$Vertex;

    iget v3, v0, Lexam/Draw/ReDraw5$Vertex;->x:F

    iget-object v0, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw5$Vertex;

    iget v4, v0, Lexam/Draw/ReDraw5$Vertex;->y:F

    iget-object v5, p0, Lexam/Draw/ReDraw5$MyView;->mPntFore:Landroid/graphics/Paint;

    move-object v0, p1

    .line 70
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iget-object v3, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v4, Lexam/Draw/ReDraw5$Vertex;

    iget-object v5, p0, Lexam/Draw/ReDraw5$MyView;->this$0:Lexam/Draw/ReDraw5;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v4, v5, v6, v7, v2}, Lexam/Draw/ReDraw5$Vertex;-><init>(Lexam/Draw/ReDraw5;FFZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_0
    return v1

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 95
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v3, Lexam/Draw/ReDraw5$Vertex;

    iget-object v4, p0, Lexam/Draw/ReDraw5$MyView;->this$0:Lexam/Draw/ReDraw5;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v5, v6, v1}, Lexam/Draw/ReDraw5$Vertex;-><init>(Lexam/Draw/ReDraw5;FFZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lexam/Draw/ReDraw5$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lexam/Draw/ReDraw5$MyView;->GetLineRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 97
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lexam/Draw/ReDraw5$MyView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    move v1, v2

    .line 100
    goto :goto_0
.end method
