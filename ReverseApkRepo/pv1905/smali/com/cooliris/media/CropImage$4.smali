.class Lcom/cooliris/media/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cooliris/media/CropImage$4;)Lcom/cooliris/media/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 154
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 155
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cooliris/media/CropImage;->access$6(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/cooliris/media/CropImage$4$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/cooliris/media/CropImage$4$1;-><init>(Lcom/cooliris/media/CropImage$4;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    iget-object v3, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v3, v3, Lcom/cooliris/media/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 175
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
