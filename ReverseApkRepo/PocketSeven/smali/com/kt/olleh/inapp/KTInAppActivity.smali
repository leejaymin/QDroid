.class public abstract Lcom/kt/olleh/inapp/KTInAppActivity;
.super Landroid/app/Activity;
.source "KTInAppActivity.java"

# interfaces
.implements Lcom/kt/olleh/inapp/ILibMode;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mAuthen:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInApp:Lcom/kt/olleh/inapp/InApp;

.field private mLibMode:I

.field private mListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field private mPin:Ljava/lang/String;

.field private mPurchase:Lcom/kt/olleh/inapp/Purchase;

.field mService:Lcom/kt/olleh/inapp/IRemoteInapService;

.field newConfig:I

.field serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 45
    const-string v0, "KTInAppActivity"

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mContext:Landroid/content/Context;

    .line 1187
    new-instance v0, Lcom/kt/olleh/inapp/KTInAppActivity$1;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/KTInAppActivity$1;-><init>(Lcom/kt/olleh/inapp/KTInAppActivity;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/KTInAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onServiceStop()V

    return-void
.end method

.method private getUserInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, userInfo:Ljava/lang/String;
    sget-object v3, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 201
    iget v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    packed-switch v3, :pswitch_data_0

    .line 217
    :cond_0
    :goto_0
    sget-object v3, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 219
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KTInAppActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UserInfo.information = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_1
    :goto_1
    sget-object v2, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    .line 227
    return-object v2

    .line 204
    :pswitch_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/kt/olleh/inapp/KTInAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 205
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, phoneNo:Ljava/lang/String;
    sput-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    goto :goto_0

    .line 209
    .end local v0           #phoneNo:Ljava/lang/String;
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_1
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KTInAppActivity"

    const-string v4, "ILibMode.mode_SoIP number not exist"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_2
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KTInAppActivity"

    const-string v4, "ILibMode.mode_KPAD not exist"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KTInAppActivity"

    const-string v4, "UserInfo.information = null"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "recipients"

    .prologue
    .line 285
    return-object p1
.end method

.method private getUserInfo2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 238
    const-string v0, ""

    .line 241
    .local v0, phoneNo:Ljava/lang/String;
    iget v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    packed-switch v2, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/kt/olleh/inapp/KTInAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 245
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 246
    sput-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    .line 247
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    goto :goto_0

    .line 251
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_1
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KTInAppActivity"

    const-string v3, "ILibMode.mode_SoIP number not exist"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_2
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KTInAppActivity"

    const-string v3, "ILibMode.mode_KPAD not exist"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notExistUserInfo()V
    .locals 3

    .prologue
    .line 332
    iget v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    const-string v1, "CRAB2001"

    const-string v2, "ID or PhoneNumber \uc624\ub958"

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onServiceStart()V
    .locals 3

    .prologue
    .line 1175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.olleh.inapp.IRemoteInapService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kt/olleh/inapp/KTInAppActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1177
    return-void
.end method

.method private onServiceStop()V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/KTInAppActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1185
    return-void
.end method


# virtual methods
.method public CheckPin()V
    .locals 4

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 1114
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1116
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1129
    :goto_0
    return-void

    .line 1121
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1124
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->CheckPin(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public SetPin(Ljava/lang/String;)V
    .locals 4
    .parameter "pin"

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 1141
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    :goto_0
    return-void

    .line 1148
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1151
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1155
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/kt/olleh/inapp/InApp;->SetPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public checkUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "user_id"
    .parameter "pwd"
    .parameter "id_type"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/kt/olleh/inapp/InApp;->checkUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public check_balance()V
    .locals 4

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 1056
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1058
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1071
    :goto_0
    return-void

    .line 1063
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1066
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1070
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->check_balance(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public downSucProc(Ljava/lang/String;)V
    .locals 2
    .parameter "cert_key"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, v1}, Lcom/kt/olleh/inapp/InApp;->downSucProc(Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIAllList(Ljava/lang/String;)V
    .locals 4
    .parameter "app_id"

    .prologue
    .line 444
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 446
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIAllList(Ljava/lang/String;II)V
    .locals 7
    .parameter "app_id"
    .parameter "page_size"
    .parameter "page"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, userInfo:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 421
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 425
    :cond_2
    if-lez p2, :cond_3

    if-gtz p3, :cond_4

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIDownloadableList(Ljava/lang/String;)V
    .locals 4
    .parameter "app_id"

    .prologue
    .line 596
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 613
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 608
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 612
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIDownloadableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIGiftList(Ljava/lang/String;)V
    .locals 4
    .parameter "app_id"

    .prologue
    .line 511
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 513
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 523
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIGiftList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "app_id"
    .parameter "recipients"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, userInfo:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 487
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 492
    :cond_2
    if-nez p2, :cond_3

    .line 494
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "app_id"
    .parameter "di_id"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 580
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->getDIInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIPurchaseList(Ljava/lang/String;)V
    .locals 4
    .parameter "app_id"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 381
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 391
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIPurchaseList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIReceiveList(Ljava/lang/String;)V
    .locals 4
    .parameter "app_id"

    .prologue
    .line 539
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 541
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 551
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIReceiveList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIUsableList(Ljava/lang/String;)V
    .locals 4
    .parameter "app_id"

    .prologue
    .line 350
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 352
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 363
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIUsableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDownAuth(Ljava/lang/String;)V
    .locals 2
    .parameter "cert_key"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 904
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, v1}, Lcom/kt/olleh/inapp/InApp;->getDownAuth(Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDownUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "app_id"
    .parameter "di_id"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    :goto_0
    return-void

    .line 872
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 875
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 879
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->getDownUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getItemStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "app_id"
    .parameter "di_id"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 641
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 636
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->getItemStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getNewConfig()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->newConfig:I

    return v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "V1.6.0"

    return-object v0
.end method

.method public init(Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 134
    const-string v0, "01"

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 137
    return-void
.end method

.method public initListener()Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    if-nez v0, :cond_0

    .line 297
    const-string v0, "KTInApp"

    const-string v1, "OnInAppListener \ubbf8\ub4f1\ub85d \uc624\ub958 \ubc1c\uc0dd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->setConfig(I)V

    .line 67
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/KTInAppActivity;->setNewConfig(I)V

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/kt/olleh/inapp/Config/Config;->Density:F

    .line 81
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Lcom/kt/olleh/inapp/Purchase;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/Purchase;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 84
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->setData(Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v1, p0}, Lcom/kt/olleh/inapp/Purchase;->setContext(Landroid/content/Context;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->setConfig(I)V

    .line 91
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/KTInAppActivity;->setNewConfig(I)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 94
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->setConfig(I)V

    .line 96
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/KTInAppActivity;->setNewConfig(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->onDestroy()V

    .line 117
    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-eqz v0, :cond_1

    .line 122
    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 125
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 126
    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "applicationID"
    .parameter "digitalID"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->onDestroy()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v0, Lcom/kt/olleh/inapp/Purchase;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/Purchase;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 324
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/Purchase;->onCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;I)V

    goto :goto_0
.end method

.method public requestCancel()V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/InApp;->requestCancel()V

    .line 1164
    return-void
.end method

.method public requestCheckCoin()V
    .locals 4

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 1026
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1041
    :goto_0
    return-void

    .line 1033
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1036
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1040
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->requestCheckCoin(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestCheckShowId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "show_id"
    .parameter "pwd"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1002
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1010
    :goto_0
    return-void

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/kt/olleh/inapp/InApp;->requestCheckShowId(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIApproveDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "app_id"
    .parameter "di_id"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 940
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 955
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 950
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 954
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->requestDIApproveDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIApproveUse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "app_id"
    .parameter "di_id"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    :goto_0
    return-void

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 846
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->requestDIApproveUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "app_id"
    .parameter "di_id"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "pin"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 666
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v8, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "app_id"
    .parameter "di_id"
    .parameter "tr_id"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 729
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "app_id"
    .parameter "di_id"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "recipients"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    :goto_0
    return-void

    .line 783
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 786
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->requestDIGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "app_id"
    .parameter "di_id"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "pin"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    :goto_0
    return-void

    .line 696
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 699
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v8, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIReGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "app_id"
    .parameter "di_id"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "recipients"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    :goto_0
    return-void

    .line 814
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 817
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->requestDIReGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIesBuy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "iid"
    .parameter "appid"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 747
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 760
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo2()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, userInfo:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 756
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 759
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/kt/olleh/inapp/InApp;->requestDIesBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIgetFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "file_name"
    .parameter "mime_type"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 973
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 986
    :goto_0
    return-void

    .line 978
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 979
    .local v3, userInfo:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 981
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->requestDIgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public setNewConfig(I)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 60
    iput p1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->newConfig:I

    .line 61
    return-void
.end method

.method public settingSoIPNumber()V
    .locals 0

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onServiceStart()V

    .line 1169
    return-void
.end method
