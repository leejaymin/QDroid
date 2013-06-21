.class Lcom/adfonic/android/view/BaseAdfonicView$2;
.super Ljava/lang/Object;
.source "BaseAdfonicView.java"

# interfaces
.implements Lcom/adfonic/android/api/ExecutorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adfonic/android/view/BaseAdfonicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/view/BaseAdfonicView;


# direct methods
.method constructor <init>(Lcom/adfonic/android/view/BaseAdfonicView;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/adfonic/android/api/response/ApiResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 227
    invoke-static {}, Lcom/adfonic/android/utils/Log;->infoLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive an ad from server: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->i(Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/adfonic/android/api/response/ApiResponse;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    invoke-static {}, Lcom/adfonic/android/utils/Log;->errorLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issue while fetching ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adfonic/android/api/response/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #getter for: Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;
    invoke-static {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->access$400(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->onThrowable(Landroid/content/Context;)V

    .line 244
    :cond_2
    :goto_0
    return-void

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->setResponse(Lcom/adfonic/android/api/response/ApiResponse;)V
    invoke-static {v0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$500(Lcom/adfonic/android/view/BaseAdfonicView;Lcom/adfonic/android/api/response/ApiResponse;)V

    .line 239
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #getter for: Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;
    invoke-static {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->access$400(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->onAdReceived(Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->loadResponse(Lcom/adfonic/android/api/response/ApiResponse;)V
    invoke-static {v0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$600(Lcom/adfonic/android/view/BaseAdfonicView;Lcom/adfonic/android/api/response/ApiResponse;)V

    goto :goto_0
.end method

.method public onThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 249
    invoke-static {}, Lcom/adfonic/android/utils/Log;->errorLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "Can not fetch add"

    invoke-static {v0, p1}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #getter for: Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;
    invoke-static {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->access$400(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$2;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->onThrowable(Landroid/content/Context;)V

    .line 253
    return-void
.end method
