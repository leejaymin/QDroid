.class public Lexam/Input/FreeLine$MyView;
.super Landroid/view/View;
.source "FreeLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/FreeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lexam/Input/FreeLine;


# direct methods
.method public constructor <init>(Lexam/Input/FreeLine;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 38
    iput-object p1, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    .line 39
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lexam/Input/FreeLine$MyView;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 49
    const v0, -0x1f1f20

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 52
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    iget-object v0, v0, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 58
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    iget-object v0, v0, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Input/FreeLine$Vertex;

    iget-boolean v0, v0, Lexam/Input/FreeLine$Vertex;->Draw:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    iget-object v0, v0, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Input/FreeLine$Vertex;

    iget v1, v0, Lexam/Input/FreeLine$Vertex;->x:F

    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    iget-object v0, v0, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Input/FreeLine$Vertex;

    iget v2, v0, Lexam/Input/FreeLine$Vertex;->y:F

    .line 55
    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    iget-object v0, v0, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Input/FreeLine$Vertex;

    iget v3, v0, Lexam/Input/FreeLine$Vertex;->x:F

    iget-object v0, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    iget-object v0, v0, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Input/FreeLine$Vertex;

    iget v4, v0, Lexam/Input/FreeLine$Vertex;->y:F

    iget-object v5, p0, Lexam/Input/FreeLine$MyView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 54
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    iget-object v2, v2, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    new-instance v3, Lexam/Input/FreeLine$Vertex;

    iget-object v4, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v5, v6, v1}, Lexam/Input/FreeLine$Vertex;-><init>(Lexam/Input/FreeLine;FFZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 67
    iget-object v1, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    iget-object v1, v1, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    new-instance v2, Lexam/Input/FreeLine$Vertex;

    iget-object v3, p0, Lexam/Input/FreeLine$MyView;->this$0:Lexam/Input/FreeLine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v2, v3, v4, v5, v0}, Lexam/Input/FreeLine$Vertex;-><init>(Lexam/Input/FreeLine;FFZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lexam/Input/FreeLine$MyView;->invalidate()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0
.end method
