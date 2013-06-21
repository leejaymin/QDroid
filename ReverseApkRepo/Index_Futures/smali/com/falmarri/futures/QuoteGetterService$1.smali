.class Lcom/falmarri/futures/QuoteGetterService$1;
.super Landroid/content/BroadcastReceiver;
.source "QuoteGetterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/falmarri/futures/QuoteGetterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/falmarri/futures/QuoteGetterService;


# direct methods
.method constructor <init>(Lcom/falmarri/futures/QuoteGetterService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/falmarri/futures/QuoteGetterService$1;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 69
    const-string v0, "Futures"

    const-string v1, "Received update request... Updating"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService$1;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    invoke-virtual {v0}, Lcom/falmarri/futures/QuoteGetterService;->update()V

    .line 74
    return-void
.end method
