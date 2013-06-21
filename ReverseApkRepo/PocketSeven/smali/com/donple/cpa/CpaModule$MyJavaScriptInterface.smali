.class Lcom/donple/cpa/CpaModule$MyJavaScriptInterface;
.super Ljava/lang/Object;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$MyJavaScriptInterface;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHTML(Ljava/lang/String;)V
    .locals 5
    .parameter "html"

    .prologue
    .line 1149
    const-string v1, "processHTML()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1150
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$MyJavaScriptInterface;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/donple/cpa/CpaModule$App;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1152
    const-string v1, "\t>> \uc774\ubbf8 \uc11c\ubc84\ub85c\ubd80\ud130\uc758 \ud1b5\uc2e0\uc774 \uc644\ub8cc\ub41c \uad11\uace0\uc785\ub2c8\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    const-string v1, "<DONPLE_CPA>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    const-string v1, "<DONPLE_CPA>"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, cpaParams:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t>> cpaParams= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$MyJavaScriptInterface;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/donple/cpa/CpaModule$App;->setCpaParams(Ljava/lang/String;)V

    .line 1164
    new-instance v1, Lcom/donple/cpa/CpaModule$CmdProcessTask;

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$MyJavaScriptInterface;->this$0:Lcom/donple/cpa/CpaModule;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/donple/cpa/CpaModule$CmdProcessTask;-><init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$CmdProcessTask;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/donple/cpa/CpaModule$App;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$MyJavaScriptInterface;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/donple/cpa/CpaModule$CmdProcessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
