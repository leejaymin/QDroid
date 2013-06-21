.class Lcom/jellybus/fx/Activity_Border_Vignetting$2;
.super Ljava/lang/Object;
.source "Activity_Border_Vignetting.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    #setter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$7(Lcom/jellybus/fx/Activity_Border_Vignetting;F)V

    .line 255
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$8(Lcom/jellybus/fx/Activity_Border_Vignetting;)F

    move-result v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    #setter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$7(Lcom/jellybus/fx/Activity_Border_Vignetting;F)V

    .line 256
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$0(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    const v3, 0x7f05004e

    invoke-virtual {v2, v3}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->progress_value:F
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$8(Lcom/jellybus/fx/Activity_Border_Vignetting;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$0(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$0(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #calls: Lcom/jellybus/fx/Activity_Border_Vignetting;->removePreviewBitmap()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$1(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    .line 234
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 235
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$2(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 237
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$2(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->compare:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$2(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    #calls: Lcom/jellybus/fx/Activity_Border_Vignetting;->setVignetting(II)V
    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$3(Lcom/jellybus/fx/Activity_Border_Vignetting;II)V

    .line 239
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$4(Lcom/jellybus/fx/Activity_Border_Vignetting;Landroid/graphics/Bitmap;)V

    .line 240
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 241
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->vignetting_pic:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$6(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$2;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    return-void
.end method
