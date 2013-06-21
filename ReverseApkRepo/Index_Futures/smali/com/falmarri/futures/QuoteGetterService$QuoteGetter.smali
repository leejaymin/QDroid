.class public Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;
.super Ljava/lang/Object;
.source "QuoteGetterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/falmarri/futures/QuoteGetterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuoteGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/falmarri/futures/QuoteGetterService;


# direct methods
.method public constructor <init>(Lcom/falmarri/futures/QuoteGetterService;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 327
    const-string v1, "Futures"

    const-string v2, "Updating quotes"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    invoke-static {}, Lcom/falmarri/futures/Helper;->getQuotes()Lcom/falmarri/futures/QuoteList;

    move-result-object v2

    #setter for: Lcom/falmarri/futures/QuoteGetterService;->quotes:Lcom/falmarri/futures/QuoteList;
    invoke-static {v1, v2}, Lcom/falmarri/futures/QuoteGetterService;->access$4(Lcom/falmarri/futures/QuoteGetterService;Lcom/falmarri/futures/QuoteList;)V

    .line 334
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    #getter for: Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;
    invoke-static {v1}, Lcom/falmarri/futures/QuoteGetterService;->access$1(Lcom/falmarri/futures/QuoteGetterService;)Lcom/falmarri/futures/QuoteList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    new-instance v2, Lcom/falmarri/futures/QuoteList;

    invoke-direct {v2}, Lcom/falmarri/futures/QuoteList;-><init>()V

    #setter for: Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;
    invoke-static {v1, v2}, Lcom/falmarri/futures/QuoteGetterService;->access$5(Lcom/falmarri/futures/QuoteGetterService;Lcom/falmarri/futures/QuoteList;)V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService$QuoteGetter;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    invoke-virtual {v1}, Lcom/falmarri/futures/QuoteGetterService;->setDisplayed()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 347
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
