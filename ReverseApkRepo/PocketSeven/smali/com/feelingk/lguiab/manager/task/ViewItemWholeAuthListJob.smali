.class public Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;
.super Landroid/os/AsyncTask;
.source "ViewItemWholeAuthListJob.java"


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

.field private mClientListenerKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appId"
    .parameter "clientListenerKey"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mAppId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mClientListenerKey:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mAppId:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mClientListenerKey:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;
    .locals 3
    .parameter "params"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mAppId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/feelingk/lguiab/util/CreateXML;->authAll(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, xml:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->AUTH_ALL:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-static {v1, v2, v0}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapProcess(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$IAP_URI;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v1

    .line 80
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

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 56
    return-void
.end method

.method protected onPostExecute(Lcom/feelingk/lguiab/vo/MessageInfo;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 88
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 90
    if-eqz p1, :cond_4

    .line 93
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 96
    check-cast p1, Lcom/feelingk/lguiab/vo/AuthAllInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->getProductList()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 99
    .local v1, listSize:I
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/feelingk/lguiab/LguIAPLib;->showListDlg(Landroid/content/Context;Ljava/util/List;I)V

    .line 137
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    .end local v1           #listSize:I
    :goto_0
    return-void

    .line 102
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v2

    const/16 v3, 0x2329

    if-eq v2, v3, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v2

    const/16 v3, 0x232a

    if-ne v2, v3, :cond_2

    .line 105
    :cond_1
    const-string v2, "ErrorDlg"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "\uad6c\ub9e4 \ub0b4\uc5ed \uc694\uccad"

    .line 107
    const-string v4, "\ud655\uc778"

    const-string v5, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec\uc785\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc138\uc694"

    .line 106
    invoke-static {v2, v3, v4, v5}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    .line 110
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 115
    const-string v2, "ErrorDlg"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "\uad6c\ub9e4 \ub0b4\uc5ed \uc694\uccad"

    .line 117
    const-string v4, "\ud655\uc778"

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getMsg()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-static {v2, v3, v4, v5}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    .line 120
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getResultCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v2, "ErrorDlg"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "\uad6c\ub9e4 \ub0b4\uc5ed \uc694\uccad"

    .line 125
    const-string v4, "\ud655\uc778"

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getMsg()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v2, v3, v4, v5}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    .line 128
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getResultCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 133
    :cond_4
    const-string v2, "[Error] purchaseItemList is null."

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    const-string v3, "\uc624\ub958"

    const-string v4, "\ud655\uc778"

    const-string v5, "AuthAllXML \uc0dd\uc131 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-static {v2, v3, v4, v5}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/feelingk/lguiab/vo/MessageInfo;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->onPostExecute(Lcom/feelingk/lguiab/vo/MessageInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 66
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->mContext:Landroid/content/Context;

    const-string v1, "\uad6c\ub9e4 \ub0b4\uc5ed \uc694\uccad"

    .line 67
    const-string v2, "\uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824 \uc8fc\uc138\uc694"

    .line 66
    invoke-static {v0, v1, v2}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
