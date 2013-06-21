.class public Lcom/feelingk/iap/net/IAPBase;
.super Lcom/feelingk/iap/net/IAPNet;
.source "IAPBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/net/IAPBase$CallItemAuth;,
        Lcom/feelingk/iap/net/IAPBase$CallItemInfo;,
        Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;,
        Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;,
        Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;,
        Lcom/feelingk/iap/net/IAPBase$CallItemQuery;,
        Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;,
        Lcom/feelingk/iap/net/IAPBase$CallMembership;,
        Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;,
        Lcom/feelingk/iap/net/IAPBase$CallSendBPData;,
        Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;,
        Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;,
        Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;,
        Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;,
        Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;,
        Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;
    }
.end annotation


# static fields
.field private static MPTID:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "IAPBase"

.field private static mLimitExcessFlag:Z

.field private static mPBPInfo:Ljava/lang/String;

.field private static mPID:Ljava/lang/String;

.field private static mPName:Ljava/lang/String;


# instance fields
.field public APPLICATION_ID:Ljava/lang/String;

.field public BP_SERVER_IP:Ljava/lang/String;

.field public BP_SERVER_PORT:I

.field public MDN:Ljava/lang/String;

.field public errMsg:Ljava/lang/String;

.field private initCfm:Lcom/feelingk/iap/net/InitConfirm;

.field public isWifi:Z

.field private itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field private itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

.field private itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

.field private lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

.field public mContext:Landroid/content/Context;

.field private mEncJuminNumer:Ljava/lang/String;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mNetworkHandler:Landroid/os/Handler;

.field public mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field private mOTPAgree:Ljava/lang/String;

.field private msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

.field public subErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/feelingk/iap/net/IAPBase;->mLimitExcessFlag:Z

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/feelingk/iap/net/IAPBase;->mPBPInfo:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "handler"
    .parameter "setting"
    .parameter "mdn"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/feelingk/iap/net/IAPNet;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    .line 65
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 81
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    .line 83
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    .line 84
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    .line 85
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 86
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    .line 88
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MAIN:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 90
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mOTPAgree:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    .line 99
    iget-object v0, p3, Lcom/feelingk/iap/IAPLibSetting;->AppID:Ljava/lang/String;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 100
    iget-object v0, p3, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 101
    iget v0, p3, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 102
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 104
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 105
    return-void
.end method

.method private SendMessageToNetwork(ILjava/lang/Object;)V
    .locals 2
    .parameter "messageID"
    .parameter "obj"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, messageH:Landroid/os/Message;
    iget v1, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 140
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->mPID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->mPName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method static synthetic access$11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->MPTID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->mPID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->mPName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->mPBPInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/feelingk/iap/net/IAPBase;->mLimitExcessFlag:Z

    return v0
.end method

