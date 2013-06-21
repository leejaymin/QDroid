.class Lcom/adfonic/android/api/RequestRunnable$1;
.super Ljava/lang/Object;
.source "RequestRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/api/RequestRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/api/RequestRunnable;

.field final synthetic val$response:Lcom/adfonic/android/api/response/ApiResponse;


# direct methods
.method constructor <init>(Lcom/adfonic/android/api/RequestRunnable;Lcom/adfonic/android/api/response/ApiResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adfonic/android/api/RequestRunnable$1;->this$0:Lcom/adfonic/android/api/RequestRunnable;

    iput-object p2, p0, Lcom/adfonic/android/api/RequestRunnable$1;->val$response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adfonic/android/api/RequestRunnable$1;->this$0:Lcom/adfonic/android/api/RequestRunnable;

    #getter for: Lcom/adfonic/android/api/RequestRunnable;->callback:Lcom/adfonic/android/api/ExecutorCallback;
    invoke-static {v0}, Lcom/adfonic/android/api/RequestRunnable;->access$000(Lcom/adfonic/android/api/RequestRunnable;)Lcom/adfonic/android/api/ExecutorCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/api/RequestRunnable$1;->val$response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-interface {v0, v1}, Lcom/adfonic/android/api/ExecutorCallback;->onResponse(Lcom/adfonic/android/api/response/ApiResponse;)V

    .line 60
    return-void
.end method
