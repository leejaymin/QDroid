.class Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->adMobAllocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 960
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 964
    return-void

    .line 960
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 961
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_0

    .line 962
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v2

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v0, v2}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto :goto_0
.end method