.method static synthetic access$16(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemWholeAuthConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-void
.end method

.method static synthetic access$17(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-object v0
.end method

.method static synthetic access$18(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemUseConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-void
.end method

.method static synthetic access$19(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->MPTID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20(Lcom/feelingk/iap/net/IAPBase;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mOTPAgree:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-void
.end method

.method static synthetic access$22(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->mPBPInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    return-void
.end method

.method static synthetic access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    return-object v0
.end method

.method static synthetic access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$8(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    sput-boolean p0, Lcom/feelingk/iap/net/IAPBase;->mLimitExcessFlag:Z

    return-void
.end method

.method static synthetic access$9(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemInfoConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapClose(Z)I

    .line 162
    return-void
.end method

.method private resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    .locals 5
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const-string v2, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ DEBUG ]  Network ErrorCode :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v2

    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 187
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 188
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v3

    const-string v4, "MS949"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    .line 189
    const-string v2, "flybbird"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network Message :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_ERROR:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 211
    :goto_1
    return v1

    .line 192
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetUserMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetUserMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetDumpMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetDumpMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 210
    :cond_3
    iput v1, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 211
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CalliapSendImeiAuthReq(ILjava/lang/String;)V
    .locals 2
    .parameter "telecom"
    .parameter "mdn"

    .prologue
    .line 544
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;-><init>(Lcom/feelingk/iap/net/IAPBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 546
    return-void
.end method

.method public ItemAuth(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "telecom"
    .parameter "mdn"
    .parameter "pID"

    .prologue
    .line 1095
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1096
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;

    invoke-direct {v1, p0, p1, p3}, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1097
    return-void
.end method

.method public ItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pTelecom"
    .parameter "pMdn"
    .parameter "PID"
    .parameter "PNAME"
    .parameter "pTID"
    .parameter "pBPInfo"

    .prologue
    .line 227
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 228
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 229
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "PID"
    .parameter "PNAME"
    .parameter "TCASH"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 796
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "PID"
    .parameter "PNAME"
    .parameter "TID"
    .parameter "BPINFO"
    .parameter "TCASH"

    .prologue
    .line 799
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 800
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9
    .parameter "PID"
    .parameter "PNAME"
    .parameter "TID"
    .parameter "BPINFO"
    .parameter "TCASH"
    .parameter "useBPProtocol"

    .prologue
    .line 804
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 805
    return-void
.end method

.method public ItemPurchaseDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 11
    .parameter "mdn"
    .parameter "pID"
    .parameter "pName"
    .parameter "pCarrier"
    .parameter "TID"
    .parameter "BPInfo"
    .parameter "bTCash"
    .parameter "encJumin"

    .prologue
    .line 874
    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 875
    return-void
.end method

.method public ItemQuery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "telecom"
    .parameter "mdn"
    .parameter "PID"
    .parameter "PName"
    .parameter "PTID"
    .parameter "pBPInfo"

    .prologue
    .line 695
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 696
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 697
    return-void
.end method

.method public ItemQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "PID"
    .parameter "PName"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;

    invoke-direct {v1, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 693
    return-void
.end method

.method public ItemUse(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "telecom"
    .parameter "mdn"
    .parameter "PID"

    .prologue
    .line 1020
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1021
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;

    invoke-direct {v1, p0, p1, p3}, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1022
    return-void
.end method

.method public ItemWholeAuth(ILjava/lang/String;)V
    .locals 2
    .parameter "telecom"
    .parameter "mdn"

    .prologue
    .line 953
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;-><init>(Lcom/feelingk/iap/net/IAPBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 955
    return-void
.end method

.method public LGUSmsAuthNumberReq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "telecom"
    .parameter "mdn"
    .parameter "pID"
    .parameter "encJumin"

    .prologue
    .line 1639
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1640
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1641
    return-void
.end method

.method public LGUSmsAuthReq(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "telecom"
    .parameter "smsAuthKey"
    .parameter "OTPNumber"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1724
    return-void
.end method

.method public Membership(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "telecom"
    .parameter "pMdn"
    .parameter "PID"
    .parameter "PNAME"
    .parameter "pTID"
    .parameter "pBPInfo"

    .prologue
    .line 1270
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1271
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallMembership;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPBase$CallMembership;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1272
    return-void
.end method

.method public OTPAgreeCheck(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "telecom"
    .parameter "mdn"
    .parameter "agree"

    .prologue
    .line 1376
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1377
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase;->mOTPAgree:Ljava/lang/String;

    .line 1379
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;-><init>(Lcom/feelingk/iap/net/IAPBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1380
    return-void
.end method

.method public PurchaseDismiss(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "telecom"
    .parameter "mdn"
    .parameter "PID"

    .prologue
    .line 1445
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1446
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;

    invoke-direct {v1, p0, p1, p3}, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1447
    return-void
.end method

.method public Reset()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 151
    :cond_0
    return-void
.end method

.method public StopService()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 157
    :cond_0
    return-void
.end method

.method connect(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "pTelecom"
    .parameter "pID"
    .parameter "pTID"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 1523
    .local v11, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 1524
    .local v12, mobile:Landroid/net/NetworkInfo;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 1527
    .local v13, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    .line 1545
    :goto_0
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IAPBase) IAPNet Wifi = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  /  Connect= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->isConnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->isConnect()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1548
    const-string v0, "IAPBase"

    const-string v1, "G/W Connect and Success !!! "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    if-eqz v0, :cond_3

    .line 1551
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 1552
    new-instance v0, Lcom/feelingk/iap/net/ServerInfo;

    const-string v1, "iap.tstore.co.kr"

    const/16 v2, 0x1d56

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 1554
    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1555
    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 1558
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 1559
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    move v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 1552
    invoke-static/range {v0 .. v10}, Lcom/feelingk/iap/net/IAPNet;->iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    .line 1579
    :goto_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    if-nez v0, :cond_5

    .line 1580
    const/4 v0, 0x0

    .line 1631
    :goto_2
    return v0

    .line 1530
    :cond_0
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    goto :goto_0

    .line 1534
    :cond_1
    if-nez p2, :cond_2

    .line 1535
    const/4 v0, -0x1

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1536
    const/16 v0, 0x7d0

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c\uac00 \uc5f0\uacb0\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1541
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1539
    :cond_2
    const/16 v0, 0x7d7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_3

    .line 1562
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 1563
    new-instance v0, Lcom/feelingk/iap/net/ServerInfo;

    const-string v1, "iap.tstore.co.kr"

    const/16 v2, 0x1cf2

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 1565
    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1566
    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 1569
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 1570
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    move v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 1563
    invoke-static/range {v0 .. v10}, Lcom/feelingk/iap/net/IAPNet;->iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    goto :goto_1

    .line 1575
    :cond_4
    const-string v0, "IAPBase"

    const-string v1, "G/W Re Connect + Auth"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    move v0, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPNet;->iapReAuth(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    goto :goto_1

    .line 1582
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {p0, v0}, Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1584
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_6

    .line 1585
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_6

    .line 1586
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_7

    .line 1589
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1590
    const/16 v0, 0x7d8

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1609
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1592
    :cond_7
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1596
    sget-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_SKT_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1597
    const/16 v0, 0x461

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1599
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1602
    :cond_8
    if-nez p2, :cond_9

    .line 1603
    const/16 v0, 0x7d0

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_4

    .line 1606
    :cond_9
    const/16 v0, 0x7d7

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_4

    .line 1631
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method public getInitConfirmMessage()Lcom/feelingk/iap/net/InitConfirm;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    return-object v0
.end method

.method public getItemInfoConfirmMessage()Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method public getItemUseConfirmMessage()Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-object v0
.end method

.method public getItemWholeAuthConfirmMessage()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-object v0
.end method

.method public getLGUSmsAuthNumberConfirmMessage()Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-object v0
.end method

.method public reItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pTelecom"
    .parameter "pMdn"
    .parameter "PID"
    .parameter "PNAME"
    .parameter "pTID"
    .parameter "pBPInfo"

    .prologue
    .line 426
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 427
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 428
    return-void
.end method

.method public sendBPData([BILjava/lang/String;)[B
    .locals 8
    .parameter "data"
    .parameter "telecom"
    .parameter "mdn"

    .prologue
    const/16 v7, 0x7d5

    const/4 v4, 0x0

    .line 1152
    move-object v2, v4

    check-cast v2, [B

    .line 1153
    .local v2, returnData:[B
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1155
    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;

    invoke-direct {v6, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;-><init>(Lcom/feelingk/iap/net/IAPBase;[BI)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 1158
    .local v3, service:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<[B>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1167
    :goto_0
    return-object v2

    .line 1159
    :catch_0
    move-exception v1

    .line 1160
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-direct {p0, v7, v4}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1161
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1162
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1163
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    invoke-direct {p0, v7, v4}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1164
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBaseEncodeJuminNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "jumin"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 129
    return-void
.end method
