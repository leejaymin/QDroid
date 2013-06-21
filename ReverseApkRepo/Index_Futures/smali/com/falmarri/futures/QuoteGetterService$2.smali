.class Lcom/falmarri/futures/QuoteGetterService$2;
.super Ljava/lang/Object;
.source "QuoteGetterService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    iput-object p1, p0, Lcom/falmarri/futures/QuoteGetterService$2;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 87
    invoke-static {}, Lcom/falmarri/futures/QuoteGetterService;->access$0()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService$2;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    #getter for: Lcom/falmarri/futures/QuoteGetterService;->displayedQuotes:Lcom/falmarri/futures/QuoteList;
    invoke-static {v0}, Lcom/falmarri/futures/QuoteGetterService;->access$1(Lcom/falmarri/futures/QuoteGetterService;)Lcom/falmarri/futures/QuoteList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService$2;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    invoke-virtual {v0}, Lcom/falmarri/futures/QuoteGetterService;->update()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService$2;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #calls: Lcom/falmarri/futures/QuoteGetterService;->putQuote(Ljava/lang/String;Z)V
    invoke-static {v0, p2, v1}, Lcom/falmarri/futures/QuoteGetterService;->access$2(Lcom/falmarri/futures/QuoteGetterService;Ljava/lang/String;Z)V

    .line 95
    iget-object v0, p0, Lcom/falmarri/futures/QuoteGetterService$2;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    iget-object v1, p0, Lcom/falmarri/futures/QuoteGetterService$2;->this$0:Lcom/falmarri/futures/QuoteGetterService;

    #getter for: Lcom/falmarri/futures/QuoteGetterService;->broadcast:Landroid/content/Intent;
    invoke-static {v1}, Lcom/falmarri/futures/QuoteGetterService;->access$3(Lcom/falmarri/futures/QuoteGetterService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/falmarri/futures/QuoteGetterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    :cond_1
    return-void
.end method
