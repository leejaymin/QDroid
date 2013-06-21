.class public Lexam/Draw/DashAnim$MyView;
.super Landroid/view/View;
.source "DashAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/DashAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field Pnt:Landroid/graphics/Paint;

.field dash:Landroid/graphics/Path;

.field mAnimHandler:Landroid/os/Handler;

.field ovalrt:Landroid/graphics/RectF;

.field phase:I

.field final synthetic this$0:Lexam/Draw/DashAnim;


# direct methods
.method public constructor <init>(Lexam/Draw/DashAnim;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/high16 v1, -0x3f80

    const/high16 v4, 0x4120

    const/4 v3, 0x0

    const/high16 v2, 0x4080

    .line 21
    iput-object p1, p0, Lexam/Draw/DashAnim$MyView;->this$0:Lexam/Draw/DashAnim;

    .line 22
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lexam/Draw/DashAnim$MyView$1;

    invoke-direct {v0, p0}, Lexam/Draw/DashAnim$MyView$1;-><init>(Lexam/Draw/DashAnim$MyView;)V

    iput-object v0, p0, Lexam/Draw/DashAnim$MyView;->mAnimHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    .line 25
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 26
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    const/high16 v1, -0x3f00

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 28
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    const/high16 v1, 0x4100

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lexam/Draw/DashAnim$MyView;->Pnt:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->Pnt:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->Pnt:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iput v5, p0, Lexam/Draw/DashAnim$MyView;->phase:I

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x4348

    const/high16 v2, 0x4316

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lexam/Draw/DashAnim$MyView;->ovalrt:Landroid/graphics/RectF;

    .line 39
    iget-object v0, p0, Lexam/Draw/DashAnim$MyView;->mAnimHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/PathDashPathEffect;

    iget-object v1, p0, Lexam/Draw/DashAnim$MyView;->dash:Landroid/graphics/Path;

    const/high16 v2, 0x4160

    iget v3, p0, Lexam/Draw/DashAnim$MyView;->phase:I

    int-to-float v3, v3

    .line 44
    sget-object v4, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    .line 43
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    .line 45
    .local v0, pathdash:Landroid/graphics/PathDashPathEffect;
    iget-object v1, p0, Lexam/Draw/DashAnim$MyView;->Pnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 46
    iget-object v1, p0, Lexam/Draw/DashAnim$MyView;->ovalrt:Landroid/graphics/RectF;

    iget-object v2, p0, Lexam/Draw/DashAnim$MyView;->Pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 47
    return-void
.end method
