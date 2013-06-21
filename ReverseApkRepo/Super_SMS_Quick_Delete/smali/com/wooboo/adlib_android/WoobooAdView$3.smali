.class Lcom/wooboo/adlib_android/WoobooAdView$3;
.super Ljava/lang/Object;
.source "WoobooAdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView;->applyRotation(Lcom/wooboo/adlib_android/_;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wooboo/adlib_android/WoobooAdView;

.field private final synthetic val$newAd:Lcom/wooboo/adlib_android/_;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    iput-object p2, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->val$newAd:Lcom/wooboo/adlib_android/_;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$SW;

    iget-object v2, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$3;->val$newAd:Lcom/wooboo/adlib_android/_;

    invoke-direct {v1, v2, v3}, Lcom/wooboo/adlib_android/WoobooAdView$SW;-><init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 500
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 493
    return-void
.end method
