.class public Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;
.super Landroid/os/AsyncTask;
.source "ReqPurchaseJob.java"


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

.field private mBpData:Ljava/lang/String;

.field private mBpIP:Ljava/lang/String;

.field private mBpPort:I

.field private mBpUri:Ljava/lang/String;

.field private mClientListenerKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appId"
    .parameter "pId"
    .parameter "bpIp"
    .parameter "bpPort"
    .parameter "bpUri"
    .parameter "bpData"
    .parameter "clientListenerKey"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mAppId:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mPId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpIP:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpUri:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpData:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mClientListenerKey:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mAppId:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mPId:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpIP:Ljava/lang/String;

    .line 65
    iput p5, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpPort:I

    .line 66
    iput-object p6, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpUri:Ljava/lang/String;

    .line 67
    iput-object p7, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpData:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mClientListenerKey:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 92
    const/4 v7, 0x0

    .line 95
    .local v7, checkListener:Z
    :try_start_0
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonItemQueryComplete()Z

    move-result v7

    .line 97
    if-eqz v7, :cond_1

    .line 98
    const-string v0, "lguIABonItemQueryComplete is true"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mPId:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mAppId:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpIP:Ljava/lang/String;

    iget v4, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpPort:I

    iget-object v5, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpUri:Ljava/lang/String;

    iget-object v6, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mBpData:Ljava/lang/String;

    .line 101
    invoke-static/range {v0 .. v6}, Lcom/feelingk/lguiab/util/CreateXML;->buyConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, xml:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 106
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->BUY_CONFIRM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-static {v0, v1, v9}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapProcess(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$IAP_URI;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v0

    .line 121
    .end local v9           #xml:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v9       #xml:Ljava/lang/String;
    :cond_0
    move-object v0, v10

    .line 109
    goto :goto_0

    .line 113
    .end local v9           #xml:Ljava/lang/String;
    :cond_1
    const-string v0, "lguIABonItemQueryComplete is false"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v10

    .line 121
    goto :goto_0

    .line 116
    :catch_0
    move-exception v8

    .line 117
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Exception]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 118
    const-string v0, "lguIABonItemQueryComplete"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 74
    return-void
.end method

.method protected onPostExecute(Lcom/feelingk/lguiab/vo/MessageInfo;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 128
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 130
    if-eqz p1, :cond_5

    .line 133
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonItemPurchaseComplete()V

    .line 138
    const-string v1, "PurchaseCompleteDlg"

    invoke-static {v1}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "\uacb0\uc81c\uc548\ub0b4"

    .line 141
    const-string v3, "\ud655\uc778"

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0x2329

    if-eq v1, v2, :cond_1

    .line 147
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0x232a

    if-ne v1, v2, :cond_2

    .line 149
    :cond_1
    const-string v1, "ErrorDlg"

    invoke-static {v1}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "\uacb0\uc81c\uc548\ub0b4"

    .line 152
    const-string v3, "\ud655\uc778"

    const-string v4, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec\uc785\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc138\uc694"

    .line 151
    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 158
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 160
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 167
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_4
    const-string v1, "ErrorDlg"

    invoke-static {v1}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "\uacb0\uc81c\uc548\ub0b4"

    .line 169
    const-string v3, "\ud655\uc778"

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 181
    :cond_5
    const-string v1, "[CP] Reject a purchase request."

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    const-string v2, "\uc624\ub958"

    const-string v3, "\ud655\uc778"

    const-string v4, "BuyConfirmXML \uc0dd\uc131 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/feelingk/lguiab/vo/MessageInfo;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->onPostExecute(Lcom/feelingk/lguiab/vo/MessageInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 85
    const-string v0, "ProgressDlg"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->mContext:Landroid/content/Context;

    const-string v1, "\uacb0\uc81c\uc548\ub0b4"

    .line 87
    const-string v2, "\uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824 \uc8fc\uc138\uc694"

    .line 86
    invoke-static {v0, v1, v2}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
