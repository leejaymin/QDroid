.class Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;
.super Ljava/lang/Object;
.source "MobclixAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForRemoteConfigThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 353
    .local v0, t:Ljava/lang/Long;
    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->sendEmptyMessage(I)Z

    .line 358
    return-void
.end method
