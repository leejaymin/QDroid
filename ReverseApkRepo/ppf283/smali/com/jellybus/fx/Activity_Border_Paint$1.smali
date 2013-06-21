.class Lcom/jellybus/fx/Activity_Border_Paint$1;
.super Landroid/os/Handler;
.source "Activity_Border_Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Paint;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Paint;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Paint$1;->this$0:Lcom/jellybus/fx/Activity_Border_Paint;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint$1;->this$0:Lcom/jellybus/fx/Activity_Border_Paint;

    #getter for: Lcom/jellybus/fx/Activity_Border_Paint;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Paint;->access$0(Lcom/jellybus/fx/Activity_Border_Paint;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v0

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Paint$1;->this$0:Lcom/jellybus/fx/Activity_Border_Paint;

    #getter for: Lcom/jellybus/fx/Activity_Border_Paint;->rotate_pic:Lcom/jellybus/fx_sub/PaintView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Paint;->access$1(Lcom/jellybus/fx/Activity_Border_Paint;)Lcom/jellybus/fx_sub/PaintView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/PaintView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Paint$1;->this$0:Lcom/jellybus/fx/Activity_Border_Paint;

    #getter for: Lcom/jellybus/fx/Activity_Border_Paint;->rotate_pic:Lcom/jellybus/fx_sub/PaintView;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Paint;->access$1(Lcom/jellybus/fx/Activity_Border_Paint;)Lcom/jellybus/fx_sub/PaintView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jellybus/fx_sub/PaintView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jellybus/fx_sub/ThumbnailController;->setScaleShownSize(IIII)V

    .line 70
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint$1;->this$0:Lcom/jellybus/fx/Activity_Border_Paint;

    #getter for: Lcom/jellybus/fx/Activity_Border_Paint;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Paint;->access$0(Lcom/jellybus/fx/Activity_Border_Paint;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/ThumbnailController;->isViewSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint$1;->this$0:Lcom/jellybus/fx/Activity_Border_Paint;

    #calls: Lcom/jellybus/fx/Activity_Border_Paint;->resettingCropView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Paint;->access$2(Lcom/jellybus/fx/Activity_Border_Paint;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint$1;->this$0:Lcom/jellybus/fx/Activity_Border_Paint;

    #getter for: Lcom/jellybus/fx/Activity_Border_Paint;->empty_view:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Paint;->access$4(Lcom/jellybus/fx/Activity_Border_Paint;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint$1;->this$0:Lcom/jellybus/fx/Activity_Border_Paint;

    #getter for: Lcom/jellybus/fx/Activity_Border_Paint;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Paint;->access$3(Lcom/jellybus/fx/Activity_Border_Paint;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
