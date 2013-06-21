.class public Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;
.super Landroid/os/AsyncTask;
.source "ReqFinalVerPurchaseJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/feelingk/lguiab/vo/FeeChargingInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private aID:Ljava/lang/String;

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

    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mAppId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mPId:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpIP:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpUri:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->aID:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpData:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mClientListenerKey:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mAppId:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mPId:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpIP:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpPort:I

    .line 63
    iput-object p6, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpUri:Ljava/lang/String;

    .line 64
    iput-object p7, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpData:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mClientListenerKey:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/FeeChargingInfo;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 89
    const/4 v7, 0x0

    .line 92
    .local v7, checkListener:Z
    :try_start_0
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonItemQueryComplete()Z

    move-result v7

    .line 93
    if-eqz v7, :cond_1

    .line 94
    const-string v0, "lguIABonItemQueryComplete is true"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mPId:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mAppId:Ljava/lang/String;

    .line 98
    iget-object v3, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpIP:Ljava/lang/String;

    iget v4, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpPort:I

    iget-object v5, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpUri:Ljava/lang/String;

    iget-object v6, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mBpData:Ljava/lang/String;

    .line 97
    invoke-static/range {v0 .. v6}, Lcom/feelingk/lguiab/util/CreateXML;->feeCharging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, xml:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 102
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->FEE_CHARGING:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-static {v0, v1, v9}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapProcess(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$IAP_URI;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v0

    check-cast v0, Lcom/feelingk/lguiab/vo/FeeChargingInfo;

    .line 115
    .end local v9           #xml:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v9       #xml:Ljava/lang/String;
    :cond_0
    move-object v0, v10

    .line 105
    goto :goto_0

    .line 108
    .end local v9           #xml:Ljava/lang/String;
    :cond_1
    const-string v0, "lguIABonItemQueryComplete is false"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v10

    .line 115
    goto :goto_0

    .line 111
    :catch_0
    move-exception v8

    .line 112
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

    .line 113
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

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/FeeChargingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 71
    return-void
.end method

.method protected onPostExecute(Lcom/feelingk/lguiab/vo/FeeChargingInfo;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 141
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 143
    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonItemPurchaseComplete()V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aID\ub294 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getProdcutItem()Lcom/feelingk/lguiab/vo/ProductItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getaID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getProdcutItem()Lcom/feelingk/lguiab/vo/ProductItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getaID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->aID:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->aID:Ljava/lang/String;

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->aid_complete:Ljava/lang/String;

    .line 160
    const-string v0, "FinalVersionDownDlg"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    const-string v1, "\uc815\uc2dd\ud310 \uad6c\ub9e4 \uc644\ub8cc"

    .line 164
    const-string v2, "\uc815\uc2dd\ud310 \uc804\ud658 \uc0c1\ud488\uc744 \ub2e4\uc6b4\ub85c\ub4dc \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    const-string v3, "\ub2e4\uc6b4"

    const-string v4, "\uc544\ub2c8\uc624"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mClientListenerKey:Ljava/lang/String;

    .line 163
    invoke-static/range {v0 .. v6}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getStatus()I

    move-result v0

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getStatus()I

    move-result v0

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_2

    .line 172
    :cond_1
    const-string v0, "ErrorDlg"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\uc815\uc2dd\ud310 \uacb0\uc7ac \uc694\uccad"

    .line 175
    const-string v2, "\ud655\uc778"

    const-string v3, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec\uc785\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc138\uc694"

    .line 174
    invoke-static {v0, v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 182
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ReqFinalVerPurchaseJob] Status is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 184
    const-string v0, "ErrorDlg"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\uc815\uc2dd\ud310 \uacb0\uc7ac \uc694\uccad"

    .line 186
    const-string v2, "\ud655\uc778"

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {v0, v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getResultCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->getStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 198
    :cond_3
    const-string v0, "[CP] Reject a purchase request."

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    const-string v1, "\uc624\ub958"

    const-string v2, "\ud655\uc778"

    const-string v3, "FREECHARGINGXML \uc0dd\uc131 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-static {v0, v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/feelingk/lguiab/vo/FeeChargingInfo;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->onPostExecute(Lcom/feelingk/lguiab/vo/FeeChargingInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 82
    const-string v0, "ProgressDlg"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->mContext:Landroid/content/Context;

    const-string v1, "\uacb0\uc81c\uc548\ub0b4"

    .line 84
    const-string v2, "\uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824 \uc8fc\uc138\uc694"

    .line 83
    invoke-static {v0, v1, v2}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
