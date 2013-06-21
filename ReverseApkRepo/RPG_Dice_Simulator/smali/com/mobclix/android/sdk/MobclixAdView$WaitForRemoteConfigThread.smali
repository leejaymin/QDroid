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
    .line 299
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;->sendEmptyMessage(I)Z

    .line 309
    return-void
.end method
