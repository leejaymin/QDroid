.class Lcom/admob/android/ads/AdContainer$2;
.super Ljava/lang/Thread;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/AdContainer;->onNetworkActivityStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admob/android/ads/AdContainer;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/admob/android/ads/AdContainer$2;->this$0:Lcom/admob/android/ads/AdContainer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer$2;->this$0:Lcom/admob/android/ads/AdContainer;

    #getter for: Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/admob/android/ads/AdContainer;->access$100(Lcom/admob/android/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer$2;->this$0:Lcom/admob/android/ads/AdContainer;

    #getter for: Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/admob/android/ads/AdContainer;->access$000(Lcom/admob/android/ads/AdContainer;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 614
    return-void
.end method
