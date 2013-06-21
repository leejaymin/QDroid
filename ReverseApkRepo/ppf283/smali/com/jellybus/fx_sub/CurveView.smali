.class public Lcom/jellybus/fx_sub/CurveView;
.super Landroid/view/View;
.source "CurveView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx_sub/CurveView$ImagePoint;
    }
.end annotation


# instance fields
.field private final EFFECT_B:I

.field private final EFFECT_G:I

.field private final EFFECT_R:I

.field private final EFFECT_RGB:I

.field private circle:Landroid/graphics/Bitmap;

.field private circle_on:Landroid/graphics/Bitmap;

.field private curRGB:I

.field private curve_size:I

.field public gap:F

.field public gap_circle:F

.field public isPointRemoved:Z

.field public isStop:Z

.field private liveCurveIndex:[I

.field private liveCurveIndexB:[I

.field private liveCurveIndexG:[I

.field private liveCurveIndexR:[I

.field public pointInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/CurveView$ImagePoint;",
            ">;"
        }
    .end annotation
.end field

.field public pointInfoB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/CurveView$ImagePoint;",
            ">;"
        }
    .end annotation
.end field

.field public pointInfoG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/CurveView$ImagePoint;",
            ">;"
        }
    .end annotation
.end field

.field public pointInfoR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/CurveView$ImagePoint;",
            ">;"
        }
    .end annotation
.end field

