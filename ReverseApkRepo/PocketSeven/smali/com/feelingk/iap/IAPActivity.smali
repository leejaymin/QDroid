.class public Lcom/feelingk/iap/IAPActivity;
.super Landroid/app/Activity;
.source "IAPActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "IAPActivity"

.field private static decryptPwd:Ljava/lang/String;

.field private static dirPath:Ljava/lang/String;

.field private static encryptPwd:Ljava/lang/String;

.field public static finalVerFlag:Z

.field private static mCurTelecom:I

.field private static mLGUSmsAuthNumberKey:Ljava/lang/String;

.field private static m_strLogFileFolderPath:Ljava/lang/String;

.field private static m_strLogFileName:Ljava/lang/String;

.field public static purchaseDismissFlag:Z


# instance fields
.field private USIM_Check:Ljava/lang/String;

.field private iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field public juminFlag:Z

.field private lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

.field private mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

.field private mData:[B

.field private mDlgType:Ljava/lang/String;

.field private mEncName:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private final mGUIMessageHandler:Landroid/os/Handler;

.field private mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

.field private mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

.field private mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field private mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

.field private mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

.field private mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

.field private mMsgItemInfo:Ljava/lang/String;

.field private mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

.field private mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

.field private mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

.field private mPurchaseBPInfo:Ljava/lang/String;

.field private mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

.field private mPurchaseID:Ljava/lang/String;

.field private mPurchaseItemWorkFlow:I

.field private mPurchaseName:Ljava/lang/String;

.field private mRotaion:I

.field private mSetBPProtocol:Ljava/lang/Boolean;

.field private mSetTmpBPProtocol:Ljava/lang/Boolean;

.field private mSetting:Lcom/feelingk/iap/IAPLibSetting;

.field private mSmsAuthCheckTime:Ljava/lang/String;

.field private mTabDevice:Z

.field private mUseTCash:Z

.field public mUsimCheckFlag:Z

.field private mUsimPurchaseItemWorkFlow:I

.field private mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

.field private mYesNoMessage:Ljava/lang/String;

.field private m_Tid:Ljava/lang/String;

.field private m_phoneUSIMState:I

.field private m_telephonyManager:Landroid/telephony/TelephonyManager;

.field public onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

.field onConfirmInfoListener:Landroid/view/View$OnClickListener;

.field onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

.field public onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

.field public onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

.field onInfoCancelListener:Landroid/view/View$OnClickListener;

.field onJAutoPurchaseFormInfoListener:Landroid/view/View$OnClickListener;

.field onJoinInfoListener:Landroid/view/View$OnClickListener;

.field public onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

.field public onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

.field onLGUSMSAuthInfoListener:Landroid/view/View$OnClickListener;

.field onLGUSMSAuthListener:Landroid/view/View$OnClickListener;

.field public onLguSmsCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

.field onLimit_ExcessDlgListener:Landroid/view/View$OnClickListener;

.field public onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

.field onOtpInfoListener:Landroid/view/View$OnClickListener;

.field public onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

.field public onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

.field onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

.field public onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

.field onTstoreNotExist:Landroid/view/View$OnClickListener;

.field onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field public pwdAuthFlag:Z

.field private wfmanager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 126
    sput v0, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    .line 140
    sput-boolean v0, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    .line 141
    sput-boolean v0, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 145
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    .line 146
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;

    .line 148
    const-string v0, ""

    sput-object v0, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    .line 149
    const-string v0, "TstoreOTPLog.txt"

    sput-object v0, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    .line 150
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->dirPath:Ljava/lang/String;

    .line 151
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->mLGUSmsAuthNumberKey:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const-string v0, "USIM Null"

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 98
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->wfmanager:Landroid/net/wifi/WifiManager;

    .line 99
    const/16 v0, 0xa

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    .line 106
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    .line 107
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    .line 110
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 111
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 112
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 113
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 114
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 115
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 116
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 117
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    .line 121
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    .line 125
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    .line 129
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 130
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    .line 131
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    .line 133
    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 134
    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mData:[B

    .line 138
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->juminFlag:Z

    .line 142
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    .line 143
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 152
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    .line 354
    new-instance v0, Lcom/feelingk/iap/IAPActivity$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$1;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 637
    new-instance v0, Lcom/feelingk/iap/IAPActivity$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$2;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 714
    new-instance v0, Lcom/feelingk/iap/IAPActivity$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$3;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 756
    new-instance v0, Lcom/feelingk/iap/IAPActivity$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$4;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 769
    new-instance v0, Lcom/feelingk/iap/IAPActivity$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$5;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 795
    new-instance v0, Lcom/feelingk/iap/IAPActivity$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$6;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 835
    new-instance v0, Lcom/feelingk/iap/IAPActivity$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$7;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 886
    new-instance v0, Lcom/feelingk/iap/IAPActivity$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$8;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 924
    new-instance v0, Lcom/feelingk/iap/IAPActivity$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$9;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onLguSmsCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    .line 1020
    new-instance v0, Lcom/feelingk/iap/IAPActivity$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$10;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 1302
    new-instance v0, Lcom/feelingk/iap/IAPActivity$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$11;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    .line 1443
    new-instance v0, Lcom/feelingk/iap/IAPActivity$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$12;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

    .line 1463
    new-instance v0, Lcom/feelingk/iap/IAPActivity$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$13;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onInfoCancelListener:Landroid/view/View$OnClickListener;

    .line 1497
    new-instance v0, Lcom/feelingk/iap/IAPActivity$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$14;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 1519
    new-instance v0, Lcom/feelingk/iap/IAPActivity$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$15;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onLimit_ExcessDlgListener:Landroid/view/View$OnClickListener;

    .line 1533
    new-instance v0, Lcom/feelingk/iap/IAPActivity$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$16;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onLGUSMSAuthInfoListener:Landroid/view/View$OnClickListener;

    .line 1543
    new-instance v0, Lcom/feelingk/iap/IAPActivity$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$17;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onTstoreNotExist:Landroid/view/View$OnClickListener;

    .line 1553
    new-instance v0, Lcom/feelingk/iap/IAPActivity$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$18;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 1564
    new-instance v0, Lcom/feelingk/iap/IAPActivity$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$19;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 1574
    new-instance v0, Lcom/feelingk/iap/IAPActivity$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$20;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJAutoPurchaseFormInfoListener:Landroid/view/View$OnClickListener;

    .line 1584
    new-instance v0, Lcom/feelingk/iap/IAPActivity$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$21;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJoinInfoListener:Landroid/view/View$OnClickListener;

    .line 1594
    new-instance v0, Lcom/feelingk/iap/IAPActivity$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$22;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onOtpInfoListener:Landroid/view/View$OnClickListener;

    .line 1604
    new-instance v0, Lcom/feelingk/iap/IAPActivity$23;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$23;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onLGUSMSAuthListener:Landroid/view/View$OnClickListener;

    .line 1613
    new-instance v0, Lcom/feelingk/iap/IAPActivity$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$24;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method private DismissAutoPurchaseFormDialog()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->ClosePopupAutoPurchaseFormDialog()V

    .line 628
    return-void
.end method

.method private DismissImageDialog()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->ClosePopupImageDialog()V

    .line 624
    return-void
.end method

.method private DismissImeiAuthDlg()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->ClosePopupIMEIAuthDialog()V

    .line 614
    return-void
.end method

.method private DismissInfoMessageDialog()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->ClosePopupDialog()V

    .line 446
    return-void
.end method

.method private DismissJoinDialog()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->ClosePopupJoinDialog()V

    .line 632
    return-void
.end method

.method private DismissJuminAuthDialog()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->ClosePopupAuthDialog()V

    .line 515
    return-void
.end method

.method private DismissLguSMSAuthDlg()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->ClosePopupLguSMSAuthDialog()V

    .line 600
    return-void
.end method

.method private DismissLoaingProgress()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ProgressDialog;->CloseProgress()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 419
    :cond_0
    return-void
.end method

.method private DismissOtpDlg()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->ClosePopupOtpDialog()V

    .line 590
    return-void
.end method

.method private DismissPurchaseDialog()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->ClosePurchaseDialog()V

    .line 505
    return-void
.end method

.method private DismissYesNoDialog()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->ClosePopupYesNoDialog()V

    .line 619
    return-void
.end method

.method private IAPLibDeviceCheck()V
    .locals 3

    .prologue
    .line 2030
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/feelingk/iap/IAPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2031
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2032
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    .line 2042
    return-void
.end method

.method private IAPLibUSIMStateCheck()V
    .locals 4

    .prologue
    .line 1864
    new-instance v0, Lcom/feelingk/iap/IAPActivity$27;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$27;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    .line 1887
    .local v0, m_phoneStateListener:Landroid/telephony/PhoneStateListener;
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ub9ac\uc2a4\ub108 \uc678\ubd80 m_phoneUSIMState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1890
    return-void
.end method

.method private RestoreData()V
    .locals 4

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 391
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 392
    check-cast v0, Ljava/util/HashMap;

    .line 394
    .local v0, dataBackupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "NET_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    .line 395
    const-string v2, "ERR_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    .line 396
    const-string v2, "YESNO_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    .line 397
    const-string v2, "USE_BPPROTOCOL"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    .line 398
    const-string v2, "PRODUCT_NAME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 399
    const-string v2, "PRODUCT_INFO"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/feelingk/iap/net/ItemInfoConfirm;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 400
    const-string v2, "PURCHASEID"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 401
    const-string v2, "LGUSMSAUTHCHECKTIME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    .line 402
    const-string v2, "DLGTYPE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    .line 404
    const-string v2, "IAPActivity"

    const-string v3, "## Restore Data ......"

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v0           #dataBackupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private ShowInfoMessageDialog(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "info_message"

    .prologue
    const/4 v2, 0x0

    .line 421
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onConfirmInfoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 423
    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->ShowPopupDialog()V

    .line 442
    return-void

    .line 425
    :cond_0
    const/16 v0, 0x74

    if-ne p1, v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onLimit_ExcessDlgListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 427
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    goto :goto_0

    .line 429
    :cond_1
    const/16 v0, 0x75

    if-ne p1, v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onLGUSMSAuthInfoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 432
    :cond_2
    const/16 v0, 0x77

    if-ne p1, v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onTstoreNotExist:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onInfoCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ShowJuminAuthDialog()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->InflateView()V

    .line 509
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->ShowPopupAuthDialog()V

    .line 510
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 512
    return-void
.end method

.method private ShowLoadingProgress()V
    .locals 3

    .prologue
    .line 411
    new-instance v0, Lcom/feelingk/iap/gui/view/ProgressDialog;

    const-string v1, "\ucc98\ub9ac\uc911\uc785\ub2c8\ub2e4. "

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 412
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ProgressDialog;->ShowProgress()V

    .line 413
    return-void
.end method

.method private ShowPurchaseDialog(Ljava/lang/Object;)V
    .locals 12
    .parameter "item"

    .prologue
    .line 455
    check-cast p1, Lcom/feelingk/iap/net/ItemInfoConfirm;

    .end local p1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 458
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 462
    .local v3, nPrice:I
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 463
    .local v4, nTCash:I
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmFinalVersionCheck()Z

    move-result v7

    .line 464
    .local v7, nFinalVer:Z
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmAutoPurchaseCheck()Z

    move-result v8

    .line 465
    .local v8, nautoPurchaseCheck:Z
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmAfterAutoPurchaseInfoAgree()Z

    move-result v9

    .line 468
    .local v9, nAfterAutoPurchaseInfoAgree:Z
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 469
    .local v11, itemName:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 472
    .local v1, dnc:Ljava/lang/String;
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v11, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 477
    :goto_1
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 479
    new-instance v0, Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 480
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPeriod()Ljava/lang/String;

    move-result-object v2

    .line 484
    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    move v5, v3

    .line 479
    invoke-direct/range {v0 .. v9}, Lcom/feelingk/iap/gui/data/PurchaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZZZZ)V

    .line 488
    .local v0, pItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    iget v5, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v2, v5, v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->InflateParserDialog(ILcom/feelingk/iap/gui/data/PurchaseItem;)V

    .line 489
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    invoke-virtual {v2}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->ShowPurchaseDialog()V

    .line 499
    .end local v0           #pItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;
    .end local v1           #dnc:Ljava/lang/String;
    .end local v3           #nPrice:I
    .end local v4           #nTCash:I
    .end local v7           #nFinalVer:Z
    .end local v8           #nautoPurchaseCheck:Z
    .end local v9           #nAfterAutoPurchaseInfoAgree:Z
    .end local v11           #itemName:Ljava/lang/String;
    :goto_2
    return-void

    .line 468
    .restart local v3       #nPrice:I
    .restart local v4       #nTCash:I
    .restart local v7       #nFinalVer:Z
    .restart local v8       #nautoPurchaseCheck:Z
    .restart local v9       #nAfterAutoPurchaseInfoAgree:Z
    :cond_0
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTitle()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 473
    .restart local v1       #dnc:Ljava/lang/String;
    .restart local v11       #itemName:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 474
    .local v10, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 494
    .end local v1           #dnc:Ljava/lang/String;
    .end local v3           #nPrice:I
    .end local v4           #nTCash:I
    .end local v7           #nFinalVer:Z
    .end local v8           #nautoPurchaseCheck:Z
    .end local v9           #nAfterAutoPurchaseInfoAgree:Z
    .end local v10           #e:Ljava/io/UnsupportedEncodingException;
    .end local v11           #itemName:Ljava/lang/String;
    :cond_1
    const-string v2, "IAPActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mItemInfoConfirm = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mItemInfoConfirm.getItemPrice() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 495
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v6}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mItemInfoConfirm.getItemTCash() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v6}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 494
    invoke-static {v2, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJuminAuthDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/feelingk/iap/IAPActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    return v0
.end method

.method static synthetic access$10(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method static synthetic access$11(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$12(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissImageDialog()V

    return-void
.end method

.method static synthetic access$13(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissAutoPurchaseFormDialog()V

    return-void
.end method

.method static synthetic access$14(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    return-void
.end method

.method static synthetic access$15(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissImeiAuthDlg()V

    return-void
.end method

.method static synthetic access$16(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJoinDialog()V

    return-void
.end method

.method static synthetic access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissOtpDlg()V

    return-void
.end method

.method static synthetic access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$21(Lcom/feelingk/iap/IAPActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    return-void
.end method

.method static synthetic access$22()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/feelingk/iap/IAPActivity;->mLGUSmsAuthNumberKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLguSMSAuthDlg()V

    return-void
.end method

.method static synthetic access$24(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$27(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$28(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$29()I
    .locals 1

    .prologue
    .line 126
    sget v0, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    return v0
.end method

.method static synthetic access$3(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/feelingk/iap/IAPActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    return v0
.end method

.method static synthetic access$31(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    sput-object p0, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    sput-object p0, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$34()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showPopOtpDlg()V

    return-void
.end method

.method static synthetic access$36(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    return-void
.end method

.method static synthetic access$37(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    return-void
.end method

.method static synthetic access$38(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupYesNoDialog;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupImageDialog;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    return-object v0
.end method

.method static synthetic access$41(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    return-object v0
.end method

.method static synthetic access$42(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupJoinDialog;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    return-object v0
.end method

.method static synthetic access$43(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupOTPDialog;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    return-object v0
.end method

.method static synthetic access$44(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    return-object v0
.end method

.method static synthetic access$45(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$46(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-void
.end method

.method static synthetic access$47(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-object v0
.end method

.method static synthetic access$48(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    sput-object p0, Lcom/feelingk/iap/IAPActivity;->mLGUSmsAuthNumberKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$49(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-void
.end method

.method static synthetic access$5(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$50(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method static synthetic access$51(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-void
.end method

.method static synthetic access$52(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$53(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$54(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$55(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$56(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    return-object v0
.end method

.method static synthetic access$57(Lcom/feelingk/iap/IAPActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput p1, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    return-void
.end method

.method static synthetic access$58(Lcom/feelingk/iap/IAPActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 99
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    return v0
.end method

.method static synthetic access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/feelingk/iap/IAPActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    return-void
.end method

.method static synthetic access$60(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$61(Lcom/feelingk/iap/IAPActivity;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    return-object v0
.end method

.method static synthetic access$8(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissYesNoDialog()V

    return-void
.end method

.method static synthetic access$9(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2283
    const-string v3, "DESede/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2284
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-static {p1}, Lcom/feelingk/iap/IAPActivity;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2285
    invoke-static {p0}, Lcom/feelingk/iap/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 2286
    .local v1, outputBytes2:[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2288
    .local v2, strResult:Ljava/lang/String;
    return-object v2
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1434
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1435
    .local v0, calendar:Ljava/util/Calendar;
    const-string v2, "%d-%d-%d %d:%d"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1436
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1437
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    .line 1438
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 1439
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1435
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, strTime:Ljava/lang/String;
    return-object v1
.end method

.method public static getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 4
    .parameter "keyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2293
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 2294
    .local v0, desKeySpec:Ljavax/crypto/spec/DESedeKeySpec;
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 2295
    .local v2, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 2297
    .local v1, key:Ljava/security/Key;
    return-object v1
.end method

.method public static reset()V
    .locals 5

    .prologue
    .line 1370
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1371
    .local v0, bSDCardExist:Z
    if-eqz v0, :cond_0

    .line 1373
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    .line 1381
    :goto_0
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reset\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1385
    const-string v2, "TstoreLog : "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/feelingk/iap/IAPActivity;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1387
    return-void

    .line 1378
    .end local v1           #file:Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/feelingk/iap/IAPActivity;->dirPath:Ljava/lang/String;

    sput-object v2, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private showPopOtpDlg()V
    .locals 4

    .prologue
    const/16 v3, 0x72

    .line 580
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onOtpInfoListener:Landroid/view/View$OnClickListener;

    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V

    .line 583
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->ShowPopupOtpDialog()V

    .line 584
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 585
    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 587
    return-void
.end method

.method public static varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "strMessage"
    .parameter "args"

    .prologue
    .line 1390
    move-object v0, p0

    .line 1391
    .local v0, _strMessage:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    array-length v5, p1

    if-eqz v5, :cond_2

    .line 1396
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1399
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->getCurrentTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1401
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 1406
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1421
    if-eqz v4, :cond_4

    .line 1423
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1413
    :catch_0
    move-exception v1

    .line 1415
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1421
    if-eqz v3, :cond_0

    .line 1423
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1426
    :catch_1
    move-exception v1

    .line 1428
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1418
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1421
    :goto_2
    if-eqz v3, :cond_3

    .line 1423
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1430
    :cond_3
    :goto_3
    throw v5

    .line 1426
    :catch_2
    move-exception v1

    .line 1428
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1426
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 1428
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1418
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1413
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public IAPLibAuthCheck()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2045
    sget v2, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    if-ne v2, v1, :cond_1

    .line 2057
    :cond_0
    :goto_0
    return v0

    .line 2053
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getEncJuminNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2057
    goto :goto_0
.end method

.method public IAPLibInit(Lcom/feelingk/iap/IAPLibSetting;)V
    .locals 4
    .parameter "setting"

    .prologue
    .line 2273
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    .line 2275
    sget v1, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    invoke-static {p0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2277
    .local v0, mdn:Ljava/lang/String;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    sget v3, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    invoke-static {p0, v1, v2, v0, v3}, Lcom/feelingk/iap/IAPLib;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;I)V

    .line 2278
    return-void
.end method

.method protected goIAPLibProcess()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x66

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1893
    const-string v2, "IAPActivity"

    const-string v3, "##  TStore Library Version = V 12.05.08"

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v2, :cond_0

    .line 1897
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v3, 0x45c

    .line 1898
    const-string v4, "USIM \uc0c1\ud0dc\ub97c \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    .line 1897
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1898
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1900
    iput v5, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 1901
    iput-boolean v5, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2027
    :goto_0
    return-void

    .line 1907
    :cond_0
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " # \uc0ac\uc6a9\uac00\ub2a5\ud55c \uc815\uc0c1 \uc720\uc2ec  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    if-ne v2, v6, :cond_5

    .line 1915
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1917
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v3, ".*%.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1918
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v3, "%"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 1922
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1929
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1930
    iput v6, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 1931
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 1924
    :catch_0
    move-exception v0

    .line 1925
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iput-object v9, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    .line 1926
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1935
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# popPurchaseDlg PID= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / UseBPProtocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    .line 1939
    invoke-static {v8}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1940
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    :cond_4
    :goto_2
    iput v5, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2025
    iput-boolean v5, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    goto/16 :goto_0

    .line 1943
    :cond_5
    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    if-ne v2, v7, :cond_a

    .line 1945
    const/4 v1, 0x0

    .line 1947
    .local v1, pEncBPInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1949
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v3, ".*%.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1950
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v3, "%"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 1954
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1964
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1966
    :try_start_2
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 1974
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1975
    iput v7, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 1976
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto/16 :goto_0

    .line 1956
    :catch_1
    move-exception v0

    .line 1957
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    iput-object v9, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    .line 1958
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 1968
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 1969
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    .line 1970
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 1980
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_9
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# popPurchaseDlg TID= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    .line 1982
    invoke-static {v8}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1983
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1987
    .end local v1           #pEncBPInfo:Ljava/lang/String;
    :cond_a
    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 1989
    const-string v2, "IAPActivity"

    const-string v3, "# sendItemWholeAuth"

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendItemWholeAuth()V

    goto/16 :goto_2

    .line 1993
    :cond_b
    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 1995
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# sendItemAuth PID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->sendItemAuth(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1999
    :cond_c
    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 2001
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# sendItemUse PID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->sendItemUse(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2009
    :cond_d
    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 2011
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# sendPurchaseDismiss PID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    sget v2, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    if-ne v2, v6, :cond_e

    .line 2015
    sput-boolean v6, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 2016
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uc0c1\ud488\uc744 \uc911\ub3c4 \ud574\uc9c0 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    .line 2017
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uc0c1\ud488\uc744 \uc911\ub3c4 \ud574\uc9c0 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    goto/16 :goto_2

    .line 2020
    :cond_e
    const/16 v2, 0x6f

    const-string v3, "\ubcf8 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c\uc0c1\ud488\uc740 SKT \uc790\uc0ac \uace0\uac1d\ub2d8\ub9cc \uc774\uc6a9 \uac00\ub2a5\ud55c\uc0c1\ud488\uc785\ub2c8\ub2e4."

    invoke-direct {p0, v2, v3}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto/16 :goto_2
.end method

.method public isExistOTPLog()Z
    .locals 10

    .prologue
    .line 1337
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1339
    .local v0, bSDCardExist:Z
    const/4 v1, 0x0

    .line 1341
    .local v1, bufferReader:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 1342
    .local v7, strPath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1344
    .local v5, path:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1345
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v5           #path:Ljava/io/File;
    .local v6, path:Ljava/io/File;
    move-object v5, v6

    .line 1351
    .end local v6           #path:Ljava/io/File;
    .restart local v5       #path:Ljava/io/File;
    :goto_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1352
    .local v4, fis:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1353
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .local v2, bufferReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1354
    const-string v8, "IAPActivity"

    const-string v9, "OTPLog Read OK"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1356
    const/4 v8, 0x1

    move-object v1, v2

    .line 1364
    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    :goto_1
    return v8

    .line 1348
    :cond_0
    :try_start_2
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/feelingk/iap/IAPActivity;->dirPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5           #path:Ljava/io/File;
    .restart local v6       #path:Ljava/io/File;
    move-object v5, v6

    .end local v6           #path:Ljava/io/File;
    .restart local v5       #path:Ljava/io/File;
    goto :goto_0

    .line 1357
    :catch_0
    move-exception v3

    .line 1358
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1364
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1360
    :catch_1
    move-exception v3

    .line 1361
    .local v3, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1360
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1357
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/16 v5, 0x67

    const/4 v4, 0x3

    .line 2302
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2303
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##   onActivityResult :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 2306
    const v1, 0xd7115

    if-ne p1, v1, :cond_1

    .line 2307
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 2309
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onActivityResult] pwdAuthFlag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    const/4 v0, 0x0

    .line 2314
    .local v0, lguPlusFlag:Z
    sget v1, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    if-ne v1, v4, :cond_0

    .line 2315
    const/4 v0, 0x1

    .line 2321
    :cond_0
    if-eqz v0, :cond_2

    .line 2322
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 2323
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    .line 2331
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    .line 2332
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onActivityResult 2] pwdAuthFlag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    .end local v0           #lguPlusFlag:Z
    :cond_1
    :goto_1
    return-void

    .line 2327
    .restart local v0       #lguPlusFlag:Z
    :cond_2
    invoke-static {v5}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2328
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    goto :goto_0

    .line 2336
    .end local v0           #lguPlusFlag:Z
    :cond_3
    sget v1, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    if-ne v1, v4, :cond_1

    .line 2337
    const-string v1, "IAPActivity"

    const-string v2, "[onActivityResult] mCurTelecom is LG_TELECOM"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    const-string v1, "IAPActivity"

    const-string v2, "[onActivityResult] result code is not RESULT_OK"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-direct {p0, v1}, Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V

    .line 2340
    invoke-static {v5}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const-string v0, "IAPActivity"

    const-string v1, "IAPActivity onCreate "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 163
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPActivity;->dirPath:Ljava/lang/String;

    .line 166
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/IAPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    .line 183
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "curTelecom onCreate : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 187
    .local v6, params:Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_0

    .line 189
    const v2, 0x1030011

    .line 190
    .local v2, theme:I
    new-instance v0, Lcom/feelingk/iap/gui/view/PurchaseDialog;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    sget v4, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    iget-boolean v5, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/iap/gui/view/PurchaseDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 191
    new-instance v0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 192
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/feelingk/iap/gui/view/PopupDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 193
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 194
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupImageDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupImageDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 195
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 196
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 197
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    invoke-direct {v0, p0, v2, v1}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    .line 198
    new-instance v0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onLguSmsCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    .line 199
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    .line 216
    :goto_0
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->RestoreData()V

    .line 217
    return-void

    .line 203
    .end local v2           #theme:I
    :cond_0
    const v2, 0x1030010

    .line 204
    .restart local v2       #theme:I
    new-instance v0, Lcom/feelingk/iap/gui/view/PurchaseDialog;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    sget v4, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    iget-boolean v5, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/iap/gui/view/PurchaseDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 205
    new-instance v0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 206
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/feelingk/iap/gui/view/PopupDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 207
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 208
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupImageDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupImageDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 209
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 210
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 211
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    invoke-direct {v0, p0, v2, v1}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    .line 212
    new-instance v0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onLguSmsCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    .line 213
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;I)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 289
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v2

    .line 290
    .local v2, nDlgType:I
    const-string v3, "IAPActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IAPActivity onPause ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 295
    .local v0, hnd:Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 296
    .local v1, msgNetwork:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 298
    const/16 v3, 0x66

    if-ne v2, v3, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    .line 302
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 343
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setUIHandler(Landroid/os/Handler;)V

    .line 344
    return-void

    .line 304
    :cond_1
    const/16 v3, 0x67

    if-ne v2, v3, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    goto :goto_0

    .line 307
    :cond_2
    const/16 v3, 0x6b

    if-ne v2, v3, :cond_3

    .line 308
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJoinDialog()V

    goto :goto_0

    .line 310
    :cond_3
    const/16 v3, 0x6c

    if-ne v2, v3, :cond_4

    .line 311
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissAutoPurchaseFormDialog()V

    goto :goto_0

    .line 313
    :cond_4
    const/16 v3, 0x69

    if-ne v2, v3, :cond_5

    .line 314
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    goto :goto_0

    .line 316
    :cond_5
    const/16 v3, 0x65

    if-ne v2, v3, :cond_6

    .line 317
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    .line 318
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 323
    :cond_6
    const/16 v3, 0x73

    if-ne v2, v3, :cond_7

    .line 324
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissYesNoDialog()V

    goto :goto_0

    .line 325
    :cond_7
    const/16 v3, 0x6a

    if-ne v2, v3, :cond_8

    .line 326
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJuminAuthDialog()V

    goto :goto_0

    .line 328
    :cond_8
    const/16 v3, 0x68

    if-ne v2, v3, :cond_9

    .line 329
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    .line 330
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 332
    :cond_9
    const/16 v3, 0x72

    if-ne v2, v3, :cond_a

    .line 333
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissOtpDlg()V

    goto :goto_0

    .line 334
    :cond_a
    const/16 v3, 0x74

    if-ne v2, v3, :cond_b

    .line 335
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    goto :goto_0

    .line 336
    :cond_b
    const/16 v3, 0x75

    if-ne v2, v3, :cond_c

    .line 337
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    .line 338
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLguSMSAuthDlg()V

    goto :goto_0

    .line 340
    :cond_c
    const/16 v3, 0x76

    if-ne v2, v3, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissImeiAuthDlg()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x6c

    const/16 v5, 0x6b

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 223
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 225
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onResume - m_phoneUSIMState: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/16 v1, 0x64

    .line 228
    .local v1, nDlgType:I
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 230
    :cond_0
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IAPActivity onResume ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setUIHandler(Landroid/os/Handler;)V

    .line 233
    sget v2, Lcom/feelingk/iap/IAPActivity;->mCurTelecom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 235
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getEncJuminNumber()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, encJumin:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 241
    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->updateEncJuminNumber(Ljava/lang/String;)V

    .line 245
    .end local v0           #encJumin:Ljava/lang/String;
    :cond_1
    const/16 v2, 0x67

    if-ne v1, v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-direct {p0, v2}, Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V

    .line 283
    :cond_2
    :goto_0
    return-void

    .line 247
    :cond_3
    if-ne v1, v5, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->popupJoinDlg()V

    .line 249
    invoke-static {v5}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 251
    :cond_4
    if-ne v1, v6, :cond_5

    .line 252
    const-string v2, "\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488"

    const-string v3, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,\n  \uc0c1\ud488 \uad6c\ub9e4 \uc2dc 1\ub144 \ub3d9\uc548 \ub9e4\uc6d4 \ucd08 \uc790\ub3d9 \uacb0\uc81c \ub418\uc5b4 \ud3b8\ub9ac\ud558\uac8c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\ub294 \uc0c1\ud488\uc785\ub2c8\ub2e4.\n\n- \uc774\uc6a9\n1. \uc0c1\ud488 \uc774\uc6a9\uae30\uac04\uc740 \ub9e4\uc6d4 1\uc77c \uc624\uc804 00\uc2dc 00\ubd84\ubd80\ud130 \ub9e4\uc6d4 \ub9d0\uc77c \uc624\ud6c4 11\uc2dc 59\ubd84 \uae4c\uc9c0 \uc785\ub2c8\ub2e4.\n2. \ub9cc\ub8cc\uae30\uac04\uc740 \ucd5c\ub300 1\ub144\uc774\ubbc0\ub85c \ucd94\ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \ubd84\uaed8\uc11c\ub294 \uc7ac \uad6c\ub9e4\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n3. \ud55c \uc5b4\ud50c \ub2f9 2\uac1c \uc774\uc0c1\uc758 \uc6d4\ubcc4 \uc790\ub3d9 \uacb0\uc81c \uc0c1\ud488 \uad6c\uc785\uc740 \ubd88\uac00\ud569\ub2c8\ub2e4.\n4. \uacf5\uacf5\uae30\uad00 \ubc0f \ub2e8\uccb4, \ud2b9\uc218\uac1c\uc778, \ud2b9\uc218\uae30\uad00 \uba85\uc758\uc758 \ub2e8\ub9d0\uc740 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc774\uc6a9\uc774 \ubd88\uac00\ub2a5 \ud569\ub2c8\ub2e4.\r\n\n\n- \uacb0\uc81c\n1. \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uad6c\uc785 \uc2dc \uc989\uc2dc \uacb0\uc81c\ub418\uba70 \uc775\uc6d4\uc5d0 \uccad\uad6c\ub429\ub2c8\ub2e4.\n2. \uad6c\uc785 \uccab \ub2ec\uc740 \uc0c1\ud488 \uad6c\uc785 \uc2dc\uc810\ubd80\ud130 \ub2f9\uc6d4 \ub9d0 \uc77c\uae4c\uc9c0 \uc77c\ud560 \uacfc\uae08 \ubc0f \uccad\uad6c\ub418\uba70 \ub2e4\uc74c \ub2ec\ubd80\ud130\ub294 \ub9e4\uc6d4 1\uc77c\uc5d0 \uc790\ub3d9 \uc5f0\uc7a5 \ubc0f \uacb0\uc81c\uac00 \uc9c4\ud589\ub429\ub2c8\ub2e4.\n\n\n- \ud574\uc9c0\n1. \uc911\ub3c4 \ud574\uc9c0\uac00 \uac00\ub2a5\ud558\uba70 \ub2e4\uc74c \ub2ec 1\uc77c\uc774 \ub418\uae30 \uc804\uae4c\uc9c0 \ud574\uc9c0\uac00 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n2. \uc911\ub3c4 \ud574\uc9c0 \uc2dc \ud574\ub2f9 \uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud558\uba70 \ucd94\ud6c4 \uacb0\uc81c\uac00 \ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \uc911\ub3c4\ud574\uc9c0 \ud6c4 \ub2f9\uc6d4\uc5d0 \ub3d9\uc77c \uc0c1\ud488\uc744 \uc7ac \uad6c\ub9e4 \ud560 \uacbd\uc6b0 \uac00\uc785\ub9cc \ucc98\ub9ac\ub418\uba70 \uc775\uc6d4 1\uc77c\uc5d0 \uc815\uc0c1\uacb0\uc81c \ub429\ub2c8\ub2e4. \n\n\n- \ud574\uc9c0 \uc808\ucc28\r\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \ud574\uc9c0\ub294 T store \ub9c8\uc774 \ud398\uc774\uc9c0\uc758 \uc0c1\ud488 \ub0b4 \uad6c\ub9e4\ub0b4\uc5ed\uc774\ub098 \ud574\ub2f9 App. \ub0b4\uc5d0\uc11c \uac00\ub2a5\ud569\ub2c8\ub2e4.\n\n- \uc8fc\uc758\uc0ac\ud56d\n1. \uc544\ub798\uc640 \uac19\uc740 \uc0c1\ud669\uc5d0\uc11c \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774 \uc790\ub3d9 \ud574\uc9c0 \ub420 \uc218 \uc788\uc73c\ub2c8 \ucc38\uace0\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n- T store \ud68c\uc6d0 \ud0c8\ud1f4\n- SKT \uc774\ub3d9\ud1b5\uc2e0 \uc11c\ube44\uc2a4 \ud574\uc9c0\n- \ubc88\ud638 \uc774\ub3d9\n- \uba85\uc758 \ubcc0\uacbd\n- \uae30\uae30\ubcc0\uacbd\n-  Appl.\uc9c0\uc6d0 \ubc0f \ub3d9\uc77c\ud55c AID\uc0c1\ud488\uc77c \uacbd\uc6b0\n- \uc5b4\ud50c \uc0ad\uc81c\n\n\n\ud574\ub2f9 \uc0ac\uc720\uc5d0 \ub300\ud574\uc11c\ub294 SK\ud50c\ub798\ub2db\uc758 \ucc45\uc784\uc774 \uc5c6\uc74c\uc744 \ubbf8\ub9ac \uc54c\ub9bd\ub2c8\ub2e4.\n\n\uac10\uc0ac\ud569\ub2c8\ub2e4.\n"

    invoke-virtual {p0, v2, v3}, Lcom/feelingk/iap/IAPActivity;->popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 255
    :cond_5
    const/16 v2, 0x69

    if-ne v1, v2, :cond_6

    .line 256
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_6
    const/16 v2, 0x6a

    if-ne v1, v2, :cond_7

    .line 258
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 259
    :cond_7
    const/16 v2, 0x70

    if-ne v1, v2, :cond_8

    .line 260
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_8
    const/16 v2, 0x65

    if-ne v1, v2, :cond_9

    .line 262
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_9
    const/16 v2, 0x73

    if-ne v1, v2, :cond_a

    .line 264
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_a
    const/16 v2, 0x72

    if-ne v1, v2, :cond_b

    .line 266
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showPopOtpDlg()V

    goto :goto_0

    .line 267
    :cond_b
    const/16 v2, 0x74

    if-ne v1, v2, :cond_c

    .line 268
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_c
    const/16 v2, 0x75

    if-ne v1, v2, :cond_d

    .line 270
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    goto :goto_0

    .line 271
    :cond_d
    const/16 v2, 0x76

    if-ne v1, v2, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->showImeiAuthDlg()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v0, dataBackupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "NET_MESSAGE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "ERR_MESSAGE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v1, "YESNO_MESSAGE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v1, "USE_BPPROTOCOL"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "PRODUCT_NAME"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v1, "PRODUCT_INFO"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v1, "PURCHASEID"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "LGUSMSAUTHCHECKTIME"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "DLGTYPE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-object v0
.end method

.method public popPurchaseDlg(Ljava/lang/String;)V
    .locals 2
    .parameter "pID"

    .prologue
    const/4 v1, 0x0

    .line 2095
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 2096
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    .line 2097
    invoke-virtual {p0, p1, v1}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    return-void
.end method

.method protected popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "pID"
    .parameter "pName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2109
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 2111
    if-eqz p2, :cond_1

    .line 2113
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 2122
    :goto_0
    iput-boolean v1, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2123
    iput v1, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2125
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2127
    return-void

    .line 2116
    :cond_0
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_0

    .line 2119
    :cond_1
    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pID"
    .parameter "pName"
    .parameter "pTID"

    .prologue
    .line 2133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    return-void
.end method

.method protected popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pID"
    .parameter "pName"
    .parameter "pTID"
    .parameter "pBPInfo"

    .prologue
    const/4 v1, 0x0

    .line 2148
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 2149
    iput-object p4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    .line 2152
    if-eqz p2, :cond_1

    .line 2154
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 2163
    :goto_0
    if-eqz p3, :cond_2

    .end local p3
    :goto_1
    iput-object p3, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    .line 2165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2166
    const/4 v0, 0x2

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2168
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2169
    return-void

    .line 2157
    .restart local p3
    :cond_0
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_0

    .line 2160
    :cond_1
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_0

    .line 2163
    :cond_2
    invoke-static {p0, p1}, Lcom/feelingk/iap/util/CommonF;->getTID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1
.end method

.method public popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "formName"
    .parameter "message"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    const/16 v1, 0x71

    .line 565
    new-instance v4, Lcom/feelingk/iap/IAPActivity$25;

    invoke-direct {v4, p0}, Lcom/feelingk/iap/IAPActivity$25;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    .line 572
    iget v5, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    move-object v2, p1

    move-object v3, p2

    .line 564
    invoke-virtual/range {v0 .. v5}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->InflateView(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 574
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->ShowPopupAutoPurchaseFormDialog()V

    .line 576
    return-void
.end method

.method public popupImageDlg(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    const/16 v1, 0x69

    .line 550
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 549
    invoke-virtual {v0, v1, p1, v2}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->ShowPopupImageDialog()V

    .line 555
    return-void
.end method

.method public popupJoinDlg()V
    .locals 5

    .prologue
    .line 523
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->onJoinInfoListener:Landroid/view/View$OnClickListener;

    iget v4, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 525
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->ShowPopupJoinDialog()V

    .line 527
    return-void
.end method

.method public popupYesNoDlg(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    const/16 v1, 0x69

    .line 537
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 536
    invoke-virtual {v0, v1, p1, v2}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->ShowPopupYesNoDialog()V

    .line 542
    const/16 v0, 0x73

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 543
    return-void
.end method

.method protected sendBPData([B)[B
    .locals 2
    .parameter "data"

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    iget-object v0, v0, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    iget v0, v0, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2222
    :cond_0
    const-string v0, "IAPActivity"

    const-string v1, "sendBPData - BP Server IP is null or invalid Port Number"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    const/4 v0, 0x0

    .line 2227
    :goto_0
    return-object v0

    .line 2226
    :cond_1
    const-string v0, "IAPActivity"

    const-string v1, "# sendBPData"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    invoke-static {p1}, Lcom/feelingk/iap/IAPLib;->sendBPData([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected sendItemAuth(Ljava/lang/String;)V
    .locals 1
    .parameter "pID"

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 2206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2207
    const/4 v0, 0x4

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2209
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2210
    return-void
.end method

.method protected sendItemUse(Ljava/lang/String;)V
    .locals 1
    .parameter "pID"

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 2192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2193
    const/4 v0, 0x5

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2195
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2196
    return-void
.end method

.method protected sendItemWholeAuth()V
    .locals 1

    .prologue
    .line 2178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2179
    const/4 v0, 0x3

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2181
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2182
    return-void
.end method

.method protected sendPurchaseDismiss(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pID"
    .parameter "pName"

    .prologue
    .line 2248
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 2249
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 2252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2253
    const/4 v0, 0x6

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2255
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2256
    return-void
.end method

.method public showImeiAuthDlg()V
    .locals 4

    .prologue
    .line 603
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    const/16 v1, 0x76

    new-instance v2, Lcom/feelingk/iap/IAPActivity$26;

    invoke-direct {v2, p0}, Lcom/feelingk/iap/IAPActivity$26;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    .line 609
    iget v3, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    .line 603
    invoke-virtual {v0, v1, v2, v3}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->inflageView(ILandroid/view/View$OnClickListener;I)V

    .line 610
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->ShowPopupIMEIAuthDialog()V

    .line 611
    return-void
.end method

.method public showLguSMSAuthDlg()V
    .locals 4

    .prologue
    const/16 v3, 0x75

    .line 594
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onLGUSMSAuthListener:Landroid/view/View$OnClickListener;

    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V

    .line 595
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->ShowPopupLguSMSAuthDialog()V

    .line 596
    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 597
    return-void
.end method
