.class Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;
.super Landroid/os/Handler;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteConfigReadyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    if-eqz v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getAd()V

    .line 319
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #getter for: Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->access$0(Lcom/mobclix/android/sdk/MobclixAdView;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #getter for: Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->access$0(Lcom/mobclix/android/sdk/MobclixAdView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 326
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_4

    .line 327
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    const v3, -0xf423f

    invoke-interface {v0, v2, v3}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V

    goto :goto_1
.end method
