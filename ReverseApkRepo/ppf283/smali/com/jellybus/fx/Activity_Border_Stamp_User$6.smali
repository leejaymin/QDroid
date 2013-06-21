.class Lcom/jellybus/fx/Activity_Border_Stamp_User$6;
.super Ljava/lang/Object;
.source "Activity_Border_Stamp_User.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp_User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$9(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$5(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/StampUserDrawView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/StampUserDrawView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp_User;->removeBitmap()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$17(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    .line 359
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$5(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/StampUserDrawView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownRatio()F

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$1(Lcom/jellybus/fx/Activity_Border_Stamp_User;)I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$2(Lcom/jellybus/fx/Activity_Border_Stamp_User;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/jellybus/fx_sub/StampUserDrawView;->scaleUserDrawStamp(FII)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$7(Lcom/jellybus/fx/Activity_Border_Stamp_User;Landroid/graphics/Bitmap;)V

    .line 362
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp_User;->saveStampImage()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$18(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    .line 363
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp_User;->removeBitmap()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$17(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    .line 364
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp_User;->goBack()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$14(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    .line 365
    return-void
.end method
