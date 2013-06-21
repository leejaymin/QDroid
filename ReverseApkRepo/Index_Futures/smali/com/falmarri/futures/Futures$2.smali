.class Lcom/falmarri/futures/Futures$2;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/falmarri/futures/Futures$2;->this$0:Lcom/falmarri/futures/Futures;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/falmarri/futures/Futures$2;->this$0:Lcom/falmarri/futures/Futures;

    check-cast p2, Lcom/falmarri/futures/QuoteGetterService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/falmarri/futures/QuoteGetterService$MyBinder;->getService()Lcom/falmarri/futures/QuoteGetterService;

    move-result-object v1

    #setter for: Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;
    invoke-static {v0, v1}, Lcom/falmarri/futures/Futures;->access$1(Lcom/falmarri/futures/Futures;Lcom/falmarri/futures/QuoteGetterService;)V

    .line 102
    const-string v0, "Futures"

    const-string v1, "QuoteGetterService bound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/falmarri/futures/Futures$2;->this$0:Lcom/falmarri/futures/Futures;

    #setter for: Lcom/falmarri/futures/Futures;->mIsBound:Z
    invoke-static {v0, v2}, Lcom/falmarri/futures/Futures;->access$2(Lcom/falmarri/futures/Futures;Z)V

    .line 106
    iget-object v0, p0, Lcom/falmarri/futures/Futures$2;->this$0:Lcom/falmarri/futures/Futures;

    #getter for: Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;
    invoke-static {v0}, Lcom/falmarri/futures/Futures;->access$3(Lcom/falmarri/futures/Futures;)Lcom/falmarri/futures/QuoteGetterService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/falmarri/futures/QuoteGetterService;->connect(Z)V

    .line 107
    iget-object v0, p0, Lcom/falmarri/futures/Futures$2;->this$0:Lcom/falmarri/futures/Futures;

    #getter for: Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;
    invoke-static {v0}, Lcom/falmarri/futures/Futures;->access$3(Lcom/falmarri/futures/Futures;)Lcom/falmarri/futures/QuoteGetterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/falmarri/futures/QuoteGetterService;->update()V

    .line 110
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/falmarri/futures/Futures$2;->this$0:Lcom/falmarri/futures/Futures;

    const/4 v1, 0x0

    #setter for: Lcom/falmarri/futures/Futures;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/falmarri/futures/Futures;->access$2(Lcom/falmarri/futures/Futures;Z)V

    .line 116
    iget-object v0, p0, Lcom/falmarri/futures/Futures$2;->this$0:Lcom/falmarri/futures/Futures;

    const/4 v1, 0x0

    #setter for: Lcom/falmarri/futures/Futures;->quoteBinder:Lcom/falmarri/futures/QuoteGetterService;
    invoke-static {v0, v1}, Lcom/falmarri/futures/Futures;->access$1(Lcom/falmarri/futures/Futures;Lcom/falmarri/futures/QuoteGetterService;)V

    .line 117
    return-void
.end method
