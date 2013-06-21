.class Lcom/admob/android/ads/AdView$3;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/AdView;->applyRotation(Lcom/admob/android/ads/AdContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admob/android/ads/AdView;

.field final synthetic val$newAd:Lcom/admob/android/ads/AdContainer;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/admob/android/ads/AdView$3;->this$0:Lcom/admob/android/ads/AdView;

    iput-object p2, p0, Lcom/admob/android/ads/AdView$3;->val$newAd:Lcom/admob/android/ads/AdContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/admob/android/ads/AdView$3;->this$0:Lcom/admob/android/ads/AdView;

    new-instance v1, Lcom/admob/android/ads/AdView$SwapViews;

    iget-object v2, p0, Lcom/admob/android/ads/AdView$3;->this$0:Lcom/admob/android/ads/AdView;

    iget-object v3, p0, Lcom/admob/android/ads/AdView$3;->val$newAd:Lcom/admob/android/ads/AdContainer;

    invoke-direct {v1, v2, v3}, Lcom/admob/android/ads/AdView$SwapViews;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->post(Ljava/lang/Runnable;)Z

    .line 938
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 942
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 931
    return-void
.end method
