.class Lexam/Draw/ReDraw1$MyView;
.super Landroid/view/View;
.source "ReDraw1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ReDraw1;
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
            "Lexam/Draw/ReDraw1$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lexam/Draw/ReDraw1;


# direct methods
.method public constructor <init>(Lexam/Draw/ReDraw1;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 20
    iput-object p1, p0, Lexam/Draw/ReDraw1$MyView;->this$0:Lexam/Draw/ReDraw1;

    .line 21
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 26
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .local v8, Pnt:Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x43a0

    const/4 v4, 0x0

    .line 30
    const v5, -0xbbbbbc

    const v6, -0x333334

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 29
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 31
    .local v0, lshader:Landroid/graphics/LinearGradient;
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 32
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lexam/Draw/ReDraw1$MyView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lexam/Draw/ReDraw1$MyView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    const/high16 v1, 0x4000

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    const/high16 v1, -0x7f01

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    const/4 v12, 0x0

    .local v12, x:I
    :goto_0
    const/4 v1, 0x5

    if-lt v12, v1, :cond_0

    .line 56
    const/high16 v1, -0x100

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    const/high16 v1, 0x4040

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    iget-object v1, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_3

    .line 65
    return-void

    .line 40
    .end local v10           #i:I
    :cond_0
    const/4 v13, 0x0

    .local v13, y:I
    :goto_2
    const/4 v1, 0x5

    if-lt v13, v1, :cond_1

    .line 39
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 41
    :cond_1
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 42
    .local v11, path:Landroid/graphics/Path;
    mul-int/lit8 v1, v12, 0x46

    int-to-float v1, v1

    mul-int/lit8 v2, v13, 0x46

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 43
    const/16 v9, 0x20

    .local v9, dis:I
    :goto_3
    const/4 v1, 0x1

    if-gt v9, v1, :cond_2

    .line 51
    invoke-virtual {p1, v11, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 40
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 44
    :cond_2
    rem-int/lit8 v1, v9, 0x4

    packed-switch v1, :pswitch_data_0

    .line 43
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 45
    :pswitch_0
    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_4

    .line 46
    :pswitch_1
    const/4 v1, 0x0

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_4

    .line 47
    :pswitch_2
    neg-int v1, v9

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_4

    .line 48
    :pswitch_3
    const/4 v1, 0x0

    neg-int v2, v9

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_4

    .line 60
    .end local v9           #dis:I
    .end local v11           #path:Landroid/graphics/Path;
    .end local v13           #y:I
    .restart local v10       #i:I
    :cond_3
    iget-object v1, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/ReDraw1$Vertex;

    iget-boolean v1, v1, Lexam/Draw/ReDraw1$Vertex;->Draw:Z

    if-eqz v1, :cond_4

    .line 61
    iget-object v1, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/ReDraw1$Vertex;

    iget v2, v1, Lexam/Draw/ReDraw1$Vertex;->x:F

    iget-object v1, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/ReDraw1$Vertex;

    iget v3, v1, Lexam/Draw/ReDraw1$Vertex;->y:F

    .line 62
    iget-object v1, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/ReDraw1$Vertex;

    iget v4, v1, Lexam/Draw/ReDraw1$Vertex;->x:F

    iget-object v1, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Draw/ReDraw1$Vertex;

    iget v5, v1, Lexam/Draw/ReDraw1$Vertex;->y:F

    move-object v1, p1

    move-object v6, v8

    .line 61
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v3, Lexam/Draw/ReDraw1$Vertex;

    iget-object v4, p0, Lexam/Draw/ReDraw1$MyView;->this$0:Lexam/Draw/ReDraw1;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v5, v6, v1}, Lexam/Draw/ReDraw1$Vertex;-><init>(Lexam/Draw/ReDraw1;FFZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 73
    iget-object v1, p0, Lexam/Draw/ReDraw1$MyView;->Picture:Ljava/util/ArrayList;

    new-instance v2, Lexam/Draw/ReDraw1$Vertex;

    iget-object v3, p0, Lexam/Draw/ReDraw1$MyView;->this$0:Lexam/Draw/ReDraw1;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v2, v3, v4, v5, v0}, Lexam/Draw/ReDraw1$Vertex;-><init>(Lexam/Draw/ReDraw1;FFZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0}, Lexam/Draw/ReDraw1$MyView;->invalidate()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_0
.end method
