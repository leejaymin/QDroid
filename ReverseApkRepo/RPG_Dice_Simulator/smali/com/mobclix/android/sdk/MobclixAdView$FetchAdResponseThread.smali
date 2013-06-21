.class Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;
.super Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAdResponseThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "h"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    .line 409
    const-string v0, ""

    invoke-direct {p0, v0, p2}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #calls: Lcom/mobclix/android/sdk/MobclixAdView;->getAdUrl()Ljava/lang/String;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->access$1(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->setUrl(Ljava/lang/String;)V

    .line 415
    invoke-super {p0}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->run()V

    .line 416
    return-void
.end method
