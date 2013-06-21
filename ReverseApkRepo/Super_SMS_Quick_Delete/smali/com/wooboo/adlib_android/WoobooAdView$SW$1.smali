.class Lcom/wooboo/adlib_android/WoobooAdView$SW$1;
.super Ljava/lang/Object;
.source "WoobooAdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView$SW;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView$SW;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;
    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView$SW;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/_;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView$SW;->access$3(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$SW;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/_;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->removeView(Landroid/view/View;)V

    .line 537
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;
    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView$SW;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/_;->recycleAll()V

    .line 538
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;

    const/4 v1, 0x0

    #setter for: Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;
    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView$SW;->access$1(Lcom/wooboo/adlib_android/WoobooAdView$SW;Lcom/wooboo/adlib_android/_;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView$SW;->access$3(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$SW;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$SW;->newAd:Lcom/wooboo/adlib_android/_;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$SW;->access$2(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/_;

    move-result-object v1

    #setter for: Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;
    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->access$1(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V

    .line 541
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 544
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 532
    return-void
.end method
