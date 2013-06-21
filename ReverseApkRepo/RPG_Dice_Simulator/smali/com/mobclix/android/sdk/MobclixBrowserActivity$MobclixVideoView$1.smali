.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;
.super Ljava/lang/Object;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadVideoAd()V
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
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 339
    :cond_0
    return-void
.end method
