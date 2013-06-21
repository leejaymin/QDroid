.class public Lcom/kt/olleh/inapp/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kt/olleh/inapp/Purchase$Data;
    }
.end annotation


# static fields
.field public static Dialog_Mode:I

.field public static Pay_Alert_Mode:I

.field public static config:I


# instance fields
.field private final Dialog_Alert:I

.field private final Dialog_Cancel:I

.field private final Dialog_Check:I

.field private final Dialog_Dismiss:I

.field private final Dialog_List:I

.field private final Dialog_Loding:I

.field private final Dialog_Login:I

.field private final Dialog_New_Pwd:I

.field private final Dialog_Pay:I

.field private final Dialog_Pay_No_Pwd:I

.field private final Dialog_Pwd_Ret:I

.field private final Dialog_Select:I

.field private final Pay_Alert_Mode_01:I

.field private final Pay_Alert_Mode_02:I

.field private final Pay_Alert_Mode_03:I

.field private final Pay_Alert_Mode_04:I

.field private final Pay_Alert_Mode_11:I

.field private final Pay_Alert_Mode_12:I

.field private final Pay_Alert_Mode_13:I

.field private final Pay_Alert_Mode_14:I

.field public final TAG:Ljava/lang/String;

.field private dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

.field private dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

.field private dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

.field private dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

.field private dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

.field private dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

.field private dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

.field private errorCode:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private mApplicationID:Ljava/lang/String;

.field private mAuthen:Ljava/lang/String;

.field private mCardName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDialog_BtnCnt:I

.field private mDialog_Btn_Text_01:Ljava/lang/String;

.field private mDialog_Btn_Text_02:Ljava/lang/String;

.field private mDialog_Message:Ljava/lang/String;

.field private mDialog_Title:Ljava/lang/String;

.field private mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

.field private mDigitalID:Ljava/lang/String;

.field private mInApp:Lcom/kt/olleh/inapp/InApp;

.field mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field private mIsPayInformation:Z

.field private mIsPayMessage:Z

.field private mIsSetCheck:Z

.field private mIsSetPwd:Z

.field private mItem_Name:Ljava/lang/String;

.field private mItem_Price:I

.field private mLibMode:I

.field private mListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field private mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

.field private mPay_Type:Ljava/lang/String;

.field private mTr_ID:Ljava/lang/String;

.field private purchaseEnd:Z

.field private service:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 89
    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 90
    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 56
    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x3f3

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Alert:I

    .line 67
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_List:I

    .line 68
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Pay:I

    .line 69
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Loding:I

    .line 70
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Dismiss:I

    .line 71
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Login:I

    .line 72
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Select:I

    .line 73
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Check:I

    .line 74
    const/16 v0, 0x3f0

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Pay_No_Pwd:I

    .line 75
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Cancel:I

    .line 76
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_New_Pwd:I

    .line 77
    iput v4, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Pwd_Ret:I

    .line 79
    iput v4, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_01:I

    .line 80
    const/16 v0, 0x3f4

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_02:I

    .line 81
    const/16 v0, 0x3f5

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_03:I

    .line 82
    const/16 v0, 0x3f6

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_04:I

    .line 84
    const/16 v0, 0x3fd

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_11:I

    .line 85
    const/16 v0, 0x3fe

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_12:I

    .line 86
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_13:I

    .line 87
    const/16 v0, 0x400

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_14:I

    .line 92
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    .line 93
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 98
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 99
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCardName:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    .line 102
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    .line 103
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 112
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    .line 116
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    .line 117
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    .line 118
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    .line 119
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    .line 120
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    .line 121
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    .line 122
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    .line 124
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->purchaseEnd:Z

    .line 131
    const-string v0, "KTInAppActivity"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->TAG:Ljava/lang/String;

    .line 880
    new-instance v0, Lcom/kt/olleh/inapp/Purchase$1;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/Purchase$1;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->handler:Landroid/os/Handler;

    .line 1319
    new-instance v0, Lcom/kt/olleh/inapp/Purchase$2;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/Purchase$2;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 134
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 135
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 138
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;

    .line 139
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    .line 140
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 141
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    .line 142
    return-void
