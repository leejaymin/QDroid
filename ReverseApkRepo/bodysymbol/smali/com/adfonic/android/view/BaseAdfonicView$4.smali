.class Lcom/adfonic/android/view/BaseAdfonicView$4;
.super Ljava/lang/Object;
.source "BaseAdfonicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/view/BaseAdfonicView;->startAdClickThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/view/BaseAdfonicView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    iput-object p2, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #getter for: Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;
    invoke-static {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->access$400(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->onAdClick(Landroid/content/Context;)V

    .line 329
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->isAudioResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->val$url:Ljava/lang/String;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->playAudio(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$800(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->isVideoResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->val$url:Ljava/lang/String;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->playVideo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$900(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->isCallResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->val$url:Ljava/lang/String;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->executeTelephoneCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$1000(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->isAndroidMarketResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->val$url:Ljava/lang/String;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->openAndroidMarket(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$1100(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->isAmazonMarketResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->val$url:Ljava/lang/String;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->openAmazonMarket(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$1200(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$4;->val$url:Ljava/lang/String;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->executeOpenUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$1300(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V

    goto :goto_0
.end method
