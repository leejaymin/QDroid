.class Lcom/fleapapa/helper/Monitor$2;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Monitor;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Monitor;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Monitor$2;->this$0:Lcom/fleapapa/helper/Monitor;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v0, Lcom/fleapapa/helper/Flea;

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Flea;->flea_hello(Z)Z

    .line 96
    sget-object v0, Lcom/fleapapa/helper/Event;->events:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/fleapapa/helper/Monitor$2;->this$0:Lcom/fleapapa/helper/Monitor;

    const-string v1, ". "

    invoke-static {v1}, Lcom/fleapapa/helper/Event;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    :cond_0
    sget-object v0, Lcom/fleapapa/helper/Monitor;->handler:Landroid/os/Handler;

    sget v1, Lcom/fleapapa/helper/Monitor;->tHello:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-void
.end method
