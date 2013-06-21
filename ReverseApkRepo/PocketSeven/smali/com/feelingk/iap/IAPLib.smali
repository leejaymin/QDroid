.class public final Lcom/feelingk/iap/IAPLib;
.super Ljava/lang/Object;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/IAPLib$OnClientListener;
    }
.end annotation


# static fields
.field public static final HND_ERR_AUTH:I = 0x7d0

.field public static final HND_ERR_COMMONINFOREQ:I = 0x7e1

.field public static final HND_ERR_DATA:I = 0x7d5

.field public static final HND_ERR_IMEI_AUTH:I = 0x7df

.field public static final HND_ERR_IMEI_AUTH_REQ:I = 0x7e0

.field public static final HND_ERR_INIT:I = 0x7cf

.field public static final HND_ERR_ITEMAUTH:I = 0x7d7

.field public static final HND_ERR_ITEMINFO:I = 0x7d1

.field public static final HND_ERR_ITEMPURCHASE:I = 0x7d3

.field public static final HND_ERR_ITEMQUERY:I = 0x7d2

.field public static final HND_ERR_LGU_SMSAUTH_REQ:I = 0x7de

.field public static final HND_ERR_LGU_SMSAUTH_UMBER_REQ:I = 0x7dd

.field public static final HND_ERR_MEMBERSHIP:I = 0x7db

.field public static final HND_ERR_NORMALTIMEOUT:I = 0x7d8

.field public static final HND_ERR_PAYMENTTIMEOUT:I = 0x7d9

.field public static final HND_ERR_PURCHASEDISSMISS:I = 0x7dc

.field public static final HND_ERR_SERVERTIMEOUT:I = 0x7da

.field public static final HND_ERR_USEQUERY:I = 0x7d6

.field public static final HND_ERR_WHOLEQUERY:I = 0x7d4

.field static final TAG:Ljava/lang/String; = "IAPLib"

.field protected static mBPInfo:Ljava/lang/String;

.field protected static mBase:Lcom/feelingk/iap/net/IAPBase;

.field protected static mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

.field private static mContext:Landroid/content/Context;

.field private static mDialogType:I

.field protected static mEncJuminNumber:Ljava/lang/String;

.field private static mHndUI:Landroid/os/Handler;

.field public static mIsOTPAuth:Z

.field public static mIsOTPSuccess:Z

.field protected static mKorTelecom:I

.field public static mLimitExcess:Z

.field protected static mMdn:Ljava/lang/String;

.field protected static final mNetworkMessageHandler:Landroid/os/Handler;

.field private static mOTPAgreeFlag:Z

.field public static mOTPNumber:Ljava/lang/String;

.field protected static mProductID:Ljava/lang/String;

.field protected static mProductName:Ljava/lang/String;

.field private static mSmsAuthKey:Ljava/lang/String;

.field private static mSmsAuthNumberKey:Ljava/lang/String;

.field protected static mTID:Ljava/lang/String;

.field protected static mTStorePwdCheck:Z

.field protected static mUseBPProtol:Ljava/lang/Boolean;

.field protected static mUseTCash:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    .line 55
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    .line 57
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    .line 58
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 60
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    .line 61
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    .line 62
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    .line 63
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    .line 66
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    .line 69
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 70
    sput v2, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 71
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    .line 72
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mTStorePwdCheck:Z

    .line 74
    const/16 v0, 0x64

    sput v0, Lcom/feelingk/iap/IAPLib;->mDialogType:I

    .line 75
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mOTPAgreeFlag:Z

    .line 76
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mIsOTPAuth:Z

    .line 77
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mIsOTPSuccess:Z

    .line 78
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mLimitExcess:Z

    .line 79
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mOTPNumber:Ljava/lang/String;

    .line 80
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mSmsAuthNumberKey:Ljava/lang/String;

    .line 81
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mSmsAuthKey:Ljava/lang/String;

    .line 420
    new-instance v0, Lcom/feelingk/iap/IAPLib$1;

    invoke-direct {v0}, Lcom/feelingk/iap/IAPLib$1;-><init>()V

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mNetworkMessageHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static SendImeiAuthReq()V
    .locals 3

    .prologue
    .line 293
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 294
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 295
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 296
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->CalliapSendImeiAuthReq(ILjava/lang/String;)V

    .line 297
    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mSmsAuthKey:Ljava/lang/String;

    return-void
.end method

.method protected static close()V
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->StopService()V

    .line 407
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->close()V

    .line 408
    return-void
.end method

.method protected static getDialogType()I
    .locals 1

    .prologue
    .line 365
    sget v0, Lcom/feelingk/iap/IAPLib;->mDialogType:I

    return v0
.end method

.method public static getEncJuminNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsOTPAuth()Z
    .locals 1

    .prologue
    .line 320
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mIsOTPAuth:Z

    return v0
.end method

.method public static getLimitExcess()Z
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mLimitExcess:Z

    return v0
.end method

.method protected static getNetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mNetworkMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getOTPAgree()Z
    .locals 1

    .prologue
    .line 310
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mOTPAgreeFlag:Z

    return v0
.end method

.method public static getOTPNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mOTPNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getOTPPurchaseSuccess()Z
    .locals 1

    .prologue
    .line 330
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mIsOTPSuccess:Z

    return v0
.end method

.method public static getSmsAuthKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mSmsAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsAuthNumberKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mSmsAuthNumberKey:Ljava/lang/String;

    return-object v0
.end method

.method protected static getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    return-object v0
.end method

.method protected static init(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;I)V
    .locals 3
    .parameter "ctx"
    .parameter "hnd"
    .parameter "setting"
    .parameter "mdn"
    .parameter "telecomCarrier"

    .prologue
    .line 85
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    .line 86
    sput-object p1, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    .line 87
    sput-object p3, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 88
    sput p4, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    .line 91
    iget-object v0, p2, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 92
    new-instance v0, Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mNetworkMessageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/feelingk/iap/net/IAPBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;)V

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    .line 94
    return-void
