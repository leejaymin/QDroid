.class Lcom/jellybus/fx/Activity_Border_Vignetting$4;
.super Ljava/lang/Object;
.source "Activity_Border_Vignetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Vignetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Vignetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_seekbar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$14(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/SeekBar;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 294
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    const/high16 v2, 0x3f00

    #setter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$7(Lcom/jellybus/fx/Activity_Border_Vignetting;F)V

    .line 296
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #calls: Lcom/jellybus/fx/Activity_Border_Vignetting;->removePreviewBitmap()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$1(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    .line 297
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 298
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$2(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 300
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$2(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$2(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    #calls: Lcom/jellybus/fx/Activity_Border_Vignetting;->setVignetting(II)V
    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$3(Lcom/jellybus/fx/Activity_Border_Vignetting;II)V

    .line 302
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$4(Lcom/jellybus/fx/Activity_Border_Vignetting;Landroid/graphics/Bitmap;)V

    .line 303
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 304
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$6(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$4;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Reset"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 307
    .local v0, reset:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 308
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    return-void
.end method
