.class public Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;
.super Landroid/os/AsyncTask;
.source "ReqItemUseJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/feelingk/lguiab/vo/MessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "pId"
    .parameter "appId"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mPId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mAppId:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mPId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mAppId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;
    .locals 4
    .parameter "params"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mPId:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mAppId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/feelingk/lguiab/util/CreateXML;->useItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, xml:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->USE_ITEM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-static {v1, v2, v0}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapProcess(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$IAP_URI;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 50
    return-void
.end method

.method protected onPostExecute(Lcom/feelingk/lguiab/vo/MessageInfo;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 80
    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/feelingk/lguiab/vo/UseItemInfo;

    .line 88
    .local v0, useItemInfo:Lcom/feelingk/lguiab/vo/UseItemInfo;
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 89
    invoke-interface {v1, v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonItemUseQuery(Lcom/feelingk/lguiab/vo/UseItemInfo;)V

    .line 128
    .end local v0           #useItemInfo:Lcom/feelingk/lguiab/vo/UseItemInfo;
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0x2329

    if-eq v1, v2, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0x232a

    if-ne v1, v2, :cond_2

    .line 95
    :cond_1
    const-string v1, "ErrorDlg"

    invoke-static {v1}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "\uc544\uc774\ud15c \ucc28\uac10 \uc5d0\ub7ec"

    .line 98
    const-string v3, "\ud655\uc778"

    const-string v4, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec\uc785\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc138\uc694"

    .line 97
    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 101
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 106
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 110
    :cond_3
    const-string v1, "ErrorDlg"

    invoke-static {v1}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "\uc544\uc774\ud15c \ucc28\uac10 \uc5d0\ub7ec"

    .line 113
    const-string v3, "\ud655\uc778"

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 125
    :cond_4
    const-string v1, "[Error] UseItemInfo is null."

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->mContext:Landroid/content/Context;

    const-string v2, "\uc624\ub958"

    const-string v3, "\ud655\uc778"

    const-string v4, "UseItemXML \uc0dd\uc131 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/feelingk/lguiab/vo/MessageInfo;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->onPostExecute(Lcom/feelingk/lguiab/vo/MessageInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 60
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