.end method

.method protected static resendItemInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pID"
    .parameter "pName"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, v0, v0}, Lcom/feelingk/iap/IAPLib;->resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method protected static resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pID"
    .parameter "pName"
    .parameter "pTid"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/feelingk/iap/IAPLib;->resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method protected static resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pID"
    .parameter "pName"
    .parameter "pTid"
    .parameter "pBPInfo"

    .prologue
    .line 138
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    .line 139
    sput-object p1, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    .line 140
    sput-object p2, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    .line 141
    sput-object p3, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 146
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 147
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->reItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    sput-boolean v0, Lcom/feelingk/iap/IAPLib;->mLimitExcess:Z

    .line 152
    return-void
.end method

.method protected static sendBPData([B)[B
    .locals 3
    .parameter "data"

    .prologue
    .line 226
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 228
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 229
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->sendBPData([BILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected static sendDataMemebership()V
    .locals 7

    .prologue
    .line 239
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 241
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 242
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 244
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->Membership(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected static sendItemAuth(Ljava/lang/String;)V
    .locals 3
    .parameter "pID"

    .prologue
    .line 198
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 200
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 201
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->ItemAuth(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected static sendItemInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pID"
    .parameter "pName"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {p0, p1, v0, v0}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method protected static sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pID"
    .parameter "pName"
    .parameter "pTid"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected static sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pID"
    .parameter "pName"
    .parameter "pTid"
    .parameter "pBPInfo"

    .prologue
    .line 110
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    .line 111
    sput-object p1, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    .line 112
    sput-object p2, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    .line 113
    sput-object p3, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 118
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 119
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->ItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method protected static sendItemPurchse(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "bTCash"

    .prologue
    .line 171
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 172
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 173
    return-void
.end method

.method protected static sendItemPurchseByDanal(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 9
    .parameter "mdn"
    .parameter "carrier"
    .parameter "bTCash"
    .parameter "jumin"

    .prologue
    .line 177
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 178
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/feelingk/iap/net/IAPBase;->ItemPurchaseDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method protected static sendItemQuery()V
    .locals 7

    .prologue
    .line 158
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 160
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 161
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->ItemQuery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected static sendItemUse(Ljava/lang/String;)V
    .locals 3
    .parameter "pID"

    .prologue
    .line 211
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 213
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 214
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 216
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->ItemUse(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method protected static sendItemWholeAuth()V
    .locals 3

    .prologue
    .line 185
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 187
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 188
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 190
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->ItemWholeAuth(ILjava/lang/String;)V

    .line 191
    return-void
.end method

.method protected static sendLguSmsAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "pID"
    .parameter "smsAuthNumberKey"

    .prologue
    .line 284
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 286
    sput-object p1, Lcom/feelingk/iap/IAPLib;->mSmsAuthNumberKey:Ljava/lang/String;

    .line 287
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 288
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mOTPNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/feelingk/iap/net/IAPBase;->LGUSmsAuthReq(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method protected static sendLguSmsAuthNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "pID"

    .prologue
    .line 275
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 277
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 278
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 280
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/feelingk/iap/net/IAPBase;->LGUSmsAuthNumberReq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected static sendOTPAgreeCheck(Ljava/lang/String;)V
    .locals 3
    .parameter "agree"

    .prologue
    .line 265
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 267
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 268
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->OTPAgreeCheck(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method protected static sendPurchaseDismiss(Ljava/lang/String;)V
    .locals 3
    .parameter "pID"

    .prologue
    .line 252
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 254
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 255
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 257
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->PurchaseDismiss(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method protected static setDialogType(I)V
    .locals 0
    .parameter "mDialogType"

    .prologue
    .line 373
    sput p0, Lcom/feelingk/iap/IAPLib;->mDialogType:I

    .line 374
    return-void
.end method

.method public static setIsOTPAuth(Z)V
    .locals 0
    .parameter "OTPAuth"

    .prologue
    .line 325
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mIsOTPAuth:Z

    .line 326
    return-void
.end method

.method public static setLimitExcess(Z)V
    .locals 0
    .parameter "limitExcess"

    .prologue
    .line 353
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mLimitExcess:Z

    .line 354
    return-void
.end method

.method public static setOTPAgree(Z)V
    .locals 0
    .parameter "OTPAgree"

    .prologue
    .line 315
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mOTPAgreeFlag:Z

    .line 316
    return-void
.end method

.method public static setOTPNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "otpNum"

    .prologue
    .line 305
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mOTPNumber:Ljava/lang/String;

    .line 306
    invoke-static {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->setOTPNumber(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public static setOTPPurchaseSuccess(Z)V
    .locals 0
    .parameter "purchaseSuccess"

    .prologue
    .line 335
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mIsOTPSuccess:Z

    .line 336
    return-void
.end method

.method public static setSmsAuthKey(Ljava/lang/String;)V
    .locals 0
    .parameter "smsAuthKey"

    .prologue
    .line 349
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mSmsAuthKey:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public static setSmsAuthNumberKey(Ljava/lang/String;)V
    .locals 0
    .parameter "smsAuthNumberKey"

    .prologue
    .line 342
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mSmsAuthNumberKey:Ljava/lang/String;

    .line 343
    return-void
.end method

.method protected static setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 399
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    .line 400
    return-void
.end method

.method public static updateEncJuminNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 415
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    .line 416
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0, p0}, Lcom/feelingk/iap/net/IAPBase;->setBaseEncodeJuminNumber(Ljava/lang/String;)V

    .line 417
    return-void
.end method
