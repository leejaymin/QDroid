.class Lcom/admob/android/ads/AdView$SwapViews$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/AdView$SwapViews;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/admob/android/ads/AdView$SwapViews;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdView$SwapViews;)V
    .locals 0
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Lcom/admob/android/ads/AdView$SwapViews$1;->this$1:Lcom/admob/android/ads/AdView$SwapViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/admob/android/ads/AdView$SwapViews$1;->this$1:Lcom/admob/android/ads/AdView$SwapViews;

    #getter for: Lcom/admob/android/ads/AdView$SwapViews;->oldAd:Lcom/admob/android/ads/AdContainer;
    invoke-static {v0}, Lcom/admob/android/ads/AdView$SwapViews;->access$1000(Lcom/admob/android/ads/AdView$SwapViews;)Lcom/admob/android/ads/AdContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/admob/android/ads/AdView$SwapViews$1;->this$1:Lcom/admob/android/ads/AdView$SwapViews;

    iget-object v0, v0, Lcom/admob/android/ads/AdView$SwapViews;->this$0:Lcom/admob/android/ads/AdView;

    iget-object v1, p0, Lcom/admob/android/ads/AdView$SwapViews$1;->this$1:Lcom/admob/android/ads/AdView$SwapViews;

    #getter for: Lcom/admob/android/ads/AdView$SwapViews;->oldAd:Lcom/admob/android/ads/AdContainer;
    invoke-static {v1}, Lcom/admob/android/ads/AdView$SwapViews;->access$1000(Lcom/admob/android/ads/AdView$SwapViews;)Lcom/admob/android/ads/AdContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->removeView(Landroid/view/View;)V

    .line 998
    iget-object v0, p0, Lcom/admob/android/ads/AdView$SwapViews$1;->this$1:Lcom/admob/android/ads/AdView$SwapViews;

    #getter for: Lcom/admob/android/ads/AdView$SwapViews;->oldAd:Lcom/admob/android/ads/AdContainer;
    invoke-static {v0}, Lcom/admob/android/ads/AdView$SwapViews;->access$1000(Lcom/admob/android/ads/AdView$SwapViews;)Lcom/admob/android/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admob/android/ads/AdContainer;->recycleBitmaps()V

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView$SwapViews$1;->this$1:Lcom/admob/android/ads/AdView$SwapViews;

    iget-object v0, v0, Lcom/admob/android/ads/AdView$SwapViews;->this$0:Lcom/admob/android/ads/AdView;

    iget-object v1, p0, Lcom/admob/android/ads/AdView$SwapViews$1;->this$1:Lcom/admob/android/ads/AdView$SwapViews;

    #getter for: Lcom/admob/android/ads/AdView$SwapViews;->newAd:Lcom/admob/android/ads/AdContainer;
    invoke-static {v1}, Lcom/admob/android/ads/AdView$SwapViews;->access$1100(Lcom/admob/android/ads/AdView$SwapViews;)Lcom/admob/android/ads/AdContainer;

    move-result-object v1

    #setter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->access$202(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)Lcom/admob/android/ads/AdContainer;

    .line 1002
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1006
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 989
    return-void
.end method
