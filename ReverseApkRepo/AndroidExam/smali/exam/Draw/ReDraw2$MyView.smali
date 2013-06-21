.class Lexam/Draw/ReDraw2$MyView;
.super Landroid/view/View;
.source "ReDraw2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw2;
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
            "Lexam/Draw/ReDraw2$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field arPath:[[Landroid/graphics/Path;

.field mPntBack:Landroid/graphics/Paint;

.field mPntFore:Landroid/graphics/Paint;

.field mPntPath:Landroid/graphics/Paint;

.field final synthetic this$0:Lexam/Draw/ReDraw2;


# direct methods
.method public constructor <init>(Lexam/Draw/ReDraw2;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x5

    const/4 v1, 0x0

    .line 25
    iput-object p1, p0, Lexam/Draw/ReDraw2$MyView;->this$0:Lexam/Draw/ReDraw2;

    .line 26
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    .line 29
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntBack:Landroid/graphics/Paint;

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
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntBack:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntPath:Landroid/graphics/Paint;

    .line 35
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntPath:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntPath:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntPath:Landroid/graphics/Paint;

    const/high16 v3, -0x7f01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntFore:Landroid/graphics/Paint;

    .line 40
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntFore:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntFore:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->mPntFore:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    filled-new-array {v11, v11}, [I

    move-result-object v2

    const-class v3, Landroid/graphics/Path;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/graphics/Path;

    iput-object v2, p0, Lexam/Draw/ReDraw2$MyView;->arPath:[[Landroid/graphics/Path;

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
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    aput-object v3, v2, v10

    .line 48
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->arPath:[[Landroid/graphics/Path;

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
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 52
    :pswitch_1
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 53
    :pswitch_2
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v2, v2, v9

    aget-object v2, v2, v10

    neg-int v3, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_3

    .line 54
    :pswitch_3
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->arPath:[[Landroid/graphics/Path;

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
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x5

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lexam/Draw/ReDraw2$MyView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lexam/Draw/ReDraw2$MyView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lexam/Draw/ReDraw2$MyView;->mPntBack:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    const/4 v7, 0x0

    .local v7, x:I
    :goto_0
    if-lt v7, v9, :cond_0

    .line 73
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_2

    .line 79
    return-void

    .line 67
    .end local v6           #i:I
    :cond_0
    const/4 v8, 0x0

    .local v8, y:I
    :goto_2
    if-lt v8, v9, :cond_1

    .line 66
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lexam/Draw/ReDraw2$MyView;->arPath:[[Landroid/graphics/Path;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    iget-object v1, p0, Lexam/Draw/ReDraw2$MyView;->mPntPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 67
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 74
    .end local v8           #y:I
    .restart local v6       #i:I
    :cond_2
    iget-object v0, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw2$Vertex;

    iget-boolean v0, v0, Lexam/Draw/ReDraw2$Vertex;->Draw:Z

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw2$Vertex;

    iget v1, v0, Lexam/Draw/ReDraw2$Vertex;->x:F

    iget-object v0, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw2$Vertex;

    iget v2, v0, Lexam/Draw/ReDraw2$Vertex;->y:F

    .line 76
    iget-object v0, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw2$Vertex;

    iget v3, v0, Lexam/Draw/ReDraw2$Vertex;->x:F

    iget-object v0, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/ReDraw2$Vertex;

    iget v4, v0, Lexam/Draw/ReDraw2$Vertex;->y:F

    iget-object v5, p0, Lexam/Draw/ReDraw2$MyView;->mPntFore:Landroid/graphics/Paint;

    move-object v0, p1

    .line 75
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v3, Lexam/Draw/ReDraw2$Vertex;

    iget-object v4, p0, Lexam/Draw/ReDraw2$MyView;->this$0:Lexam/Draw/ReDraw2;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v5, v6, v1}, Lexam/Draw/ReDraw2$Vertex;-><init>(Lexam/Draw/ReDraw2;FFZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 87
    iget-object v1, p0, Lexam/Draw/ReDraw2$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v2, Lexam/Draw/ReDraw2$Vertex;

    iget-object v3, p0, Lexam/Draw/ReDraw2$MyView;->this$0:Lexam/Draw/ReDraw2;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v2, v3, v4, v5, v0}, Lexam/Draw/ReDraw2$Vertex;-><init>(Lexam/Draw/ReDraw2;FFZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lexam/Draw/ReDraw2$MyView;->invalidate()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0
.end method
