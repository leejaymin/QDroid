.class Lcom/donple/cpa/CpaModule$1;
.super Landroid/os/Handler;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 200
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_0
    new-instance v2, Lcom/donple/cpa/CpaModule$CpaProcessTask;

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/donple/cpa/CpaModule$CpaProcessTask;-><init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$CpaProcessTask;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/donple/cpa/CpaModule$CpaProcessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$App;->getAppStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$App;->getAppUrlParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, postData:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->webview:Lcom/donple/cpa/CpaModule$CpaWebView;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$1(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$CpaWebView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/donple/cpa/CpaModule$CpaWebView;->loadUrl(Ljava/lang/String;)V

    .line 222
    :goto_1
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$IniData;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$IniData;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/donple/cpa/CpaModule$IniData;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v6}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$1;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->webview:Lcom/donple/cpa/CpaModule$CpaWebView;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$1(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$CpaWebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
