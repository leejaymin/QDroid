.class Lcom/jellybus/fx_sub/PaintController$2;
.super Ljava/lang/Object;
.source "PaintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx_sub/PaintController;->scrollBy(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field old_x:F

.field old_y:F

.field final synthetic this$0:Lcom/jellybus/fx_sub/PaintController;

.field private final synthetic val$durationMs:F

.field private final synthetic val$dx:F

.field private final synthetic val$dy:F

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/PaintController;FJFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/PaintController$2;->this$0:Lcom/jellybus/fx_sub/PaintController;

    iput p2, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$durationMs:F

    iput-wide p3, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$startTime:J

    iput p5, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$dx:F

    iput p6, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$dy:F

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput v0, p0, Lcom/jellybus/fx_sub/PaintController$2;->old_x:F

    .line 335
    iput v0, p0, Lcom/jellybus/fx_sub/PaintController$2;->old_y:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 340
    .local v2, now:J
    iget v6, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$durationMs:F

    iget-wide v7, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$startTime:J

    sub-long v7, v2, v7

    long-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 341
    .local v1, currentMs:F
    iget v6, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$dx:F

    iget v7, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$durationMs:F

    invoke-static {v1, v9, v6, v7}, Lcom/jellybus/fx_sub/Cubic;->easeOut(FFFF)F

    move-result v4

    .line 342
    .local v4, x:F
    iget v6, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$dy:F

    iget v7, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$durationMs:F

    invoke-static {v1, v9, v6, v7}, Lcom/jellybus/fx_sub/Cubic;->easeOut(FFFF)F

    move-result v5

    .line 343
    .local v5, y:F
    iget-object v6, p0, Lcom/jellybus/fx_sub/PaintController$2;->this$0:Lcom/jellybus/fx_sub/PaintController;

    iget v7, p0, Lcom/jellybus/fx_sub/PaintController$2;->old_x:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/jellybus/fx_sub/PaintController$2;->old_y:F

    sub-float v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lcom/jellybus/fx_sub/PaintController;->panBy(FF)V

    .line 344
    iput v4, p0, Lcom/jellybus/fx_sub/PaintController$2;->old_x:F

    .line 345
    iput v5, p0, Lcom/jellybus/fx_sub/PaintController$2;->old_y:F

    .line 346
    iget v6, p0, Lcom/jellybus/fx_sub/PaintController$2;->val$durationMs:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    .line 347
    iget-object v6, p0, Lcom/jellybus/fx_sub/PaintController$2;->this$0:Lcom/jellybus/fx_sub/PaintController;

    iget-object v6, v6, Lcom/jellybus/fx_sub/PaintController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v6, p0, Lcom/jellybus/fx_sub/PaintController$2;->this$0:Lcom/jellybus/fx_sub/PaintController;

    invoke-virtual {v6, v10, v10}, Lcom/jellybus/fx_sub/PaintController;->getCenter(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 350
    .local v0, centerRect:Landroid/graphics/RectF;
    iget v6, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_0

    :cond_2
    iget-object v6, p0, Lcom/jellybus/fx_sub/PaintController$2;->this$0:Lcom/jellybus/fx_sub/PaintController;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7, v8}, Lcom/jellybus/fx_sub/PaintController;->scrollBy(FF)V

    goto :goto_0
.end method
