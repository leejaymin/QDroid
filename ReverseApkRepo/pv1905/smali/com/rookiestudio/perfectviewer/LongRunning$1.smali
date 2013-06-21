.class Lcom/rookiestudio/perfectviewer/LongRunning$1;
.super Ljava/lang/Object;
.source "LongRunning.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/LongRunning;->startLongRunningAction(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/LongRunning;

.field private final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/LongRunning;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1;->this$0:Lcom/rookiestudio/perfectviewer/LongRunning;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1;->val$callable:Ljava/util/concurrent/Callable;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/LongRunning$1;)Lcom/rookiestudio/perfectviewer/LongRunning;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1;->this$0:Lcom/rookiestudio/perfectviewer/LongRunning;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 40
    const/4 v4, 0x0

    .line 41
    .local v4, result:Ljava/lang/Object;,"TResultType;"
    const/4 v1, 0x0

    .line 43
    .local v1, error:Ljava/lang/Exception;
    :try_start_0
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    .line 50
    .end local v4           #result:Ljava/lang/Object;,"TResultType;"
    .local v3, finalResult:Ljava/lang/Object;,"TResultType;"
    .local v3, result:Ljava/lang/Object;,"TResultType;"
    :goto_0
    move-object v2, v1

    .line 51
    .local v2, finalError:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1;->this$0:Lcom/rookiestudio/perfectviewer/LongRunning;

    #getter for: Lcom/rookiestudio/perfectviewer/LongRunning;->finishedHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/LongRunning;->access$0(Lcom/rookiestudio/perfectviewer/LongRunning;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/rookiestudio/perfectviewer/LongRunning$1$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/rookiestudio/perfectviewer/LongRunning$1$1;-><init>(Lcom/rookiestudio/perfectviewer/LongRunning$1;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 44
    .end local v2           #finalError:Ljava/lang/Exception;
    .end local v3           #result:Ljava/lang/Object;,"TResultType;"
    .restart local v4       #result:Ljava/lang/Object;,"TResultType;"
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    move-object v1, v0

    move-object v3, v4

    .end local v4           #result:Ljava/lang/Object;,"TResultType;"
    .local v3, result:Ljava/lang/Object;,"TResultType;"
    goto :goto_0
.end method
