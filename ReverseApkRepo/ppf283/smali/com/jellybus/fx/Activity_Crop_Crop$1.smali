.class Lcom/jellybus/fx/Activity_Crop_Crop$1;
.super Landroid/os/Handler;
.source "Activity_Crop_Crop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Crop_Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Crop_Crop;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Crop_Crop;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$0(Lcom/jellybus/fx/Activity_Crop_Crop;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v0

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_pic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$1(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->crop_pic:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$1(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jellybus/fx_sub/ThumbnailController;->setScaleShownSize(IIII)V

    .line 118
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$0(Lcom/jellybus/fx/Activity_Crop_Crop;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/ThumbnailController;->isViewSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #calls: Lcom/jellybus/fx/Activity_Crop_Crop;->resettingCropView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$2(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$4(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    const/4 v1, 0x1

    #setter for: Lcom/jellybus/fx/Activity_Crop_Crop;->isViewSet:Z
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$5(Lcom/jellybus/fx/Activity_Crop_Crop;Z)V

    .line 129
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop$1;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$3(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
