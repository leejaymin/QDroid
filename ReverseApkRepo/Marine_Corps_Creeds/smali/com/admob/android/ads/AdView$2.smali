.class Lcom/admob/android/ads/AdView$2;
.super Ljava/util/TimerTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/AdView;->manageRequestIntervalTimer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admob/android/ads/AdView;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/admob/android/ads/AdView$2;->this$0:Lcom/admob/android/ads/AdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const-string v3, "AdMob SDK"

    .line 514
    const-string v1, "AdMob SDK"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/admob/android/ads/AdView$2;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->requestInterval:I
    invoke-static {v1}, Lcom/admob/android/ads/AdView;->access$900(Lcom/admob/android/ads/AdView;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 518
    .local v0, secs:I
    const-string v1, "AdMob SDK"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    const-string v1, "AdMob SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting a fresh ad because a request interval passed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v0           #secs:I
    :cond_0
    iget-object v1, p0, Lcom/admob/android/ads/AdView$2;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->requestFreshAd()V

    .line 525
    return-void
.end method