.field public rP:[I

.field private savedX:I

.field private savedY:I

.field public selectedPoint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->EFFECT_RGB:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->EFFECT_R:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->EFFECT_G:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->EFFECT_B:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    .line 51
    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->EFFECT_RGB:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->EFFECT_R:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->EFFECT_G:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->EFFECT_B:I

    .line 66
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020062

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020063

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    .line 68
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    .line 70
    invoke-virtual {p0, p0}, Lcom/jellybus/fx_sub/CurveView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/CurveView;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    return v0
.end method

.method private checkMovePoint(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 421
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v0, :cond_4

    .line 422
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 423
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_0

    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 425
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 426
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    .line 509
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-nez v0, :cond_3

    .line 429
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 431
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 432
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto :goto_0

    .line 434
    :cond_3
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 435
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 437
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 438
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto :goto_0

    .line 442
    :cond_4
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v3, :cond_8

    .line 443
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_6

    .line 444
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_5

    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 447
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0

    .line 449
    :cond_6
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-nez v0, :cond_7

    .line 450
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 452
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 453
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0

    .line 455
    :cond_7
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 456
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 458
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 459
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0

    .line 463
    :cond_8
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 464
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_a

    .line 465
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_9

    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 466
    :cond_9
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 468
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0

    .line 470
    :cond_a
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-nez v0, :cond_b

    .line 471
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 473
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 474
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0

    .line 476
    :cond_b
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 477
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 479
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 480
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0

    .line 484
    :cond_c
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 485
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_e

    .line 486
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_d

    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 487
    :cond_d
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 488
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 489
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0

    .line 491
    :cond_e
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-nez v0, :cond_f

    .line 492
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 494
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 495
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0

    .line 497
    :cond_f
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 498
    int-to-float v1, p1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 500
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 501
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_0
.end method

.method private checkSelectedPoint(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 320
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v1, :cond_5

    .line 321
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v2, v2, p1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v2, v2, p1

    if-ge v1, v2, :cond_0

    .line 322
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 333
    :goto_1
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v1, v4, :cond_3

    .line 334
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v1, v1, p1

    invoke-virtual {p0, p1, v1}, Lcom/jellybus/fx_sub/CurveView;->addPoint(II)V

    .line 416
    .end local v0           #i:I
    :cond_0
    :goto_2
    return-void

    .line 324
    .restart local v0       #i:I
    :cond_1
    int-to-float v2, p1

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    int-to-float v2, p1

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    .line 326
    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto :goto_1

    .line 330
    :cond_2
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_3
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-nez v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    .line 337
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    goto :goto_2

    .line 338
    :cond_4
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 339
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    .line 340
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    goto :goto_2

    .line 344
    .end local v0           #i:I
    :cond_5
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 345
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v2, v2, p1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v2, v2, p1

    if-ge v1, v2, :cond_0

    .line 346
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 357
    :goto_4
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v1, v4, :cond_8

    .line 358
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v1, v1, p1

    invoke-virtual {p0, p1, v1}, Lcom/jellybus/fx_sub/CurveView;->addPoint(II)V

    goto/16 :goto_2

    .line 348
    :cond_6
    int-to-float v2, p1

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_7

    int-to-float v2, p1

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_7

    .line 350
    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto :goto_4

    .line 354
    :cond_7
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 359
    :cond_8
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-nez v1, :cond_9

    .line 360
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    .line 361
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    goto/16 :goto_2

    .line 362
    :cond_9
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 363
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    .line 364
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    goto/16 :goto_2

    .line 368
    .end local v0           #i:I
    :cond_a
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 369
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v2, v2, p1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v2, v2, p1

    if-ge v1, v2, :cond_0

    .line 370
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 381
    :goto_6
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v1, v4, :cond_d

    .line 382
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v1, v1, p1

    invoke-virtual {p0, p1, v1}, Lcom/jellybus/fx_sub/CurveView;->addPoint(II)V

    goto/16 :goto_2

    .line 372
    :cond_b
    int-to-float v2, p1

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_c

    int-to-float v2, p1

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_c

    .line 374
    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto :goto_6

    .line 378
    :cond_c
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 383
    :cond_d
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-nez v1, :cond_e

    .line 384
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    .line 385
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    goto/16 :goto_2

    .line 386
    :cond_e
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 387
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    .line 388
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    goto/16 :goto_2

    .line 392
    .end local v0           #i:I
    :cond_f
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 393
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v2, v2, p1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v2, v2, p1

    if-ge v1, v2, :cond_0

    .line 394
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 405
    :goto_8
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v1, v4, :cond_12

    .line 406
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v1, v1, p1

    invoke-virtual {p0, p1, v1}, Lcom/jellybus/fx_sub/CurveView;->addPoint(II)V

    goto/16 :goto_2

    .line 396
    :cond_10
    int-to-float v2, p1

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    sub-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_11

    int-to-float v2, p1

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    add-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_11

    .line 398
    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto :goto_8

    .line 402
    :cond_11
    iput v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 407
    :cond_12
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-nez v1, :cond_13

    .line 408
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    .line 409
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    goto/16 :goto_2

    .line 410
    :cond_13
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 411
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedX:I

    .line 412
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->y:I

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->savedY:I

    goto/16 :goto_2
.end method

.method private getCurveGraph(Ljava/util/ArrayList;I)[I
    .locals 36
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/CurveView$ImagePoint;",
            ">;I)[I"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jellybus/fx_sub/CurveView$ImagePoint;>;"
    const/16 v26, 0x100

    move/from16 v0, v26

    new-array v12, v0, [I

    .line 625
    .local v12, index:[I
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v14, v0, Landroid/graphics/Point;->x:I

    .line 626
    .local v14, min:I
    add-int/lit8 v26, p2, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v13, v0, Landroid/graphics/Point;->x:I

    .line 628
    .local v13, max:I
    invoke-direct/range {p0 .. p2}, Lcom/jellybus/fx_sub/CurveView;->secondDerivative(Ljava/util/ArrayList;I)[D

    move-result-object v18

    .line 633
    .local v18, sd:[D
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    add-int/lit8 v26, p2, -0x1

    move/from16 v0, v26

    if-lt v9, v0, :cond_0

    .line 667
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, p2

    if-lt v9, v0, :cond_5

    .line 672
    const/4 v9, 0x0

    :goto_2
    const/16 v26, 0x100

    move/from16 v0, v26

    if-lt v9, v0, :cond_6

    .line 684
    const/16 v18, 0x0

    check-cast v18, [D

    .line 685
    return-object v12

    .line 635
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    .line 636
    .local v6, cur:Landroid/graphics/Point;
    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v15, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    .line 638
    .local v15, next:Landroid/graphics/Point;
    const-wide v10, 0x3f847ae147ae147bL

    .line 639
    .local v10, inc:D
    const-wide/16 v16, 0x0

    .line 641
    .local v16, one:D
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .local v22, x:D
    :goto_3
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    cmpg-double v26, v22, v26

    if-ltz v26, :cond_1

    .line 633
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 643
    :cond_1
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v22, v26

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v19, v26, v28

    .line 645
    .local v19, t:D
    const-wide/high16 v26, 0x3ff0

    sub-double v2, v26, v19

    .line 646
    .local v2, a:D
    move-wide/from16 v4, v19

    .line 647
    .local v4, b:D
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-double v7, v0

    .line 649
    .local v7, h:D
    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v2

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    add-double v26, v26, v28

    mul-double v28, v7, v7

    const-wide/high16 v30, 0x4018

    div-double v28, v28, v30

    mul-double v30, v2, v2

    mul-double v30, v30, v2

    sub-double v30, v30, v2

    aget-wide v32, v18, v9

    mul-double v30, v30, v32

    mul-double v32, v4, v4

    mul-double v32, v32, v4

    sub-double v32, v32, v4

    add-int/lit8 v34, v9, 0x1

    aget-wide v34, v18, v34

    mul-double v32, v32, v34

    add-double v30, v30, v32

    mul-double v28, v28, v30

    add-double v24, v26, v28

    .line 651
    .local v24, y:D
    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v21, v0

    .line 653
    .local v21, tY:I
    const/16 v26, 0xff

    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 654
    const/16 v21, 0xff

    .line 658
    :cond_2
    :goto_4
    add-double v16, v16, v10

    .line 659
    const-wide/high16 v26, 0x3ff0

    cmpl-double v26, v16, v26

    if-ltz v26, :cond_3

    .line 661
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v26, v0

    aput v21, v12, v26

    .line 662
    const-wide/16 v16, 0x0

    .line 641
    :cond_3
    add-double v22, v22, v10

    goto/16 :goto_3

    .line 655
    :cond_4
    if-gez v21, :cond_2

    .line 656
    const/16 v21, 0x0

    goto :goto_4

    .line 669
    .end local v2           #a:D
    .end local v4           #b:D
    .end local v6           #cur:Landroid/graphics/Point;
    .end local v7           #h:D
    .end local v10           #inc:D
    .end local v15           #next:Landroid/graphics/Point;
    .end local v16           #one:D
    .end local v19           #t:D
    .end local v21           #tY:I
    .end local v22           #x:D
    .end local v24           #y:D
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    aput v26, v12, v27

    .line 667
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 674
    :cond_6
    if-ge v9, v14, :cond_8

    .line 676
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    aput v26, v12, v9

    .line 672
    :cond_7
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 678
    :cond_8
    if-le v9, v13, :cond_7

    .line 680
    add-int/lit8 v26, p2, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->sP:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    aput v26, v12, v9

    goto :goto_5
.end method

.method private getCurveGraphTest(Ljava/util/ArrayList;II)[I
    .locals 36
    .parameter
    .parameter "n"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/CurveView$ImagePoint;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jellybus/fx_sub/CurveView$ImagePoint;>;"
    add-int/lit8 v26, p3, 0x1

    move/from16 v0, v26

    new-array v12, v0, [I

    .line 694
    .local v12, index:[I
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v14, v0, Landroid/graphics/Point;->x:I

    .line 695
    .local v14, min:I
    add-int/lit8 v26, p2, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v13, v0, Landroid/graphics/Point;->x:I

    .line 697
    .local v13, max:I
    invoke-direct/range {p0 .. p2}, Lcom/jellybus/fx_sub/CurveView;->secondDerivative(Ljava/util/ArrayList;I)[D

    move-result-object v18

    .line 702
    .local v18, sd:[D
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    add-int/lit8 v26, p2, -0x1

    move/from16 v0, v26

    if-lt v9, v0, :cond_0

    .line 736
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, p2

    if-lt v9, v0, :cond_5

    .line 741
    const/4 v9, 0x0

    :goto_2
    move/from16 v0, p3

    if-le v9, v0, :cond_6

    .line 753
    const/16 v18, 0x0

    check-cast v18, [D

    .line 754
    return-object v12

    .line 704
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    .line 705
    .local v6, cur:Landroid/graphics/Point;
    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v15, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    .line 707
    .local v15, next:Landroid/graphics/Point;
    const-wide v10, 0x3f847ae147ae147bL

    .line 708
    .local v10, inc:D
    const-wide/16 v16, 0x0

    .line 710
    .local v16, one:D
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .local v22, x:D
    :goto_3
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    cmpg-double v26, v22, v26

    if-ltz v26, :cond_1

    .line 702
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 712
    :cond_1
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v22, v26

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v19, v26, v28

    .line 714
    .local v19, t:D
    const-wide/high16 v26, 0x3ff0

    sub-double v2, v26, v19

    .line 715
    .local v2, a:D
    move-wide/from16 v4, v19

    .line 716
    .local v4, b:D
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-double v7, v0

    .line 718
    .local v7, h:D
    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v2

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    add-double v26, v26, v28

    mul-double v28, v7, v7

    const-wide/high16 v30, 0x4018

    div-double v28, v28, v30

    mul-double v30, v2, v2

    mul-double v30, v30, v2

    sub-double v30, v30, v2

    aget-wide v32, v18, v9

    mul-double v30, v30, v32

    mul-double v32, v4, v4

    mul-double v32, v32, v4

    sub-double v32, v32, v4

    add-int/lit8 v34, v9, 0x1

    aget-wide v34, v18, v34

    mul-double v32, v32, v34

    add-double v30, v30, v32

    mul-double v28, v28, v30

    add-double v24, v26, v28

    .line 720
    .local v24, y:D
    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v21, v0

    .line 722
    .local v21, tY:I
    move/from16 v0, v21

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    .line 723
    move/from16 v21, p3

    .line 727
    :cond_2
    :goto_4
    add-double v16, v16, v10

    .line 728
    const-wide/high16 v26, 0x3ff0

    cmpl-double v26, v16, v26

    if-ltz v26, :cond_3

    .line 730
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v26, v0

    aput v21, v12, v26

    .line 731
    const-wide/16 v16, 0x0

    .line 710
    :cond_3
    add-double v22, v22, v10

    goto/16 :goto_3

    .line 724
    :cond_4
    if-gez v21, :cond_2

    .line 725
    const/16 v21, 0x0

    goto :goto_4

    .line 738
    .end local v2           #a:D
    .end local v4           #b:D
    .end local v6           #cur:Landroid/graphics/Point;
    .end local v7           #h:D
    .end local v10           #inc:D
    .end local v15           #next:Landroid/graphics/Point;
    .end local v16           #one:D
    .end local v19           #t:D
    .end local v21           #tY:I
    .end local v22           #x:D
    .end local v24           #y:D
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    aput v26, v12, v27

    .line 736
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 743
    :cond_6
    if-ge v9, v14, :cond_8

    .line 745
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    aput v26, v12, v9

    .line 741
    :cond_7
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 747
    :cond_8
    if-le v9, v13, :cond_7

    .line 749
    add-int/lit8 v26, p2, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    aput v26, v12, v9

    goto :goto_5
.end method

.method private reverseIndex([I)[I
    .locals 2
    .parameter "index"

    .prologue
    .line 595
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 598
    return-object p1

    .line 596
    :cond_0
    aget v1, p1, v0

    rsub-int v1, v1, 0xff

    aput v1, p1, v0

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private secondDerivative(Ljava/util/ArrayList;I)[D
    .locals 13
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/CurveView$ImagePoint;",
            ">;I)[D"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, P:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jellybus/fx_sub/CurveView$ImagePoint;>;"
    const/4 v6, 0x3

    filled-new-array {p2, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 767
    .local v3, matrix:[[D
    new-array v4, p2, [D

    .line 769
    .local v4, result:[D
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0

    aput-wide v8, v6, v7

    .line 771
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    add-int/lit8 v6, p2, -0x1

    if-lt v0, v6, :cond_0

    .line 779
    add-int/lit8 v6, p2, -0x1

    aget-object v6, v3, v6

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0

    aput-wide v8, v6, v7

    .line 782
    const/4 v0, 0x1

    :goto_1
    if-lt v0, p2, :cond_1

    .line 791
    add-int/lit8 v0, p2, -0x2

    :goto_2
    if-gez v0, :cond_2

    .line 800
    new-array v5, p2, [D

    .line 802
    .local v5, y2:[D
    const/4 v0, 0x0

    :goto_3
    if-lt v0, p2, :cond_3

    .line 805
    return-object v5

    .line 773
    .end local v5           #y2:[D
    :cond_0
    aget-object v7, v3, v0

    const/4 v8, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v9, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v9, v6

    int-to-double v9, v6

    const-wide/high16 v11, 0x4018

    div-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 774
    aget-object v7, v3, v0

    const/4 v8, 0x1

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v9, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v9, v6

    int-to-double v9, v6

    const-wide/high16 v11, 0x4008

    div-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 775
    aget-object v7, v3, v0

    const/4 v8, 0x2

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v9, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v9, v6

    int-to-double v9, v6

    const-wide/high16 v11, 0x4018

    div-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 776
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v7, v6

    int-to-double v7, v6

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v9, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v9, v6

    int-to-double v9, v6

    div-double/2addr v7, v9

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v9, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v9, v6

    int-to-double v9, v6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v11, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v6, v6, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v11, v6

    int-to-double v11, v6

    div-double/2addr v9, v11

    sub-double v6, v7, v9

    aput-wide v6, v4, v0

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 784
    :cond_1
    aget-object v6, v3, v0

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    add-int/lit8 v8, v0, -0x1

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    div-double v1, v6, v8

    .line 786
    .local v1, k:D
    aget-object v6, v3, v0

    const/4 v7, 0x1

    aget-wide v8, v6, v7

    add-int/lit8 v10, v0, -0x1

    aget-object v10, v3, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v10, v1

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 787
    aget-object v6, v3, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 788
    aget-wide v6, v4, v0

    add-int/lit8 v8, v0, -0x1

    aget-wide v8, v4, v8

    mul-double/2addr v8, v1

    sub-double/2addr v6, v8

    aput-wide v6, v4, v0

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 793
    .end local v1           #k:D
    :cond_2
    aget-object v6, v3, v0

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v3, v8

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    div-double v1, v6, v8

    .line 794
    .restart local v1       #k:D
    aget-object v6, v3, v0

    const/4 v7, 0x1

    aget-wide v8, v6, v7

    add-int/lit8 v10, v0, 0x1

    aget-object v10, v3, v10

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v10, v1

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 795
    aget-object v6, v3, v0

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 796
    aget-wide v6, v4, v0

    add-int/lit8 v8, v0, 0x1

    aget-wide v8, v4, v8

    mul-double/2addr v8, v1

    sub-double/2addr v6, v8

    aput-wide v6, v4, v0

    .line 791
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 803
    .end local v1           #k:D
    .restart local v5       #y2:[D
    :cond_3
    aget-wide v6, v4, v0

    aget-object v8, v3, v0

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    div-double/2addr v6, v8

    aput-wide v6, v5, v0

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method private setSize()V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43ec

    div-float v0, v1, v2

    .line 111
    .local v0, ratio:F
    const/high16 v1, 0x43dc

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    .line 112
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/jellybus/fx_sub/CurveView;->gap:F

    .line 113
    return-void
.end method


# virtual methods
.method public addPoint(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x7

    .line 119
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 160
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 122
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    if-le v1, p1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    new-instance v2, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v2, p0, v3}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto :goto_1

    .line 121
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0           #i:I
    :cond_3
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 130
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 131
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    if-le v1, p1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    new-instance v2, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v2, p0, v3}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto :goto_1

    .line 131
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 139
    .end local v0           #i:I
    :cond_5
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 140
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 141
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    if-le v1, p1, :cond_6

    .line 143
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    new-instance v2, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v2, p0, v3}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 144
    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_1

    .line 141
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 149
    .end local v0           #i:I
    :cond_7
    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 151
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->x:I

    if-le v1, p1, :cond_8

    .line 153
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    new-instance v2, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v2, p0, v3}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    goto/16 :goto_1

    .line 151
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 204
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CurveView;->isStop:Z

    if-nez v0, :cond_1

    .line 205
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 206
    .local v5, Pnt:Landroid/graphics/Paint;
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    const/high16 v0, 0x4080

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 208
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v0, :cond_2

    .line 209
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    :cond_0
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 218
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 221
    const/4 v6, 0x1

    .local v6, i:I
    :goto_1
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    if-lt v6, v0, :cond_5

    .line 226
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v0, :cond_8

    .line 227
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_6

    .line 256
    .end local v5           #Pnt:Landroid/graphics/Paint;
    .end local v6           #i:I
    :cond_1
    return-void

    .line 210
    .restart local v5       #Pnt:Landroid/graphics/Paint;
    :cond_2
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v8, :cond_3

    .line 211
    const/high16 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 212
    :cond_3
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v9, :cond_4

    .line 213
    const v0, -0xff0100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 214
    :cond_4
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v10, :cond_0

    .line 215
    const v0, -0xffff01

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 222
    .restart local v6       #i:I
    :cond_5
    add-int/lit8 v0, v6, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->gap:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    add-int/lit8 v2, v6, -0x1

    aget v0, v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->gap:F

    add-float/2addr v2, v0

    int-to-float v0, v6

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->gap:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->gap:F

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 228
    :cond_6
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v0, v6, :cond_7

    .line 229
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 227
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 231
    :cond_7
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 233
    :cond_8
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v8, :cond_a

    .line 234
    const/4 v6, 0x0

    :goto_4
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 235
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v0, v6, :cond_9

    .line 236
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 238
    :cond_9
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 240
    :cond_a
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v9, :cond_c

    .line 241
    const/4 v6, 0x0

    :goto_6
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 242
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v0, v6, :cond_b

    .line 243
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 245
    :cond_b
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 247
    :cond_c
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v10, :cond_1

    .line 248
    const/4 v6, 0x0

    :goto_8
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 249
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v0, v6, :cond_d

    .line 250
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 252
    :cond_d
    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    iget-object v0, v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_9
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 77
    invoke-direct {p0}, Lcom/jellybus/fx_sub/CurveView;->setSize()V

    .line 79
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->setFirstPoint()V

    .line 80
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x1

    const/high16 v7, 0x4000

    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 315
    :goto_0
    return v4

    .line 263
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->gap:F

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 264
    .local v0, x1:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->gap:F

    sub-float/2addr v4, v6

    float-to-int v2, v4

    .line 265
    .local v2, y1:I
    if-ge v0, v5, :cond_0

    .line 266
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    .line 267
    :cond_0
    if-ge v2, v5, :cond_1

    .line 268
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    div-float/2addr v4, v7

    float-to-int v2, v4

    .line 269
    :cond_1
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    if-le v0, v4, :cond_2

    .line 270
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    int-to-float v4, v4

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 271
    :cond_2
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    if-le v2, v4, :cond_3

    .line 272
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    int-to-float v4, v4

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v2, v4

    .line 273
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/jellybus/fx_sub/CurveView;->checkSelectedPoint(II)V

    move v4, v5

    .line 274
    goto :goto_0

    .line 276
    .end local v0           #x1:I
    .end local v2           #y1:I
    :pswitch_1
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-eq v4, v8, :cond_9

    .line 277
    iget-boolean v4, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    if-nez v4, :cond_9

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 279
    .local v1, x2:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 280
    .local v3, y2:I
    if-ge v1, v5, :cond_4

    .line 281
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    div-float/2addr v4, v7

    float-to-int v1, v4

    .line 282
    :cond_4
    if-ge v3, v5, :cond_5

    .line 283
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    div-float/2addr v4, v7

    float-to-int v3, v4

    .line 284
    :cond_5
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    if-le v1, v4, :cond_6

    .line 285
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    int-to-float v4, v4

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 286
    :cond_6
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    if-le v3, v4, :cond_7

    .line 287
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    int-to-float v4, v4

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v3, v4

    .line 289
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/jellybus/fx_sub/CurveView;->checkMovePoint(II)V

    .line 291
    iget-boolean v4, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    if-nez v4, :cond_8

    .line 293
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v4, :cond_a

    .line 294
    iget-object v4, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    invoke-virtual {v4, v1, v3}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    .line 303
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->setGraph()V

    .line 304
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->invalidate()V

    .end local v1           #x2:I
    .end local v3           #y2:I
    :cond_9
    move v4, v5

    .line 307
    goto/16 :goto_0

    .line 295
    .restart local v1       #x2:I
    .restart local v3       #y2:I
    :cond_a
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v4, v5, :cond_b

    .line 296
    iget-object v4, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    invoke-virtual {v4, v1, v3}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    goto :goto_1

    .line 297
    :cond_b
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_c

    .line 298
    iget-object v4, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    invoke-virtual {v4, v1, v3}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    goto :goto_1

    .line 299
    :cond_c
    iget v4, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_8

    .line 300
    iget-object v4, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget v6, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    invoke-virtual {v4, v1, v3}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setPoint(II)V

    goto :goto_1

    .line 309
    .end local v1           #x2:I
    .end local v3           #y2:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->removeLiveCurveIndex()V

    .line 310
    iput-boolean v4, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    .line 311
    iput v8, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    .line 312
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->invalidate()V

    move v4, v5

    .line 313
    goto/16 :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeLiveCurveIndex()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndex:[I

    .line 587
    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexR:[I

    .line 588
    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexG:[I

    .line 589
    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexB:[I

    .line 590
    return-void
.end method

.method public resetAllPoint()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    return-void
.end method

.method public resetCurveValues()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 604
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 605
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 606
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 608
    iput-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    .line 610
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 611
    iput-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    .line 612
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 613
    iput-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/CurveView;->isStop:Z

    .line 616
    return-void
.end method

.method public setCurRGB(I)V
    .locals 2
    .parameter "curRGB"

    .prologue
    .line 177
    iput p1, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    .line 178
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    :cond_0
    if-nez p1, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020062

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    .line 185
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020063

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    .line 199
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/CurveView;->gap_circle:F

    .line 200
    return-void

    .line 187
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    .line 189
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020071

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 191
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    .line 193
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 195
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020066

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle:Landroid/graphics/Bitmap;

    .line 197
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->circle_on:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setCurveIndex(ZZ)V
    .locals 6
    .parameter "isBW"
    .parameter "isPreview"

    .prologue
    const/4 v5, 0x0

    .line 527
    if-eqz p2, :cond_1

    .line 528
    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    .line 529
    .local v2, w:I
    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    .line 534
    .local v1, h:I
    :goto_0
    if-eqz p1, :cond_0

    .line 535
    invoke-static {v2, v1}, Lcom/jellybus/fx/Juliet;->setGrayScaleAllIndex(II)V

    .line 537
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [I

    .line 539
    .local v0, curveIndex:[I
    iget-object v3, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraph(Ljava/util/ArrayList;I)[I

    move-result-object v0

    .line 540
    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CurveView;->reverseIndex([I)[I

    .line 541
    invoke-static {v5, v0, v2, v1, v5}, Lcom/jellybus/fx/Juliet;->setCurvesIndexRGBIndex(I[IIIZ)V

    .line 543
    iget-object v3, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraph(Ljava/util/ArrayList;I)[I

    move-result-object v0

    .line 544
    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CurveView;->reverseIndex([I)[I

    .line 545
    const/4 v3, 0x1

    invoke-static {v3, v0, v2, v1, v5}, Lcom/jellybus/fx/Juliet;->setCurvesIndexRGBIndex(I[IIIZ)V

    .line 547
    iget-object v3, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraph(Ljava/util/ArrayList;I)[I

    move-result-object v0

    .line 548
    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CurveView;->reverseIndex([I)[I

    .line 549
    const/4 v3, 0x2

    invoke-static {v3, v0, v2, v1, v5}, Lcom/jellybus/fx/Juliet;->setCurvesIndexRGBIndex(I[IIIZ)V

    .line 551
    iget-object v3, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraph(Ljava/util/ArrayList;I)[I

    move-result-object v0

    .line 552
    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CurveView;->reverseIndex([I)[I

    .line 553
    const/4 v3, 0x3

    invoke-static {v3, v0, v2, v1, v5}, Lcom/jellybus/fx/Juliet;->setCurvesIndexRGBIndex(I[IIIZ)V

    .line 554
    return-void

    .line 531
    .end local v0           #curveIndex:[I
    .end local v1           #h:I
    .end local v2           #w:I
    :cond_1
    sget v2, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 532
    .restart local v2       #w:I
    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    .restart local v1       #h:I
    goto :goto_0
.end method

.method public setCurveIndexForLive(ZII)V
    .locals 6
    .parameter "isBW"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    if-eqz p1, :cond_0

    .line 557
    invoke-static {p2, p3}, Lcom/jellybus/fx/Juliet;->setGrayScaleAllIndex(II)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndex:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v0, :cond_2

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraph(Ljava/util/ArrayList;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndex:[I

    .line 561
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndex:[I

    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CurveView;->reverseIndex([I)[I

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndex:[I

    invoke-static {v2, v0, p2, p3, v2}, Lcom/jellybus/fx/Juliet;->setCurvesIndexRGBIndex(I[IIIZ)V

    .line 565
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexR:[I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v3, :cond_4

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraph(Ljava/util/ArrayList;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexR:[I

    .line 567
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexR:[I

    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CurveView;->reverseIndex([I)[I

    .line 569
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexR:[I

    invoke-static {v3, v0, p2, p3, v2}, Lcom/jellybus/fx/Juliet;->setCurvesIndexRGBIndex(I[IIIZ)V

    .line 571
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexG:[I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v4, :cond_6

    .line 572
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraph(Ljava/util/ArrayList;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexG:[I

    .line 573
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexG:[I

    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CurveView;->reverseIndex([I)[I

    .line 575
    :cond_6
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexG:[I

    invoke-static {v4, v0, p2, p3, v2}, Lcom/jellybus/fx/Juliet;->setCurvesIndexRGBIndex(I[IIIZ)V

    .line 577
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexB:[I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-ne v0, v5, :cond_8

    .line 578
    :cond_7
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraph(Ljava/util/ArrayList;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexB:[I

    .line 579
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexB:[I

    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CurveView;->reverseIndex([I)[I

    .line 581
    :cond_8
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->liveCurveIndexB:[I

    invoke-static {v5, v0, p2, p3, v2}, Lcom/jellybus/fx/Juliet;->setCurvesIndexRGBIndex(I[IIIZ)V

    .line 582
    return-void
.end method

.method public setFinalPoint()V
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    if-nez v0, :cond_0

    .line 514
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setScaledPoint()V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 517
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setScaledPoint()V

    goto :goto_0

    .line 518
    :cond_2
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 519
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setScaledPoint()V

    goto :goto_0

    .line 520
    :cond_3
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;->setScaledPoint()V

    goto :goto_0
.end method

.method public setFirstPoint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/CurveView$ImagePoint;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/jellybus/fx_sub/CurveView$ImagePoint;-><init>(Lcom/jellybus/fx_sub/CurveView;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CurveView;->setGraph()V

    .line 97
    return-void
.end method

.method public setGraph()V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    .line 165
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraphTest(Ljava/util/ArrayList;II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraphTest(Ljava/util/ArrayList;II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    goto :goto_0

    .line 169
    :cond_2
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 170
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraphTest(Ljava/util/ArrayList;II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    goto :goto_0

    .line 171
    :cond_3
    iget v0, p0, Lcom/jellybus/fx_sub/CurveView;->curRGB:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CurveView;->pointInfoB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CurveView;->curve_size:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jellybus/fx_sub/CurveView;->getCurveGraphTest(Ljava/util/ArrayList;II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    goto :goto_0
.end method
