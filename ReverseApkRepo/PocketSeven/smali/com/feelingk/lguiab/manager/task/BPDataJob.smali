.class public Lcom/feelingk/lguiab/manager/task/BPDataJob;
.super Landroid/os/AsyncTask;
.source "BPDataJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mBpIP:Ljava/lang/String;

.field private mBpPort:I

.field private mContext:Landroid/content/Context;

.field private mMin:Ljava/lang/String;

.field private mPId:Ljava/lang/String;

.field private mSendData:Ljava/lang/String;

.field private mTelecom:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "sendData"
    .parameter "context"
    .parameter "appId"
    .parameter "pId"
    .parameter "min"
    .parameter "bpIp"
    .parameter "bpPort"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mContext:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mAppId:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mPId:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->LG_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mTelecom:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    .line 38
    iput-object v1, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mBpIP:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mBpPort:I

    .line 61
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mSendData:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mContext:Landroid/content/Context;

    .line 63
    iput-object p3, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mAppId:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mPId:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mMin:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mBpIP:Ljava/lang/String;

    .line 67
    iput p7, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mBpPort:I

    .line 68
    return-void
.end method

.method private paramChking(I)Z
    .locals 1
    .parameter "param"

    .prologue
    .line 120
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private paramChking(Ljava/lang/String;)Z
    .locals 1
    .parameter "param"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private paramChking(Ljava/lang/String;I)Z
    .locals 1
    .parameter "param"
    .parameter "len"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/BPDataJob;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "params"

    .prologue
    const/16 v2, 0xc

    .line 90
    iget-object v3, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mAppId:Ljava/lang/String;

    .line 92
    .local v3, mcid:Ljava/lang/String;
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmMDN()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, min:Ljava/lang/String;
    iget-object v5, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mBpIP:Ljava/lang/String;

    .line 94
    .local v5, bpServerIP:Ljava/lang/String;
    iget v6, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mBpPort:I

    .line 95
    .local v6, bpServerPort:I
    iget-object v7, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mPId:Ljava/lang/String;

    .line 97
    .local v7, productID:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAppId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMin:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bpServerIP:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bpServerPort:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "productID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/feelingk/lguiab/manager/task/BPDataJob;->paramChking(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v1, "ApplicationID error chk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mMin:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/feelingk/lguiab/manager/task/BPDataJob;->paramChking(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string v1, "Telephone Number error chk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mBpIP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/feelingk/lguiab/manager/task/BPDataJob;->paramChking(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    const-string v1, "Application Server IP error chk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    iget v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mBpPort:I

    invoke-direct {p0, v0}, Lcom/feelingk/lguiab/manager/task/BPDataJob;->paramChking(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/String;

    const-string v1, "Application Server Port error chk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mPId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/feelingk/lguiab/manager/task/BPDataJob;->paramChking(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    const-string v1, "Product ID error chk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mSendData:Ljava/lang/String;

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mTelecom:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-static/range {v0 .. v7}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapProcessBPServer(Ljava/lang/String;Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/feelingk/lguiab/util/MsgConfirm;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 73
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 149
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string v2, "[Error] BPDataJob is null."

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 156
    :cond_0
    instance-of v2, p1, Lcom/feelingk/lguiab/util/MsgConfirm;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 157
    check-cast v0, Lcom/feelingk/lguiab/util/MsgConfirm;

    .line 160
    .local v0, result:Lcom/feelingk/lguiab/util/MsgConfirm;
    invoke-virtual {v0}, Lcom/feelingk/lguiab/util/MsgConfirm;->getUserMessage()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "BPData \uc694\uccad"

    .line 166
    const-string v4, "\ud655\uc778"

    .line 165
    invoke-static {v2, v3, v4, v1}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v0           #result:Lcom/feelingk/lguiab/util/MsgConfirm;
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    const-string v2, "[Error] BPDataJob error"

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 83
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/task/BPDataJob;->mContext:Landroid/content/Context;

    const-string v1, "BPData \uc694\uccad"

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
    .line 77
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/feelingk/lguiab/manager/task/BPDataJob;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
