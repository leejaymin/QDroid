.class Lcom/donple/cpa/CpaModule$CmdProcessTask;
.super Landroid/os/AsyncTask;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmdProcessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/donple/cpa/CpaModule$App;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private app:Lcom/donple/cpa/CpaModule$App;

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method private constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$CmdProcessTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/donple/cpa/CpaModule$CmdProcessTask;-><init>(Lcom/donple/cpa/CpaModule;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/donple/cpa/CpaModule$App;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    .line 720
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->app:Lcom/donple/cpa/CpaModule$App;

    .line 723
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->donple:Lcom/donple/cpa/CpaModule$DonpleWork;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$6(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$DonpleWork;

    move-result-object v2

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->app:Lcom/donple/cpa/CpaModule$App;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestCmd(Lcom/donple/cpa/CpaModule$App;I)Lcom/donple/cpa/CpaModule$CmdData;

    move-result-object v0

    .line 724
    .local v0, cmd1:Lcom/donple/cpa/CpaModule$CmdData;
    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$CmdData;->getRetCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 729
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->app:Lcom/donple/cpa/CpaModule$App;

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$CmdData;->getTrxId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/donple/cpa/CpaModule$App;->setTransactionId(I)V

    .line 732
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->donple:Lcom/donple/cpa/CpaModule$DonpleWork;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$6(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$DonpleWork;

    move-result-object v2

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->app:Lcom/donple/cpa/CpaModule$App;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestCmd(Lcom/donple/cpa/CpaModule$App;I)Lcom/donple/cpa/CpaModule$CmdData;

    move-result-object v1

    .line 733
    .local v1, cmd2:Lcom/donple/cpa/CpaModule$CmdData;
    if-eqz v1, :cond_1

    .line 735
    invoke-virtual {v1}, Lcom/donple/cpa/CpaModule$CmdData;->getRetCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 743
    .end local v1           #cmd2:Lcom/donple/cpa/CpaModule$CmdData;
    :goto_0
    return-object v2

    .line 740
    :cond_0
    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$CmdData;->getRetCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 743
    :cond_1
    const/16 v2, 0x270f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/donple/cpa/CpaModule$App;

    invoke-virtual {p0, p1}, Lcom/donple/cpa/CpaModule$CmdProcessTask;->doInBackground([Lcom/donple/cpa/CpaModule$App;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 749
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 752
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 770
    :goto_0
    return-void

    .line 755
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t>> \uc774\ubca4\ud2b8 \uc644\ub8cc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->app:Lcom/donple/cpa/CpaModule$App;

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$App;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->cpaDao:Lcom/donple/cpa/CpaModule$CPADao;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$11(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$CPADao;

    move-result-object v1

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->app:Lcom/donple/cpa/CpaModule$App;

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$App;->getAppId()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/donple/cpa/CpaModule$CPADao;->updateStatusWhereAppId(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 768
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "N2"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t>> \uc774\ubbf8 \uc644\ub8cc\ub41c \uc774\ubca4\ud2b8: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->app:Lcom/donple/cpa/CpaModule$App;

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$App;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->cpaDao:Lcom/donple/cpa/CpaModule$CPADao;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$11(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$CPADao;

    move-result-object v1

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CmdProcessTask;->app:Lcom/donple/cpa/CpaModule$App;

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$App;->getAppId()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/donple/cpa/CpaModule$CPADao;->updateStatusWhereAppId(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 752
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xce -> :sswitch_1
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/donple/cpa/CpaModule$CmdProcessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
