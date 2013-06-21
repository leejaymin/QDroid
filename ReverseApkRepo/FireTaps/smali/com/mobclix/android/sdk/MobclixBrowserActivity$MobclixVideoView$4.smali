.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadButtonImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    .line 448
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;->bmImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$4(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v0

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 453
    return-void
.end method
