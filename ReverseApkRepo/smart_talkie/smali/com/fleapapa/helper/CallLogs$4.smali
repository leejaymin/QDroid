.class Lcom/fleapapa/helper/CallLogs$4;
.super Ljava/lang/Object;
.source "CallLogs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallLogs;->getCallLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallLogs;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallLogs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$4;->this$0:Lcom/fleapapa/helper/CallLogs;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/fleapapa/helper/CallLogs$4;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v1, v1, Lcom/fleapapa/helper/CallLogs;->clogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    return-void

    .line 109
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallLogs$Clog;

    .line 110
    .local v0, log:Lcom/fleapapa/helper/CallLogs$Clog;
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$4;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v2, v2, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$4;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v2, v2, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
