.class Lcom/adfonic/android/view/BaseAdfonicView$1;
.super Ljava/lang/Object;
.source "BaseAdfonicView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 203
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 207
    .local v0, h:Landroid/os/Handler;
    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->isRequestInvalid()Z
    invoke-static {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$000(Lcom/adfonic/android/view/BaseAdfonicView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->isInterstitial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->executeCall(Landroid/os/Handler;)V
    invoke-static {v1, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->access$100(Lcom/adfonic/android/view/BaseAdfonicView;Landroid/os/Handler;)V

    .line 214
    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #getter for: Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;
    invoke-static {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$200(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/api/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adfonic/android/api/Request;->isRefreshAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #getter for: Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;
    invoke-static {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$200(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/api/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adfonic/android/api/Request;->getRefreshTime()I

    move-result v1

    if-lez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #getter for: Lcom/adfonic/android/view/BaseAdfonicView;->query:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/adfonic/android/view/BaseAdfonicView;->access$300(Lcom/adfonic/android/view/BaseAdfonicView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/adfonic/android/view/BaseAdfonicView$1;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #getter for: Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;
    invoke-static {v2}, Lcom/adfonic/android/view/BaseAdfonicView;->access$200(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/api/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adfonic/android/api/Request;->getRefreshTime()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
