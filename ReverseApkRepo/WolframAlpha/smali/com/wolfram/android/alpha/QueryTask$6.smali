.class Lcom/wolfram/android/alpha/QueryTask$6;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/QueryTask;->finishAsyncPod(Lcom/wolfram/alpha/WAQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/QueryTask;

.field final synthetic val$pod:Lcom/wolfram/alpha/WAPod;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/QueryTask;Lcom/wolfram/alpha/WAPod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask$6;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    iput-object p2, p0, Lcom/wolfram/android/alpha/QueryTask$6;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$6;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v1}, Lcom/wolfram/alpha/WAPod;->acquireImages()V

    .line 485
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$6;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1700(Lcom/wolfram/android/alpha/QueryTask;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$6;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {}, Lcom/wolfram/android/alpha/QueryTask;->access$1800()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    #calls: Lcom/wolfram/android/alpha/QueryTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/wolfram/android/alpha/QueryTask;->access$1900(Lcom/wolfram/android/alpha/QueryTask;[Ljava/lang/Object;)V

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$6;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v1}, Lcom/wolfram/alpha/WAPod;->getAsyncURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$6;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v1}, Lcom/wolfram/alpha/WAPod;->finishAsync()V

    .line 489
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$6;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {}, Lcom/wolfram/android/alpha/QueryTask;->access$1800()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    #calls: Lcom/wolfram/android/alpha/QueryTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/wolfram/android/alpha/QueryTask;->access$2000(Lcom/wolfram/android/alpha/QueryTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_1
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 492
    .local v0, e:Lcom/wolfram/alpha/WAException;
    goto :goto_0
.end method
