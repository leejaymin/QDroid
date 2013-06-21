.class Lcom/wooboo/adlib_android/ImpressionAdView$1;
.super Ljava/util/TimerTask;
.source "ImpressionAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView;->freshAdAtTime(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 236
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getParentView()Landroid/view/View;
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$1()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getContext()Landroid/content/Context;
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$2()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->requestFreshAd(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$3(Landroid/content/Context;)V

    .line 241
    :cond_0
    return-void
.end method
