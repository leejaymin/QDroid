.class Lcom/fleapapa/helper/CallLogs$5;
.super Ljava/lang/Thread;
.source "CallLogs.java"


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

.field private final synthetic val$each:Ljava/lang/Runnable;

.field private final synthetic val$files:[Ljava/io/File;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$last:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallLogs;Ljava/lang/String;[Ljava/io/File;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$5;->this$0:Lcom/fleapapa/helper/CallLogs;

    iput-object p3, p0, Lcom/fleapapa/helper/CallLogs$5;->val$files:[Ljava/io/File;

    iput-object p4, p0, Lcom/fleapapa/helper/CallLogs$5;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/fleapapa/helper/CallLogs$5;->val$each:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/fleapapa/helper/CallLogs$5;->val$last:Ljava/lang/Runnable;

    .line 114
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 116
    iget-object v3, p0, Lcom/fleapapa/helper/CallLogs$5;->val$files:[Ljava/io/File;

    array-length v4, v3

    move v5, v8

    :goto_0
    if-lt v5, v4, :cond_0

    .line 127
    iget-object v3, p0, Lcom/fleapapa/helper/CallLogs$5;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/fleapapa/helper/CallLogs$5;->val$last:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void

    .line 116
    :cond_0
    aget-object v0, v3, v5

    .line 117
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/fleapapa/helper/CallLogs$5;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v6, v6, Lcom/fleapapa/helper/CallLogs;->clogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    const-string v6, ".log"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    new-instance v2, Lcom/fleapapa/helper/CallLogs$Clog;

    iget-object v6, p0, Lcom/fleapapa/helper/CallLogs$5;->this$0:Lcom/fleapapa/helper/CallLogs;

    invoke-direct {v2, v6, v0}, Lcom/fleapapa/helper/CallLogs$Clog;-><init>(Lcom/fleapapa/helper/CallLogs;Ljava/io/File;)V

    .line 121
    .local v2, log:Lcom/fleapapa/helper/CallLogs$Clog;
    sget-object v6, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v6, v0, v8}, Lcom/fleapapa/helper/CallPapa;->readCall(Ljava/io/File;Z)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v6

    iput-object v6, v2, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 122
    iget-object v6, v2, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-nez v6, :cond_2

    .line 116
    .end local v2           #log:Lcom/fleapapa/helper/CallLogs$Clog;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .restart local v2       #log:Lcom/fleapapa/helper/CallLogs$Clog;
    :cond_2
    iget-object v6, p0, Lcom/fleapapa/helper/CallLogs$5;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v6, v6, Lcom/fleapapa/helper/CallLogs;->clogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v6, p0, Lcom/fleapapa/helper/CallLogs$5;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/fleapapa/helper/CallLogs$5;->val$each:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
