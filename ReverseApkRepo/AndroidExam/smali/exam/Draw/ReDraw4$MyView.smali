.class Lexam/Draw/ReDraw4$MyView;
.super Landroid/view/View;
.source "ReDraw4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw4;
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
            "Lexam/Draw/ReDraw4$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field arPath:[[Landroid/graphics/Path;

.field mLastInv:J

.field mPass:I

.field mPntBack:Landroid/graphics/Paint;

.field mPntFore:Landroid/graphics/Paint;

.field mPntPath:Landroid/graphics/Paint;

.field mUnion:Landroid/graphics/Rect;

.field final synthetic this$0:Lexam/Draw/ReDraw4;


# direct methods
.method public constructor <init>(Lexam/Draw/ReDraw4;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x5

    const/4 v1, 0x0

    .line 28
    iput-object p1, p0, Lexam/Draw/ReDraw4$MyView;->this$0:Lexam/Draw/ReDraw4;

    .line 29
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    .line 25
    const/4 v2, 0x0

    iput v2, p0, Lexam/Draw/ReDraw4$MyView;->mPass:I

    .line 26
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lexam/Draw/ReDraw4$MyView;->mLastInv:J

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    .line 32
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntBack:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x43a0

    .line 34
    const v5, -0xbbbbbc

    const v6, -0x333334

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    .line 33
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 35
    .local v0, lshader:Landroid/graphics/LinearGradient;
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntBack:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 37
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntPath:Landroid/graphics/Paint;

    .line 38
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntPath:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntPath:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntPath:Landroid/graphics/Paint;

    const/high16 v3, -0x7f01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntFore:Landroid/graphics/Paint;

    .line 43
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntFore:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntFore:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->mPntFore:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    filled-new-array {v11, v11}, [I

    move-result-object v2

    const-class v3, Landroid/graphics/Path;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/graphics/Path;

    iput-object v2, p0, Lexam/Draw/ReDraw4$MyView;->arPath:[[Landroid/graphics/Path;

    .line 48
    const/4 v9, 0x0

    .local v9, x:I
    :goto_0
    if-lt v9, v11, :cond_0

    .line 62
    return-void

    .line 49
    :cond_0
    const/4 v10, 0x0

    .local v10, y:I
    :goto_1
    if-lt v10, v11, :cond_1

    .line 48
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    aput-object v3, v2, v10

    .line 51
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v9, 0x46

    int-to-float v3, v3

    mul-int/lit8 v4, v10, 0x46

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 52
    const/16 v8, 0x20

    .local v8, dis:I
    :goto_2
    if-gt v8, v12, :cond_2

    .line 49
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 53
    :cond_2
    rem-int/lit8 v2, v8, 0x4

    packed-switch v2, :pswitch_data_0

    .line 52
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 54
    :pswitch_0
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 55
    :pswitch_1
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 56
    :pswitch_2
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    neg-int v3, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 57
    :pswitch_3
    iget-object v2, p0, Lexam/Draw/ReDraw4$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    neg-int v3, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 53
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
    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/ReDraw4$Vertex;

    .line 117
    .local v1, prev:Lexam/Draw/ReDraw4$Vertex;
    iget-object v3, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw4$Vertex;

    .line 118
    .local v0, now:Lexam/Draw/ReDraw4$Vertex;
    iget v3, v0, Lexam/Draw/ReDraw4$Vertex;->x:F

    iget v4, v1, Lexam/Draw/ReDraw4$Vertex;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x2

    iget v4, v0, Lexam/Draw/ReDraw4$Vertex;->y:F

    iget v5, v1, Lexam/Draw/ReDraw4$Vertex;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x2

    .line 119
    iget v5, v0, Lexam/Draw/ReDraw4$Vertex;->x:F

    iget v6, v1, Lexam/Draw/ReDraw4$Vertex;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x3

    iget v6, v0, Lexam/Draw/ReDraw4$Vertex;->y:F

    iget v7, v1, Lexam/Draw/ReDraw4$Vertex;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x3

    .line 118
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    return-object v2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x5

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lexam/Draw/ReDraw4$MyView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lexam/Draw/ReDraw4$MyView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->mPntBack:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    const/4 v7, 0x0

    .local v7, x:I
    :goto_0
    if-lt v7, v9, :cond_0

    .line 73
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_2

    .line 79
    return-void

    .line 68
    .end local v6           #i:I
    :cond_0
    const/4 v8, 0x0

    .local v8, y:I
    :goto_2
    if-lt v8, v9, :cond_1

    .line 67
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lexam/Draw/ReDraw4$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    iget-object v1, p0, Lexam/Draw/ReDraw4$MyView;->mPntPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 74
    .end local v8           #y:I
    .restart local v6       #i:I
    :cond_2
    iget-object v0, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw4$Vertex;

    iget-boolean v0, v0, Lexam/Draw/ReDraw4$Vertex;->Draw:Z

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw4$Vertex;

    iget v1, v0, Lexam/Draw/ReDraw4$Vertex;->x:F

    iget-object v0, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw4$Vertex;

    iget v2, v0, Lexam/Draw/ReDraw4$Vertex;->y:F

    .line 76
    iget-object v0, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw4$Vertex;

    iget v3, v0, Lexam/Draw/ReDraw4$Vertex;->x:F

    iget-object v0, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw4$Vertex;

    iget v4, v0, Lexam/Draw/ReDraw4$Vertex;->y:F

    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->mPntFore:Landroid/graphics/Paint;

    move-object v0, p1

    .line 75
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/16 v10, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 83
    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v6, Lexam/Draw/ReDraw4$Vertex;

    iget-object v7, p0, Lexam/Draw/ReDraw4$MyView;->this$0:Lexam/Draw/ReDraw4;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v6, v7, v8, v9, v4}, Lexam/Draw/ReDraw4$Vertex;-><init>(Lexam/Draw/ReDraw4;FFZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_0
    return v3

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 87
    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v6, Lexam/Draw/ReDraw4$Vertex;

    iget-object v7, p0, Lexam/Draw/ReDraw4$MyView;->this$0:Lexam/Draw/ReDraw4;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v6, v7, v8, v9, v3}, Lexam/Draw/ReDraw4$Vertex;-><init>(Lexam/Draw/ReDraw4;FFZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lexam/Draw/ReDraw4$MyView;->GetLineRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 90
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    .local v0, Now:J
    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gt v5, v10, :cond_1

    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v5, v10, :cond_1

    .line 93
    iget-wide v5, p0, Lexam/Draw/ReDraw4$MyView;->mLastInv:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    iget v5, p0, Lexam/Draw/ReDraw4$MyView;->mPass:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    .line 94
    :cond_1
    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lexam/Draw/ReDraw4$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 95
    iget-object v5, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 96
    iput-wide v0, p0, Lexam/Draw/ReDraw4$MyView;->mLastInv:J

    .line 97
    iput v4, p0, Lexam/Draw/ReDraw4$MyView;->mPass:I

    goto :goto_0

    .line 99
    :cond_2
    iget v4, p0, Lexam/Draw/ReDraw4$MyView;->mPass:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lexam/Draw/ReDraw4$MyView;->mPass:I

    goto :goto_0

    .line 103
    .end local v0           #Now:J
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 104
    iget-object v3, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 105
    iget-object v3, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lexam/Draw/ReDraw4$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 106
    iget-object v3, p0, Lexam/Draw/ReDraw4$MyView;->mUnion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lexam/Draw/ReDraw4$MyView;->mLastInv:J

    .line 108
    iput v4, p0, Lexam/Draw/ReDraw4$MyView;->mPass:I

    :cond_4
    move v3, v4

    .line 111
    goto/16 :goto_0
.end method
