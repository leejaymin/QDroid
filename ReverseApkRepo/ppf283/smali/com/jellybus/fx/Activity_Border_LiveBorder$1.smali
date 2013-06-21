.class Lcom/jellybus/fx/Activity_Border_LiveBorder$1;
.super Landroid/os/Handler;
.source "Activity_Border_LiveBorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_LiveBorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    .line 193
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x4

    .line 196
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$0(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v0

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_picture:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$1(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_picture:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$1(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jellybus/fx_sub/ThumbnailController;->setScaleShownSize(IIII)V

    .line 197
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$0(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/ThumbnailController;->isViewSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #calls: Lcom/jellybus/fx/Activity_Border_LiveBorder;->resettingTouchView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$2(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V

    .line 201
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$4(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$0(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$0(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jellybus/fx_sub/BorderView;->toGrayscale(Landroid/graphics/Bitmap;II)V

    .line 203
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_view:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$5(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->empty_text_view:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$6(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jellybus/fx_sub/BorderView;->isViewSet:Z

    .line 206
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/BorderView;->invalidate()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$1;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->view_size_handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$7(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
