.class Lcom/cooliris/media/CropImage$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/CropImage$1;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 401
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    #getter for: Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;
    invoke-static {v1}, Lcom/cooliris/media/CropImage$1;->access$2(Lcom/cooliris/media/CropImage$1;)Lcom/cooliris/media/CropImage;

    move-result-object v4

    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    iget v1, v1, Lcom/cooliris/media/CropImage$1;->mNumFaces:I

    if-le v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    .line 402
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    iget v1, v1, Lcom/cooliris/media/CropImage$1;->mNumFaces:I

    if-lez v1, :cond_3

    .line 403
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    iget v1, v1, Lcom/cooliris/media/CropImage$1;->mNumFaces:I

    if-lt v0, v1, :cond_2

    .line 409
    .end local v0           #i:I
    :goto_2
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    #getter for: Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;
    invoke-static {v1}, Lcom/cooliris/media/CropImage$1;->access$2(Lcom/cooliris/media/CropImage$1;)Lcom/cooliris/media/CropImage;

    move-result-object v1

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/CropImageView;->invalidate()V

    .line 410
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    #getter for: Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;
    invoke-static {v1}, Lcom/cooliris/media/CropImage$1;->access$2(Lcom/cooliris/media/CropImage$1;)Lcom/cooliris/media/CropImage;

    move-result-object v1

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 411
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    #getter for: Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;
    invoke-static {v1}, Lcom/cooliris/media/CropImage$1;->access$2(Lcom/cooliris/media/CropImage$1;)Lcom/cooliris/media/CropImage;

    move-result-object v4

    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    #getter for: Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;
    invoke-static {v1}, Lcom/cooliris/media/CropImage$1;->access$2(Lcom/cooliris/media/CropImage$1;)Lcom/cooliris/media/CropImage;

    move-result-object v1

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/HighlightView;

    iput-object v1, v4, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    .line 412
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    #getter for: Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;
    invoke-static {v1}, Lcom/cooliris/media/CropImage$1;->access$2(Lcom/cooliris/media/CropImage$1;)Lcom/cooliris/media/CropImage;

    move-result-object v1

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/HighlightView;->setFocus(Z)V

    .line 419
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 401
    goto :goto_0

    .line 404
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    iget-object v4, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    iget-object v4, v4, Lcom/cooliris/media/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    #calls: Lcom/cooliris/media/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V
    invoke-static {v1, v4}, Lcom/cooliris/media/CropImage$1;->access$0(Lcom/cooliris/media/CropImage$1;Landroid/media/FaceDetector$Face;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1$1;->this$1:Lcom/cooliris/media/CropImage$1;

    #calls: Lcom/cooliris/media/CropImage$1;->makeDefault()V
    invoke-static {v1}, Lcom/cooliris/media/CropImage$1;->access$1(Lcom/cooliris/media/CropImage$1;)V

    goto :goto_2
.end method
