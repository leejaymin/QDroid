.class public Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdMobInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V
    .locals 0
    .parameter

    .prologue
    .line 972
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 976
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->removeView(Landroid/view/View;)V

    .line 977
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveAd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->addView(Landroid/view/View;)V

    .line 979
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 986
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    const-string v1, ""

    iput-object v1, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$AdMobInvocationHandler;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getAd(Ljava/lang/String;)V

    goto :goto_0
.end method
