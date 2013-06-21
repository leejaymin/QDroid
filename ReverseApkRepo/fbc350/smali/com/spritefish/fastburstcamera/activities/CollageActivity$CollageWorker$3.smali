.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;
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

.field private final synthetic val$b:Landroid/graphics/Bitmap;

.field private final synthetic val$failed:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;Landroid/graphics/Bitmap;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->val$failed:Ljava/util/concurrent/atomic/AtomicReference;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 253
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 254
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 256
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v2

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->val$b:Landroid/graphics/Bitmap;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setImage(Landroid/graphics/Bitmap;II)V

    .line 258
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->val$b:Landroid/graphics/Bitmap;

    #setter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->usedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0           #displaymetrics:Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$3;->val$failed:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
