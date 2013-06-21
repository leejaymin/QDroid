.class Lexam/Draw/ReDraw3$MyView;
.super Landroid/view/View;
.source "ReDraw3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw3;
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
            "Lexam/Draw/ReDraw3$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field arPath:[[Landroid/graphics/Path;

.field mPntBack:Landroid/graphics/Paint;

.field mPntFore:Landroid/graphics/Paint;

.field mPntPath:Landroid/graphics/Paint;

.field final synthetic this$0:Lexam/Draw/ReDraw3;


# direct methods
.method public constructor <init>(Lexam/Draw/ReDraw3;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x5

    const/4 v1, 0x0

    .line 25
    iput-object p1, p0, Lexam/Draw/ReDraw3$MyView;->this$0:Lexam/Draw/ReDraw3;

    .line 26
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    .line 29
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntBack:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x43a0

    .line 31
    const v5, -0xbbbbbc

    const v6, -0x333334

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    .line 30
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 32
    .local v0, lshader:Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntBack:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntPath:Landroid/graphics/Paint;

    .line 35
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntPath:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntPath:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntPath:Landroid/graphics/Paint;

    const/high16 v3, -0x7f01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntFore:Landroid/graphics/Paint;

    .line 40
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntFore:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntFore:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->mPntFore:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    filled-new-array {v11, v11}, [I

    move-result-object v2

    const-class v3, Landroid/graphics/Path;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/graphics/Path;

    iput-object v2, p0, Lexam/Draw/ReDraw3$MyView;->arPath:[[Landroid/graphics/Path;

    .line 45
    const/4 v9, 0x0

    .local v9, x:I
    :goto_0
    if-lt v9, v11, :cond_0

    .line 59
    return-void

    .line 46
    :cond_0
    const/4 v10, 0x0

    .local v10, y:I
    :goto_1
    if-lt v10, v11, :cond_1

    .line 45
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 47
    :cond_1
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    aput-object v3, v2, v10

    .line 48
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v9, 0x46

    int-to-float v3, v3

    mul-int/lit8 v4, v10, 0x46

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    const/16 v8, 0x20

    .local v8, dis:I
    :goto_2
    if-gt v8, v12, :cond_2

    .line 46
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 50
    :cond_2
    rem-int/lit8 v2, v8, 0x4

    packed-switch v2, :pswitch_data_0

    .line 49
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 51
    :pswitch_0
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 52
    :pswitch_1
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 53
    :pswitch_2
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    neg-int v3, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 54
    :pswitch_3
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    neg-int v3, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 50
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
.method GetLineRect(I)Landroid/graphics/Rect;
    .locals 8
    .parameter "idx"

    .prologue
    .line 102
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/ReDraw3$Vertex;

    .line 104
    .local v1, prev:Lexam/Draw/ReDraw3$Vertex;
    iget-object v3, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw3$Vertex;

    .line 105
    .local v0, now:Lexam/Draw/ReDraw3$Vertex;
    iget v3, v0, Lexam/Draw/ReDraw3$Vertex;->x:F

    iget v4, v1, Lexam/Draw/ReDraw3$Vertex;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x2

    iget v4, v0, Lexam/Draw/ReDraw3$Vertex;->y:F

    iget v5, v1, Lexam/Draw/ReDraw3$Vertex;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x2

    .line 106
    iget v5, v0, Lexam/Draw/ReDraw3$Vertex;->x:F

    iget v6, v1, Lexam/Draw/ReDraw3$Vertex;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x3

    iget v6, v0, Lexam/Draw/ReDraw3$Vertex;->y:F

    iget v7, v1, Lexam/Draw/ReDraw3$Vertex;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x3

    .line 105
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    return-object v2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x5

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 63
    .local v6, clip:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lexam/Draw/ReDraw3$MyView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lexam/Draw/ReDraw3$MyView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lexam/Draw/ReDraw3$MyView;->mPntBack:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .local v8, rtPath:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, x:I
    :goto_0
    if-lt v9, v11, :cond_0

    .line 76
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v0, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_3

    .line 84
    return-void

    .line 68
    .end local v7           #i:I
    :cond_0
    const/4 v10, 0x0

    .local v10, y:I
    :goto_2
    if-lt v10, v11, :cond_1

    .line 67
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 69
    :cond_1
    mul-int/lit8 v0, v9, 0x46

    mul-int/lit8 v1, v10, 0x46

    mul-int/lit8 v2, v9, 0x46

    add-int/lit8 v2, v2, 0x40

    mul-int/lit8 v3, v10, 0x46

    add-int/lit8 v3, v3, 0x40

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    invoke-static {v6, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lexam/Draw/ReDraw3$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v0, v0, v9

    aget-object v0, v0, v10

    iget-object v1, p0, Lexam/Draw/ReDraw3$MyView;->mPntPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 77
    .end local v10           #y:I
    .restart local v7       #i:I
    :cond_3
    iget-object v0, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw3$Vertex;

    iget-boolean v0, v0, Lexam/Draw/ReDraw3$Vertex;->Draw:Z

    if-eqz v0, :cond_4

    .line 78
    invoke-virtual {p0, v7}, Lexam/Draw/ReDraw3$MyView;->GetLineRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw3$Vertex;

    iget v1, v0, Lexam/Draw/ReDraw3$Vertex;->x:F

    iget-object v0, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw3$Vertex;

    iget v2, v0, Lexam/Draw/ReDraw3$Vertex;->y:F

    .line 80
    iget-object v0, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw3$Vertex;

    iget v3, v0, Lexam/Draw/ReDraw3$Vertex;->x:F

    iget-object v0, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw3$Vertex;

    iget v4, v0, Lexam/Draw/ReDraw3$Vertex;->y:F

    iget-object v5, p0, Lexam/Draw/ReDraw3$MyView;->mPntFore:Landroid/graphics/Paint;

    move-object v0, p1

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v4, Lexam/Draw/ReDraw3$Vertex;

    iget-object v5, p0, Lexam/Draw/ReDraw3$MyView;->this$0:Lexam/Draw/ReDraw3;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v4, v5, v6, v7, v2}, Lexam/Draw/ReDraw3$Vertex;-><init>(Lexam/Draw/ReDraw3;FFZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_0
    return v1

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 92
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v3, Lexam/Draw/ReDraw3$Vertex;

    iget-object v4, p0, Lexam/Draw/ReDraw3$MyView;->this$0:Lexam/Draw/ReDraw3;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v5, v6, v1}, Lexam/Draw/ReDraw3$Vertex;-><init>(Lexam/Draw/ReDraw3;FFZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lexam/Draw/ReDraw3$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lexam/Draw/ReDraw3$MyView;->GetLineRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 94
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lexam/Draw/ReDraw3$MyView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    move v1, v2

    .line 97
    goto :goto_0
.end method
