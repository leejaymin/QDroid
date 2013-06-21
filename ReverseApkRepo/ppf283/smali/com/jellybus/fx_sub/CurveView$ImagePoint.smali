.class Lcom/jellybus/fx_sub/CurveView$ImagePoint;
.super Ljava/lang/Object;
.source "CurveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx_sub/CurveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImagePoint"
.end annotation


# instance fields
.field public p:Landroid/graphics/Point;

.field public sP:Landroid/graphics/Point;

.field public scaled_x:I

.field public scaled_y:I

.field final synthetic this$0:Lcom/jellybus/fx_sub/CurveView;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V
    .locals 1
    .parameter
    .parameter "p"

    .prologue
    .line 820
    iput-object p1, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->this$0:Lcom/jellybus/fx_sub/CurveView;

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    .line 818
    iput-object p2, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    .line 819
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setScaledPoint()V

    return-void
.end method


# virtual methods
.method public setPoint(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 823
    iput p1, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    .line 824
    iput p2, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    .line 825
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 826
    return-void
.end method

.method public setScaledPoint()V
    .locals 3

    .prologue
    const/high16 v2, 0x437f

    .line 830
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    .line 831
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    .line 832
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->this$0:Lcom/jellybus/fx_sub/CurveView;

    #getter for: Lcom/jellybus/fx_sub/CurveView;->curve_size:I
    invoke-static {v1}, Lcom/jellybus/fx_sub/CurveView;->access$0(Lcom/jellybus/fx_sub/CurveView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->scaled_x:I

    .line 833
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->this$0:Lcom/jellybus/fx_sub/CurveView;

    #getter for: Lcom/jellybus/fx_sub/CurveView;->curve_size:I
    invoke-static {v1}, Lcom/jellybus/fx_sub/CurveView;->access$0(Lcom/jellybus/fx_sub/CurveView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->scaled_y:I

    .line 834
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->scaled_x:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->scaled_y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 835
    return-void
.end method
