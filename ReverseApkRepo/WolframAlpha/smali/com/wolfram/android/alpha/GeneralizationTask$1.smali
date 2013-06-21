.class Lcom/wolfram/android/alpha/GeneralizationTask$1;
.super Ljava/lang/Object;
.source "GeneralizationTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/GeneralizationTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/GeneralizationTask;

.field final synthetic val$pod:Lcom/wolfram/alpha/WAPod;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/GeneralizationTask;Lcom/wolfram/alpha/WAPod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wolfram/android/alpha/GeneralizationTask$1;->this$0:Lcom/wolfram/android/alpha/GeneralizationTask;

    iput-object p2, p0, Lcom/wolfram/android/alpha/GeneralizationTask$1;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/GeneralizationTask$1;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v1}, Lcom/wolfram/alpha/WAPod;->acquireImages()V

    .line 62
    iget-object v1, p0, Lcom/wolfram/android/alpha/GeneralizationTask$1;->this$0:Lcom/wolfram/android/alpha/GeneralizationTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {}, Lcom/wolfram/android/alpha/GeneralizationTask;->access$000()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    #calls: Lcom/wolfram/android/alpha/GeneralizationTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/wolfram/android/alpha/GeneralizationTask;->access$100(Lcom/wolfram/android/alpha/GeneralizationTask;[Ljava/lang/Object;)V

    .line 63
    iget-object v1, p0, Lcom/wolfram/android/alpha/GeneralizationTask$1;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v1}, Lcom/wolfram/alpha/WAPod;->getAsyncURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/wolfram/android/alpha/GeneralizationTask$1;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v1}, Lcom/wolfram/alpha/WAPod;->finishAsync()V

    .line 65
    iget-object v1, p0, Lcom/wolfram/android/alpha/GeneralizationTask$1;->this$0:Lcom/wolfram/android/alpha/GeneralizationTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {}, Lcom/wolfram/android/alpha/GeneralizationTask;->access$000()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    #calls: Lcom/wolfram/android/alpha/GeneralizationTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/wolfram/android/alpha/GeneralizationTask;->access$200(Lcom/wolfram/android/alpha/GeneralizationTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 68
    .local v0, e:Lcom/wolfram/alpha/WAException;
    goto :goto_0
.end method
