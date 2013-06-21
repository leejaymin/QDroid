.class Lcom/rookiestudio/perfectviewer/LongRunning$1$1;
.super Ljava/lang/Object;
.source "LongRunning.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/LongRunning$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rookiestudio/perfectviewer/LongRunning$1;

.field private final synthetic val$finalError:Ljava/lang/Exception;

.field private final synthetic val$finalResult:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/LongRunning$1;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1$1;->this$1:Lcom/rookiestudio/perfectviewer/LongRunning$1;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1$1;->val$finalResult:Ljava/lang/Object;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1$1;->val$finalError:Ljava/lang/Exception;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1$1;->this$1:Lcom/rookiestudio/perfectviewer/LongRunning$1;

    #getter for: Lcom/rookiestudio/perfectviewer/LongRunning$1;->this$0:Lcom/rookiestudio/perfectviewer/LongRunning;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/LongRunning$1;->access$0(Lcom/rookiestudio/perfectviewer/LongRunning$1;)Lcom/rookiestudio/perfectviewer/LongRunning;

    move-result-object v0

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1$1;->val$finalResult:Ljava/lang/Object;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/LongRunning$1$1;->val$finalError:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/LongRunning;->onLongRunningActionFinished(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 54
    return-void
.end method