.end method

.method private CancelDialog()V
    .locals 5

    .prologue
    .line 938
    const/16 v0, 0x3f1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 940
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogCancel;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogCancel;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    .line 941
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    const-string v1, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->setTitle(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    const-string v1, "\uacb0\uc81c\ub97c \ud558\uc9c0 \uc54a\uc73c\uc168\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->setMessage(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    const/4 v1, 0x0

    const-string v2, "\ud655\uc778"

    .line 944
    new-instance v3, Lcom/kt/olleh/inapp/Purchase$24;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$24;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 943
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 951
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$25;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$25;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 959
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->show()V

    .line 961
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 962
    return-void
.end method

.method private DialogPwdRet()V
    .locals 5

    .prologue
    .line 965
    const/16 v0, 0x3f3

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 967
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    .line 968
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setTitle(Ljava/lang/CharSequence;)V

    .line 969
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setMessage(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    const/4 v1, 0x0

    const-string v2, "\ud655\uc778"

    .line 971
    new-instance v3, Lcom/kt/olleh/inapp/Purchase$26;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$26;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 970
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 1001
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$27;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$27;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1017
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->show()V

    .line 1019
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 1021
    return-void
.end method

.method private ErrorDialog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 1179
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->AlertDialog()V

    .line 1180
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->CancelDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0
    .parameter

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->DialogPwdRet()V

    return-void
.end method

.method static synthetic access$10(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/kt/olleh/inapp/Purchase;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    return v0
.end method

.method static synthetic access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kt/olleh/inapp/Purchase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    return-void
.end method

.method static synthetic access$14(Lcom/kt/olleh/inapp/Purchase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    return-void
.end method

.method static synthetic access$15(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0
    .parameter

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getCheckYN()V

    return-void
.end method

.method static synthetic access$16(Lcom/kt/olleh/inapp/Purchase;)Z
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    return v0
.end method

.method static synthetic access$17(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    return-object v0
.end method

.method static synthetic access$19(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->errorCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogProgress;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    return-object v0
.end method

.method static synthetic access$20(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogLogin;
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    return-object v0
.end method

.method static synthetic access$21(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogAlert;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    return-object v0
.end method

.method static synthetic access$26(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$27(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogCheck;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    return-object v0
.end method

.method static synthetic access$29(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0
    .parameter

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->setCheckYN()V

    return-void
.end method

.method static synthetic access$3(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogProgress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    return-void
.end method

.method static synthetic access$30(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    return-object v0
.end method

.method static synthetic access$31(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    return-object v0
.end method

.method static synthetic access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    return-void
.end method

.method static synthetic access$35(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    return-void
.end method

.method static synthetic access$36(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogCancel;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    return-object v0
.end method

.method static synthetic access$37(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPwdRet;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kt/olleh/inapp/Purchase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput p1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    return-void
.end method

.method static synthetic access$5(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/kt/olleh/inapp/Purchase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    return-void
.end method

.method private getCheckYN()V
    .locals 18

    .prologue
    .line 1024
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1025
    const-string v2, "content://com.kt.olleh.app.manager.inapp/inapp"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1024
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1026
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1027
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1028
    const-string v1, "Result"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1029
    .local v8, checkIdx:I
    const/4 v1, -0x1

    if-le v8, v1, :cond_2

    .line 1030
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1031
    const-string v1, "1"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/kt/olleh/inapp/Purchase;->writeSDYN()V

    .line 1076
    .end local v8           #checkIdx:I
    :goto_0
    return-void

    .line 1036
    .restart local v8       #checkIdx:I
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 1043
    .end local v8           #checkIdx:I
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1045
    .local v12, ext:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1050
    .local v16, mSdPath:Ljava/lang/String;
    :goto_2
    new-instance v13, Ljava/io/File;

    const-string v1, "/data/inapp.txt"

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    .local v13, file:Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    .local v14, inappText:Ljava/lang/StringBuilder;
    const-string v17, ""

    .line 1053
    .local v17, result:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1055
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1057
    .local v7, br:Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, line:Ljava/lang/String;
    if-nez v15, :cond_4

    .line 1060
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1061
    const-string v1, "1"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1062
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/kt/olleh/inapp/Purchase;->writeMarketYN()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1068
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v15           #line:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1069
    .local v11, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1039
    .end local v11           #e1:Ljava/io/FileNotFoundException;
    .end local v12           #ext:Ljava/lang/String;
    .end local v13           #file:Ljava/io/File;
    .end local v14           #inappText:Ljava/lang/StringBuilder;
    .end local v16           #mSdPath:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    .restart local v8       #checkIdx:I
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    goto :goto_1

    .line 1048
    .end local v8           #checkIdx:I
    .restart local v12       #ext:Ljava/lang/String;
    :cond_3
    const-string v16, "unmounted/"

    .restart local v16       #mSdPath:Ljava/lang/String;
    goto :goto_2

    .line 1058
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #inappText:Ljava/lang/StringBuilder;
    .restart local v15       #line:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1070
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v15           #line:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1071
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1066
    .end local v10           #e:Ljava/io/IOException;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v15       #line:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1074
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v15           #line:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    goto/16 :goto_0
.end method

.method private getUserInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1189
    const/4 v2, 0x0

    .line 1190
    .local v2, userInfo:Ljava/lang/String;
    sget-object v3, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1191
    iget v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    packed-switch v3, :pswitch_data_0

    .line 1209
    :cond_0
    :goto_0
    sget-object v3, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1210
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1211
    const-string v3, "KTInAppActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UserInfo.information = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :cond_1
    sget-object v2, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    .line 1215
    return-object v2

    .line 1193
    :pswitch_0
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    .line 1194
    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1193
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1195
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, phoneNo:Ljava/lang/String;
    sput-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    goto :goto_0

    .line 1199
    .end local v0           #phoneNo:Ljava/lang/String;
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_1
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1200
    const-string v3, "KTInAppActivity"

    const-string v4, "ILibMode.mode_SoIP number not exist"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1203
    :pswitch_2
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1204
    const-string v3, "KTInAppActivity"

    const-string v4, "ILibMode.mode_KPAD Show ID not exist"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setCheckYN()V
    .locals 9

    .prologue
    .line 1113
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1114
    .local v0, contentValue:Landroid/content/ContentValues;
    const-string v7, "check"

    const-string v8, "1"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://com.kt.olleh.app.manager.inapp/inapp"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    .end local v0           #contentValue:Landroid/content/ContentValues;
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 1123
    .local v3, ext:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1128
    .local v5, mSdPath:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/"

    invoke-direct {v1, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1130
    new-instance v4, Ljava/io/File;

    const-string v7, "inapp.txt"

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1132
    .local v4, file:Ljava/io/File;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1133
    .local v6, out:Ljava/io/BufferedWriter;
    const-string v7, "1\n"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 1135
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1139
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #ext:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #mSdPath:Ljava/lang/String;
    .end local v6           #out:Ljava/io/BufferedWriter;
    :goto_2
    return-void

    .line 1116
    :catch_0
    move-exception v2

    .line 1117
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1126
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #ext:Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v5, "unmounted/"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5       #mSdPath:Ljava/lang/String;
    goto :goto_1

    .line 1136
    .end local v3           #ext:Ljava/lang/String;
    .end local v5           #mSdPath:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1137
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private writeMarketYN()V
    .locals 4

    .prologue
    .line 1080
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1081
    .local v0, contentValue:Landroid/content/ContentValues;
    const-string v2, "check"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.kt.olleh.app.manager.inapp/inapp"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    .end local v0           #contentValue:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1083
    :catch_0
    move-exception v1

    .line 1084
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private writeSDYN()V
    .locals 8

    .prologue
    .line 1091
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, ext:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1093
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1097
    .local v4, mSdPath:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1099
    new-instance v3, Ljava/io/File;

    const-string v6, "inapp.txt"

    invoke-direct {v3, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1101
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1102
    .local v5, out:Ljava/io/BufferedWriter;
    const-string v6, "1\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1104
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 1108
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #ext:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #mSdPath:Ljava/lang/String;
    .end local v5           #out:Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 1095
    .restart local v2       #ext:Ljava/lang/String;
    :cond_0
    const-string v4, "unmounted/"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4       #mSdPath:Ljava/lang/String;
    goto :goto_0

    .line 1105
    .end local v2           #ext:Ljava/lang/String;
    .end local v4           #mSdPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1106
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public AlertDialog()V
    .locals 6

    .prologue
    .line 315
    sget v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 316
    .local v0, prevMode:I
    const/16 v1, 0x3e8

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 318
    new-instance v1, Lcom/kt/olleh/inapp/dialog/DialogAlert;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogAlert;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    .line 319
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->setTitle(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->setMessage(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    const/4 v2, 0x0

    const-string v3, "\ud655\uc778"

    new-instance v4, Lcom/kt/olleh/inapp/Purchase$7;

    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    invoke-direct {v4, p0, v5, v0}, Lcom/kt/olleh/inapp/Purchase$7;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 337
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    new-instance v2, Lcom/kt/olleh/inapp/Purchase$8;

    invoke-direct {v2, p0, v0}, Lcom/kt/olleh/inapp/Purchase$8;-><init>(Lcom/kt/olleh/inapp/Purchase;I)V

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 354
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->show()V

    .line 356
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 357
    return-void
.end method

.method public CheckDialog()V
    .locals 5

    .prologue
    .line 360
    const/16 v0, 0x3ef

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 361
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogCheck;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    .line 362
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const-string v1, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const-string v1, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638 \uc124\uc815 \uc548\ub0b4"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setMessage(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const-string v1, "olleh \ub9c8\ucf13\uc5d0\uc11c\ub294 \uc548\uc804\ud55c\n\uc720\ub8cc \uc544\uc774\ud15c \uacb0\uc81c\ub97c \uc704\ud574\n\ubcf4\uc548\ubc88\ud638 \uc124\uc815\uc744 \uad8c\uc7a5\ud569\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setMessage2(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const-string v1, "\uc9c0\uae08 \ubcf4\uc548\ubc88\ud638\ub97c \uc124\uc815\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setMessage3(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const/4 v1, 0x0

    const-string v2, "\uc608, \uc9c0\uae08 \uc124\uc815\ud569\ub2c8\ub2e4."

    new-instance v3, Lcom/kt/olleh/inapp/Purchase$9;

    .line 367
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$9;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 366
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const/4 v1, 0x1

    const-string v2, "\uc544\ub2c8\uc624, \ub2e4\uc74c\uc5d0 \uc124\uc815\ud569\ub2c8\ub2e4."

    new-instance v3, Lcom/kt/olleh/inapp/Purchase$10;

    .line 379
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$10;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 378
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$11;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$11;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 403
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->show()V

    .line 405
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 406
    return-void
.end method

.method public CheckPin()V
    .locals 4

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 1295
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1298
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->CheckPin(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1301
    return-void
.end method

.method public LodingDialog()V
    .locals 3

    .prologue
    .line 796
    const/16 v0, 0x3eb

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 798
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogProgress;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogProgress;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    .line 799
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$23;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$23;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogProgress;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 822
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogProgress;->show()V

    .line 823
    return-void
.end method

.method public LoginDialog()V
    .locals 4

    .prologue
    .line 243
    const/16 v0, 0x3ed

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 245
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogLogin;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    .line 247
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    const-string v1, "olleh.com \ub85c\uadf8\uc778"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setTitle(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    const/4 v1, 0x0

    new-instance v2, Lcom/kt/olleh/inapp/Purchase$3;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    invoke-direct {v2, p0, v3}, Lcom/kt/olleh/inapp/Purchase$3;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setButton(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    const/4 v1, 0x1

    new-instance v2, Lcom/kt/olleh/inapp/Purchase$4;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    invoke-direct {v2, p0, v3}, Lcom/kt/olleh/inapp/Purchase$4;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setButton(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->show()V

    .line 267
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 268
    return-void
.end method

.method public NewPwdDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 409
    sget v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_0

    .line 410
    iput-boolean v5, p0, Lcom/kt/olleh/inapp/Purchase;->purchaseEnd:Z

    .line 412
    :cond_0
    const/16 v0, 0x3f2

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 413
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    .line 414
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    const-string v1, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    const/4 v1, 0x0

    const-string v2, "\ud655\uc778"

    .line 416
    new-instance v3, Lcom/kt/olleh/inapp/Purchase$12;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$12;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 415
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    const-string v1, "\ucde8\uc18c"

    .line 439
    new-instance v2, Lcom/kt/olleh/inapp/Purchase$13;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    invoke-direct {v2, p0, v3}, Lcom/kt/olleh/inapp/Purchase$13;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 438
    invoke-virtual {v0, v5, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 453
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$14;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$14;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 469
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->show()V

    .line 471
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 472
    return-void
.end method

.method public PayDialog(I)V
    .locals 11
    .parameter "mode"

    .prologue
    .line 621
    const/16 v6, 0x3ea

    sput v6, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 622
    new-instance v6, Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->getConfig()I

    move-result v9

    invoke-direct {v6, v7, v8, v9, p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;-><init>(Landroid/content/Context;IILcom/kt/olleh/inapp/Purchase;)V

    iput-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    .line 624
    const/16 v6, 0x3f6

    if-ne p1, v6, :cond_0

    .line 625
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const-string v7, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setTitle(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setMessage(Ljava/lang/String;)V

    .line 628
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setBgColor(Z)V

    .line 677
    :goto_0
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    new-instance v9, Lcom/kt/olleh/inapp/Purchase$19;

    .line 678
    iget-object v10, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-direct {v9, p0, v10, p1}, Lcom/kt/olleh/inapp/Purchase$19;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    .line 677
    invoke-virtual {v6, v7, v8, v9}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 720
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    new-instance v9, Lcom/kt/olleh/inapp/Purchase$20;

    .line 721
    iget-object v10, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-direct {v9, p0, v10, p1}, Lcom/kt/olleh/inapp/Purchase$20;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    .line 720
    invoke-virtual {v6, v7, v8, v9}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 735
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    new-instance v7, Lcom/kt/olleh/inapp/Purchase$21;

    invoke-direct {v7, p0, p1}, Lcom/kt/olleh/inapp/Purchase$21;-><init>(Lcom/kt/olleh/inapp/Purchase;I)V

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 757
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-boolean v7, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayInformation(Z)V

    .line 758
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-boolean v7, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayMessage(Z)V

    .line 759
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v6}, Lcom/kt/olleh/inapp/dialog/DialogPay;->show()V

    .line 760
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iput-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 762
    return-void

    .line 629
    :cond_0
    const/16 v6, 0x3f4

    if-ne p1, v6, :cond_1

    .line 630
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const-string v7, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setTitle(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setMessage(Ljava/lang/String;)V

    .line 633
    iget v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/Purchase;->getPriceFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, price:Ljava/lang/String;
    const-string v6, "%s\uc744 \uacb0\uc81c\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, msg:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameTitle(Z)V

    .line 638
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 639
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 640
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v6, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayMoneyMessage(Ljava/lang/String;)V

    .line 641
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayTypeMessage(Ljava/lang/String;)V

    .line 643
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 644
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 646
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setBgColor(Z)V

    goto/16 :goto_0

    .line 648
    .end local v0           #msg:Ljava/lang/String;
    .end local v5           #price:Ljava/lang/String;
    :cond_1
    sget v6, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    const/16 v7, 0x3f5

    if-ne v6, v7, :cond_2

    .line 649
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const-string v7, "\uacb0\uc81c \uc644\ub8cc"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setTitle(Ljava/lang/CharSequence;)V

    .line 653
    :goto_1
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setMessage(Ljava/lang/String;)V

    .line 655
    iget v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/Purchase;->getPriceFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 657
    .restart local v5       #price:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameTitle(Z)V

    .line 658
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_3

    .line 659
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, msgPayItemName1:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, msgPayItemName2:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 663
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v2}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 668
    .end local v1           #msgPayItemName1:Ljava/lang/String;
    .end local v2           #msgPayItemName2:Ljava/lang/String;
    :goto_2
    const-string v6, "\uacb0\uc81c\uae08\uc561:%s(\ubd80\uac00\uc138\ud3ec\ud568)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, msgPayMoney:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v6, v3}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayMoneyMessage(Ljava/lang/String;)V

    .line 670
    const-string v6, "\uacb0\uc81c\ubc29\uc2dd:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, msgPayType:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v6, v4}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayTypeMessage(Ljava/lang/String;)V

    .line 673
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 674
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setBgColor(Z)V

    .line 675
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-boolean v7, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPwdOn(Z)V

    goto/16 :goto_0

    .line 651
    .end local v3           #msgPayMoney:Ljava/lang/String;
    .end local v4           #msgPayType:Ljava/lang/String;
    .end local v5           #price:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const-string v7, "\uacb0\uc81c \uc548\ub0b4"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 665
    .restart local v5       #price:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 666
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public PayDialogNoPwd(I)V
    .locals 14
    .parameter "mode"

    .prologue
    const/16 v13, 0xc

    const/4 v9, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 475
    const/16 v6, 0x3f0

    sput v6, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 476
    new-instance v6, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    invoke-direct {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    .line 477
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v7, "\uacb0\uc81c\uc548\ub0b4"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v7, "\ud574\ub2f9 \uc544\uc774\ud15c\uc744 \uad6c\ub9e4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setMessage(Ljava/lang/String;)V

    .line 480
    const/16 v6, 0x400

    if-ne p1, v6, :cond_0

    .line 481
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v7, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setMessage(Ljava/lang/String;)V

    .line 484
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v11}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setBgColor(Z)V

    .line 533
    :goto_0
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 534
    new-instance v8, Lcom/kt/olleh/inapp/Purchase$15;

    iget-object v9, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-direct {v8, p0, v9, p1}, Lcom/kt/olleh/inapp/Purchase$15;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    .line 533
    invoke-virtual {v6, v11, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 567
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v7, "\ucde8\uc18c"

    new-instance v8, Lcom/kt/olleh/inapp/Purchase$16;

    .line 568
    iget-object v9, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-direct {v8, p0, v9, p1}, Lcom/kt/olleh/inapp/Purchase$16;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    .line 567
    invoke-virtual {v6, v12, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 583
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v7, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638 \uc124\uc815"

    new-instance v8, Lcom/kt/olleh/inapp/Purchase$17;

    .line 584
    iget-object v9, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-direct {v8, p0, v9}, Lcom/kt/olleh/inapp/Purchase$17;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 583
    invoke-virtual {v6, v10, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 593
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    new-instance v7, Lcom/kt/olleh/inapp/Purchase$18;

    invoke-direct {v7, p0, p1}, Lcom/kt/olleh/inapp/Purchase$18;-><init>(Lcom/kt/olleh/inapp/Purchase;I)V

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 615
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->show()V

    .line 617
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iput-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 618
    return-void

    .line 485
    :cond_0
    const/16 v6, 0x3fe

    if-ne p1, v6, :cond_1

    .line 486
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v7, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setMessage(Ljava/lang/String;)V

    .line 489
    iget v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/Purchase;->getPriceFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, price:Ljava/lang/String;
    const-string v6, "%s\uc744 \uacb0\uc81c\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, msg:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v10, v9}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 494
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v12, v9}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 495
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayMoneyMessage(Ljava/lang/String;)V

    .line 496
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v9}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayTypeMessage(Ljava/lang/String;)V

    .line 498
    iput-boolean v10, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 499
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v10}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setIsPayInformation(Z)V

    .line 501
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v10}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setBgColor(Z)V

    goto/16 :goto_0

    .line 503
    .end local v0           #msg:Ljava/lang/String;
    .end local v5           #price:Ljava/lang/String;
    :cond_1
    sget v6, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    const/16 v7, 0x3ff

    if-ne v6, v7, :cond_2

    .line 504
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v7, "\uacb0\uc81c \uc644\ub8cc"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v11}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setIsPayInformation(Z)V

    .line 510
    :goto_1
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setMessage(Ljava/lang/String;)V

    .line 512
    iget v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/Purchase;->getPriceFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 514
    .restart local v5       #price:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v13, :cond_3

    .line 515
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v6, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, msgPayItemName1:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, msgPayItemName2:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v10, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 519
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v12, v2}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 524
    .end local v1           #msgPayItemName1:Ljava/lang/String;
    .end local v2           #msgPayItemName2:Ljava/lang/String;
    :goto_2
    const-string v6, "\uacb0\uc81c\uae08\uc561:%s(\ubd80\uac00\uc138\ud3ec\ud568)"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, msgPayMoney:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v3}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayMoneyMessage(Ljava/lang/String;)V

    .line 526
    const-string v6, "\uacb0\uc81c\ubc29\uc2dd:%s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, msgPayType:Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v4}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayTypeMessage(Ljava/lang/String;)V

    .line 529
    iput-boolean v10, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 530
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v11}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setBgColor(Z)V

    goto/16 :goto_0

    .line 507
    .end local v3           #msgPayMoney:Ljava/lang/String;
    .end local v4           #msgPayType:Ljava/lang/String;
    .end local v5           #price:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v7, "\uacb0\uc81c \uc548\ub0b4"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v10}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setIsPayInformation(Z)V

    goto :goto_1

    .line 521
    .restart local v5       #price:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v6, v10, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 522
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v6, v12, v9}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public SelectDialog()V
    .locals 2

    .prologue
    .line 271
    const/16 v1, 0x3ee

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 273
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogSelect;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogSelect;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, dialog:Lcom/kt/olleh/inapp/dialog/DialogSelect;
    new-instance v1, Lcom/kt/olleh/inapp/Purchase$5;

    invoke-direct {v1, p0, v0}, Lcom/kt/olleh/inapp/Purchase$5;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogSelect;->setOnItemClickListener(Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 303
    new-instance v1, Lcom/kt/olleh/inapp/Purchase$6;

    invoke-direct {v1, p0, v0}, Lcom/kt/olleh/inapp/Purchase$6;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogSelect;->setOnCancelListener(Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 309
    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogSelect;->show()V

    .line 311
    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 312
    return-void
.end method

.method public SendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1143
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1144
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1145
    return-void
.end method

.method public SetPin(Ljava/lang/String;)V
    .locals 4
    .parameter "pin"

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 1311
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1314
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 1316
    .local v0, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/kt/olleh/inapp/InApp;->SetPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1317
    return-void
.end method

.method public getConfig()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lcom/kt/olleh/inapp/Purchase;->config:I

    return v0
.end method

.method public getDIInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "app_id"
    .parameter "di_id"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1232
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1235
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, userInfo:Ljava/lang/String;
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->getDIInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1238
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 848
    new-instance v0, Lcom/kt/olleh/inapp/Purchase$Data;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/Purchase$Data;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    .line 849
    .local v0, data:Lcom/kt/olleh/inapp/Purchase$Data;
    iget v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    iput v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_BtnCnt:I

    .line 850
    sget v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    iput v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Mode:I

    .line 851
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Message:Ljava/lang/String;

    .line 852
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Btn_Text_01:Ljava/lang/String;

    .line 853
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Btn_Text_02:Ljava/lang/String;

    .line 854
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Pay_Type:Ljava/lang/String;

    .line 855
    iget-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->isPayInformation:Z

    .line 856
    iget-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->isPayMessage:Z

    .line 857
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCardName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->CardName:Ljava/lang/String;

    .line 858
    sget v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    iput v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Pay_Alert_Mode:I

    .line 859
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Item_Name:Ljava/lang/String;

    .line 860
    iget v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    iput v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Item_Price:I

    .line 862
    return-object v0
.end method

.method public getPriceFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pr"

    .prologue
    .line 1483
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1484
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1486
    .local v3, price:I
    int-to-double v1, v3

    .line 1487
    .local v1, num:D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "#,##0"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v0, df:Ljava/text/DecimalFormat;
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\uc6d0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public onCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;I)V
    .locals 2
    .parameter "context"
    .parameter "applicationID"
    .parameter "digitalID"
    .parameter "listener"
    .parameter "libMode"

    .prologue
    const/4 v1, 0x0

    .line 176
    iput-object p2, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    .line 179
    iput-object p4, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;

    .line 181
    iput p5, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    .line 183
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 184
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    .line 186
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 188
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v0, "01"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->purchaseGetInfo()V

    goto :goto_0

    .line 194
    :pswitch_1
    const-string v0, "02"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->purchaseGetInfo()V

    goto :goto_0

    .line 198
    :pswitch_2
    const-string v0, "03"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 201
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->purchaseGetInfo()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 210
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    .line 211
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    .line 215
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 216
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 217
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCardName:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    .line 219
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    .line 220
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 226
    :cond_0
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 229
    :cond_1
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    .line 230
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 231
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    .line 232
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    .line 233
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 234
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    .line 236
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 237
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    .line 238
    return-void
.end method

.method public purchaseErrorDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 1162
    const/4 v0, 0x1

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    .line 1163
    const-string v0, "\ud655\uc778"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 1164
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 1165
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 1166
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 1168
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    if-eqz v0, :cond_0

    .line 1169
    const/16 v0, 0x3f6

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1170
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1175
    :goto_0
    return-void

    .line 1172
    :cond_0
    const/16 v0, 0x400

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1173
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0
.end method

.method public purchaseGetInfo()V
    .locals 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/kt/olleh/inapp/Purchase;->getDIInformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v0, "\ucde8\uc18c"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 1155
    const-string v0, "\ucc98\ub9ac \uc911..."

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 1156
    const-string v0, "\ud578\ub4dc\ud3f0 \uacb0\uc81c"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    .line 1157
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1158
    return-void
.end method

.method public requestCheckShowId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "show_id"
    .parameter "pwd"

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1279
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/kt/olleh/inapp/InApp;->requestCheckShowId(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1283
    return-void
.end method

.method public requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "app_id"
    .parameter "di_id"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "pin"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1255
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1258
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 1260
    .local v3, userInfo:Ljava/lang/String;
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1261
    return-void
.end method

.method public setConfig(I)V
    .locals 1
    .parameter "config"

    .prologue
    .line 145
    sput p1, Lcom/kt/olleh/inapp/Purchase;->config:I

    .line 146
    sget v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->changeConfig(I)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->changeConfig(I)V

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->changeConfig(I)V

    goto :goto_0

    .line 163
    :pswitch_4
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->changeConfig(I)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    .line 1149
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 826
    move-object v0, p1

    check-cast v0, Lcom/kt/olleh/inapp/Purchase$Data;

    .line 828
    .local v0, data:Lcom/kt/olleh/inapp/Purchase$Data;
    if-eqz v0, :cond_0

    .line 829
    iget v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_BtnCnt:I

    iput v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    .line 830
    iget v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Mode:I

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 831
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Message:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 832
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Btn_Text_01:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 833
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Btn_Text_02:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    .line 834
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Pay_Type:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    .line 835
    iget-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->isPayInformation:Z

    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 836
    iget-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->isPayMessage:Z

    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 837
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->CardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCardName:Ljava/lang/String;

    .line 838
    iget v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Pay_Alert_Mode:I

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 839
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Item_Name:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    .line 840
    iget v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Item_Price:I

    iput v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    .line 842
    sget v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    if-lez v1, :cond_0

    .line 843
    sget v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 845
    :cond_0
    return-void
.end method

.method public setModifyText()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getModifyTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getModifyTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$22;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$22;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    :cond_0
    return-void
.end method

.method public userCancelResponse()V
    .locals 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    const-string v1, "I001"

    const-string v2, "\uc0ac\uc6a9\uc790 \uc694\uccad\uc5d0 \uc758\ud55c \ucde8\uc18c"

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    return-void
.end method
