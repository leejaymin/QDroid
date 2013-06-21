.class public Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;
.super Landroid/os/AsyncTask;
.source "ViewBuyCheckJob.java"


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

.field private mBpUri:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPId:Ljava/lang/String;

.field private mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

.field product:Lcom/feelingk/lguiab/vo/ProductItemInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/IAPLibSetting;)V
    .locals 1
    .parameter "context"
    .parameter "appId"
    .parameter "pId"
    .parameter "bpUri"
    .parameter "bpData"
    .parameter "setting"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mAppId:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mPId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mBpUri:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mBpData:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->product:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    .line 48
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    .line 59
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mAppId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mPId:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mBpUri:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mBpData:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    .line 65
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;
    .locals 4
    .parameter "params"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mPId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/feelingk/lguiab/util/CreateXML;->buyCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, xml:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->BUY_CHECK:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-static {v1, v2, v0}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapProcess(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$IAP_URI;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v1

    .line 94
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

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->doInBackground([Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 70
    return-void
.end method

.method protected onPostExecute(Lcom/feelingk/lguiab/vo/MessageInfo;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 112
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 115
    if-eqz p1, :cond_5

    .line 117
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 120
    check-cast p1, Lcom/feelingk/lguiab/vo/BuyCheckInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;->getProdcutItem()Lcom/feelingk/lguiab/vo/ProductItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->product:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    .line 122
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mPId:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mBpUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mBpData:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->product:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/ProductItemInfo;)V

    .line 164
    :goto_0
    return-void

    .line 124
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0x2329

    if-eq v1, v2, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0x232a

    if-ne v1, v2, :cond_2

    .line 127
    :cond_1
    const-string v1, "ErrorDlg"

    invoke-static {v1}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "\uacb0\uc81c\uc548\ub0b4"

    .line 130
    const-string v3, "\ud655\uc778"

    const-string v4, "\ub124\ud2b8\uc6cc\ud06c \uc5d0\ub7ec\uc785\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc138\uc694"

    .line 129
    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 133
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 136
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 139
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 142
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 145
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[BuyCheck Info] Status is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 146
    const-string v1, "ErrorDlg"

    invoke-static {v1}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "\uacb0\uc81c\uc548\ub0b4"

    .line 148
    const-string v3, "\ud655\uc778"

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getResultCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/feelingk/lguiab/vo/MessageInfo;->getStatus()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto/16 :goto_0

    .line 161
    :cond_5
    const-string v1, "[BuyCheck Info] ProductItemInfo is null."

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    const-string v2, "\uc624\ub958"

    const-string v3, "\ud655\uc778"

    const-string v4, "BuyCheckXML \uc0dd\uc131 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/feelingk/lguiab/vo/MessageInfo;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->onPostExecute(Lcom/feelingk/lguiab/vo/MessageInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 80
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->mContext:Landroid/content/Context;

    const-string v1, "\uacb0\uc81c\uc548\ub0b4"

    .line 81
    const-string v2, "\uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824 \uc8fc\uc138\uc694"

    .line 80
    invoke-static {v0, v1, v2}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
