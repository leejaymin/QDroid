.class Lcom/kt/olleh/inapp/InApp$NetworkTask;
.super Landroid/os/AsyncTask;
.source "InApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/olleh/inapp/InApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentAPI:Ljava/lang/String;

.field private mLastError:I

.field private mLastHttpCode:I

.field private mListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field final synthetic this$0:Lcom/kt/olleh/inapp/InApp;


# direct methods
.method public constructor <init>(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 977
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 978
    iput-object p2, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    .line 980
    return-void
.end method

.method private sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V
    .locals 2
    .parameter "code"
    .parameter "reason"
    .parameter "response"

    .prologue
    .line 1291
    if-nez p1, :cond_0

    .line 1292
    const-string p1, "code null"

    .line 1294
    :cond_0
    if-nez p2, :cond_1

    .line 1295
    const-string p2, "reason null"

    .line 1298
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    if-eqz v1, :cond_3

    .line 1300
    const-string v1, "B007"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1302
    const-string p2, "\uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    .line 1319
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-interface {v1, p1, p2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_3
    return-void

    .line 1304
    :cond_4
    const-string v1, "B009"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1306
    const-string p2, "\uc77c\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 1308
    :cond_5
    const-string v1, "B010"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1310
    const-string p2, "\uc6d4\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 1311
    :cond_6
    const-string v1, "B011"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1313
    if-eqz p3, :cond_2

    move-object v0, p3

    .line 1314
    check-cast v0, Lcom/kt/olleh/inapp/net/ResDIBuy;

    .line 1315
    .local v0, res:Lcom/kt/olleh/inapp/net/ResDIBuy;
    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/ResDIBuy;->getPinFailCnt()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "params"

    .prologue
    .line 990
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 991
    .local v0, url:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    .line 995
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    new-instance v2, Lcom/kt/olleh/inapp/net/NetworkManager;

    invoke-direct {v2}, Lcom/kt/olleh/inapp/net/NetworkManager;-><init>()V

    #setter for: Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/InApp;->access$0(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/net/NetworkManager;)V

    .line 996
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kt/olleh/inapp/net/NetworkManager;->getData(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->doInBackground([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1284
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1285
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const/4 v1, 0x0

    #setter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/InApp;->access$13(Lcom/kt/olleh/inapp/InApp;Z)V

    .line 1286
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/NetworkManager;->cancel()V

    .line 1287
    return-void
.end method

.method protected onPostExecute(Ljava/io/InputStream;)V
    .locals 14
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 1011
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    const/4 p1, 0x0

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    if-eqz p1, :cond_27

    .line 1019
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    const-string v1, "esBuyDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1024
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kt/olleh/inapp/net/XMLParser;->parseXML_OLD(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kt/olleh/inapp/net/ResponseOld;

    move-result-object v10

    .line 1025
    .local v10, old:Lcom/kt/olleh/inapp/net/ResponseOld;
    if-eqz v10, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, v10, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultCode:Ljava/lang/String;

    iget-object v2, v10, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/NetworkManager;->getLastError()I

    move-result v0

    iput v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mLastError:I

    .line 1033
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/NetworkManager;->getLastHttpCode()I

    move-result v0

    iput v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mLastHttpCode:I

    .line 1035
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const-string v0, "A015"

    const-string v1, "\uc11c\ubc84 \uc694\uccad \uc751\ub2f5 \uc2dc\uac04 \ucd08\uacfc"

    invoke-direct {p0, v0, v1, v3}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto :goto_0

    .line 1042
    .end local v10           #old:Lcom/kt/olleh/inapp/net/ResponseOld;
    :cond_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kt/olleh/inapp/net/XMLParser;->parseXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kt/olleh/inapp/net/Response;

    move-result-object v12

    .line 1043
    .local v12, response:Lcom/kt/olleh/inapp/net/Response;
    if-eqz v12, :cond_0

    .line 1045
    const-string v0, "0"

    iget-object v1, v12, Lcom/kt/olleh/inapp/net/Response;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1047
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, v12, Lcom/kt/olleh/inapp/net/Response;->mCode:Ljava/lang/String;

    iget-object v1, v12, Lcom/kt/olleh/inapp/net/Response;->mReason:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v12}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto :goto_0

    .line 1052
    :cond_4
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPostExecute("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_5
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSymKeyGen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v11, v12

    .line 1056
    check-cast v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;

    .line 1059
    .local v11, res:Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buyDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1060
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "giftDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1063
    :cond_6
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSymmetric_key:Ljava/lang/String;

    #setter for: Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/InApp;->access$5(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSeq_key:Ljava/lang/String;

    #setter for: Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/InApp;->access$6(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const-string v1, "tr_id"

    #setter for: Lcom/kt/olleh/inapp/InApp;->tr_id:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/InApp;->access$7(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1073
    :goto_1
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPostExecute("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSymmetric_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSeq_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_7
    const/4 v8, 0x0

    .line 1076
    .local v8, aesURL:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1078
    .local v7, aesReplaceURL:Ljava/lang/String;
    const-string v0, "0"

    iget-object v1, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$8(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1082
    iget-object v0, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSymmetric_key:Ljava/lang/String;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$8(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/crypt/AESCrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1084
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "InApp"

    const-string v1, "#################################################################"

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_8
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAES_URL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;
    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$8(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_9
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aesURL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_a
    const/16 v0, 0x2f

    const/16 v1, 0x24

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 1088
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aesReplaceURL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_b
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "InApp"

    const-string v1, "#################################################################"

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :cond_c
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "crypto_param/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/seq_key/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSeq_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1096
    .local v13, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1098
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/InApp;->access$9(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #setter for: Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/kt/olleh/inapp/InApp;->access$10(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1103
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1104
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    const-string v1, "0"

    invoke-interface {v0, v1, v13}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultFileURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_d
    :goto_3
    const/4 v13, 0x0

    .line 1121
    :cond_e
    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1069
    .end local v7           #aesReplaceURL:Ljava/lang/String;
    .end local v8           #aesURL:Ljava/lang/String;
    .end local v13           #url:Ljava/lang/String;
    :cond_f
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #setter for: Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/kt/olleh/inapp/InApp;->access$5(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #setter for: Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/kt/olleh/inapp/InApp;->access$6(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1091
    .restart local v7       #aesReplaceURL:Ljava/lang/String;
    .restart local v8       #aesURL:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1092
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AESCrypter ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1108
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v13       #url:Ljava/lang/String;
    :cond_10
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v13, v2}, Lcom/kt/olleh/inapp/InApp;->access$11(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1117
    :cond_11
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1118
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto :goto_4

    .line 1125
    .end local v13           #url:Ljava/lang/String;
    :cond_12
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mCode:Ljava/lang/String;

    iget-object v1, v11, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mReason:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v12}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1129
    .end local v7           #aesReplaceURL:Ljava/lang/String;
    .end local v8           #aesURL:Ljava/lang/String;
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;
    :cond_13
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUseDiList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1130
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDownloadDiList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    move-object v11, v12

    .line 1133
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIListExpand;

    .line 1134
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIListExpand;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1137
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIListExpand;
    :cond_15
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getItemStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v11, v12

    .line 1139
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIStatus;

    .line 1140
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIStatus;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1143
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIStatus;
    :cond_16
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBuyDiList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1144
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAllDiList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1145
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getGiftDiList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1146
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getReceiveDiList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    move-object v11, v12

    .line 1149
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIList;

    .line 1150
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIList;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1153
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIList;
    :cond_18
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDiDetail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v11, v12

    .line 1155
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIDetail;

    .line 1156
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIDetail;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1159
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIDetail;
    :cond_19
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buyDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1160
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buyCancelDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1161
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "giftDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1162
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reGiftDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1163
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "approvedUseDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    move-object v11, v12

    .line 1166
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIBuy;

    .line 1167
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIBuy;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1170
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIBuy;
    :cond_1b
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDownUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v11, v12

    .line 1172
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIDownUrl;

    .line 1173
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIDownUrl;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1176
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIDownUrl;
    :cond_1c
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDownAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object v11, v12

    .line 1178
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIDownAuth;

    .line 1179
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIDownAuth;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1182
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIDownAuth;
    :cond_1d
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "downSucProc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v11, v12

    .line 1184
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDownSucProc;

    .line 1185
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDownSucProc;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1188
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDownSucProc;
    :cond_1e
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "esBuyDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v11, v12

    .line 1190
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIesBuy;

    .line 1191
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIesBuy;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1194
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIesBuy;
    :cond_1f
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "approvedDownDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v11, v12

    .line 1196
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIApproveDown;

    .line 1197
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIApproveDown;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1200
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIApproveDown;
    :cond_20
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v11, v12

    .line 1202
    check-cast v11, Lcom/kt/olleh/inapp/net/ResDIGetFile;

    .line 1203
    .local v11, res:Lcom/kt/olleh/inapp/net/ResDIGetFile;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1206
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResDIGetFile;
    :cond_21
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkShowId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object v11, v12

    .line 1208
    check-cast v11, Lcom/kt/olleh/inapp/net/ResCheckShowId;

    .line 1213
    .local v11, res:Lcom/kt/olleh/inapp/net/ResCheckShowId;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1216
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResCheckShowId;
    :cond_22
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkCoin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v11, v12

    .line 1218
    check-cast v11, Lcom/kt/olleh/inapp/net/ResCheckCoin;

    .line 1219
    .local v11, res:Lcom/kt/olleh/inapp/net/ResCheckCoin;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1222
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResCheckCoin;
    :cond_23
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_balance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    move-object v11, v12

    .line 1224
    check-cast v11, Lcom/kt/olleh/inapp/net/ResCheckBalance;

    .line 1225
    .local v11, res:Lcom/kt/olleh/inapp/net/ResCheckBalance;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1228
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResCheckBalance;
    :cond_24
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkUserId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    move-object v11, v12

    .line 1230
    check-cast v11, Lcom/kt/olleh/inapp/net/ResCheckUserId;

    .line 1235
    .local v11, res:Lcom/kt/olleh/inapp/net/ResCheckUserId;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1239
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResCheckUserId;
    :cond_25
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckPin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    move-object v11, v12

    .line 1241
    check-cast v11, Lcom/kt/olleh/inapp/net/ResCheckPin;

    .line 1242
    .local v11, res:Lcom/kt/olleh/inapp/net/ResCheckPin;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1245
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResCheckPin;
    :cond_26
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetPin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v11, v12

    .line 1247
    check-cast v11, Lcom/kt/olleh/inapp/net/ResSetPin;

    .line 1248
    .local v11, res:Lcom/kt/olleh/inapp/net/ResSetPin;
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1256
    .end local v11           #res:Lcom/kt/olleh/inapp/net/ResSetPin;
    .end local v12           #response:Lcom/kt/olleh/inapp/net/Response;
    :cond_27
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/NetworkManager;->getLastError()I

    move-result v0

    iput v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mLastError:I

    .line 1257
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/NetworkManager;->getLastHttpCode()I

    move-result v0

    iput v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mLastHttpCode:I

    .line 1259
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buyDi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1267
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const-string v1, "/app_id/"

    const-string v2, "/di_id/"

    const-string v3, "/user_info/"

    const-string v4, "/authen/"

    iget-object v5, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->tr_id:Ljava/lang/String;
    invoke-static {v5}, Lcom/kt/olleh/inapp/InApp;->access$12(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto/16 :goto_0

    .line 1271
    :cond_28
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    #getter for: Lcom/kt/olleh/inapp/InApp;->mRun:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const-string v0, "A015"

    const-string v1, "\uc11c\ubc84\uc5d0 \uc811\uc18d\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ub124\ud2b8\uc6cc\ud06c \uc0c1\ud0dc\ub97c \ud655\uc778\ud574\uc8fc\uc138\uc694."

    invoke-direct {p0, v0, v1, v3}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->onPostExecute(Ljava/io/InputStream;)V

    return-void
.end method
