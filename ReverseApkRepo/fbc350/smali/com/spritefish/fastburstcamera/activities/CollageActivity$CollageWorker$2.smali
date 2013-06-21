.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

.field private final synthetic val$failed:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;->val$failed:Ljava/util/concurrent/atomic/AtomicReference;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->usedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->usedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v1

    const/4 v2, 0x0

    #setter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->usedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$2;->val$failed:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
