.class Lcom/falmarri/futures/Futures$1;
.super Landroid/content/BroadcastReceiver;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/falmarri/futures/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/falmarri/futures/Futures;


# direct methods
.method constructor <init>(Lcom/falmarri/futures/Futures;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/falmarri/futures/Futures$1;->this$0:Lcom/falmarri/futures/Futures;

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/falmarri/futures/Futures$1;->this$0:Lcom/falmarri/futures/Futures;

    #calls: Lcom/falmarri/futures/Futures;->getFreshQuotes()V
    invoke-static {v0}, Lcom/falmarri/futures/Futures;->access$0(Lcom/falmarri/futures/Futures;)V

    .line 81
    return-void
.end method
