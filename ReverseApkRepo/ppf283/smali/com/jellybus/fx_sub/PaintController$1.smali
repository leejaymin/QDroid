.class Lcom/jellybus/fx_sub/PaintController$1;
.super Ljava/lang/Object;
.source "PaintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx_sub/PaintController;->setImageAllBitmapReset(Lcom/jellybus/fx_sub/PaintBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/PaintController;

.field private final synthetic val$bitmap:Lcom/jellybus/fx_sub/PaintBitmap;

.field private final synthetic val$reset:Z


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/PaintController;Lcom/jellybus/fx_sub/PaintBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/PaintController$1;->this$0:Lcom/jellybus/fx_sub/PaintController;

    iput-object p2, p0, Lcom/jellybus/fx_sub/PaintController$1;->val$bitmap:Lcom/jellybus/fx_sub/PaintBitmap;

    iput-boolean p3, p0, Lcom/jellybus/fx_sub/PaintController$1;->val$reset:Z

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController$1;->this$0:Lcom/jellybus/fx_sub/PaintController;

    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController$1;->val$bitmap:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jellybus/fx_sub/PaintController$1;->val$reset:Z

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/PaintController;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    .line 101
    return-void
.end method
