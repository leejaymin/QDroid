.class public Lcom/feelingk/iap/gui/parser/ParserXML;
.super Landroid/app/Activity;
.source "ParserXML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ParserXML"

.field private static mLguSmsAuthBtn:Landroid/widget/Button;

.field private static mLguSmsAuthClickFlag:Ljava/lang/Boolean;

.field private static mLguSmsAuthOkBtn:Landroid/widget/Button;

.field private static mLguSmsAuthTv:Landroid/widget/EditText;

.field public static mOTPNumber:Ljava/lang/String;

.field private static mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

.field private static mSmsAuthDrawables:Landroid/graphics/drawable/StateListDrawable;

.field private static nextStep:Ljava/lang/Boolean;

.field static okLguSmsAuthBtn:Landroid/view/View$OnClickListener;

.field private static onLguSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field private XML_FILE_NAME:Ljava/lang/String;

.field private XML_FILE_PATH:Ljava/lang/String;

.field private XML_FILE_PATH_KTLG:Ljava/lang/String;

.field autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

.field cancelAuthBtn:Landroid/view/View$OnClickListener;

.field cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

.field cancelBtn:Landroid/view/View$OnClickListener;

.field cancelJoinBtn:Landroid/view/View$OnClickListener;

.field cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

.field cancelYesNoBtn:Landroid/view/View$OnClickListener;

.field changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private context:Landroid/content/Context;

.field cursorFlag:Z

.field getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

.field private idg:I

.field private ids:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field imageBtn:Landroid/view/View$OnClickListener;

.field imeiAuthBtn:Landroid/view/View$OnClickListener;

.field imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

.field private layoutStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mAfterAutoPurchaseInfoAgree:Z

.field mAuthOkStream:Ljava/io/InputStream;

.field mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

.field mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

.field private mAutoPurchaseFormPopupMode:Z

.field private mBtn:Landroid/widget/Button;

.field private mDrawables:Landroid/graphics/drawable/StateListDrawable;

.field mFlag:Z

.field private mFormName:Ljava/lang/String;

.field private mIMEIAuthPopupMode:Z

.field private mIMEICheckList:[Z

.field private mIMEICheckedDrawbles:Landroid/graphics/drawable/StateListDrawable;

.field private mIMEIOkBtn:Landroid/widget/Button;

.field private mIMEInotCheckedDrawble:Landroid/graphics/drawable/StateListDrawable;

.field private mImageConfirmPopupMode:Z

.field private mInfoMessage:Ljava/lang/String;

.field private mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field private mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

.field private mJoinCheckList:[Z

.field private mJoinPopupMode:Z

.field private mJuminPopupMode:Z

.field private mKORCarrier:I

.field private mLGUSmsAuthPopupMode:Z

.field private mLiminExcessDrawables:Landroid/graphics/drawable/StateListDrawable;

.field mLiminExcessStream:Ljava/io/InputStream;

.field mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

.field mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

.field private mOkBtn:Landroid/widget/Button;

.field private mOkDrawbles:Landroid/graphics/drawable/StateListDrawable;

.field private mOtpPopupMode:Z

.field private mPopupClickListener:Landroid/view/View$OnClickListener;

.field private mPurchaseCheckList:[Z

.field mReClaimStream:Ljava/io/InputStream;

.field mStream:Ljava/io/InputStream;

.field private mYesNoPopupMode:Z

.field private m_AccountPriceTextView:Landroid/widget/TextView;

.field private m_JuminText1:Landroid/widget/EditText;

.field private m_JuminText2:Landroid/widget/EditText;

.field mbtOn:Landroid/graphics/drawable/Drawable;

.field mbtOver:Landroid/graphics/drawable/Drawable;

.field moreInfo:Landroid/view/View$OnClickListener;

.field moreInfoFormBtn1:Landroid/view/View$OnClickListener;

.field moreInfoFormBtn2:Landroid/view/View$OnClickListener;

.field moreInfoFormBtn3:Landroid/view/View$OnClickListener;

.field okAuthBtn:Landroid/view/View$OnClickListener;

.field okBtn:Landroid/view/View$OnClickListener;

.field okJoinBtn:Landroid/view/View$OnClickListener;

.field okMessageBtn:Landroid/view/View$OnClickListener;

.field okOtpBtn:Landroid/view/View$OnClickListener;

.field okYesNoBtn:Landroid/view/View$OnClickListener;

.field private onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

.field private onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

.field private onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

.field private onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

.field private onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

.field private onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

.field private onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

.field private onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

.field private orientation:I

.field private otpAuthNumber:Ljava/lang/String;

.field private tStoreFlag:Z

.field tStoreInfoBtn:Landroid/view/View$OnClickListener;

.field xperiacheckbox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    sput-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->onLguSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    .line 141
    sput-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    .line 143
    sput-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthBtn:Landroid/widget/Button;

    .line 145
    sput-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthOkBtn:Landroid/widget/Button;

    .line 146
    sput-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOTPNumber:Ljava/lang/String;

    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthClickFlag:Ljava/lang/Boolean;

    .line 148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->nextStep:Ljava/lang/Boolean;

    .line 4051
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$23;

    invoke-direct {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$23;-><init>()V

    sput-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 258
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 259
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 260
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V
    .locals 4
    .parameter "c"
    .parameter "cb"
    .parameter "bJuminPopupMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 264
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 265
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 266
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 267
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 268
    iput-boolean p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;ILjava/lang/String;Z)V
    .locals 4
    .parameter "c"
    .parameter "cb"
    .parameter "isTelecomCarrier"
    .parameter "type"
    .parameter "checkFlag"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 220
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 221
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 222
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 223
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 224
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 226
    const-string v0, "AutoPurchaseForm"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 229
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;Ljava/lang/String;Z)V
    .locals 4
    .parameter "c"
    .parameter "cb"
    .parameter "type"
    .parameter "CheckFlag"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 233
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 234
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 235
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 236
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 238
    const-string v0, "IMEIAuthForm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iput-boolean p4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 241
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;ILjava/lang/String;Z)V
    .locals 4
    .parameter "c"
    .parameter "cb"
    .parameter "isTelecomCarrier"
    .parameter "type"
    .parameter "checkFlag"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 203
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 204
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 205
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 206
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 207
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 209
    const-string v0, "PermissionPopup"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 214
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;ILjava/lang/String;Z)V
    .locals 4
    .parameter "c"
    .parameter "cb"
    .parameter "isTelecomCarrier"
    .parameter "type"
    .parameter "checkFlag"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 247
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 248
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 249
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 250
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 251
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 253
    const-string v0, "Join"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 256
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;Z)V
    .locals 4
    .parameter "c"
    .parameter "callback"
    .parameter "popupMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 301
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 302
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 303
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 304
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 305
    sput-object p2, Lcom/feelingk/iap/gui/parser/ParserXML;->onLguSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    .line 306
    iput-boolean p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;Z)V
    .locals 4
    .parameter "c"
    .parameter "callback"
    .parameter "popupMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 294
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 295
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 296
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 297
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 298
    iput-boolean p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;)V
    .locals 0
    .parameter "c"
    .parameter "callback"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;)V

    .line 275
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZ)V
    .locals 0
    .parameter "c"
    .parameter "callback"
    .parameter "isTelecomCarrier"
    .parameter "isDeviceTab"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;)V

    .line 280
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 282
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZZ)V
    .locals 0
    .parameter "c"
    .parameter "callback"
    .parameter "isTelecomCarrier"
    .parameter "isDeviceTab"
    .parameter "bJuminPopupMode"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;)V

    .line 287
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 289
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 290
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;ILjava/lang/String;Z)V
    .locals 4
    .parameter "c"
    .parameter "cb"
    .parameter "isTelecomCarrier"
    .parameter "type"
    .parameter "checkFlag"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 73
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 76
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 78
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 79
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 80
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 84
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 86
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 90
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 98
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 99
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 103
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 105
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    .line 106
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 114
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 115
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    .line 118
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 123
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 128
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 137
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 3659
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 3675
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 3683
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3694
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 3702
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 3710
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3722
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 3732
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    .line 3740
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    .line 3749
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3839
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 3846
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 3854
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 3861
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 3877
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 3886
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 3905
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 3916
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 3923
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 3930
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$20;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 3936
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$21;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    .line 3971
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$22;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 4064
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$24;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    .line 187
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 188
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 189
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 190
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 191
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 193
    const-string v0, "YesNo"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 197
    :cond_0
    return-void
.end method

.method private Start(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "xmlFileFname"

    .prologue
    .line 439
    const/4 v3, 0x0

    .line 442
    .local v3, parse:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 443
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 446
    .local v2, is:Ljava/io/InputStream;
    const-string v5, "utf-8"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 448
    const/4 v4, 0x0

    .line 450
    .local v4, parsingView:Landroid/view/View;
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    if-eqz v5, :cond_0

    .line 451
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    .line 489
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #parsingView:Landroid/view/View;
    :goto_0
    return-object v4

    .line 452
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #parsingView:Landroid/view/View;
    :cond_0
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    if-eqz v5, :cond_1

    .line 453
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateYesNoPopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 455
    :cond_1
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    if-eqz v5, :cond_2

    .line 457
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateImagePopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 459
    :cond_2
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    if-eqz v5, :cond_3

    .line 461
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateAutoPurchaseFormPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 463
    :cond_3
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIAuthPopupMode:Z

    if-eqz v5, :cond_4

    .line 465
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflatIMEIAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 467
    :cond_4
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    if-eqz v5, :cond_5

    .line 469
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateJoinPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 471
    :cond_5
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOtpPopupMode:Z

    if-eqz v5, :cond_6

    .line 472
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateOtpPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 474
    :cond_6
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLGUSmsAuthPopupMode:Z

    if-eqz v5, :cond_7

    .line 476
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateLguSmsAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 479
    :cond_7
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 483
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #parsingView:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 484
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 489
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 486
    :catch_1
    move-exception v0

    .line 487
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    return-object v0
.end method

.method static synthetic access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    return-object v0
.end method

.method static synthetic access$12(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    return-object v0
.end method

.method static synthetic access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Z
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    return v0
.end method

.method static synthetic access$14(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    return-void
.end method

.method static synthetic access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    return-object v0
.end method

.method static synthetic access$16(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckedDrawbles:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEInotCheckedDrawble:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$19(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    return-void
.end method

.method static synthetic access$2(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    return-object v0
.end method

.method static synthetic access$20(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    return-object v0
.end method

.method static synthetic access$21(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    return-void
.end method

.method static synthetic access$22(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$23(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    return-void
.end method

.method static synthetic access$24(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    return-object v0
.end method

.method static synthetic access$25()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$26()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$27(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    sput-object p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthClickFlag:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->onLguSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    return-object v0
.end method

.method static synthetic access$29(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOkBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$30(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOkDrawbles:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$31(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessDrawables:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$32(Lcom/feelingk/iap/gui/parser/ParserXML;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    sput-object p0, Lcom/feelingk/iap/gui/parser/ParserXML;->nextStep:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$34()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/feelingk/iap/gui/parser/ParserXML;->nextStep:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    return v0
.end method

.method static synthetic access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    return-object v0
.end method

.method static synthetic access$7(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    return-object v0
.end method

.method static synthetic access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    return-object v0
.end method

.method static synthetic access$9(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    return-object v0
.end method

.method private createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 70
    .parameter "parse"

    .prologue
    .line 561
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v42

    .line 562
    .local v42, name:Ljava/lang/String;
    const/16 v55, 0x0

    .line 563
    .local v55, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 566
    .local v12, atts:Landroid/util/AttributeSet;
    const-string v67, "LinearLayout"

    move-object/from16 v0, v42

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_1

    .line 567
    new-instance v55, Landroid/widget/LinearLayout;

    .end local v55           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v67, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 597
    .restart local v55       #result:Landroid/view/View;
    :goto_0
    if-nez v55, :cond_7

    .line 598
    const/16 v55, 0x0

    .line 1157
    .end local v55           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v55

    .line 574
    .restart local v55       #result:Landroid/view/View;
    :cond_1
    const-string v67, "TextView"

    move-object/from16 v0, v42

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2

    .line 575
    new-instance v55, Landroid/widget/TextView;

    .end local v55           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v67, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v55       #result:Landroid/view/View;
    goto :goto_0

    .line 577
    :cond_2
    const-string v67, "ImageView"

    move-object/from16 v0, v42

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_3

    .line 578
    new-instance v55, Landroid/widget/ImageView;

    .end local v55           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v67, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v55       #result:Landroid/view/View;
    goto :goto_0

    .line 580
    :cond_3
    const-string v67, "Button"

    move-object/from16 v0, v42

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_4

    .line 581
    new-instance v55, Landroid/widget/Button;

    .end local v55           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v67, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v55       #result:Landroid/view/View;
    goto :goto_0

    .line 583
    :cond_4
    const-string v67, "ScrollView"

    move-object/from16 v0, v42

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_5

    .line 584
    new-instance v55, Landroid/widget/ScrollView;

    .end local v55           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v67, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 585
    .restart local v55       #result:Landroid/view/View;
    const/16 v67, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    goto :goto_0

    .line 587
    :cond_5
    const-string v67, "CheckBox"

    move-object/from16 v0, v42

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_6

    .line 588
    new-instance v55, Landroid/widget/CheckBox;

    .end local v55           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v67, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v55       #result:Landroid/view/View;
    goto/16 :goto_0

    .line 594
    :cond_6
    new-instance v67, Ljava/lang/StringBuilder;

    const-string v68, "# UnSupported tag:"

    invoke-direct/range {v67 .. v68}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v67

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 611
    :cond_7
    sget-object v40, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 614
    .local v40, modelName:Ljava/lang/String;
    move-object/from16 v0, v55

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v67, v0

    if-eqz v67, :cond_12

    move-object/from16 v37, v55

    .line 615
    check-cast v37, Landroid/widget/LinearLayout;

    .line 616
    .local v37, ll:Landroid/widget/LinearLayout;
    const-string v67, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 618
    .local v46, orient:Ljava/lang/String;
    if-eqz v46, :cond_8

    .line 619
    const-string v67, "horizontal"

    move-object/from16 v0, v46

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_1f

    .line 620
    const/16 v67, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 626
    :cond_8
    :goto_2
    const-string v67, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 627
    .local v28, image:Ljava/lang/String;
    if-eqz v28, :cond_9

    .line 628
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v32

    .line 629
    .local v32, is:Ljava/io/InputStream;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v37

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    .end local v32           #is:Ljava/io/InputStream;
    :cond_9
    const-string v67, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 634
    .local v29, imageColor:Ljava/lang/String;
    if-eqz v29, :cond_a

    .line 637
    const/high16 v67, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 641
    :cond_a
    const-string v67, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 642
    .local v25, gravity:Ljava/lang/String;
    if-eqz v25, :cond_b

    .line 643
    const-string v67, "center"

    move-object/from16 v0, v25

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_20

    .line 644
    const/16 v67, 0x11

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 652
    :cond_b
    :goto_3
    const-string v67, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 653
    .local v49, padding:Ljava/lang/String;
    if-eqz v49, :cond_c

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v56

    .line 655
    .local v56, size:I
    move-object/from16 v0, v37

    move/from16 v1, v56

    move/from16 v2, v56

    move/from16 v3, v56

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 659
    .end local v56           #size:I
    :cond_c
    const-string v67, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 660
    .local v64, touchMode:Ljava/lang/String;
    if-eqz v64, :cond_d

    .line 661
    const/16 v67, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 665
    :cond_d
    const-string v67, "a:paddingTop"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 666
    .local v53, paddingTop:Ljava/lang/String;
    const-string v67, "a:paddingBottom"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 667
    .local v50, paddingBom:Ljava/lang/String;
    const-string v67, "a:paddingLeft"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 668
    .local v51, paddingLeft:Ljava/lang/String;
    const-string v67, "a:paddingRight"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 670
    .local v52, paddingRight:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, TTop:I
    const/4 v6, 0x0

    .local v6, TBom:I
    const/4 v7, 0x0

    .local v7, TLeft:I
    const/4 v8, 0x0

    .line 672
    .local v8, TRight:I
    if-eqz v53, :cond_e

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v9

    .line 674
    :cond_e
    if-eqz v50, :cond_f

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v6

    .line 676
    :cond_f
    if-eqz v51, :cond_10

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v7

    .line 678
    :cond_10
    if-eqz v52, :cond_11

    .line 679
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v8

    .line 681
    :cond_11
    move-object/from16 v0, v37

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 684
    .end local v6           #TBom:I
    .end local v7           #TLeft:I
    .end local v8           #TRight:I
    .end local v9           #TTop:I
    .end local v25           #gravity:Ljava/lang/String;
    .end local v28           #image:Ljava/lang/String;
    .end local v29           #imageColor:Ljava/lang/String;
    .end local v37           #ll:Landroid/widget/LinearLayout;
    .end local v46           #orient:Ljava/lang/String;
    .end local v49           #padding:Ljava/lang/String;
    .end local v50           #paddingBom:Ljava/lang/String;
    .end local v51           #paddingLeft:Ljava/lang/String;
    .end local v52           #paddingRight:Ljava/lang/String;
    .end local v53           #paddingTop:Ljava/lang/String;
    .end local v64           #touchMode:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v55

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v67, v0

    if-eqz v67, :cond_13

    move-object/from16 v34, v55

    .line 686
    check-cast v34, Landroid/widget/ImageView;

    .line 688
    .local v34, iv:Landroid/widget/ImageView;
    const-string v67, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 689
    .restart local v28       #image:Ljava/lang/String;
    if-eqz v28, :cond_13

    .line 690
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v32

    .line 691
    .restart local v32       #is:Ljava/io/InputStream;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v34

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    .end local v28           #image:Ljava/lang/String;
    .end local v32           #is:Ljava/io/InputStream;
    .end local v34           #iv:Landroid/widget/ImageView;
    :cond_13
    move-object/from16 v0, v55

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v67, v0

    if-eqz v67, :cond_1c

    move-object/from16 v65, v55

    .line 697
    check-cast v65, Landroid/widget/TextView;

    .line 699
    .local v65, tv:Landroid/widget/TextView;
    const-string v67, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 700
    .local v61, textID:Ljava/lang/String;
    const-string v67, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 701
    .local v58, text:Ljava/lang/String;
    const-string v67, "a:infotext"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 702
    .local v31, infotext:Ljava/lang/String;
    const-string v67, "a:loctbtntext"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 703
    .local v38, loctbtntext:Ljava/lang/String;
    const-string v67, "a:otptext"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 704
    .local v47, otptext:Ljava/lang/String;
    const-string v67, "a:textcontent"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 705
    .local v63, textcontent:Ljava/lang/String;
    const-string v67, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 706
    .local v62, textSize:Ljava/lang/String;
    const-string v67, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 707
    .local v59, textColor:Ljava/lang/String;
    const-string v67, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 710
    .local v60, textGravity:Ljava/lang/String;
    const/16 v21, 0x0

    .line 713
    .local v21, converItemName:Ljava/lang/String;
    if-eqz v58, :cond_14

    .line 714
    const-string v67, "\\n"

    const-string v68, "\n"

    move-object/from16 v0, v58

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v58

    .line 715
    move-object/from16 v0, v65

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    :cond_14
    if-eqz v38, :cond_15

    .line 718
    const-string v67, "* \uc0c1\ud488 \uacb0\uc81c \uc2dc \uc7a0\uae08 \uc124\uc815\uc744 \ud558\uc2dc\uba74 \ubcf4\ub2e4 \uc548\uc804\ud55c \uacb0\uc81c\ub97c \ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    :cond_15
    if-eqz v31, :cond_16

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v54

    .line 726
    .local v54, pm:Landroid/content/pm/PackageManager;
    const/16 v67, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 727
    .local v11, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v10, 0x0

    .line 728
    .local v10, app:Landroid/content/pm/ApplicationInfo;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v41

    .line 729
    .local v41, nSize:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v41

    if-lt v0, v1, :cond_22

    .line 740
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v11           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v26           #i:I
    .end local v41           #nSize:I
    .end local v54           #pm:Landroid/content/pm/PackageManager;
    :cond_16
    if-eqz v47, :cond_17

    .line 741
    const-string v67, "\uc774 \ud6c4 \uad6c\ub9e4 \uc2dc \uc778\uc99d \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc9c0 \uc54a\uaca0\uc2b5\ub2c8\ub2e4"

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :cond_17
    if-eqz v63, :cond_18

    .line 746
    const-string v67, "\\n"

    const-string v68, "\n"

    move-object/from16 v0, v63

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v63

    .line 747
    const-string v67, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,"

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    :cond_18
    if-eqz v62, :cond_19

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v67

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v67, v0

    move-object/from16 v0, v65

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 751
    :cond_19
    if-eqz v59, :cond_1a

    .line 752
    invoke-static/range {v59 .. v59}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v65

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    :cond_1a
    if-eqz v61, :cond_1b

    .line 755
    const-string v67, "ItemName"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_25

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemName:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 757
    .local v33, itemName:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v67

    const/16 v68, 0xa

    move/from16 v0, v67

    move/from16 v1, v68

    if-le v0, v1, :cond_24

    .line 758
    const/16 v67, 0x0

    const/16 v68, 0xa

    move-object/from16 v0, v33

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 759
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v68

    invoke-direct/range {v67 .. v68}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v68, "..."

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 760
    move-object/from16 v0, v65

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    .end local v33           #itemName:Ljava/lang/String;
    :cond_1b
    :goto_5
    if-eqz v60, :cond_30

    .line 803
    const/16 v67, 0x11

    move-object/from16 v0, v65

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 806
    :goto_6
    const/16 v67, 0x0

    const v68, 0x3f933333

    move-object/from16 v0, v65

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 810
    .end local v21           #converItemName:Ljava/lang/String;
    .end local v31           #infotext:Ljava/lang/String;
    .end local v38           #loctbtntext:Ljava/lang/String;
    .end local v47           #otptext:Ljava/lang/String;
    .end local v58           #text:Ljava/lang/String;
    .end local v59           #textColor:Ljava/lang/String;
    .end local v60           #textGravity:Ljava/lang/String;
    .end local v61           #textID:Ljava/lang/String;
    .end local v62           #textSize:Ljava/lang/String;
    .end local v63           #textcontent:Ljava/lang/String;
    .end local v65           #tv:Landroid/widget/TextView;
    :cond_1c
    move-object/from16 v0, v55

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v67, v0

    if-eqz v67, :cond_1d

    move-object/from16 v30, v55

    .line 812
    check-cast v30, Landroid/widget/ImageView;

    .line 813
    .local v30, imageview:Landroid/widget/ImageView;
    const-string v67, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 814
    .restart local v28       #image:Ljava/lang/String;
    if-eqz v28, :cond_1d

    .line 815
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v32

    .line 816
    .restart local v32       #is:Ljava/io/InputStream;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    .line 817
    .local v39, mDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 821
    .end local v28           #image:Ljava/lang/String;
    .end local v30           #imageview:Landroid/widget/ImageView;
    .end local v32           #is:Ljava/io/InputStream;
    .end local v39           #mDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1d
    move-object/from16 v0, v55

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v67, v0

    if-eqz v67, :cond_1e

    .line 824
    const-string v67, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 825
    .local v43, offimage:Ljava/lang/String;
    const-string v67, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 827
    .local v45, onimage:Ljava/lang/String;
    const-string v35, "bt_buy_dim"

    .line 828
    .local v35, limitOffimage:Ljava/lang/String;
    const-string v36, "bt_buy_dim"

    .line 831
    .local v36, limitOnimage:Ljava/lang/String;
    if-eqz v43, :cond_39

    move-object/from16 v67, v55

    .line 834
    check-cast v67, Landroid/widget/Button;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    .line 836
    const v57, 0x10100a7

    .line 838
    .local v57, statePressed:I
    new-instance v67, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v67 .. v67}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 839
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mStream:Ljava/io/InputStream;

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mStream:Ljava/io/InputStream;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    .line 842
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mStream:Ljava/io/InputStream;

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mStream:Ljava/io/InputStream;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v57, v68, v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    move-object/from16 v69, v0

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v69, v0

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 850
    new-instance v67, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v67 .. v67}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 851
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessStream:Ljava/io/InputStream;

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessStream:Ljava/io/InputStream;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    .line 854
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v69, "bt_buy_dim"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessStream:Ljava/io/InputStream;

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessStream:Ljava/io/InputStream;

    move-object/from16 v67, v0

    const-string v68, "bt_buy_dim"

    invoke-static/range {v67 .. v68}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v57, v68, v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    move-object/from16 v69, v0

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v69, v0

    invoke-virtual/range {v67 .. v69}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 872
    const-string v67, "btn_buy_nor_h"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_31

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getLimitExcess()Z

    move-result v67

    if-eqz v67, :cond_31

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mOkBtn:Landroid/widget/Button;

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mOkDrawbles:Landroid/graphics/drawable/StateListDrawable;

    .line 875
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    .line 881
    :goto_7
    const-string v67, "btn_buy_nor_h"

    move-object/from16 v0, v43

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    move/from16 v67, v0

    if-eqz v67, :cond_32

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLiminExcessDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 894
    :goto_8
    const-string v67, "btn_buy_sel_h"

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_33

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getLimitExcess()Z

    move-result v67

    if-nez v67, :cond_33

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    .end local v35           #limitOffimage:Ljava/lang/String;
    .end local v36           #limitOnimage:Ljava/lang/String;
    .end local v43           #offimage:Ljava/lang/String;
    .end local v45           #onimage:Ljava/lang/String;
    .end local v57           #statePressed:I
    :cond_1e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Ljava/util/Stack;->size()I

    move-result v67

    if-lez v67, :cond_0

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v67

    move-object/from16 v0, v55

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 621
    .restart local v37       #ll:Landroid/widget/LinearLayout;
    .restart local v46       #orient:Ljava/lang/String;
    :cond_1f
    const-string v67, "vertical"

    move-object/from16 v0, v46

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_8

    .line 622
    const/16 v67, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 645
    .restart local v25       #gravity:Ljava/lang/String;
    .restart local v28       #image:Ljava/lang/String;
    .restart local v29       #imageColor:Ljava/lang/String;
    :cond_20
    const-string v67, "left"

    move-object/from16 v0, v25

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_21

    .line 646
    const/16 v67, 0x3

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 648
    :cond_21
    const/16 v67, 0x5

    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 730
    .end local v25           #gravity:Ljava/lang/String;
    .end local v28           #image:Ljava/lang/String;
    .end local v29           #imageColor:Ljava/lang/String;
    .end local v37           #ll:Landroid/widget/LinearLayout;
    .end local v46           #orient:Ljava/lang/String;
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v11       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21       #converItemName:Ljava/lang/String;
    .restart local v26       #i:I
    .restart local v31       #infotext:Ljava/lang/String;
    .restart local v38       #loctbtntext:Ljava/lang/String;
    .restart local v41       #nSize:I
    .restart local v47       #otptext:Ljava/lang/String;
    .restart local v54       #pm:Landroid/content/pm/PackageManager;
    .restart local v58       #text:Ljava/lang/String;
    .restart local v59       #textColor:Ljava/lang/String;
    .restart local v60       #textGravity:Ljava/lang/String;
    .restart local v61       #textID:Ljava/lang/String;
    .restart local v62       #textSize:Ljava/lang/String;
    .restart local v63       #textcontent:Ljava/lang/String;
    .restart local v65       #tv:Landroid/widget/TextView;
    :cond_22
    move/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 731
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v67, v0

    const-string v68, "com.skt.skaf.A000Z00040"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v67

    if-nez v67, :cond_23

    .line 732
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 729
    :cond_23
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_4

    .line 763
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v11           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v26           #i:I
    .end local v41           #nSize:I
    .end local v54           #pm:Landroid/content/pm/PackageManager;
    .restart local v33       #itemName:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, v65

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 765
    .end local v33           #itemName:Ljava/lang/String;
    :cond_25
    const-string v67, "ItemUseDate"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_26

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemUseDate:Ljava/lang/String;

    move-object/from16 v67, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 767
    :cond_26
    const-string v67, "ItemPrice"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_27

    .line 768
    new-instance v67, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    move/from16 v68, v0

    invoke-static/range {v68 .. v68}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v68

    invoke-direct/range {v67 .. v68}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v68, "\uc6d0"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 769
    :cond_27
    const-string v67, "ItemCash"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_28

    .line 770
    new-instance v67, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    move/from16 v68, v0

    invoke-static/range {v68 .. v68}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v68

    invoke-direct/range {v67 .. v68}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v68, "P"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 771
    :cond_28
    const-string v67, "xperiaCash"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2a

    .line 772
    const-string v67, "LT15i"

    move-object/from16 v0, v40

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_29

    .line 773
    const-string v67, "\uc0ac\uc6a9  "

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 775
    :cond_29
    const-string v67, ""

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 777
    :cond_2a
    const-string v67, "commonMessage"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2b

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    move-object/from16 v67, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 779
    :cond_2b
    const-string v67, "Version"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2d

    .line 780
    const-string v67, "iap.tstore.co.kr"

    const-string v68, "iapdev.tstore.co.kr"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2c

    .line 781
    const-string v67, "V 12.05.08(\uac1c\ubc1c)"

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 783
    :cond_2c
    const-string v67, "V 12.05.08"

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 785
    :cond_2d
    const-string v67, "HeaderMessage"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_2e

    const-string v67, "FooterMessage"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2f

    .line 786
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->FinalVersionCheck:Z

    move/from16 v67, v0

    if-eqz v67, :cond_1b

    .line 787
    const/16 v55, 0x0

    goto/16 :goto_1

    .line 794
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    move/from16 v67, v0

    if-nez v67, :cond_1b

    .line 795
    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 796
    new-instance v67, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPurchasePrice:I

    move/from16 v68, v0

    invoke-static/range {v68 .. v68}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v68

    invoke-direct/range {v67 .. v68}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v68, "\uc6d0"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 805
    :cond_30
    const/16 v67, 0x13

    move-object/from16 v0, v65

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_6

    .line 878
    .end local v21           #converItemName:Ljava/lang/String;
    .end local v31           #infotext:Ljava/lang/String;
    .end local v38           #loctbtntext:Ljava/lang/String;
    .end local v47           #otptext:Ljava/lang/String;
    .end local v58           #text:Ljava/lang/String;
    .end local v59           #textColor:Ljava/lang/String;
    .end local v60           #textGravity:Ljava/lang/String;
    .end local v61           #textID:Ljava/lang/String;
    .end local v62           #textSize:Ljava/lang/String;
    .end local v63           #textcontent:Ljava/lang/String;
    .end local v65           #tv:Landroid/widget/TextView;
    .restart local v35       #limitOffimage:Ljava/lang/String;
    .restart local v36       #limitOnimage:Ljava/lang/String;
    .restart local v43       #offimage:Ljava/lang/String;
    .restart local v45       #onimage:Ljava/lang/String;
    .restart local v57       #statePressed:I
    :cond_31
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mFlag:Z

    goto/16 :goto_7

    .line 885
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 896
    :cond_33
    const-string v67, "pop_btn_sel_ok"

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_34

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 898
    :cond_34
    const-string v67, "btn_info01_sel"

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_35

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 900
    :cond_35
    const-string v67, "btn_locking_sel"

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_38

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v54

    .line 903
    .restart local v54       #pm:Landroid/content/pm/PackageManager;
    const/16 v67, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 904
    .restart local v11       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v10, 0x0

    .line 905
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v41

    .line 906
    .restart local v41       #nSize:I
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_a
    move/from16 v0, v26

    move/from16 v1, v41

    if-lt v0, v1, :cond_36

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 907
    :cond_36
    move/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 908
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v67, v0

    const-string v68, "com.skt.skaf.A000Z00040"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v67

    if-nez v67, :cond_37

    .line 909
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 906
    :cond_37
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 916
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v11           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v26           #i:I
    .end local v41           #nSize:I
    .end local v54           #pm:Landroid/content/pm/PackageManager;
    :cond_38
    const-string v67, "btn_cancel_sel_h"

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_1e

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 922
    .end local v57           #statePressed:I
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    if-eqz v67, :cond_43

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    move/from16 v67, v0

    if-nez v67, :cond_3d

    move-object/from16 v20, v55

    .line 926
    check-cast v20, Landroid/widget/CheckBox;

    .line 928
    .local v20, checkbtn:Landroid/widget/CheckBox;
    const-string v18, "btn_check_ok_nor"

    .line 929
    .local v18, checkImage:Ljava/lang/String;
    const-string v19, "btn_check_ok_sel"

    .line 930
    .local v19, checkPImage:Ljava/lang/String;
    const-string v48, "btn_check_no_sel"

    .line 931
    .local v48, overImage:Ljava/lang/String;
    const-string v22, "btn_check_dim"

    .line 933
    .local v22, dimImage:Ljava/lang/String;
    const/16 v66, 0x0

    .line 935
    .local v66, xperia:Z
    const-string v67, "LT15i"

    move-object/from16 v0, v40

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_3a

    .line 936
    const/16 v66, 0x1

    .line 937
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 940
    :cond_3a
    if-nez v66, :cond_3b

    .line 942
    const/16 v16, 0x0

    .local v16, btOn:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .local v17, btOver:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .local v13, btCheck:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .local v14, btCheckP:Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 944
    .local v15, btDis:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 945
    .local v44, onStream:Ljava/io/InputStream;
    invoke-static/range {v44 .. v45}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 948
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 949
    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 952
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 953
    move-object/from16 v0, v44

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 956
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 957
    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 960
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 961
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 963
    new-instance v23, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 964
    .local v23, drawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v24, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 966
    .local v24, drawables2:Landroid/graphics/drawable/StateListDrawable;
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_0

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 967
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_1

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 968
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_2

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 969
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_3

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 970
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_4

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 972
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_5

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 973
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_6

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 974
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_7

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 975
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_8

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 976
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_9

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 978
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 979
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 981
    .end local v13           #btCheck:Landroid/graphics/drawable/Drawable;
    .end local v14           #btCheckP:Landroid/graphics/drawable/Drawable;
    .end local v15           #btDis:Landroid/graphics/drawable/Drawable;
    .end local v16           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v17           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v23           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v24           #drawables2:Landroid/graphics/drawable/StateListDrawable;
    .end local v44           #onStream:Ljava/io/InputStream;
    :cond_3b
    const/16 v66, 0x0

    .line 983
    const/16 v67, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    move/from16 v67, v0

    if-eqz v67, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    move/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    move/from16 v68, v0

    sub-int v67, v67, v68

    if-ltz v67, :cond_3c

    .line 987
    const/16 v67, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 991
    :goto_b
    new-instance v67, Lcom/feelingk/iap/gui/parser/ParserXML$25;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$25;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_9

    .line 989
    :cond_3c
    const/16 v67, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_b

    .line 1011
    .end local v18           #checkImage:Ljava/lang/String;
    .end local v19           #checkPImage:Ljava/lang/String;
    .end local v20           #checkbtn:Landroid/widget/CheckBox;
    .end local v22           #dimImage:Ljava/lang/String;
    .end local v48           #overImage:Ljava/lang/String;
    .end local v66           #xperia:Z
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    move/from16 v67, v0

    if-eqz v67, :cond_1e

    .line 1012
    move-object/from16 v0, v55

    instance-of v0, v0, Landroid/widget/CheckBox;

    move/from16 v67, v0

    if-eqz v67, :cond_1e

    .line 1013
    const/4 v5, 0x0

    .line 1014
    .local v5, Checkonimage:Ljava/lang/String;
    const-string v67, "a:checkid"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .local v27, id:Ljava/lang/String;
    move-object/from16 v20, v55

    .line 1016
    check-cast v20, Landroid/widget/CheckBox;

    .line 1018
    .restart local v20       #checkbtn:Landroid/widget/CheckBox;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1019
    const/16 v18, 0x0

    .line 1023
    .restart local v18       #checkImage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    move/from16 v67, v0

    if-eqz v67, :cond_41

    .line 1024
    const-string v5, "checkbox_y"

    .line 1025
    const-string v18, "checkbox_n"

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    move-object/from16 v67, v0

    const/16 v68, 0x0

    const/16 v69, 0x1

    aput-boolean v69, v67, v68

    .line 1035
    :cond_3e
    :goto_c
    const/16 v67, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1038
    const/16 v16, 0x0

    .restart local v16       #btOn:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 1050
    .restart local v13       #btCheck:Landroid/graphics/drawable/Drawable;
    const/16 v66, 0x0

    .line 1052
    .restart local v66       #xperia:Z
    const-string v67, "LT15i"

    move-object/from16 v0, v40

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_3f

    .line 1053
    const/16 v66, 0x1

    .line 1054
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 1057
    :cond_3f
    if-nez v66, :cond_42

    .line 1059
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 1060
    .restart local v44       #onStream:Ljava/io/InputStream;
    move-object/from16 v0, v44

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1063
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 1064
    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1066
    new-instance v23, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1067
    .restart local v23       #drawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v24, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1069
    .restart local v24       #drawables2:Landroid/graphics/drawable/StateListDrawable;
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_a

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1070
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_b

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1072
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_c

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1073
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_d

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1074
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_e

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1075
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_f

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1076
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_10

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1078
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1079
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1089
    .end local v23           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v24           #drawables2:Landroid/graphics/drawable/StateListDrawable;
    .end local v44           #onStream:Ljava/io/InputStream;
    :cond_40
    :goto_d
    const/16 v66, 0x0

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v67, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_9

    .line 1029
    .end local v13           #btCheck:Landroid/graphics/drawable/Drawable;
    .end local v16           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v66           #xperia:Z
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    move/from16 v67, v0

    if-nez v67, :cond_3e

    .line 1030
    const-string v5, "checkbox_n"

    .line 1031
    const-string v18, "checkbox_y"

    goto/16 :goto_c

    .line 1083
    .restart local v13       #btCheck:Landroid/graphics/drawable/Drawable;
    .restart local v16       #btOn:Landroid/graphics/drawable/Drawable;
    .restart local v66       #xperia:Z
    :cond_42
    if-eqz v66, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    move/from16 v67, v0

    if-eqz v67, :cond_40

    .line 1084
    const/16 v67, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1085
    const/16 v66, 0x0

    goto :goto_d

    .end local v5           #Checkonimage:Ljava/lang/String;
    .end local v13           #btCheck:Landroid/graphics/drawable/Drawable;
    .end local v16           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v18           #checkImage:Ljava/lang/String;
    .end local v20           #checkbtn:Landroid/widget/CheckBox;
    .end local v27           #id:Ljava/lang/String;
    .end local v66           #xperia:Z
    :cond_43
    move-object/from16 v20, v55

    .line 1099
    check-cast v20, Landroid/widget/CheckBox;

    .line 1100
    .restart local v20       #checkbtn:Landroid/widget/CheckBox;
    const-string v67, "a:checkid"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1101
    .restart local v27       #id:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1103
    const-string v18, "checkbox_y"

    .line 1104
    .restart local v18       #checkImage:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1105
    .restart local v19       #checkPImage:Ljava/lang/String;
    const/16 v48, 0x0

    .line 1106
    .restart local v48       #overImage:Ljava/lang/String;
    const/16 v22, 0x0

    .line 1109
    .restart local v22       #dimImage:Ljava/lang/String;
    const/16 v66, 0x0

    .line 1111
    .restart local v66       #xperia:Z
    const-string v67, "LT15i"

    move-object/from16 v0, v40

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_44

    .line 1112
    const/16 v66, 0x1

    .line 1113
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 1115
    :cond_44
    if-nez v66, :cond_45

    .line 1117
    const/16 v16, 0x0

    .restart local v16       #btOn:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 1120
    .restart local v13       #btCheck:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 1121
    .restart local v44       #onStream:Ljava/io/InputStream;
    invoke-static/range {v44 .. v45}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1125
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v69

    invoke-direct/range {v68 .. v69}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, ".png"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 1126
    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1129
    new-instance v23, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1130
    .restart local v23       #drawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v24, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1132
    .restart local v24       #drawables2:Landroid/graphics/drawable/StateListDrawable;
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_11

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1133
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_12

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1135
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_13

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1136
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_14

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1137
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_15

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1138
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v67, :array_16

    const/16 v68, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1140
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1144
    .end local v13           #btCheck:Landroid/graphics/drawable/Drawable;
    .end local v16           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v23           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v24           #drawables2:Landroid/graphics/drawable/StateListDrawable;
    .end local v44           #onStream:Ljava/io/InputStream;
    :cond_45
    const/16 v66, 0x0

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v67, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_9

    .line 966
    nop

    :array_0
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 967
    :array_1
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 968
    :array_2
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 969
    :array_3
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 970
    :array_4
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 972
    :array_5
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 973
    :array_6
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 974
    :array_7
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 975
    :array_8
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 976
    :array_9
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1069
    :array_a
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1070
    :array_b
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1072
    :array_c
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1073
    :array_d
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1074
    :array_e
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1075
    :array_f
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1076
    :array_10
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1132
    :array_11
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1133
    :array_12
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1135
    :array_13
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1136
    :array_14
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1137
    :array_15
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 1138
    :array_16
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method private createViewAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 40
    .parameter "parse"

    .prologue
    .line 1570
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1571
    .local v20, name:Ljava/lang/String;
    const/16 v27, 0x0

    .line 1572
    .local v27, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 1574
    .local v5, atts:Landroid/util/AttributeSet;
    const-string v37, "LinearLayout"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 1575
    new-instance v27, Landroid/widget/LinearLayout;

    .end local v27           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1590
    .restart local v27       #result:Landroid/view/View;
    :goto_0
    if-nez v27, :cond_5

    .line 1591
    const/16 v27, 0x0

    .line 1740
    .end local v27           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v27

    .line 1577
    .restart local v27       #result:Landroid/view/View;
    :cond_1
    const-string v37, "TextView"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 1578
    new-instance v27, Landroid/widget/TextView;

    .end local v27           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v27       #result:Landroid/view/View;
    goto :goto_0

    .line 1580
    :cond_2
    const-string v37, "Button"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 1581
    new-instance v27, Landroid/widget/Button;

    .end local v27           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v27       #result:Landroid/view/View;
    goto :goto_0

    .line 1583
    :cond_3
    const-string v37, "EditText"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 1584
    new-instance v27, Landroid/widget/EditText;

    .end local v27           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v27       #result:Landroid/view/View;
    goto :goto_0

    .line 1587
    :cond_4
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "# UnSupported tag:"

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :cond_5
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v37, v0

    if-eqz v37, :cond_b

    move-object/from16 v18, v27

    .line 1594
    check-cast v18, Landroid/widget/LinearLayout;

    .line 1595
    .local v18, ll:Landroid/widget/LinearLayout;
    const-string v37, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1597
    .local v23, orient:Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 1598
    const-string v37, "horizontal"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 1599
    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1605
    :cond_6
    :goto_2
    const-string v37, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1606
    .local v14, image:Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 1607
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ".png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 1608
    .local v16, is:Ljava/io/InputStream;
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1612
    .end local v16           #is:Ljava/io/InputStream;
    :cond_7
    const-string v37, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1613
    .local v15, imageColor:Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 1616
    const/high16 v37, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1620
    :cond_8
    const-string v37, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1621
    .local v12, gravity:Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 1622
    const-string v37, "center"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_16

    .line 1623
    const/16 v37, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1629
    :cond_9
    :goto_3
    const-string v37, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1630
    .local v24, padding:Ljava/lang/String;
    if-eqz v24, :cond_a

    .line 1631
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v28

    .line 1632
    .local v28, size:I
    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v28

    move/from16 v3, v28

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1636
    .end local v28           #size:I
    :cond_a
    const-string v37, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1637
    .local v35, touchMode:Ljava/lang/String;
    if-eqz v35, :cond_b

    .line 1638
    const/16 v37, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1644
    .end local v12           #gravity:Ljava/lang/String;
    .end local v14           #image:Ljava/lang/String;
    .end local v15           #imageColor:Ljava/lang/String;
    .end local v18           #ll:Landroid/widget/LinearLayout;
    .end local v23           #orient:Ljava/lang/String;
    .end local v24           #padding:Ljava/lang/String;
    .end local v35           #touchMode:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v37, v0

    if-eqz v37, :cond_10

    move-object/from16 v36, v27

    .line 1645
    check-cast v36, Landroid/widget/TextView;

    .line 1647
    .local v36, tv:Landroid/widget/TextView;
    const-string v37, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1648
    .local v33, textID:Ljava/lang/String;
    const-string v37, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1649
    .local v30, text:Ljava/lang/String;
    const-string v37, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1650
    .local v34, textSize:Ljava/lang/String;
    const-string v37, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1651
    .local v31, textColor:Ljava/lang/String;
    const-string v37, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1653
    .local v32, textGravity:Ljava/lang/String;
    if-eqz v30, :cond_c

    .line 1654
    const-string v37, "\\n"

    const-string v38, "\n"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 1655
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1657
    :cond_c
    if-eqz v34, :cond_d

    .line 1658
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1659
    :cond_d
    if-eqz v31, :cond_e

    .line 1660
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1661
    :cond_e
    if-eqz v33, :cond_f

    .line 1662
    const-string v37, "Version"

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 1663
    const-string v37, "V 12.05.08"

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    :cond_f
    if-eqz v32, :cond_17

    .line 1668
    const/16 v37, 0x11

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setGravity(I)V

    .line 1671
    :goto_4
    const/16 v37, 0x0

    const v38, 0x3f933333

    invoke-virtual/range {v36 .. v38}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1675
    .end local v30           #text:Ljava/lang/String;
    .end local v31           #textColor:Ljava/lang/String;
    .end local v32           #textGravity:Ljava/lang/String;
    .end local v33           #textID:Ljava/lang/String;
    .end local v34           #textSize:Ljava/lang/String;
    .end local v36           #tv:Landroid/widget/TextView;
    :cond_10
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v37, v0

    if-eqz v37, :cond_11

    .line 1678
    const-string v37, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1679
    .local v21, offimage:Ljava/lang/String;
    const-string v37, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, onimage:Ljava/lang/String;
    move-object/from16 v8, v27

    .line 1681
    check-cast v8, Landroid/widget/Button;

    .line 1684
    .local v8, btn:Landroid/widget/Button;
    const/4 v6, 0x0

    .local v6, btOn:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 1686
    .local v7, btOver:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ".png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 1687
    .local v17, isStream:Ljava/io/InputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1689
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ".png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 1690
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1692
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1693
    .local v9, drawables:Landroid/graphics/drawable/StateListDrawable;
    const v29, 0x10100a7

    .line 1694
    .local v29, statePressed:I
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v29, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v9, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1695
    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v9, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1696
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1699
    const-string v37, "btn_con_sel"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_18

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1708
    .end local v6           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v7           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v8           #btn:Landroid/widget/Button;
    .end local v9           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v17           #isStream:Ljava/io/InputStream;
    .end local v21           #offimage:Ljava/lang/String;
    .end local v22           #onimage:Ljava/lang/String;
    .end local v29           #statePressed:I
    :cond_11
    :goto_5
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v37, v0

    if-eqz v37, :cond_14

    move-object/from16 v10, v27

    .line 1710
    check-cast v10, Landroid/widget/EditText;

    .line 1711
    .local v10, editText:Landroid/widget/EditText;
    const-string v37, ""

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1712
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1714
    const-string v37, "a:maxLength"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1715
    .local v19, maxLength:Ljava/lang/String;
    if-eqz v19, :cond_12

    .line 1716
    invoke-virtual {v10}, Landroid/widget/EditText;->setSingleLine()V

    .line 1717
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v11, v0, [Landroid/text/InputFilter;

    .line 1718
    .local v11, filterArray:[Landroid/text/InputFilter;
    const/16 v37, 0x0

    new-instance v38, Landroid/text/InputFilter$LengthFilter;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    invoke-direct/range {v38 .. v39}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v38, v11, v37

    .line 1719
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1721
    .end local v11           #filterArray:[Landroid/text/InputFilter;
    :cond_12
    const-string v37, "a:password"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1722
    .local v26, passwordText:Ljava/lang/String;
    if-eqz v26, :cond_13

    .line 1723
    new-instance v25, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v25 .. v25}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 1724
    .local v25, passwdtm:Landroid/text/method/PasswordTransformationMethod;
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1727
    .end local v25           #passwdtm:Landroid/text/method/PasswordTransformationMethod;
    :cond_13
    const-string v37, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1729
    .local v13, id:Ljava/lang/String;
    if-eqz v13, :cond_14

    .line 1730
    const-string v37, "JuminText1"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_19

    .line 1731
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 1737
    .end local v10           #editText:Landroid/widget/EditText;
    .end local v13           #id:Ljava/lang/String;
    .end local v19           #maxLength:Ljava/lang/String;
    .end local v26           #passwordText:Ljava/lang/String;
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Stack;->size()I

    move-result v37

    if-lez v37, :cond_0

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1600
    .restart local v18       #ll:Landroid/widget/LinearLayout;
    .restart local v23       #orient:Ljava/lang/String;
    :cond_15
    const-string v37, "vertical"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 1601
    const/16 v37, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1625
    .restart local v12       #gravity:Ljava/lang/String;
    .restart local v14       #image:Ljava/lang/String;
    .restart local v15       #imageColor:Ljava/lang/String;
    :cond_16
    const/16 v37, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 1670
    .end local v12           #gravity:Ljava/lang/String;
    .end local v14           #image:Ljava/lang/String;
    .end local v15           #imageColor:Ljava/lang/String;
    .end local v18           #ll:Landroid/widget/LinearLayout;
    .end local v23           #orient:Ljava/lang/String;
    .restart local v30       #text:Ljava/lang/String;
    .restart local v31       #textColor:Ljava/lang/String;
    .restart local v32       #textGravity:Ljava/lang/String;
    .restart local v33       #textID:Ljava/lang/String;
    .restart local v34       #textSize:Ljava/lang/String;
    .restart local v36       #tv:Landroid/widget/TextView;
    :cond_17
    const/16 v37, 0x13

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 1702
    .end local v30           #text:Ljava/lang/String;
    .end local v31           #textColor:Ljava/lang/String;
    .end local v32           #textGravity:Ljava/lang/String;
    .end local v33           #textID:Ljava/lang/String;
    .end local v34           #textSize:Ljava/lang/String;
    .end local v36           #tv:Landroid/widget/TextView;
    .restart local v6       #btOn:Landroid/graphics/drawable/Drawable;
    .restart local v7       #btOver:Landroid/graphics/drawable/Drawable;
    .restart local v8       #btn:Landroid/widget/Button;
    .restart local v9       #drawables:Landroid/graphics/drawable/StateListDrawable;
    .restart local v17       #isStream:Ljava/io/InputStream;
    .restart local v21       #offimage:Ljava/lang/String;
    .restart local v22       #onimage:Ljava/lang/String;
    .restart local v29       #statePressed:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 1733
    .end local v6           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v7           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v8           #btn:Landroid/widget/Button;
    .end local v9           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v17           #isStream:Ljava/io/InputStream;
    .end local v21           #offimage:Ljava/lang/String;
    .end local v22           #onimage:Ljava/lang/String;
    .end local v29           #statePressed:I
    .restart local v10       #editText:Landroid/widget/EditText;
    .restart local v13       #id:Ljava/lang/String;
    .restart local v19       #maxLength:Ljava/lang/String;
    .restart local v26       #passwordText:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    goto :goto_6
.end method

.method private createViewAutoPurchaseFormPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 55
    .parameter "parse"

    .prologue
    .line 2054
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 2055
    .local v25, name:Ljava/lang/String;
    const/16 v38, 0x0

    .line 2056
    .local v38, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 2057
    .local v6, atts:Landroid/util/AttributeSet;
    const-string v52, "LinearLayout"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1

    .line 2058
    new-instance v38, Landroid/widget/LinearLayout;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2080
    .restart local v38       #result:Landroid/view/View;
    :goto_0
    if-nez v38, :cond_7

    .line 2081
    const/16 v38, 0x0

    .line 2324
    .end local v38           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v38

    .line 2060
    .restart local v38       #result:Landroid/view/View;
    :cond_1
    const-string v52, "TextView"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    .line 2061
    new-instance v38, Landroid/widget/TextView;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v38       #result:Landroid/view/View;
    goto :goto_0

    .line 2063
    :cond_2
    const-string v52, "Button"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_3

    .line 2064
    new-instance v38, Landroid/widget/Button;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v38       #result:Landroid/view/View;
    goto :goto_0

    .line 2066
    :cond_3
    const-string v52, "ImageView"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_4

    .line 2067
    new-instance v38, Landroid/widget/ImageView;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v38       #result:Landroid/view/View;
    goto :goto_0

    .line 2069
    :cond_4
    const-string v52, "ScrollView"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_5

    .line 2070
    new-instance v38, Landroid/widget/ScrollView;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2071
    .restart local v38       #result:Landroid/view/View;
    const/16 v52, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    goto :goto_0

    .line 2073
    :cond_5
    const-string v52, "CheckBox"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_6

    .line 2074
    new-instance v38, Landroid/widget/CheckBox;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v38       #result:Landroid/view/View;
    goto/16 :goto_0

    .line 2077
    :cond_6
    new-instance v52, Ljava/lang/StringBuilder;

    const-string v53, "# UnSupported tag:"

    invoke-direct/range {v52 .. v53}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v52

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2083
    :cond_7
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v52, v0

    if-eqz v52, :cond_11

    move-object/from16 v23, v38

    .line 2084
    check-cast v23, Landroid/widget/LinearLayout;

    .line 2085
    .local v23, ll:Landroid/widget/LinearLayout;
    const-string v52, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2087
    .local v32, orient:Ljava/lang/String;
    if-eqz v32, :cond_8

    .line 2088
    const-string v52, "horizontal"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_16

    .line 2089
    const/16 v52, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2095
    :cond_8
    :goto_2
    const-string v52, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2096
    .local v18, image:Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 2097
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 2098
    .local v20, is:Ljava/io/InputStream;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v52

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2102
    .end local v20           #is:Ljava/io/InputStream;
    :cond_9
    const-string v52, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2103
    .local v19, imageColor:Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 2106
    const/high16 v52, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2110
    :cond_a
    const-string v52, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2111
    .local v16, gravity:Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 2112
    const-string v52, "center"

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_17

    .line 2113
    const/16 v52, 0x11

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2122
    :cond_b
    :goto_3
    const-string v52, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2123
    .local v33, padding:Ljava/lang/String;
    if-eqz v33, :cond_c

    .line 2124
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v39

    .line 2125
    .local v39, size:I
    move-object/from16 v0, v23

    move/from16 v1, v39

    move/from16 v2, v39

    move/from16 v3, v39

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2128
    .end local v39           #size:I
    :cond_c
    const-string v52, "a:paddingleft"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2129
    .local v35, paddingLeft:Ljava/lang/String;
    const-string v52, "a:paddingTop"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2130
    .local v37, paddingTop:Ljava/lang/String;
    const-string v52, "a:paddingRight"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2131
    .local v36, paddingRight:Ljava/lang/String;
    const-string v52, "a:paddingBottom"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2132
    .local v34, paddingBottom:Ljava/lang/String;
    const/16 v41, 0x0

    .local v41, sizeLeft:I
    const/16 v43, 0x0

    .local v43, sizeTop:I
    const/16 v42, 0x0

    .local v42, sizeRight:I
    const/16 v40, 0x0

    .line 2134
    .local v40, sizeBottom:I
    if-eqz v35, :cond_d

    .line 2135
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v41

    .line 2136
    :cond_d
    if-eqz v37, :cond_e

    .line 2137
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v43

    .line 2138
    :cond_e
    if-eqz v36, :cond_f

    .line 2139
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v42

    .line 2140
    :cond_f
    if-eqz v34, :cond_10

    .line 2141
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v40

    .line 2143
    :cond_10
    move-object/from16 v0, v23

    move/from16 v1, v41

    move/from16 v2, v43

    move/from16 v3, v42

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2146
    const-string v52, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2147
    .local v49, touchMode:Ljava/lang/String;
    if-eqz v49, :cond_11

    .line 2148
    const/16 v52, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 2153
    .end local v16           #gravity:Ljava/lang/String;
    .end local v18           #image:Ljava/lang/String;
    .end local v19           #imageColor:Ljava/lang/String;
    .end local v23           #ll:Landroid/widget/LinearLayout;
    .end local v32           #orient:Ljava/lang/String;
    .end local v33           #padding:Ljava/lang/String;
    .end local v34           #paddingBottom:Ljava/lang/String;
    .end local v35           #paddingLeft:Ljava/lang/String;
    .end local v36           #paddingRight:Ljava/lang/String;
    .end local v37           #paddingTop:Ljava/lang/String;
    .end local v40           #sizeBottom:I
    .end local v41           #sizeLeft:I
    .end local v42           #sizeRight:I
    .end local v43           #sizeTop:I
    .end local v49           #touchMode:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v52, v0

    if-eqz v52, :cond_12

    move-object/from16 v22, v38

    .line 2155
    check-cast v22, Landroid/widget/ImageView;

    .line 2157
    .local v22, iv:Landroid/widget/ImageView;
    const-string v52, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2158
    .restart local v18       #image:Ljava/lang/String;
    if-eqz v18, :cond_12

    .line 2159
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 2160
    .restart local v20       #is:Ljava/io/InputStream;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v52

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2169
    .end local v18           #image:Ljava/lang/String;
    .end local v20           #is:Ljava/io/InputStream;
    .end local v22           #iv:Landroid/widget/ImageView;
    :cond_12
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/CheckBox;

    move/from16 v52, v0

    if-eqz v52, :cond_19

    .line 2170
    const-string v52, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2171
    .local v30, oncheckimage:Ljava/lang/String;
    const-string v52, "a:checkid"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, id:Ljava/lang/String;
    move-object/from16 v13, v38

    .line 2173
    check-cast v13, Landroid/widget/CheckBox;

    .line 2175
    .local v13, checkbtn:Landroid/widget/CheckBox;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 2177
    const-string v12, "checkbox_y"

    .line 2180
    .local v12, checkImage:Ljava/lang/String;
    sget-object v24, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2181
    .local v24, modelName:Ljava/lang/String;
    const/16 v51, 0x0

    .line 2183
    .local v51, xperia:Z
    const-string v52, "LT15i"

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_13

    .line 2184
    const/16 v51, 0x1

    .line 2185
    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 2187
    :cond_13
    if-nez v51, :cond_14

    .line 2189
    const/4 v8, 0x0

    .local v8, btOn:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 2191
    .local v7, btCheck:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v29

    .line 2192
    .local v29, onStream:Ljava/io/InputStream;
    invoke-static/range {v29 .. v30}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2195
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v29

    .line 2196
    move-object/from16 v0, v29

    invoke-static {v0, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2200
    new-instance v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2201
    .local v14, drawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v15, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2203
    .local v15, drawables2:Landroid/graphics/drawable/StateListDrawable;
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_0

    move-object/from16 v0, v52

    invoke-virtual {v14, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2204
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_1

    move-object/from16 v0, v52

    invoke-virtual {v14, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2206
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_2

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2207
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_3

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2208
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_4

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2209
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_5

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2210
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_6

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2212
    invoke-virtual {v13, v15}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2213
    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2215
    .end local v7           #btCheck:Landroid/graphics/drawable/Drawable;
    .end local v8           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v14           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v15           #drawables2:Landroid/graphics/drawable/StateListDrawable;
    .end local v29           #onStream:Ljava/io/InputStream;
    :cond_14
    const/16 v51, 0x0

    .line 2217
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2321
    .end local v12           #checkImage:Ljava/lang/String;
    .end local v13           #checkbtn:Landroid/widget/CheckBox;
    .end local v17           #id:Ljava/lang/String;
    .end local v24           #modelName:Ljava/lang/String;
    .end local v30           #oncheckimage:Ljava/lang/String;
    .end local v51           #xperia:Z
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/Stack;->size()I

    move-result v52

    if-lez v52, :cond_0

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v52

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2090
    .restart local v23       #ll:Landroid/widget/LinearLayout;
    .restart local v32       #orient:Ljava/lang/String;
    :cond_16
    const-string v52, "vertical"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_8

    .line 2091
    const/16 v52, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 2114
    .restart local v16       #gravity:Ljava/lang/String;
    .restart local v18       #image:Ljava/lang/String;
    .restart local v19       #imageColor:Ljava/lang/String;
    :cond_17
    const-string v52, "right"

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_18

    .line 2115
    const/16 v52, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2116
    :cond_18
    const-string v52, "left"

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_b

    .line 2117
    const/16 v52, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2222
    .end local v16           #gravity:Ljava/lang/String;
    .end local v18           #image:Ljava/lang/String;
    .end local v19           #imageColor:Ljava/lang/String;
    .end local v23           #ll:Landroid/widget/LinearLayout;
    .end local v32           #orient:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v52, v0

    if-eqz v52, :cond_1b

    .line 2225
    const-string v52, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2226
    .local v28, offimage:Ljava/lang/String;
    const-string v52, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, onimage:Ljava/lang/String;
    move-object/from16 v10, v38

    .line 2228
    check-cast v10, Landroid/widget/Button;

    .line 2231
    .local v10, btn:Landroid/widget/Button;
    const/4 v8, 0x0

    .restart local v8       #btOn:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 2233
    .local v9, btOver:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 2234
    .local v21, isStream:Ljava/io/InputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2236
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 2237
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2239
    new-instance v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2240
    .restart local v14       #drawables:Landroid/graphics/drawable/StateListDrawable;
    const v44, 0x10100a7

    .line 2241
    .local v44, statePressed:I
    const/16 v52, 0x1

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput v44, v52, v53

    move-object/from16 v0, v52

    invoke-virtual {v14, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2242
    const/16 v52, 0x0

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v14, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2243
    invoke-virtual {v10, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2247
    const-string v52, "btn_con_sel"

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1a

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 2249
    :cond_1a
    const-string v52, "btn_buycancel_sel"

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_15

    .line 2250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 2253
    .end local v8           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v9           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v10           #btn:Landroid/widget/Button;
    .end local v14           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v21           #isStream:Ljava/io/InputStream;
    .end local v28           #offimage:Ljava/lang/String;
    .end local v31           #onimage:Ljava/lang/String;
    .end local v44           #statePressed:I
    :cond_1b
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v52, v0

    if-eqz v52, :cond_15

    move-object/from16 v50, v38

    .line 2255
    check-cast v50, Landroid/widget/TextView;

    .line 2256
    .local v50, tv:Landroid/widget/TextView;
    const-string v52, "a:nortext"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2257
    .local v27, nortext:Ljava/lang/String;
    const-string v52, "a:nametext"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2258
    .local v26, nametext:Ljava/lang/String;
    const-string v52, "a:centertext"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2259
    .local v11, centertext:Ljava/lang/String;
    const-string v52, "a:agreetext"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2260
    .local v5, agreetext:Ljava/lang/String;
    const-string v52, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2261
    .local v48, textSize:Ljava/lang/String;
    const-string v52, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 2262
    .local v45, textColor:Ljava/lang/String;
    const-string v52, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 2263
    .local v46, textGravity:Ljava/lang/String;
    const-string v52, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 2283
    .local v47, textId:Ljava/lang/String;
    if-eqz v27, :cond_1c

    .line 2285
    move-object/from16 v0, v50

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2287
    :cond_1c
    if-eqz v26, :cond_1d

    .line 2289
    const-string v52, "\uc6d4\ubcc4\uc790\ub3d9\uacb0\uc81c \uc0c1\ud488"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2291
    :cond_1d
    if-eqz v11, :cond_1e

    .line 2292
    const-string v52, "\\n"

    const-string v53, "\n"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 2293
    const-string v52, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,\n  \uc0c1\ud488 \uad6c\ub9e4 \uc2dc 1\ub144 \ub3d9\uc548 \ub9e4\uc6d4 \ucd08 \uc790\ub3d9 \uacb0\uc81c \ub418\uc5b4 \ud3b8\ub9ac\ud558\uac8c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\ub294 \uc0c1\ud488\uc785\ub2c8\ub2e4.\n\n- \uc774\uc6a9\n1. \uc0c1\ud488 \uc774\uc6a9\uae30\uac04\uc740 \ub9e4\uc6d4 1\uc77c \uc624\uc804 00\uc2dc 00\ubd84\ubd80\ud130 \ub9e4\uc6d4 \ub9d0\uc77c \uc624\ud6c4 11\uc2dc 59\ubd84 \uae4c\uc9c0 \uc785\ub2c8\ub2e4.\n2. \ub9cc\ub8cc\uae30\uac04\uc740 \ucd5c\ub300 1\ub144\uc774\ubbc0\ub85c \ucd94\ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \ubd84\uaed8\uc11c\ub294 \uc7ac \uad6c\ub9e4\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n3. \ud55c \uc5b4\ud50c \ub2f9 2\uac1c \uc774\uc0c1\uc758 \uc6d4\ubcc4 \uc790\ub3d9 \uacb0\uc81c \uc0c1\ud488 \uad6c\uc785\uc740 \ubd88\uac00\ud569\ub2c8\ub2e4.\n4. \uacf5\uacf5\uae30\uad00 \ubc0f \ub2e8\uccb4, \ud2b9\uc218\uac1c\uc778, \ud2b9\uc218\uae30\uad00 \uba85\uc758\uc758 \ub2e8\ub9d0\uc740 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc774\uc6a9\uc774 \ubd88\uac00\ub2a5 \ud569\ub2c8\ub2e4.\r\n\n\n- \uacb0\uc81c\n1. \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uad6c\uc785 \uc2dc \uc989\uc2dc \uacb0\uc81c\ub418\uba70 \uc775\uc6d4\uc5d0 \uccad\uad6c\ub429\ub2c8\ub2e4.\n2. \uad6c\uc785 \uccab \ub2ec\uc740 \uc0c1\ud488 \uad6c\uc785 \uc2dc\uc810\ubd80\ud130 \ub2f9\uc6d4 \ub9d0 \uc77c\uae4c\uc9c0 \uc77c\ud560 \uacfc\uae08 \ubc0f \uccad\uad6c\ub418\uba70 \ub2e4\uc74c \ub2ec\ubd80\ud130\ub294 \ub9e4\uc6d4 1\uc77c\uc5d0 \uc790\ub3d9 \uc5f0\uc7a5 \ubc0f \uacb0\uc81c\uac00 \uc9c4\ud589\ub429\ub2c8\ub2e4.\n\n\n- \ud574\uc9c0\n1. \uc911\ub3c4 \ud574\uc9c0\uac00 \uac00\ub2a5\ud558\uba70 \ub2e4\uc74c \ub2ec 1\uc77c\uc774 \ub418\uae30 \uc804\uae4c\uc9c0 \ud574\uc9c0\uac00 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n2. \uc911\ub3c4 \ud574\uc9c0 \uc2dc \ud574\ub2f9 \uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud558\uba70 \ucd94\ud6c4 \uacb0\uc81c\uac00 \ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \uc911\ub3c4\ud574\uc9c0 \ud6c4 \ub2f9\uc6d4\uc5d0 \ub3d9\uc77c \uc0c1\ud488\uc744 \uc7ac \uad6c\ub9e4 \ud560 \uacbd\uc6b0 \uac00\uc785\ub9cc \ucc98\ub9ac\ub418\uba70 \uc775\uc6d4 1\uc77c\uc5d0 \uc815\uc0c1\uacb0\uc81c \ub429\ub2c8\ub2e4. \n\n\n- \ud574\uc9c0 \uc808\ucc28\r\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \ud574\uc9c0\ub294 T store \ub9c8\uc774 \ud398\uc774\uc9c0\uc758 \uc0c1\ud488 \ub0b4 \uad6c\ub9e4\ub0b4\uc5ed\uc774\ub098 \ud574\ub2f9 App. \ub0b4\uc5d0\uc11c \uac00\ub2a5\ud569\ub2c8\ub2e4.\n\n- \uc8fc\uc758\uc0ac\ud56d\n1. \uc544\ub798\uc640 \uac19\uc740 \uc0c1\ud669\uc5d0\uc11c \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774 \uc790\ub3d9 \ud574\uc9c0 \ub420 \uc218 \uc788\uc73c\ub2c8 \ucc38\uace0\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n- T store \ud68c\uc6d0 \ud0c8\ud1f4\n- SKT \uc774\ub3d9\ud1b5\uc2e0 \uc11c\ube44\uc2a4 \ud574\uc9c0\n- \ubc88\ud638 \uc774\ub3d9\n- \uba85\uc758 \ubcc0\uacbd\n- \uae30\uae30\ubcc0\uacbd\n-  Appl.\uc9c0\uc6d0 \ubc0f \ub3d9\uc77c\ud55c AID\uc0c1\ud488\uc77c \uacbd\uc6b0\n- \uc5b4\ud50c \uc0ad\uc81c\n\n\n\ud574\ub2f9 \uc0ac\uc720\uc5d0 \ub300\ud574\uc11c\ub294 SK\ud50c\ub798\ub2db\uc758 \ucc45\uc784\uc774 \uc5c6\uc74c\uc744 \ubbf8\ub9ac \uc54c\ub9bd\ub2c8\ub2e4.\n\n\uac10\uc0ac\ud569\ub2c8\ub2e4.\n"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2295
    :cond_1e
    if-eqz v5, :cond_1f

    .line 2297
    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2300
    :cond_1f
    if-eqz v48, :cond_20

    .line 2301
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2302
    :cond_20
    if-eqz v45, :cond_21

    .line 2303
    invoke-static/range {v45 .. v45}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2306
    :cond_21
    if-eqz v46, :cond_22

    .line 2307
    const-string v52, "center"

    move-object/from16 v0, v46

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_23

    .line 2308
    const/16 v52, 0x11

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2315
    :cond_22
    :goto_5
    const/16 v52, 0x0

    const v53, 0x3f933333

    move-object/from16 v0, v50

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_4

    .line 2309
    :cond_23
    const-string v52, "right"

    move-object/from16 v0, v46

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_24

    .line 2310
    const/16 v52, 0x5

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    .line 2311
    :cond_24
    const-string v52, "left"

    move-object/from16 v0, v46

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_25

    .line 2312
    const/16 v52, 0x3

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    .line 2314
    :cond_25
    const/16 v52, 0x13

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    .line 2203
    :array_0
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2204
    :array_1
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2206
    :array_2
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2207
    :array_3
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 2208
    :array_4
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 2209
    :array_5
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2210
    :array_6
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method private createViewIMEIPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 55
    .parameter "parse"

    .prologue
    .line 2328
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 2329
    .local v25, name:Ljava/lang/String;
    const/16 v38, 0x0

    .line 2330
    .local v38, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 2331
    .local v6, atts:Landroid/util/AttributeSet;
    const-string v52, "LinearLayout"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1

    .line 2332
    new-instance v38, Landroid/widget/LinearLayout;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2354
    .restart local v38       #result:Landroid/view/View;
    :goto_0
    if-nez v38, :cond_7

    .line 2355
    const/16 v38, 0x0

    .line 2627
    .end local v38           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v38

    .line 2334
    .restart local v38       #result:Landroid/view/View;
    :cond_1
    const-string v52, "TextView"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    .line 2335
    new-instance v38, Landroid/widget/TextView;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v38       #result:Landroid/view/View;
    goto :goto_0

    .line 2337
    :cond_2
    const-string v52, "Button"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_3

    .line 2338
    new-instance v38, Landroid/widget/Button;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v38       #result:Landroid/view/View;
    goto :goto_0

    .line 2340
    :cond_3
    const-string v52, "ImageView"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_4

    .line 2341
    new-instance v38, Landroid/widget/ImageView;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v38       #result:Landroid/view/View;
    goto :goto_0

    .line 2343
    :cond_4
    const-string v52, "ScrollView"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_5

    .line 2344
    new-instance v38, Landroid/widget/ScrollView;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2345
    .restart local v38       #result:Landroid/view/View;
    const/16 v52, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    goto :goto_0

    .line 2347
    :cond_5
    const-string v52, "CheckBox"

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_6

    .line 2348
    new-instance v38, Landroid/widget/CheckBox;

    .end local v38           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v38       #result:Landroid/view/View;
    goto/16 :goto_0

    .line 2351
    :cond_6
    new-instance v52, Ljava/lang/StringBuilder;

    const-string v53, "# UnSupported tag:"

    invoke-direct/range {v52 .. v53}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v52

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2357
    :cond_7
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v52, v0

    if-eqz v52, :cond_11

    move-object/from16 v23, v38

    .line 2358
    check-cast v23, Landroid/widget/LinearLayout;

    .line 2359
    .local v23, ll:Landroid/widget/LinearLayout;
    const-string v52, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2361
    .local v32, orient:Ljava/lang/String;
    if-eqz v32, :cond_8

    .line 2362
    const-string v52, "horizontal"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_16

    .line 2363
    const/16 v52, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2369
    :cond_8
    :goto_2
    const-string v52, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2370
    .local v18, image:Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 2371
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 2372
    .local v20, is:Ljava/io/InputStream;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v52

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2376
    .end local v20           #is:Ljava/io/InputStream;
    :cond_9
    const-string v52, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2377
    .local v19, imageColor:Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 2380
    const/high16 v52, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2384
    :cond_a
    const-string v52, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2385
    .local v16, gravity:Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 2386
    const-string v52, "center"

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_17

    .line 2387
    const/16 v52, 0x11

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2396
    :cond_b
    :goto_3
    const-string v52, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2397
    .local v33, padding:Ljava/lang/String;
    if-eqz v33, :cond_c

    .line 2398
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v39

    .line 2399
    .local v39, size:I
    move-object/from16 v0, v23

    move/from16 v1, v39

    move/from16 v2, v39

    move/from16 v3, v39

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2402
    .end local v39           #size:I
    :cond_c
    const-string v52, "a:paddingleft"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2403
    .local v35, paddingLeft:Ljava/lang/String;
    const-string v52, "a:paddingTop"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2404
    .local v37, paddingTop:Ljava/lang/String;
    const-string v52, "a:paddingRight"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2405
    .local v36, paddingRight:Ljava/lang/String;
    const-string v52, "a:paddingBottom"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2406
    .local v34, paddingBottom:Ljava/lang/String;
    const/16 v41, 0x0

    .local v41, sizeLeft:I
    const/16 v43, 0x0

    .local v43, sizeTop:I
    const/16 v42, 0x0

    .local v42, sizeRight:I
    const/16 v40, 0x0

    .line 2408
    .local v40, sizeBottom:I
    if-eqz v35, :cond_d

    .line 2409
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v41

    .line 2410
    :cond_d
    if-eqz v37, :cond_e

    .line 2411
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v43

    .line 2412
    :cond_e
    if-eqz v36, :cond_f

    .line 2413
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v42

    .line 2414
    :cond_f
    if-eqz v34, :cond_10

    .line 2415
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v40

    .line 2417
    :cond_10
    move-object/from16 v0, v23

    move/from16 v1, v41

    move/from16 v2, v43

    move/from16 v3, v42

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2420
    const-string v52, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2421
    .local v49, touchMode:Ljava/lang/String;
    if-eqz v49, :cond_11

    .line 2422
    const/16 v52, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 2427
    .end local v16           #gravity:Ljava/lang/String;
    .end local v18           #image:Ljava/lang/String;
    .end local v19           #imageColor:Ljava/lang/String;
    .end local v23           #ll:Landroid/widget/LinearLayout;
    .end local v32           #orient:Ljava/lang/String;
    .end local v33           #padding:Ljava/lang/String;
    .end local v34           #paddingBottom:Ljava/lang/String;
    .end local v35           #paddingLeft:Ljava/lang/String;
    .end local v36           #paddingRight:Ljava/lang/String;
    .end local v37           #paddingTop:Ljava/lang/String;
    .end local v40           #sizeBottom:I
    .end local v41           #sizeLeft:I
    .end local v42           #sizeRight:I
    .end local v43           #sizeTop:I
    .end local v49           #touchMode:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v52, v0

    if-eqz v52, :cond_12

    move-object/from16 v22, v38

    .line 2429
    check-cast v22, Landroid/widget/ImageView;

    .line 2431
    .local v22, iv:Landroid/widget/ImageView;
    const-string v52, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2432
    .restart local v18       #image:Ljava/lang/String;
    if-eqz v18, :cond_12

    .line 2433
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 2434
    .restart local v20       #is:Ljava/io/InputStream;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v52

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2443
    .end local v18           #image:Ljava/lang/String;
    .end local v20           #is:Ljava/io/InputStream;
    .end local v22           #iv:Landroid/widget/ImageView;
    :cond_12
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/CheckBox;

    move/from16 v52, v0

    if-eqz v52, :cond_19

    .line 2444
    const-string v52, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2445
    .local v30, oncheckimage:Ljava/lang/String;
    const-string v52, "a:checkid"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, id:Ljava/lang/String;
    move-object/from16 v13, v38

    .line 2447
    check-cast v13, Landroid/widget/CheckBox;

    .line 2449
    .local v13, checkbtn:Landroid/widget/CheckBox;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 2451
    const-string v12, "checkbox_y"

    .line 2454
    .local v12, checkImage:Ljava/lang/String;
    sget-object v24, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2455
    .local v24, modelName:Ljava/lang/String;
    const/16 v51, 0x0

    .line 2457
    .local v51, xperia:Z
    const-string v52, "LT15i"

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_13

    .line 2458
    const/16 v51, 0x1

    .line 2459
    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 2461
    :cond_13
    if-nez v51, :cond_14

    .line 2463
    const/4 v8, 0x0

    .local v8, btOn:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 2465
    .local v7, btCheck:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v29

    .line 2466
    .local v29, onStream:Ljava/io/InputStream;
    invoke-static/range {v29 .. v30}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2469
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v29

    .line 2470
    move-object/from16 v0, v29

    invoke-static {v0, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2474
    new-instance v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2475
    .local v14, drawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v15, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2477
    .local v15, drawables2:Landroid/graphics/drawable/StateListDrawable;
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_0

    move-object/from16 v0, v52

    invoke-virtual {v14, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2478
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_1

    move-object/from16 v0, v52

    invoke-virtual {v14, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2480
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_2

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2481
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_3

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2482
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_4

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2483
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_5

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2484
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_6

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2486
    invoke-virtual {v13, v15}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2487
    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2489
    .end local v7           #btCheck:Landroid/graphics/drawable/Drawable;
    .end local v8           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v14           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v15           #drawables2:Landroid/graphics/drawable/StateListDrawable;
    .end local v29           #onStream:Ljava/io/InputStream;
    :cond_14
    const/16 v51, 0x0

    .line 2491
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2624
    .end local v12           #checkImage:Ljava/lang/String;
    .end local v13           #checkbtn:Landroid/widget/CheckBox;
    .end local v17           #id:Ljava/lang/String;
    .end local v24           #modelName:Ljava/lang/String;
    .end local v30           #oncheckimage:Ljava/lang/String;
    .end local v51           #xperia:Z
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/Stack;->size()I

    move-result v52

    if-lez v52, :cond_0

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v52

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2364
    .restart local v23       #ll:Landroid/widget/LinearLayout;
    .restart local v32       #orient:Ljava/lang/String;
    :cond_16
    const-string v52, "vertical"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_8

    .line 2365
    const/16 v52, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 2388
    .restart local v16       #gravity:Ljava/lang/String;
    .restart local v18       #image:Ljava/lang/String;
    .restart local v19       #imageColor:Ljava/lang/String;
    :cond_17
    const-string v52, "right"

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_18

    .line 2389
    const/16 v52, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2390
    :cond_18
    const-string v52, "left"

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_b

    .line 2391
    const/16 v52, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2496
    .end local v16           #gravity:Ljava/lang/String;
    .end local v18           #image:Ljava/lang/String;
    .end local v19           #imageColor:Ljava/lang/String;
    .end local v23           #ll:Landroid/widget/LinearLayout;
    .end local v32           #orient:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v52, v0

    if-eqz v52, :cond_1d

    .line 2499
    const-string v52, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2500
    .local v28, offimage:Ljava/lang/String;
    const-string v52, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, onimage:Ljava/lang/String;
    move-object/from16 v10, v38

    .line 2502
    check-cast v10, Landroid/widget/Button;

    .line 2503
    .local v10, btn:Landroid/widget/Button;
    const-string v52, "bt_confirm_dim"

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1a

    .line 2504
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    .line 2508
    :cond_1a
    const/4 v8, 0x0

    .restart local v8       #btOn:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 2510
    .local v9, btOver:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 2511
    .local v21, isStream:Ljava/io/InputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2513
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 2514
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2516
    new-instance v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2517
    .restart local v14       #drawables:Landroid/graphics/drawable/StateListDrawable;
    const v44, 0x10100a7

    .line 2518
    .local v44, statePressed:I
    const/16 v52, 0x1

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput v44, v52, v53

    move-object/from16 v0, v52

    invoke-virtual {v14, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2519
    const/16 v52, 0x0

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v14, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2521
    const-string v52, "bt_confirm_dim"

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1c

    .line 2522
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEInotCheckedDrawble:Landroid/graphics/drawable/StateListDrawable;

    .line 2524
    new-instance v52, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v52 .. v52}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckedDrawbles:Landroid/graphics/drawable/StateListDrawable;

    .line 2526
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v54, "btn_con_nor"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 2527
    const-string v52, "btn_con_nor"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2529
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v53 .. v54}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v54, "btn_con_sel"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ".png"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 2530
    const-string v52, "btn_con_sel"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckedDrawbles:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aput v44, v53, v54

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckedDrawbles:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckList:[Z

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aget-boolean v52, v52, v53

    if-eqz v52, :cond_1b

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEICheckedDrawbles:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2551
    :goto_5
    const-string v52, "btn_cancel_sel_h"

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_15

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthCancelBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 2541
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mIMEIOkBtn:Landroid/widget/Button;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 2545
    :cond_1c
    invoke-virtual {v10, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 2555
    .end local v8           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v9           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v10           #btn:Landroid/widget/Button;
    .end local v14           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v21           #isStream:Ljava/io/InputStream;
    .end local v28           #offimage:Ljava/lang/String;
    .end local v31           #onimage:Ljava/lang/String;
    .end local v44           #statePressed:I
    :cond_1d
    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v52, v0

    if-eqz v52, :cond_15

    move-object/from16 v50, v38

    .line 2557
    check-cast v50, Landroid/widget/TextView;

    .line 2558
    .local v50, tv:Landroid/widget/TextView;
    const-string v52, "a:nortext"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2559
    .local v27, nortext:Ljava/lang/String;
    const-string v52, "a:nametext"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2560
    .local v26, nametext:Ljava/lang/String;
    const-string v52, "a:centertext"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2561
    .local v11, centertext:Ljava/lang/String;
    const-string v52, "a:agreetext"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2562
    .local v5, agreetext:Ljava/lang/String;
    const-string v52, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2563
    .local v48, textSize:Ljava/lang/String;
    const-string v52, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 2564
    .local v45, textColor:Ljava/lang/String;
    const-string v52, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 2565
    .local v46, textGravity:Ljava/lang/String;
    const-string v52, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 2586
    .local v47, textId:Ljava/lang/String;
    if-eqz v27, :cond_1e

    .line 2588
    move-object/from16 v0, v50

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2590
    :cond_1e
    if-eqz v26, :cond_1f

    .line 2592
    const-string v52, "\uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68 \ubcc0\uacbd \uc548\ub0b4"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2594
    :cond_1f
    if-eqz v11, :cond_20

    .line 2595
    const-string v52, "\\n"

    const-string v53, "\n"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 2596
    const-string v52, "T store \uac1c\uc778 \uc815\ubcf4 \ucde8\uae09 \ubc29\uce68\r\n\r\n- SK\ud50c\ub798\ub2db\uc8fc\uc2dd\ud68c\uc0ac(\uc774\ud558 \u201c\ud68c\uc0ac\u201d\ub77c \ud568)\uac00 \uc81c\uacf5\ud558\ub294 \ubaa8\ubc14\uc77c \ucee8\ud150\uce20 \uc804\uc790\uc0c1\uac70\ub798 \uc11c\ube44\uc2a4\uc778 T store \uc11c\ube44\uc2a4 (\uc774\ud558 \ubcf8 \uc11c\ube44\uc2a4\ub77c \ud569\ub2c8\ub2e4)\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uace0, \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ubcf4\ud638\ud558\uae30 \uc704\ud558\uc5ec \ud56d\uc0c1 \ucd5c\uc120\uc744 \ub2e4\ud574 \ub178\ub825\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n- \ubcf8 \uc11c\ube44\uc2a4\ub294 \u300c\uc815\ubcf4\ud1b5\uc2e0\ub9dd \uc774\uc6a9\ucd09\uc9c4 \ubc0f \uc815\ubcf4\ubcf4\ud638 \ub4f1\uc5d0 \uad00\ud55c \ubc95\ub960\u300d\uc744 \ube44\ub86f\ud55c \ubaa8\ub4e0 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uad00\ub828 \ubc95\ub960\uaddc\uc815\uc744 \uc900\uc218\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n- \ubcf8 \uc11c\ube44\uc2a4\ub294 \u300c\uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\u300d\uc744 \uc81c\uc815\ud558\uc5ec \uc774\ub97c \uc900\uc218\ud558\uace0 \uc788\uc73c\uba70, \uc774\ub97c \ubcf8 \uc11c\ube44\uc2a4 \uc778\ud130\ub137 \ud648\ud398\uc774\uc9c0(http://tstore.co.kr \uc774\ud558 \u201c\ud648\ud398\uc774\uc9c0\u201d\ub77c \ud568) \uccab \ud654\uba74\uc5d0 \uacf5\uac1c\ud558\uc5ec \uace0\uac1d\ub2d8\uc774 \uc5b8\uc81c\ub098 \uc6a9\uc774\ud558\uac8c \uc5f4\ub78c\ud560 \uc218 \uc788\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n- \ubcf8 \uc11c\ube44\uc2a4 \u300c\uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\u300d\uc740 \uc544\ub798\uc640 \uac19\uc740 \ub0b4\uc6a9\uc744 \ub2f4\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \ucd1d\uce59\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ud56d\ubaa9\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ubc0f \uc774\uc6a9 \ubaa9\uc801\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1\uc5d0 \ub300\ud55c \ub3d9\uc758\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1\ubc29\ubc95\r\n\u3147 \uc218\uc9d1\ud55c \uac1c\uc778\uc815\ubcf4\uc758 \uc774\uc6a9 \ubc0f \uc81c3\uc790 \uc81c\uacf5\r\n\u3147 \uac1c\uc778\uc815\ubcf4\ucde8\uae09 \uc5c5\ubb34\uc758 \uc704\ud0c1\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc5f4\ub78c \ubc0f \uc815\uc815\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1, \uc774\uc6a9,\uc81c\uacf5\uc5d0 \ub300\ud55c \ub3d9\uc758\ucca0\ud68c\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \ubcf4\uc720\uae30\uac04 \ubc0f \uc774\uc6a9\uae30\uac04\r\n\u3147 \uac1c\uc778\uc815\ubcf4 \ud30c\uae30\uc808\ucc28 \ubc0f \ubc29\ubc95\r\n\u3147 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc758 \uace0\uc9c0 \ub610\ub294 \ud1b5\uc9c0\ubc29\ubc95\r\n\u3147 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \uc704\ud55c \uae30\uc220 \ubc0f \uad00\ub9ac\uc801 \ub300\ucc45\r\n\u3147 \ub9c1\ud06c \uc0ac\uc774\ud2b8\r\n\u3147 \uac8c\uc2dc\ubb3c\r\n\u3147 \uac1c\uc778\uc815\ubcf4 \uc790\ub3d9\uc218\uc9d1\uc7a5\uce58\uc758 \uc124\uce58/ \uc6b4\uc601 \ubc0f \uadf8 \uac70\ubd80\uc5d0 \ub300\ud55c \uc0ac\ud56d\r\n\u3147 \uc774\uc6a9\uc790\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34\r\n\u3147 \uc758\uacac\uc218\ub834 \ubc0f \ubd88\ub9cc\ucc98\ub9ac\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uad00\ub9ac \ucc45\uc784\uc790 \ubc0f \ub2f4\ub2f9\uc790\r\n\u3147 \uad11\uace0\uc131 \uc815\ubcf4 \uc804\uc1a1\r\n\u3147 \uace0\uc9c0\uc758\ubb34\r\n\r\n\r\n\u3147 \ucd1d\uce59\r\n\r\n1. \uac1c\uc778\uc815\ubcf4\ub780 \uc0dd\uc874\ud558\uace0 \uc788\ub294 \uac1c\uc778\uc5d0 \uad00\ud55c \uc815\ubcf4\ub85c\uc11c \uc131\uba85, \uc8fc\ubbfc\ub4f1\ub85d\ubc88\ud638 \ub4f1\uc5d0 \uc758\ud558\uc5ec \ub2f9\ud574 \uac1c\uc778\uc744 \uc54c\uc544\ubcfc \uc218 \uc788\ub294 \ubd80\ud638,\ubb38\uc790,\uc74c\uc131,\uc74c\ud5a5 \ubc0f \uc601\uc0c1 \ub4f1\uc758 \uc815\ubcf4(\ub2f9\ud574 \uc815\ubcf4\ub9cc\uc73c\ub85c\ub294 \ud2b9\uc815 \uac1c\uc778\uc744 \uc54c\uc544\ubcfc \uc218 \uc5c6\ub294 \uacbd\uc6b0\uc5d0\ub3c4 \ub2e4\ub978 \uc815\ubcf4\uc640 \uc6a9\uc774\ud558\uac8c \uacb0\ud569\ud558\uc5ec \uc54c\uc544\ubcfc \uc218 \uc788\ub294 \uac83\uc744 \ud3ec\ud568)\ub97c \ub9d0\ud569\ub2c8\ub2e4.\r\n2. \ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\uc815\ubcf4\ubcf4\ud638\ub97c \uac00\uc7a5 \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uba70, \u300e\uc815\ubcf4\ud1b5\uc2e0\ub9dd \uc774\uc6a9\ucd09\uc9c4 \ubc0f \uc815\ubcf4\ubcf4\ud638 \ub4f1\uc5d0 \uad00\ud55c \ubc95\ub960\u300f\uc0c1\uc758 \uac1c\uc778\uc815\ubcf4 \ubcf4\ud638\uaddc\uc815 \ubc0f \ubc29\uc1a1\ud1b5\uc2e0\uc704\uc6d0\ud68c\uac00 \uc81c\uc815\ud55c \u300e\uac1c\uc778\uc815\ubcf4\ubcf4\ud638\uc9c0\uce68\u300f\uc744 \uc900\uc218\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n3. \ubcf8 \uc11c\ube44\uc2a4\ub294 \ubcf8 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc744 \ud1b5\ud558\uc5ec \uace0\uac1d\ub2d8\uc774 \uc81c\uacf5\ud558\ub294 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1\ubaa9\uc801 \ubc0f \uc774\uc6a9\ubaa9\uc801, \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \uc704\ud574 \ucde8\ud558\uace0 \uc788\ub294 \uc870\uce58 \ub4f1\uc744 \uc54c\ub824\ub4dc\ub9bd\ub2c8\ub2e4.\r\n4. \ubcf8 \uc11c\ube44\uc2a4\ub294 \ubcf8 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc744 \ud648\ud398\uc774\uc9c0 \uccab \ud654\uba74\uc5d0 \uacf5\uac1c\ud568\uc73c\ub85c\uc368 \uace0\uac1d\ub2d8\uaed8\uc11c \uc5b8\uc81c\ub098 \uc6a9\uc774\ud558\uac8c \ubcf4\uc2e4 \uc218 \uc788\ub3c4\ub85d \uc870\uce58\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n5. \ubcf8 \uc11c\ube44\uc2a4\ub294 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc758 \uc9c0\uc18d\uc801\uc778 \uac1c\uc120\uc744 \uc704\ud558\uc5ec \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc744 \uac1c\uc815\ud558\ub294\ub370 \ud544\uc694\ud55c \uc808\ucc28\ub97c \uc815\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \r\n6. \ubcf8 \uc11c\ube44\uc2a4\uc758 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc740 \uad00\ub828 \ubc95\ub960 \ubc0f \uc9c0\uce68\uc758 \ubcc0\uacbd \ub610\ub294 \ub0b4\ubd80 \uc6b4\uc601 \ubc29\uce68\uc758 \ubcc0\uacbd\uc5d0 \ub530\ub77c \ubcc0\uacbd\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc774 \ubcc0\uacbd\ub420 \uacbd\uc6b0 \ubcc0\uacbd\ub41c \uc0ac\ud56d\uc744 \ud648\ud398\uc774\uc9c0\ub97c \ud1b5\ud558\uc5ec \uacf5\uc9c0\ud558\uc5ec \uac1c\uc815\ub41c \ub0b4\uc6a9\uc744 \uace0\uac1d\ub2d8\uaed8\uc11c \uc27d\uac8c \uc54c\uc544\ubcf4\uc2e4 \uc218 \uc788\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ud56d\ubaa9\r\n\r\n1. \ubcf8 \uc11c\ube44\uc2a4\ub294 \uae30\ubcf8\uc801\uc778 \uc11c\ube44\uc2a4 \uc81c\uacf5\uc744 \uc704\ud55c \uc815\ubcf4\uc640 \uace0\uac1d \uac01\uac01\uc758 \uae30\ud638\uc640 \ud544\uc694\uc5d0 \ub9de\ub294 \uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud558\uae30 \uc704\ud55c \uc120\ud0dd \uc815\ubcf4\ub85c \uad6c\ubd84\ub418\uc5b4 \ub2e4\uc74c\uc758 \uc815\ubcf4\ub97c \uc218\uc9d1\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc120\ud0dd \uc815\ubcf4\ub97c \uc785\ub825\ud558\uc9c0 \uc54a\uc740 \uacbd\uc6b0\uc5d0\ub3c4 \uc11c\ube44\uc2a4 \uc774\uc6a9 \uc81c\ud55c\uc740 \uc5c6\uc2b5\ub2c8\ub2e4.\r\n2. \ubcf8 \uc11c\ube44\uc2a4\ub294 \uc774\uc6a9\uc790\uc758 \uae30\ubcf8\uc801 \uc778\uad8c \uce68\ud574\uc758 \uc6b0\ub824\uac00 \uc788\ub294 \ubbfc\uac10\ud55c \uac1c\uc778\uc815\ubcf4(\uc778\uc885 \ubc0f \ubbfc\uc871, \uc0ac\uc0c1 \ubc0f \uc2e0\uc870, \ucd9c\uc2e0\uc9c0 \ubc0f \ubcf8\uc801\uc9c0, \uc815\uce58\uc801 \uc131\ud5a5 \ubc0f \ubc94\uc8c4\uae30\ub85d, \uac74\uac15\uc0c1\ud0dc \ubc0f \uc131\uc0dd\ud65c \ub4f1)\ub294 \uc218\uc9d1\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\r\n3. \ubcf8 \uc11c\ube44\uc2a4\ub294 \ub2e4\uc74c\uacfc \uac19\uc774 \uac1c\uc778\uc815\ubcf4\ub97c \uc218\uc9d1\ud558\uc5ec \uc774\uc6a9\ud569\ub2c8\ub2e4.\r\n- \uc131\uba85, \uc8fc\ubbfc\ub4f1\ub85d\ubc88\ud638, \uc544\uc774\ub514, \ube44\ubc00\ubc88\ud638, E-mail: \uc11c\ube44\uc2a4 \uc774\uc6a9\uc5d0 \ub530\ub978 \ubbfc\uc6d0\uc0ac\ud56d\uc758 \ucc98\ub9ac, \ubcf8\uc778\uc2dd\ubcc4, \uc5f0\ub839\uc81c\ud55c\uc11c\ube44\uc2a4 \uc81c\uacf5, \ubd88\ub7c9\ud68c\uc6d0\uc758 \ubd80\uc815\ud55c \uc774\uc6a9\ubc29\uc9c0 \ub4f1\r\n- \ub300\ud45c\uc790\uba85, \uc0ac\uc5c5\uc790\ub4f1\ub85d\ubc88\ud638, \uc0ac\uc5c5\uc790 \uc5f0\ub77d\ucc98: \uc0ac\uc5c5\uc790 \ud310\ub9e4\ud68c\uc6d0\uc758 \ud655\uc778 \ubc0f \uc11c\ube44\uc2a4 \uc81c\uacf5 \ub4f1\r\n- \ud734\ub300\ud3f0\ubc88\ud638, \ud734\ub300\ud3f0 \uae30\uc885, \ub300\uae30\ud654\uba74 \ubc0f T store \ud544\uc218 \ud504\ub85c\uadf8\ub7a8 \uc124\uce58 \uc815\ubcf4, IMEI: T store\uc758 \uc11c\ube44\uc2a4 \uc81c\uacf5 \ub4f1\r\n- \ud734\ub300\ud3f0 \uba85\uc758 \uc815\ubcf4, \uac00\uc785\uc694\uae08\uc81c(\uc694\uae08\uc81c \ud55c\ub3c4 \uc815\ubcf4, PPS\uc5ec\ubd80), \ubc88\ud638\ubcc0\uacbd/\uba85\uc758\ubcc0\uacbd/\uae30\uae30\ubcc0\uacbd/\ud574\uc9c0\uc815\ubcf4 \ub4f1 \ud734\ub300\ud3f0 \uad00\ub828 \uc815\ubcf4 \ubcc0\uacbd \uc2dc \ud574\ub2f9 \uc815\ubcf4, \uc11c\ube44\uc2a4\uad00\ub828 \uacfc\uae08\uccad\uad6c\uc815\ubcf4 : T store\uc758 \uc11c\ube44\uc2a4 \uc81c\uacf5 \ub4f1(SK\ud154\ub808\ucf64 \uac00\uc785\uc790\uc5d0\ub9cc \ud574\ub2f9) \r\n- \uc8fc\uc18c, \uc804\ud654\ubc88\ud638, \uc774\ub3d9\uc804\ud654\ubc88\ud638, E-mail: \ud68c\uc6d0\uac04 \uac70\ub798\uc758 \uc6d0\ud65c\ud55c \uc9c4\ud589, \ubcf8\uc778\uc758\uc0ac\uc758 \ud655\uc778, \ubd88\ub9cc\ucc98\ub9ac, \uc0c8\ub85c\uc6b4 \uc815\ubcf4\uc640 \uace0\uc9c0\uc0ac\ud56d\uc758 \uc548\ub0b4 \ub4f1\r\n- \uc2e0\uc6a9\uce74\ub4dc\uc815\ubcf4, \uc774\ub3d9\uc804\ud654\uc815\ubcf4: \ub300\uae08\uacb0\uc81c\uc11c\ube44\uc2a4\uc758 \uc81c\uacf5 \ub4f1\r\n- \uc8fc\uc18c, \uc804\ud654\ubc88\ud638, E-mail: \uc0c1\ud488\uacfc \uacbd\ud488 \ubc30\uc1a1 \uc2dc \ubc30\uc1a1\uc9c0 \uc8fc\uc18c \ubc0f \uc5f0\ub77d\ucc98 \ud655\uc778 \ub4f1\r\n- \uc0dd\uc77c, \uc9c1\uc5c5, \ucde8\ubbf8: \uace0\uac1d \uc0dd\uc77c \ucd95\ud558 \uba54\uc2dc\uc9c0 \uc804\ub2ec, \uace0\uac1d \uad00\uc2ec\uc0ac\uc5d0 \ubd80\ud569\ud558\ub294 \uc11c\ube44\uc2a4 \ubc0f \uc774\ubca4\ud2b8 \uae30\ud68d\uc5d0 \uc774\uc6a9. \uc774 \uc815\ubcf4\ub294 \uc120\ud0dd\uc801 \uae30\uc785 \uc815\ubcf4\ub85c\uc11c \uace0\uac1d\ub2d8\uaed8\uc11c \uc785\ub825\uc744 \ud558\uc9c0 \uc54a\uc73c\uc154\ub3c4 \uc11c\ube44\uc2a4 \uc774\uc6a9 \uc81c\ud55c\uc740 \uc5c6\uc2b5\ub2c8\ub2e4\r\n- IP address, \ubc29\ubb38 \uc77c\uc2dc: \ubd88\ub7c9\ud68c\uc6d0\uc758 \ubd80\uc815 \uc774\uc6a9\ubc29\uc9c0, \uc804\uc790\uae08\uc735\uac70\ub798\uae30\ub85d\ubcf4\uad00\r\n4. \uc11c\ube44\uc2a4 \uc774\uc6a9\uacfc\uc815\uc774\ub098 \uc0ac\uc5c5\ucc98\ub9ac\uacfc\uc815\uc5d0\uc11c \ub2e4\uc74c\uacfc \uac19\uc740 \uc815\ubcf4\ub4e4\uc774 \uc0dd\uc131\ub418\uc5b4 \uc218\uc9d1\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n- \uc11c\ube44\uc2a4 \uc774\uc6a9\uae30\ub85d, \uc694\uae08\uccad\uad6c \ubc0f \uacb0\uc81c\uae30\ub85d, \uc774\uc6a9\uc815\uc9c0 \uae30\ub85d, \uc774\uc6a9\ud574\uc9c0 \uae30\ub85d\r\n- \uc811\uc18d\ub85c\uadf8, \ucfe0\ud0a4, \uc811\uc18d IP\uc815\ubcf4\r\n5. \ubcf8 \uc11c\ube44\uc2a4\uc758 \uc774\uc6a9\uad00\ub828 \uace0\uac1d\uaed8\uc11c \u201cSK\ud50c\ub798\ub2db \uc720\ubb34\uc120\ud1b5\ud569ID\u201d\uc758 \uc0ac\uc6a9\uc5d0 \ub3d9\uc758\ud558\ub294 \uacbd\uc6b0 \ud1b5\ud569 ID\uac00 \ub2e4\uc74c\uacfc \uac19\uc774 \uc0ac\uc6a9\ub418\uace0, \uad00\ub828 \uac1c\uc778\uc815\ubcf4\uac00 \uacf5\uc720\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n- \u201cSK\ud50c\ub798\ub2db \uc720\ubb34\uc120\ud1b5\ud569ID\u201d\ub780, T Store \ub4f1\uc758 \uc11c\ube44\uc2a4\uc5d0 \uac00\uc785\ud558\uc2e0 \uacbd\uc6b0 \ub3d9\uc77c\ud55c \ud68c\uc6d0 \uc815\ubcf4\ub97c \uc0ac\uc6a9\ud558\uc5ec SK\ud50c\ub798\ub2db\uc774 \uc81c\uacf5\ud558\ub294 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uae30 \uc27d\uac8c \ud558\uae30 \uc704\ud55c ID\ub97c \ub9d0\ud569\ub2c8\ub2e4.\r\n- \uc544\uc774\ub514 \ubc0f \ube44\ubc00\ubc88\ud638\ub97c \ud3ec\ud568\ud558\uc5ec \uc785\ub825\ud558\uc2e0 \uace0\uac1d \uc815\ubcf4(e-mail, \uc8fc\uc18c, \uc131\ubcc4 \ub4f1)\ub294 \ud1b5\ud569 \uad00\ub9ac \ubc0f \uacf5\uc720\ub418\uba70, \ud68c\uc6d0 \uc815\ubcf4 \ubcc0\uacbd \uc2dc \uac01 \uc11c\ube44\uc2a4\uc5d0 \ud544\uc694\ud55c \uc815\ubcf4\ub4e4\uc740 \ub3d9\uc2dc \ubc18\uc601[i)\uac1c\uc778\uc815\ubcf4 \uc81c\uacf5/\uacf5\uc720 \ubc1b\ub294 \uc790: SK\ud50c\ub798\ub2db\u321c, ii)\uac1c\uc778\uc815\ubcf4\ub97c \uc81c\uacf5/\uacf5\uc720\ubc1b\ub294 \uc790\uc758 \uac1c\uc778\uc815\ubcf4 \uc774\uc6a9\ubaa9\uc801: SK\ud50c\ub798\ub2db\uc758 \ud604\uc7ac \uc81c\uacf5\uc911\uc778 \uc11c\ube44\uc2a4(T\uc2a4\ud1a0\uc5b4, \uc544\ubc14\ud0c0 \ub9c1, T\ud074\ub77c\uc6b0\ub529 \uc11c\ube44\uc2a4 \ub4f1) \ubc0f \uc7a5\ub798 \ucd9c\uc2dc \uc608\uc815\uc778 \uc11c\ube44\uc2a4\uc5d0 \ud65c\uc6a9, \u2172) \uc81c\uacf5/\uacf5\uc720\ud558\ub294 \uac1c\uc778\uc815\ubcf4\uc758 \ud56d\ubaa9: ID, \ube44\ubc00\ubc88\ud638, e-mail, \uc804\ud654\ubc88\ud638, iv) \uac1c\uc778\uc815\ubcf4\ub97c \uc81c\uacf5/\uacf5\uc720 \ubc1b\ub294 \uc790\uc758 \uac1c\uc778\uc815\ubcf4 \ubcf4\uc720(\uacf5\uc720) \ubc0f \uc774\uc6a9\uae30\uac04: \uc720\ubb34\uc120 \ud1b5\ud569 ID\uc0ac\uc6a9\uc2dc\uae4c\uc9c0(\ud574\ub2f9 \uc11c\ube44\uc2a4 \uc774\uc6a9\uc2dc\uae4c\uc9c0)]\r\n- \uc11c\ube44\uc2a4 \uac00\uc785 \uc2dc, \u201cSK\ud50c\ub798\ub2db \uc720\ubb34\uc120\ud1b5\ud569ID\u201d\uac00 \uc0dd\uc131\ub418\uba70, \uc774\ubbf8 \uac00\uc9c0\uace0 \uc788\ub294\uc9c0 \ud655\uc778\r\n- \uc11c\ube44\uc2a4 \ub85c\uadf8\uc778 \uc2dc, \u201cSK\ud50c\ub798\ub2db \uc720\ubb34\uc120\ud1b5\ud569ID\u201d\ub97c \ud65c\uc6a9\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ubc0f \uc774\uc6a9 \ubaa9\uc801\r\n\r\n\ubcf8 \uc11c\ube44\uc2a4\uac00 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc218\uc9d1 \uc774\uc6a9\ud558\ub294 \ubaa9\uc801\uc740 \ub2e4\uc74c\uacfc \uac19\uc2b5\ub2c8\ub2e4.\r\n1.\ud68c\uc6d0\uad00\ub9ac\r\n- \ud68c\uc6d0\uc81c \uc11c\ube44\uc2a4 \uc774\uc6a9\uc5d0 \ub530\ub978 \ubcf8\uc778\ud655\uc778, \uac1c\uc778\uc2dd\ubcc4\r\n- \ubd88\ub7c9\ud68c\uc6d0\uc758 \ubd80\uc815\uc774\uc6a9 \ubc29\uc9c0\uc640 \ube44\uc778\uac00 \uc0ac\uc6a9 \ubc29\uc9c0\r\n- \uac00\uc785\uc758\uc0ac \ud655\uc778, \uac00\uc785 \ubc0f \uac00\uc785\ud69f\uc218 \uc81c\ud55c\r\n- \ubbf8\uc131\ub144\uc790\uc758 \ud655\uc778\r\n- \uace0\uac1d\uc0c1\ub2f4, \uace0\uac1d\ubd88\ub9cc \uc811\uc218 \ubc0f \ucc98\ub9ac, \ubd84\uc7c1\uc870\uc815\uc744 \uc704\ud55c \uae30\ub85d\ubcf4\uc874\r\n- \uace0\uc9c0\uc0ac\ud56d \uc804\ub2ec\r\n2.\uc11c\ube44\uc2a4 \uc81c\uacf5\uc5d0 \uad00\ud55c \uacc4\uc57d\uc758 \uc774\ud589 \ubc0f \uc11c\ube44\uc2a4 \uc81c\uacf5\uc5d0 \ub530\ub978 \uc694\uae08\uc815\uc0b0\r\n- \ud68c\uc6d0\uac04\uc758 \uac70\ub798 \uc11c\ube44\uc2a4 \uc81c\uacf5\r\n- \ucee8\ud150\uce20 \uc81c\uacf5, \uc774\ubca4\ud2b8/\uacbd\ud488\ub2f9\ucca8 \uacb0\uacfc\uc548\ub0b4 \ubc0f \uc0c1\ud488\ubc30\uc1a1\r\n- \uad6c\ub9e4 \ubc0f \uc694\uae08\uacb0\uc81c, \uc694\uae08\ucd94\uc2ec\r\n3.\ub9c8\ucf00\ud305 \ubc0f \uad11\uace0\uc5d0 \ud65c\uc6a9\r\n- \uace0\uac1d\uc5d0\uac8c \ucd5c\uc801\ud654\ub41c \uc11c\ube44\uc2a4 \uc81c\uacf5\r\n- \uc2e0\uaddc \uc11c\ube44\uc2a4 \ub610\ub294 \uc0c1\ud488 \uac1c\ubc1c \ubc0f \ud2b9\ud654\r\n- \uc778\uad6c\ud1b5\uacc4\ud559\uc801 \ud2b9\uc131\uc5d0 \ub530\ub978 \uc11c\ube44\uc2a4 \uc81c\uacf5 \ubc0f \uad11\uace0 \uac8c\uc7ac\r\n- \uc6f9\ud398\uc774\uc9c0 \uc811\uc18d \ube48\ub3c4 \ud30c\uc545\r\n- \uc11c\ube44\uc2a4 \uc774\uc6a9\uc5d0 \ub300\ud55c \ud1b5\uacc4\r\n- \uc815\uae30 \uac04\ud589\ubb3c \ubc1c\uc1a1, \uc0c8\ub85c\uc6b4 \uc0c1\ud488 \ub610\ub294 \uc11c\ube44\uc2a4 \uc548\ub0b4\r\n- \uace0\uac1d \uad00\uc2ec\uc0ac\uc5d0 \ubd80\ud569\ud558\ub294 \uc6f9\uc11c\ube44\uc2a4 \ubc0f \uc774\ubca4\ud2b8 \uae30\ud68d\r\n- \uace0\uac1d \uae30\ub150\uc77c \ucd95\ud558 \uba54\uc2dc\uc9c0 \uc804\ub2ec\r\n- \uacbd\ud488\ud589\uc0ac, \uc774\ubca4\ud2b8 \ub4f1 \uad11\uace0\uc131 \uc815\ubcf4 \uc804\ub2ec \ub610\ub294 \ud68c\uc6d0 \ucc38\uc5ec\uacf5\uac04 \uc6b4\uc601\r\n- \uace0\uac1d\uc124\ubb38\uc870\uc0ac\r\n- \uc11c\ube44\uc2a4 \ubc0f \uc0c1\ud488 \uc548\ub0b4\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4 \uc218\uc9d1\uc5d0 \ub300\ud55c \ub3d9\uc758\r\n\r\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uaed8\uc11c \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68 \ub610\ub294 \uc774\uc6a9\uc57d\uad00\uc758 \ub0b4\uc6a9\uc5d0 \ub300\ud574 \u300c\ub3d9\uc758\ud55c\ub2e4\u300d \ub610\ub294 \u300c\ub3d9\uc758\ud558\uc9c0 \uc54a\ub294\ub2e4\u300d \ubc84\ud2bc\uc744 \ud074\ub9ad\ud560 \uc218 \uc788\ub294 \uc808\ucc28\ub97c \ub9c8\ub828\ud558\uace0 \uc788\uc73c\uba70, \u300c\ub3d9\uc758\ud55c\ub2e4\u300d \ubc84\ud2bc\uc744 \ud074\ub9ad\ud558\uba74 \uac1c\uc778\uc815\ubcf4 \uc218\uc9d1\uc5d0 \ub300\ud574 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \ubd05\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ubc29\ubc95\r\n\r\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \ud648\ud398\uc774\uc9c0 \ud68c\uc6d0\uac00\uc785 \uc808\ucc28, \uc0c1\ub2f4\uc808\ucc28, \uc774\ubca4\ud2b8\ub098 \uacbd\ud488 \ud589\uc0ac, \uc5c5\ubb34\uc704\ud0c1\uc0ac \ub610\ub294 \uc81c\ud734\uc0ac \ub4f1\uc73c\ub85c\ubd80\ud130\uc758 \uc218\uc9d1, \uc774\ub3d9 \uc804\ud654 \ubc0f \uc720,\ubb34\uc120 \uc778\ud130\ub137 \uc11c\ube44\uc2a4 \uc0ac\uc6a9\uc2dc \uc0dd\uc131\uc815\ubcf4 \uc218\uc9d1 \ud234\uc744 \ud1b5\ud55c \ubc29\ubc95(\ucfe0\ud0a4) \ub4f1\uc73c\ub85c \uac1c\uc778 \uc815\ubcf4\ub97c \uc218\uc9d1\ud569\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uc218\uc9d1\ud55c \uac1c\uc778\uc815\ubcf4\uc758 \uc774\uc6a9 \ubc0f \uc81c3\uc790 \uc81c\uacf5\r\n\r\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uac00\uc785\uc2e0\uccad\uc11c, \uc11c\ube44\uc2a4\uc774\uc6a9\uc57d\uad00, \u300c\uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\u300d\uc758\u300c\uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ubc0f \uc774\uc6a9\ubaa9\uc801\u300d\uc5d0\uc11c \uace0\uc9c0\ud55c \ubc94\uc704 \ub0b4\uc5d0\uc11c \uc0ac\uc6a9\ud558\uba70, \ub3d9 \ubc94\uc704\ub97c \ucd08\uacfc\ud558\uc5ec \uc774\uc6a9\ud558\uac70\ub098 \ud0c0\uc778 \ub610\ub294 \ud0c0\uae30\uc5c5,\uae30\uad00\uc5d0 \uc81c\uacf5\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub2e8, \ub2e4\uc74c\uc758 \uacbd\uc6b0\uc5d0\ub294 \uc8fc\uc758\ub97c \uae30\uc6b8\uc5ec \uac1c\uc778\uc815\ubcf4\ub97c \uc774\uc6a9 \ubc0f \uc81c\uacf5\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n- \uc81c\ud734\uad00\uacc4: \ubcf4\ub2e4 \ub098\uc740 \uc11c\ube44\uc2a4 \uc81c\uacf5\uc744 \uc704\ud558\uc5ec \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc81c\ud734\uc0ac\uc5d0\uac8c \uc81c\uacf5\ud558\uac70\ub098 \ub610\ub294 \uc81c\ud734\uc0ac\uc640 \uacf5\uc720\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc815\ubcf4\ub97c \uc81c\uacf5\ud558\uac70\ub098 \uacf5\uc720\ud560 \uacbd\uc6b0\uc5d0\ub294 \uc0ac\uc804\uc5d0 \uace0\uac1d\ub2d8\uaed8 \uc81c\ud734\uc0ac\uac00 \ub204\uad6c\uc778\uc9c0, \uc81c\uacf5 \ub610\ub294 \uacf5\uc720\ub418\ub294 \uac1c\uc778\uc815\ubcf4\ud56d\ubaa9\uc774 \ubb34\uc5c7\uc778\uc9c0, \uc65c \uadf8\ub7ec\ud55c \uac1c\uc778\uc815\ubcf4\uac00 \uc81c\uacf5\ub418\uac70\ub098 \uacf5\uc720\ub418\uc5b4\uc57c \ud558\ub294\uc9c0, \uadf8\ub9ac\uace0 \uc5b8\uc81c\uae4c\uc9c0 \uc5b4\ub5bb\uac8c \ubcf4\ud638,\uad00\ub9ac\ub418\ub294\uc9c0\uc5d0 \ub300\ud574 \uac1c\ubcc4\uc801\uc73c\ub85c \uc11c\uba74 \ub610\ub294 \uc804\uc790\uc6b0\ud3b8 \ub4f1\uc744 \ud1b5\ud574 \uace0\uc9c0\ud558\uc5ec \ub3d9\uc758\ub97c \uad6c\ud558\ub294 \uc808\ucc28\ub97c \uac70\uce58\uac8c \ub418\uba70, \uace0\uac1d\ub2d8\uaed8\uc11c \ub3d9\uc758\ud558\uc9c0 \uc54a\ub294 \uacbd\uc6b0\uc5d0\ub294 \uc81c\ud734\uc0ac\uc5d0\uac8c \uc81c\uacf5\ud558\uac70\ub098 \uc81c\ud734\uc0ac\uc640 \uacf5\uc720\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \uc81c\ud734\uad00\uacc4\uc5d0 \ubcc0\ud654\uac00 \uc788\uac70\ub098 \uc81c\ud734\uad00\uacc4\uac00 \uc885\uacb0\ub420 \ub54c\ub3c4 \uac19\uc740 \uc808\ucc28\uc5d0 \uc758\ud558\uc5ec \uace0\uc9c0\ud558\uac70\ub098 \ub3d9\uc758\ub97c \uad6c\ud569\ub2c8\ub2e4.\r\n- \ub9e4\uac01,\uc778\uc218\ud569\ubcd1 \ub4f1: \uc601\uc5c5\uc758 \uc804\ubd80 \ub610\ub294 \uc77c\ubd80\ub97c \uc591\ub3c4\ud558\uac70\ub098, \ud569\ubcd1, \uc0c1\uc18d \ub4f1\uc73c\ub85c \uc11c\ube44\uc2a4\uc81c\uacf5\uc790\uc758 \uad8c\ub9ac,\uc758\ubb34\ub97c \uc774\uc804 \uc2b9\uacc4\ud558\ub294 \uacbd\uc6b0 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uad00\ub828 \uace0\uac1d\ub2d8\uc758 \uad8c\ub9ac\ub97c \ubcf4\uc7a5\ud558\uae30 \uc704\ud558\uc5ec \ubc18\ub4dc\uc2dc \uadf8 \uc0ac\uc2e4\uc744 \uace0\uac1d\ub2d8\uaed8 \ud1b5\uc9c0\ud569\ub2c8\ub2e4.\r\n2.\ubcf8 \uc11c\ube44\uc2a4\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uac1c\uc778\uc815\ubcf4 \uc218\uc9d1 \uc2dc \uace0\uac1d\ub2d8\uaed8 \uace0\uc9c0\ud558\uace0 \ub3d9\uc758\ub97c \uc5bb\uc740 \ubc94\uc704\ub97c \ub118\uc5b4 \uc774\uc6a9\ud558\uac70\ub098 \uc81c3\uc790\uc5d0\uac8c \uc81c\uacf5\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub2e4\ub9cc, \uace0\uac1d\ub2d8\uc758 \ub3d9\uc758\uac00 \uc788\uac70\ub098 \ub2e4\uc74c\uc5d0 \ud574\ub2f9\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \uc608\uc678\ub85c \ud569\ub2c8\ub2e4.\r\n- \uc11c\ube44\uc2a4\uc758 \uc81c\uacf5\uc5d0 \uad00\ud55c \uacc4\uc57d\uc758 \uc774\ud589\uc744 \uc704\ud558\uc5ec \ud544\uc694\ud55c \uac1c\uc778\uc815\ubcf4\ub85c\uc11c \uacbd\uc81c\uc801, \uae30\uc220\uc801\uc778 \uc0ac\uc720\ub85c \ud1b5\uc0c1\uc758 \ub3d9\uc758\ub97c \ubc1b\ub294 \uac83\uc774 \ud604\uc800\ud788 \uace4\ub780\ud55c \uacbd\uc6b0 \r\n- \uc11c\ube44\uc2a4 \uc81c\uacf5\uc5d0 \ub530\ub978 \uc694\uae08\uc815\uc0b0\uc744 \uc704\ud558\uc5ec \ud544\uc694\ud55c \uacbd\uc6b0 \r\n- \ud1b5\uc2e0\ube44\ubc00\ubcf4\ud638\ubc95, \uad6d\uc138\uae30\ubcf8\ubc95, \uc815\ubcf4\ud1b5\uc2e0\ub9dd \uc774\uc6a9\ucd09\uc9c4 \ubc0f \uc815\ubcf4\ubcf4\ud638 \ub4f1\uc5d0 \uad00\ud55c \ubc95\ub960, \uae08\uc735\uc2e4\uba85\uac70\ub798 \ubc0f \ube44\ubc00\ubcf4\uc7a5\uc5d0 \uad00\ud55c \ubc95\ub960, \uc2e0\uc6a9\uc815\ubcf4\uc758 \uc774\uc6a9 \ubc0f \ubcf4\ud638\uc5d0 \uad00\ud55c \ubc95\ub960, \uc804\uae30\ud1b5\uc2e0\uae30\ubcf8\ubc95, \uc804\uae30\ud1b5\uc2e0\uc0ac\uc5c5\ubc95, \uc9c0\ubc29\uc138\ubc95, \uc18c\ube44\uc790\uae30\ubcf8\ubc95, \ud55c\uad6d\uc740\ud589\ubc95, \ud615\uc0ac\uc18c\uc1a1\ubc95 \ub4f1 \ub2e4\ub978 \ubc95\ub960\uc5d0 \ud2b9\ubcc4\ud55c \uaddc\uc815\uc774 \uc788\ub294 \uacbd\uc6b0. \ub2e8, \'\ubc95\ub960\uc5d0 \ud2b9\ubcc4\ud55c \uaddc\uc815\uc774 \uc788\ub294 \uacbd\uc6b0\'\ub85c \ud589\uc815\ubaa9\uc801\uc774\ub098 \uc218\uc0ac\ubaa9\uc801\uc73c\ub85c \ud589\uc815\uad00\uccad \ub610\ub294 \uc218\uc0ac\uae30\uad00\uc774 \uc694\uad6c\ud574 \uc628 \uacbd\uc6b0\ub77c\ub3c4 \ubb34\uc870\uac74 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc81c\uacf5\ud558\uc9c0 \uc54a\uc73c\uba70, \ubc95\ub960\uc5d0 \uaddc\uc815\ub41c \ubc14\uc5d0 \ub530\ub77c \uc601\uc7a5 \ub610\ub294 \uae30\uad00\uc7a5\uc758 \uc9c1\uc778\uc774 \ub0a0\uc778\ub41c \uc11c\uba74\uc5d0 \uc758\ud55c \uacbd\uc6b0 \ub4f1 \uc801\ubc95\ud55c \uc808\ucc28\uc5d0 \ub530\ub77c \uc81c\uacf5\ud569\ub2c8\ub2e4.\r\n- \ud1b5\uacc4\uc791\uc131/ \ud559\uc220\uc5f0\uad6c \ub610\ub294 \uc2dc\uc7a5\uc870\uc0ac\ub97c \uc704\ud558\uc5ec \ud544\uc694\ud55c \uacbd\uc6b0\ub85c\uc11c \ud2b9\uc815 \uac1c\uc778\uc744 \uc54c\uc544\ubcfc \uc218 \uc5c6\ub294 \ud615\ud0dc\ub85c \uac00\uacf5\ud558\uc5ec \uc81c\uacf5\ud558\ub294 \uacbd\uc6b0\r\n3.\ubcf8 \uc11c\ube44\uc2a4 \uc81c\uacf5\ud558\ub294 \uc11c\ube44\uc2a4\ub97c \ud1b5\ud574 \uac70\ub798\uac00 \uc131\uc0ac\ub41c \uacbd\uc6b0 \uc30d\ubc29 \ub2f9\uc0ac\uc790\uac04\uc5d0 \uc0c1\ud488\uac70\ub798\uc640 \uad00\ub828\ud55c \uc815\ubcf4\ub97c \ud544\uc694\ud55c \ubc94\uc704 \ub0b4\uc5d0\uc11c \uc30d\ubc29\ub2f9\uc0ac\uc790\uc5d0\uac8c \uc81c\uacf5\ud569\ub2c8\ub2e4.\r\n4.\uac1c\uc778\uc815\ubcf4 \uc81c\uacf5 \ud604\ud669 \r\n\ubcf8 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc744 \ud655\uc778\ud558\uc2dc\ub294 \uc2dc\uc810\uc758 \uac1c\uc778\uc815\ubcf4 \uc81c\uacf5 \ud604\ud669\uc740 \uc544\ub798 \ub9c1\ud06c\ub97c \ud1b5\ud558\uc5ec \ud655\uc778\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc815\ubcf4 \uc81c\uacf5 \ud604\ud669\uc740 \uc81c\ud734\uad00\uacc4\uc758 \uac1c\uc2dc \ub610\ub294 \uc885\ub8cc\uc5d0 \ub530\ub77c \ubcc0\ub3d9\uc774 \uac00\ub2a5\ud558\uba70 \uac1c\uc778\uc815\ubcf4 \uc81c\uacf5\uacfc \ud568\uaed8 \ubaa9\ub85d\uc5d0 \uac8c\uc2dc\ub418\uace0 \uc81c\ud734\uad00\uacc4 \uc885\ub8cc \ub4f1\uc73c\ub85c \uc778\ud55c \uac1c\uc778\uc815\ubcf4\uc758 \ud30c\uae30\uc640 \ud568\uaed8 \ubaa9\ub85d\uc5d0\uc11c \uc0ad\uc81c\ub429\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09 \uc5c5\ubb34\uc758 \uc704\ud0c1\r\n\r\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uae30\ubcf8\uc801\uc778 \uc11c\ube44\uc2a4 \uc81c\uacf5, \ubcf4\ub2e4 \ub098\uc740 \uc11c\ube44\uc2a4 \uc81c\uacf5, \uace0\uac1d\ud3b8\uc758 \uc81c\uacf5 \ub4f1 \uc6d0\ud65c\ud55c \uc5c5\ubb34 \uc218\ud589\uc744 \uc704\ud558\uc5ec \ub2e4\uc74c\uacfc \uac19\uc774 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09 \uc5c5\ubb34\ub97c \uc678\ubd80 \uc804\ubb38\uc5c5\uccb4\uc5d0 \uc704\ud0c1\ud558\uc5ec \uc6b4\uc601\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4\r\n\uc778\ud06c\ub85c\uc2a4\u321c: \uc11c\ube44\uc2a4 \uc6b4\uc601 \ubc0f \uace0\uac1d\uc0c1\ub2f4\uc5c5\ubb34 \uc704\ud0c1\uc6b4\uc601\r\n\uc2dc\uc2a4\ud15c \uad6c\ucd95 \ubc0f \uc720\uc9c0\ubcf4\uc218\r\nT store \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158 \ub0b4 \uad11\uace0 \ud50c\ub7ab\ud3fc \uc81c\uacf5\r\n\ub9ac\uc5bc\ub124\ud2b8\uc6cd\uc2a4\uc544\uc2dc\uc544\ud37c\uc2dc\ud53d\u321c: \ud3f0\uafb8\ubbf8\uae30 \uc11c\ube44\uc2a4 \uc2dc\uc2a4\ud15c \uc6b4\uc601\r\n\uc720\uc9c0\ubcf4\uc218\r\n\uace0\uac1d\uc0c1\ub2f4\uc5c5\ubb34 \uc704\ud0c1 \uc6b4\uc601\r\n\ud55c\uad6d\uc2e0\uc6a9\uc815\ubcf4(\uc8fc): \uc2e4\uba85/\ubcf8\uc778\uc778\uc99d\r\n\u321c\ub2e4\ub0a0: \ud734\ub300\ud3f0 \uc18c\uc561 \uacb0\uc81c\r\n\uc774\ub2c8\uc2dc\uc2a4: \uc2e0\uc6a9\uce74\ub4dc \uacb0\uc81c\r\nSK Communications.: T store \uac80\uc0c9 \uac1c\ubc1c/\uc6b4\uc601\r\n2.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc704\ud0c1\uc5c5\ubb34\uacc4\uc57d\uc11c \ub4f1\uc744 \ud1b5\ud558\uc5ec \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uad00\ub828 \ubc95\uaddc\uc758 \uc900\uc218, \uac1c\uc778\uc815\ubcf4\uc5d0 \uad00\ud55c \ube44\ubc00\uc720\uc9c0, \uc81c3\uc790 \uc81c\uacf5\uc5d0 \ub300\ud55c \uae08\uc9c0, \uc0ac\uace0\uc2dc\uc758 \ucc45\uc784 \ubd80\ub2f4, \uc704\ud0c1\uae30\uac04, \ucc98\ub9ac \uc885\ub8cc \ud6c4\uc758 \uac1c\uc778\uc815\ubcf4\uc758 \ubc18\ud658 \ub610\ub294 \ud30c\uae30\uc758\ubb34 \ub4f1\uc744 \uaddc\uc815\ud558\uace0, \uc774\ub97c \uc900\uc218\ud558\ub3c4\ub85d \uad00\ub9ac\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc5f4\ub78c \ubc0f \uc815\uc815\r\n\r\n1.\uace0\uac1d\ub2d8\uc740 \uc5b8\uc81c\ub4e0\uc9c0 \ub4f1\ub85d\ub418\uc5b4 \uc788\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc5f4\ub78c\ud558\uac70\ub098 \uc815\uc815\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc815\ubcf4 \uc5f4\ub78c \ubc0f \uc815\uc815\uc744 \ud558\uace0\uc790 \ud560 \uacbd\uc6b0\uc5d0\ub294 \u300e\ud68c\uc6d0\uc815\ubcf4\ubcc0\uacbd\u300f\uc744 \ud074\ub9ad\ud558\uc5ec \uc9c1\uc811 \uc5f4\ub78c \ub610\ub294 \uc815\uc815\ud558\uac70\ub098, \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\ucc45\uc784\uc790 \ubc0f \ub2f4\ub2f9\uc790\uc5d0\uac8c \uc11c\uba74, \uc804\ud654 \ub610\ub294 E-mail\ub85c \uc5f0\ub77d\ud558\uc2dc\uba74 \uc9c0\uccb4\uc5c6\uc774 \uc870\uce58\ud558\uaca0\uc2b5\ub2c8\ub2e4.\r\n2.\uace0\uac1d\ub2d8\uaed8\uc11c \uac1c\uc778\uc815\ubcf4\uc758 \uc624\ub958\uc5d0 \ub300\ud55c \uc815\uc815\uc744 \uc694\uccad\ud55c \uacbd\uc6b0, \uc815\uc815\uc744 \uc644\ub8cc\ud558\uae30 \uc804\uae4c\uc9c0 \ub2f9\ud574 \uac1c\uc778 \uc815\ubcf4\ub97c \uc774\uc6a9 \ub610\ub294 \uc81c\uacf5\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\r\n3.\uc798\ubabb\ub41c \uac1c\uc778\uc815\ubcf4\ub97c \uc81c3\uc790\uc5d0\uac8c \uc774\ubbf8 \uc81c\uacf5\ud55c \uacbd\uc6b0\uc5d0\ub294 \uc815\uc815 \ucc98\ub9ac\uacb0\uacfc\ub97c \uc81c3\uc790\uc5d0\uac8c \uc9c0\uccb4\uc5c6\uc774 \ud1b5\uc9c0\ud558\uc5ec \uc815\uc815\ud558\ub3c4\ub85d \uc870\uce58\ud558\uaca0\uc2b5\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1, \uc774\uc6a9,\uc81c\uacf5\uc5d0 \ub300\ud55c \ub3d9\uc758 \ucca0\ud68c\r\n\r\n1.\ud68c\uc6d0\uac00\uc785 \ub4f1\uc744 \ud1b5\ud574 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1, \uc774\uc6a9,\uc81c\uacf5\uc5d0 \ub300\ud574 \uace0\uac1d\ub2d8\uaed8\uc11c \ub3d9\uc758\ud558\uc2e0 \ub0b4\uc6a9\uc744 \uace0\uac1d\ub2d8\uaed8\uc11c\ub294 \uc5b8\uc81c\ub4e0\uc9c0 \ucca0\ud68c\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \ub3d9\uc758 \ucca0\ud68c\ub294 \ud648\ud398\uc774\uc9c0 \uccab \ud654\uba74\uc758 \u300e\uc815\ubcf4\ubcc0\uacbd\u300f\uc5d0\uc11c \"\ud68c\uc6d0\ud0c8\ud1f4\"\ub97c \ud074\ub9ad\ud558\uac70\ub098 \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\ucc45\uc784\uc790\uc5d0\uac8c \uc11c\uba74, \uc804\ud654, E-mail\ub4f1\uc73c\ub85c \uc5f0\ub77d\ud558\uc2dc\uba74 \uc9c0\uccb4\uc5c6\uc774 \ud68c\uc6d0\ud0c8\ud1f4\ub97c \uc704\ud574 \ud544\uc694\ud55c \uc870\uce58\ub97c \ucde8\ud569\ub2c8\ub2e4. \ub3d9\uc758 \ucca0\ud68c\ub97c \ud558\uace0 \uac1c\uc778\uc815\ubcf4\ub97c \ud30c\uae30\ud558\ub294 \ub4f1\uc758 \uc870\uce58\ub97c \ucde8\ud55c \uacbd\uc6b0\uc5d0\ub294 \uadf8 \uc0ac\uc2e4\uc744 \uace0\uac1d\ub2d8\uaed8 \uc9c0\uccb4\uc5c6\uc774 \ud1b5\uc9c0\ud558\ub3c4\ub85d \ud558\uaca0\uc2b5\ub2c8\ub2e4.\r\n2.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1\uc5d0 \ub300\ud55c \ub3d9\uc758\ucca0\ud68c(\ud68c\uc6d0\ud0c8\ud1f4)\ub97c \uac1c\uc778\uc815\ubcf4\ub97c \uc218\uc9d1\ud558\ub294 \ubc29\ubc95\ubcf4\ub2e4 \uc27d\uac8c \ud560 \uc218 \uc788\ub3c4\ub85d \ud544\uc694\ud55c \uc870\uce58\ub97c \ucde8\ud569\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \ubcf4\uc720 \ubc0f \uc774\uc6a9\uae30\uac04\r\n\r\n1.\uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub294 \ubcf8 \uc11c\ube44\uc2a4 \uace0\uac1d\ub2d8\uaed8 \uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud558\ub294 \uae30\uac04 \ub3d9\uc548\uc5d0 \ubcf4\uc720 \ubc0f \uc774\uc6a9\ub418\uace0, \ud68c\uc6d0 \ud0c8\ud1f4 \uc2dc \uc218\uc9d1\ub41c \uac1c\uc778\uc758 \uc815\ubcf4\uac00 \uc5f4\ub78c \ub610\ub294 \uc774\uc6a9\ub420 \uc218 \uc5c6\ub3c4\ub85d \ud30c\uae30 \ucc98\ub9ac\ub429\ub2c8\ub2e4. \ub2e4\ub9cc, \uad00\uacc4\ubc95\ub839\uc758 \uaddc\uc815\uc5d0 \uc758\ud558\uc5ec \ubcf4\uc874\ud560 \ud544\uc694\uc131\uc774 \uc788\ub294 \uacbd\uc6b0\uc5d0\ub294 \uad00\uacc4\ubc95\ub839\uc5d0 \ub530\ub77c \ubcf4\uc874\ud569\ub2c8\ub2e4.\r\n2.\uc0c1\ubc95 \ubc0f \u2018\uc804\uc790\uc0c1\uac70\ub798\ub4f1\uc5d0\uc11c \uc18c\ube44\uc790\ubcf4\ud638\uc5d0 \uad00\ud55c \ubc95\ub960\u2019, \uc804\uc790\uae08\uc735\uac70\ub798\ubc95, \uc5ec\uc2e0\uc804\ubb38\uae08\uc735\uc5c5\ubc95 \uad6d\uc138\uae30\ubcf8\ubc95, \ubc95\uc778\uc138\ubc95, \ubd80\uac00\uac00\uce58\uc138\ubc95 \ub4f1 \uad00\ub828 \ubc95\ub839\uc758 \uaddc\uc815\uc5d0 \uc758\ud558\uc5ec \ub2e4\uc74c\uacfc \uac19\uc774 \uac70\ub798 \uad00\ub828 \uad8c\ub9ac \uc758\ubb34 \uad00\uacc4\uc758 \ud655\uc778\uc744 \uc704\ud558\uc5ec \uc77c\uc815\uae30\uac04 \ubcf4\uc720\ud558\uc5ec\uc57c \ud560 \ud544\uc694\uac00 \uc788\uc744 \uacbd\uc6b0 \uac1c\uc778\uc815\ubcf4\ub294 \uc77c\uc815\uae30\uac04 \ubcf4\uc720\ub418\uba70, \uc774 \ub54c \ubcf4\uc720\ub418\ub294 \uac1c\uc778\uc815\ubcf4\uc758 \uc5f4\ub78c \ubc0f \uc774\uc6a9\uc740 \ud574\ub2f9 \uc0ac\uc720\ub85c \uad6d\ud55c\ub418\uba70, \uc0ac\uc804\uc5d0 \ubcf4\uc720\ubaa9\uc801, \uae30\uac04 \ubc0f \ubcf4\uc720\ud558\ub294 \uac1c\uc778\uc815\ubcf4 \ud56d\ubaa9\uc744 \uba85\uc2dc\ud558\uc5ec\uc57c \ud569\ub2c8\ub2e4.\r\n- \uace0\uac1d\ub2d8\uaed8 \ubbf8\ub9ac \uace0\uc9c0\ud558\uace0 \uadf8 \ubcf4\uc720\uae30\uac04\uc774 \uacbd\uacfc\ud558\uc9c0 \uc544\ub2c8\ud55c \uacbd\uc6b0\uc640 \uac1c\ubcc4\uc801\uc73c\ub85c \uace0\uac1d\ub2d8\uc758 \ub3d9\uc758\ub97c \ubc1b\uc740 \uacbd\uc6b0\uc5d0\ub294 \uc57d\uc18d\ud55c \ubcf4\uc720\uae30\uac04\r\n- \uacc4\uc57d \ub610\ub294 \uccad\uc57d\ucca0\ud68c \ub4f1\uc5d0 \uad00\ud55c \uae30\ub85d: 5\ub144\r\n- \ub300\uae08\uacb0\uc81c \ubc0f \uc7ac\ud654 \ub4f1\uc758 \uacf5\uae09\uc5d0 \uad00\ud55c \uae30\ub85d: 5\ub144\r\n- \uc18c\ube44\uc790\uc758 \ubd88\ub9cc \ub610\ub294 \ubd84\uc7c1\ucc98\ub9ac\uc5d0 \uad00\ud55c \uae30\ub85d: 3\ub144\r\n3.\uace0\uac1d\ub2d8\uc758 \ub3d9\uc758\ub97c \ubc1b\uc544 \ubcf4\uc720\ud558\uace0 \uc788\ub294 \uac70\ub798\uc815\ubcf4\uc5d0 \ub300\ud574 \uace0\uac1d\ub2d8\uaed8\uc11c \uc5f4\ub78c\uc744 \uc694\uad6c\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \uc9c0\uccb4\uc5c6\uc774 \ud574\ub2f9 \uc815\ubcf4\ub97c \uc5f4\ub78c/ \ud655\uc778\ud560 \uc218 \uc788\ub3c4\ub85d \uc870\uce58\ud569\ub2c8\ub2e4.\r\n4.\ud68c\uc6d0\uc774 \uc790\ubc1c\uc801\uc73c\ub85c \ud68c\uc6d0 \ud0c8\ud1f4\ud55c \uacbd\uc6b0 \ud68c\uc6d0 \uc7ac\uac00\uc785, \uc784\uc758 \ud574\uc9c0 \ub4f1\uc744 \ubc18\ubcf5\uc801\uc73c\ub85c \ud589\ud568\uc73c\ub85c\uc368 \ubcf8 \uc11c\ube44\uc2a4\uac00 \uc81c\uacf5\ud558\ub294 \ud560\uc778\ucfe0\ud3f0, \uc774\ubca4\ud2b8 \ud61c\ud0dd \ub4f1\uc758 \uacbd\uc81c\uc0c1\uc758 \uc774\uc775\uc744 \ubd88\ubc95 \ud3b8\ubc95\uc801\uc73c\ub85c \uc218\ucde8\ud558\uac70\ub098 \uc774 \uacfc\uc815\uc5d0\uc11c \uba85\uc758\ub3c4\uc6a9 \ub4f1\uc758 \ud589\uc704\uac00 \ubc1c\uc0dd\ud558\ub294 \uac83\uc744 \ubc29\uc9c0\ud558\uae30 \uc704\ud55c \ubaa9\uc801\uc73c\ub85c \ud68c\uc6d0 \ud0c8\ud1f4 \ud6c4 1\uac1c\uc6d4 \ub3d9\uc548 \ud68c\uc6d0\uc758 \uc131\uba85, \uc8fc\ubbfc\ub4f1\ub85d\ubc88\ud638, \uc544\uc774\ub514, \ube44\ubc00\ubc88\ud638, E-mail \uc2dd\ubcc4\uc815\ubcf4\ub97c \ubcf4\uad00\ud569\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4 \ud30c\uae30 \uc808\ucc28 \ubc0f \ubc29\ubc95\r\n\r\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc218\uc9d1\ud55c \uac1c\uc778\uc815\ubcf4\uc758 \uc774\uc6a9\ubaa9\uc801\uc774 \ub2ec\uc131\ub41c \ud6c4\uc5d0\ub294 \ubcf4\uad00\uae30\uac04 \ubc0f \uc774\uc6a9\uae30\uac04\uc5d0 \ub530\ub77c \ud574\ub2f9 \uc815\ubcf4\ub97c \uc9c0\uccb4\uc5c6\uc774 \ud30c\uae30\ud569\ub2c8\ub2e4. \ud30c\uae30\uc808\ucc28, \ubc29\ubc95, \uc2dc\uc810\uc740 \ub2e4\uc74c\uacfc \uac19\uc2b5\ub2c8\ub2e4.\r\n- \ud30c\uae30\uc808\ucc28 \ubc0f \uc2dc\uc810: \uace0\uac1d\ub2d8\uc774 \uc11c\ube44\uc2a4 \uac00\uc785 \ub4f1\uc744 \uc704\ud574 \uae30\uc7ac\ud55c \uac1c\uc778\uc815\ubcf4\ub294 \uc11c\ube44\uc2a4 \ud574\uc9c0 \ub4f1 \uc774\uc6a9\ubaa9\uc801\uc774 \ub2ec\uc131\ub41c \ud6c4 \ub0b4\ubd80 \ubc29\uce68 \ubc0f \uae30\ud0c0 \uad00\ub828 \ubc95\ub839\uc5d0 \uc758\ud55c \uc815\ubcf4\ubcf4\ud638 \uc0ac\uc720(\uc704 \uac1c\uc778\uc815\ubcf4\uc758 \ubcf4\uc720 \ubc0f \uc774\uc6a9\uae30\uac04 \ucc38\uc870)\uc5d0 \ub530\ub978 \ubcf4\uc720\uae30\uac04\uc774 \uacbd\uacfc\ud55c \ud6c4\uc5d0 \uc0ad\uc81c\ub418\uac70\ub098 \ud30c\uae30\ud569\ub2c8\ub2e4. \uc77c\ubc18\uc801\uc73c\ub85c \uc794\uc874\ud558\ub294 \ucc44\uad8c,\ucc44\ubb34 \uad00\uacc4\uac00 \uc5c6\ub294 \uacbd\uc6b0 \ubcf8 \uc11c\ube44\uc2a4 \ud68c\uc6d0\uac00\uc785 \uc2dc \uc218\uc9d1\ub418\uc5b4 \uc804\uc790\uc801 \ud30c\uc77c\ud615\ud0dc\ub85c \uad00\ub9ac\ud558\ub294 \uac1c\uc778\uc815\ubcf4\ub294 \ud68c\uc6d0 \ud0c8\ud1f4 \uc2dc\uc810\uc5d0 \ubc14\ub85c \uc0ad\uc81c \ub429\ub2c8\ub2e4. \r\n- \ud30c\uae30\ubc29\ubc95: \uc885\uc774\uc5d0 \ucd9c\ub825\ub41c \uac1c\uc778\uc815\ubcf4\ub294 \ubd84\uc1c4\uae30\ub85c \ubd84\uc1c4 \ub610\ub294 \uc18c\uac01\ud558\uac70\ub098 \ud654\ud559\uc57d\ud488 \ucc98\ub9ac\ub97c \ud558\uc5ec \uc6a9\ud574\ud558\uc5ec \ud30c\uae30\ud558\uace0, \uc804\uc790\uc801 \ud30c\uc77c\ud615\ud0dc\ub85c \uc800\uc7a5\ub41c \uac1c\uc778\uc815\ubcf4\ub294 \uae30\ub85d\uc744 \uc7ac\uc0dd\ud560 \uc218 \uc5c6\ub294 \uae30\uc220\uc801 \ubc29\ubc95\uc744 \uc0ac\uc6a9\ud558\uc5ec \uc0ad\uc81c\ud569\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc758 \uace0\uc9c0 \ub610\ub294 \ud1b5\uc9c0\ubc29\ubc95\r\n\r\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc774 \ub3d9\uc758\ud55c \ubc94\uc704\ub97c \ub118\uc5b4 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc774\uc6a9\ud558\uac70\ub098 \uc81c3\uc790\uc5d0\uac8c \uc81c\uacf5\ud558\uae30 \uc704\ud574 \uace0\uac1d\ub2d8\uc758 \ucd94\uac00\uc801\uc778 \ub3d9\uc758\ub97c \uc5bb\uace0\uc790 \ud558\ub294 \ub54c\uc5d0\ub294 \ubbf8\ub9ac \uace0\uac1d\ub2d8\uaed8 \uac1c\ubcc4\uc801\uc73c\ub85c \uc11c\uba74, \uc804\uc790\uc6b0\ud3b8, \uc804\ud654 \ub4f1\uc73c\ub85c \ud574\ub2f9\uc0ac\ud56d\uc744 \uace0\uc9c0\ud569\ub2c8\ub2e4.\r\n2.\ud0c0\uc778\uc5d0\uac8c \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1,\ubcf4\uad00,\ucc98\ub9ac,\uc774\uc6a9,\uc81c\uacf5,\uad00\ub9ac,\ud30c\uae30 \ub4f1\uc744 \uc704\ud0c1\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \uac00\uc785\ud654\uba74, \uc11c\ube44\uc2a4\uc774\uc6a9\uc57d\uad00, \ud648\ud398\uc774\uc9c0\uc758 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68 \ub4f1\uc744 \ud1b5\ud558\uc5ec \uadf8 \uc0ac\uc2e4\uc744 \uace0\uac1d\ub2d8\uaed8 \uace0\uc9c0\ud558\uace0 \ub3d9\uc758\ub97c \uc5bb\uc2b5\ub2c8\ub2e4.\r\n3.\ubcf8 \uc11c\ube44\uc2a4\uac00 \uc601\uc5c5\uc758 \uc804\ubd80 \ub610\ub294 \uc77c\ubd80\ub97c \uc591\ub3c4\ud558\uac70\ub098 \ud569\ubcd1, \uc0c1\uc18d \ub4f1\uc73c\ub85c \uadf8 \uad8c\ub9ac,\uc758\ubb34\ub97c \uc774\uc804\ud558\ub294 \uacbd\uc6b0 \uc11c\uba74,\uc804\uc790\uc6b0\ud3b8 \ub4f1\uc744 \ud1b5\ud558\uc5ec \uace0\uac1d\ub2d8\uaed8 \uac1c\ubcc4\uc801\uc73c\ub85c \ud1b5\uc9c0\ud568\uacfc \ub3d9\uc2dc\uc5d0 \ud648\ud398\uc774\uc9c0 \uccab \ud654\uba74\uc5d0\uc11c \uc2dd\ubcc4\ud560 \uc218 \uc788\ub3c4\ub85d \ud45c\uae30\ud558\uc5ec 30\uc77c \uc774\uc0c1 \uadf8 \uc0ac\uc2e4\uc744 \uacf5\uc9c0\ud569\ub2c8\ub2e4. \ub2e4\ub9cc, \uc11c\uba74,\uc804\uc790\uc6b0\ud3b8 \uae30\ud0c0\uc758 \ubc29\ubc95\uc5d0 \uc758\ud55c \ud1b5\uc9c0\ub294 \uacfc\uc2e4 \uc5c6\uc774 \uace0\uac1d\ub2d8\uc758 \uc5f0\ub77d\ucc98\ub97c \uc54c\uc9c0 \ubabb\ud558\uac70\ub098 \ucc9c\uc7ac, \uc9c0\ubcc0 \uae30\ud0c0 \ud1b5\uc9c0\ud560 \uc218 \uc5c6\ub294 \uc815\ub2f9\ud55c \uc774\uc720\uac00 \uc788\ub294 \uacbd\uc6b0\uc5d0\ub294 2\uacf3 \uc774\uc0c1\uc758 \uc911\uc559\uc77c\uac04\uc9c0(\uace0\uac1d\ub2d8\uc758 \ub300\ubd80\ubd84\uc774 \ud2b9\uc815 \uc9c0\uc5ed\uc5d0 \uac70\uc8fc\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \uadf8 \uc9c0\uc5ed\uc744 \ubcf4\uae09\uad6c\uc5ed\uc73c\ub85c \ud558\ub294 \uc77c\uac04\uc9c0\ub85c \ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4)\uc5d0 1\ud68c \uc774\uc0c1 \uacf5\uace0\ud558\ub294 \uac83\uc73c\ub85c \uac08\uc74c\ud569\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \uc704\ud55c \uae30\uc220 \ubc0f \uad00\ub9ac\uc801 \ub300\ucc45\r\n\r\n\ubcf8 \uc11c\ube44\uc2a4\uc5d0\uc11c\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ubcf4\ud638\ud558\uae30 \uc704\ud574 \uae30\uc220\uc801 \ub300\ucc45\uacfc \uad00\ub9ac\uc801 \ub300\ucc45\uc744 \ub9c8\ub828\ud558\uace0 \uc788\uc73c\uba70, \uc774\ub97c \uc801\uc6a9\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n1.\uae30\uc220\uc801 \ub300\ucc45\r\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ucde8\uae09\ud568\uc5d0 \uc788\uc5b4 \uac1c\uc778\uc815\ubcf4\uac00 \ubd84\uc2e4, \ub3c4\ub09c, \ub204\ucd9c, \ubcc0\uc870 \ub610\ub294 \ud6fc\uc190\ub418\uc9c0 \uc54a\ub3c4\ub85d \uc548\uc804\uc131 \ud655\ubcf4\ub97c \uc704\ud558\uc5ec \ub2e4\uc74c\uacfc \uac19\uc740 \uae30\uc220\uc801 \ub300\ucc45\uc744 \uac15\uad6c\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2460\uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub294 \ube44\ubc00\ubc88\ud638\uc5d0 \uc758\ud574 \ubcf4\ud638\ub418\uba70 \ud30c\uc77c \ubc0f \uc804\uc1a1\ub370\uc774\ud130\ub97c \uc554\ud638\ud654\ud558\uac70\ub098 \ud30c\uc77c \uc7a0\uae08\uae30\ub2a5 (Lock)\uc744 \uc0ac\uc6a9\ud558\uc5ec \uc911\uc694\ud55c \ub370\uc774\ud130\ub294 \ubcc4\ub3c4\uc758 \ubcf4\uc548\uae30\ub2a5\uc744 \ud1b5\ud574 \ubcf4\ud638\ub418\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2461\ubcf8 \uc11c\ube44\uc2a4\ub294 \ubc31\uc2e0\ud504\ub85c\uadf8\ub7a8\uc744 \uc774\uc6a9\ud558\uc5ec \ucef4\ud4e8\ud130 \ubc14\uc774\ub7ec\uc2a4\uc5d0 \uc758\ud55c \ud53c\ud574\ub97c \ubc29\uc9c0\ud558\uae30 \uc704\ud55c \uc870\uce58\ub97c \ucde8\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ubc31\uc2e0\ud504\ub85c\uadf8\ub7a8\uc740 \uc8fc\uae30\uc801\uc73c\ub85c \uc5c5\ub370\uc774\ud2b8\ub418\uba70 \uac11\uc791\uc2a4\ub7f0 \ubc14\uc774\ub7ec\uc2a4\uac00 \ucd9c\ud604\ud560 \uacbd\uc6b0 \ubc31\uc2e0\uc774 \ub098\uc624\ub294 \uc9c0\uccb4\uc5c6\uc774 \uc774\ub97c \uc81c\uacf5\ud568\uc73c\ub85c\uc368 \uac1c\uc778\uc815\ubcf4\uac00 \uce68\ud574\ub418\ub294 \uac83\uc744 \ubc29\uc9c0\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2462\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc554\ud638\uc54c\uace0\ub9ac\uc998\uc744 \uc774\uc6a9\ud558\uc5ec \ub124\ud2b8\uc6cc\ud06c \uc0c1\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc548\uc804\ud558\uac8c \uc804\uc1a1\ud560 \uc218 \uc788\ub294 \ubcf4\uc548\uc7a5\uce58(SSL \ub610\ub294 SET)\ub97c \ucc44\ud0dd\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2463\ud574\ud0b9 \ub4f1 \uc678\ubd80\uce68\uc785\uc5d0 \ub300\ube44\ud558\uc5ec \uac01 \uc11c\ubc84\ub9c8\ub2e4 \uce68\uc785\ucc28\ub2e8\uc2dc\uc2a4\ud15c \ubc0f \ucde8\uc57d\uc810 \ubd84\uc11d\uc2dc\uc2a4\ud15c \ub4f1\uc744 \uc774\uc6a9\ud558\uc5ec \ubcf4\uc548\uc5d0 \ub9cc\uc804\uc744 \uae30\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n2.\uad00\ub9ac\uc801 \ub300\ucc45\r\n\u2460\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uc5d0 \ub300\ud55c \uc811\uadfc\uad8c\ud55c\uc744 \ucd5c\uc18c\ud55c\uc758 \uc778\uc6d0\uc73c\ub85c \uc81c\ud55c\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uadf8 \ucd5c\uc18c\ud55c\uc758 \uc778\uc6d0\uc5d0 \ud574\ub2f9\ud558\ub294 \uc790\ub294 \ub2e4\uc74c\uacfc \uac19\uc2b5\ub2c8\ub2e4. \r\n- \uc774\uc6a9\uc790\ub97c \uc9c1\uc811 \uc0c1\ub300\ub85c \ud558\uc5ec \ub9c8\ucf00\ud305 \uc5c5\ubb34\ub97c \uc218\ud589\ud558\ub294 \uc790\r\n- \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\ucc45\uc784\uc790 \ubc0f \ub2f4\ub2f9\uc790 \ub4f1 \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\uc5c5\ubb34\ub97c \uc218\ud589\ud558\ub294 \uc790\r\n- \uae30\ud0c0 \uc5c5\ubb34\uc0c1 \uac1c\uc778\uc815\ubcf4\uc758 \ucde8\uae09\uc774 \ubd88\uac00\ud53c\ud55c \uc790\r\n\u2461\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uc5d0 \ub300\ud55c \uc811\uadfc \ubc0f \uad00\ub9ac\uc5d0 \ud544\uc694\ud55c \uc808\ucc28 \ub4f1\uc744 \ub9c8\ub828\ud558\uc5ec \uc18c\uc18d \uc9c1\uc6d0\uc73c\ub85c \ud558\uc5ec\uae08 \uc774\ub97c \uc219\uc9c0\ud558\uace0 \uc900\uc218\ud558\ub3c4\ub85d \ud558\uace0 \uc788\uc73c\uba70, \uac1c\uc778\uc815\ubcf4\ub97c \ucde8\uae09\ud558\ub294 \uc9c1\uc6d0\uc744 \ub300\uc0c1\uc73c\ub85c \uc0c8\ub85c\uc6b4 \ubcf4\uc548 \uae30\uc220 \uc2b5\ub4dd \ubc0f \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uc758\ubb34 \ub4f1\uc5d0 \uad00\ud574 \uc815\uae30\uc801\uc778 \uc0ac\ub0b4 \uad50\uc721 \ubc0f \uc678\ubd80 \uc704\ud0c1\uad50\uc721\uc744 \uc2e4\uc2dc\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2462\uac1c\uc778\uc815\ubcf4 \uad00\ub828 \ucde8\uae09\uc790\uc758 \uc5c5\ubb34 \uc778\uc218\uc778\uacc4\ub294 \ubcf4\uc548\uc774 \uc720\uc9c0\ub41c \uc0c1\ud0dc\uc5d0\uc11c \ucca0\uc800\ud558\uac8c \uc774\ub904\uc9c0\uace0 \uc788\uc73c\uba70 \uc785\uc0ac \ubc0f \ud1f4\uc0ac \ud6c4 \uac1c\uc778\uc815\ubcf4 \uc0ac\uace0\uc5d0 \ub300\ud55c \ucc45\uc784\uc744 \uba85\ud655\ud788 \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2463\uc804\uc0b0\uc2e4 \ubc0f \uc790\ub8cc \ubcf4\uad00\uc2e4 \ub4f1\uc744 \ud2b9\ubcc4 \ubcf4\ud638\uad6c\uc5ed\uc73c\ub85c \uc124\uc815\ud558\uc5ec \ucd9c\uc785\uc744 \ud1b5\uc81c\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2464\ubcf8 \uc11c\ube44\uc2a4\ub294 \ucef4\ud4e8\ud130\ub97c \uc774\uc6a9\ud558\uc5ec \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ucc98\ub9ac\ud558\ub294 \uacbd\uc6b0 \uac1c\uc778\uc815\ubcf4\uc5d0 \ub300\ud55c \uc811\uadfc\uad8c\ud55c\uc744 \uac00\uc9c4 \ub2f4\ub2f9\uc790\ub97c \uc9c0\uc815\ud558\uc5ec \uc2dd\ubcc4\ubd80\ud638(ID) \ubc0f \ube44\ubc00\ubc88\ud638\ub97c \ubd80\uc5ec\ud558\uace0, \ud574\ub2f9 \ube44\ubc00\ubc88\ud638\ub97c \uc815\uae30\uc801\uc73c\ub85c \uac31\uc2e0\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2465\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc2e0\uaddc\uc9c1\uc6d0 \ucc44\uc6a9 \uc2dc \uc815\ubcf4\ubcf4\ud638\uc11c\uc57d\uc11c \ub610\ub294 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\uc11c\uc57d\uc11c\uc5d0 \uc11c\uba85\ud568\uc73c\ub85c \uc9c1\uc6d0\uc5d0 \uc758\ud55c \uc815\ubcf4\uc720\ucd9c\uc744 \uc0ac\uc804\uc5d0 \ubc29\uc9c0\ud558\uace0 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc5d0 \ub300\ud55c \uc774\ud589\uc0ac\ud56d \ubc0f \uc9c1\uc6d0\uc758 \uc900\uc218\uc5ec\ubd80\ub97c \uac10\uc0ac\ud558\uae30 \uc704\ud55c \ub0b4\ubd80\uc808\ucc28\ub97c \ub9c8\ub828\ud558\uc5ec \uc9c0\uc18d\uc801\uc73c\ub85c \uc2dc\ud589\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2466\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc9c1\uc6d0 \ud1f4\uc9c1 \uc2dc \ube44\ubc00\uc720\uc9c0\uc11c\uc57d\uc11c\uc5d0 \uc11c\uba85\ud568\uc73c\ub85c \ud68c\uc6d0\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ucde8\uae09\ud558\uc600\ub358 \uc790\uac00 \uc9c1\ubb34\uc0c1 \uc54c\uac8c \ub41c \uac1c\uc778\uc815\ubcf4\ub97c \ud6fc\uc190/ \uce68\ud574 \ub610\ub294 \ub204\uc124\ud558\uc9c0 \uc54a\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2467\uc11c\ube44\uc2a4\uc774\uc6a9\uacc4\uc57d\uccb4\uacb0 \ub610\ub294 \uc11c\ube44\uc2a4\uc81c\uacf5\uc744 \uc704\ud558\uc5ec \uace0\uac1d\ub2d8\uc758 \uc2e0\uc6a9\uce74\ub4dc\ubc88\ud638, \uc740\ud589\uacb0\uc81c\uacc4\uc88c \ub4f1 \ub300\uae08\uacb0\uc81c\uc5d0 \uad00\ud55c \uc815\ubcf4\ub97c \uc218\uc9d1\ud558\uac70\ub098 \uace0\uac1d\ub2d8\uaed8 \uc81c\uacf5\ud558\ub294 \uacbd\uc6b0 \ub2f9\ud574 \uace0\uac1d\ub2d8\uc774 \ubcf8\uc778\uc784\uc744 \ud655\uc778\ud558\uae30 \uc704\ud558\uc5ec \ud544\uc694\ud55c \uc870\uce58\ub97c \ucde8\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2468\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8 \uac1c\uc778\uc758 \uc2e4\uc218\ub098 \uae30\ubcf8\uc801\uc778 \uc778\ud130\ub137\uc758 \uc704\ud5d8\uc131 \ub54c\ubb38\uc5d0 \uc77c\uc5b4\ub098\ub294 \uc77c\ub4e4\uc5d0 \ub300\ud574 \ucc45\uc784\uc744 \uc9c0\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ud68c\uc6d0\uc758 \uacbd\uc6b0 \uac1c\uac1c\uc778\uc774 \ubcf8\uc778\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ubcf4\ud638\ud558\uae30 \uc704\ud574\uc11c \uc790\uc2e0\uc758 ID \uc640 \ud328\uc2a4\uc6cc\ub4dc\ub97c \uc801\uc808\ud558\uac8c \uad00\ub9ac\ud558\uace0 \uc5ec\uae30\uc5d0 \ub300\ud55c \ucc45\uc784\uc744 \uc838\uc57c \ud569\ub2c8\ub2e4.\r\n\u2469\uacf5\ub3d9\uc73c\ub85c \uc0ac\uc6a9\ud558\ub294 PC\uc5d0\uc11c \uc800\ud76c \ud648\ud398\uc774\uc9c0\ub97c \uc811\uc18d\ud558\uc5ec \ub85c\uadf8\uc778 \ud55c \uc0c1\ud0dc\uc5d0\uc11c \ub2e4\ub978 \uc0ac\uc774\ud2b8\ub85c \uc774\ub3d9\ud558\ub294 \uacbd\uc6b0, \uc11c\ube44\uc2a4 \uc774\uc6a9\uc744 \uc885\ub8cc\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \ubc18\ub4dc\uc2dc \ub85c\uadf8\uc544\uc6c3 \ucc98\ub9ac \ud6c4 \ud574\ub2f9 \ud648\ud398\uc774\uc9c0\ub97c \uc885\ub8cc\ud558\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4. \uadf8\ub807\uc9c0 \uc54a\uc744 \uacbd\uc6b0, \ud574\ub2f9 \ube0c\ub77c\uc6b0\uc800\ub97c \ud1b5\ud574 ID, \ube44\ubc00\ubc88\ud638 \ub4f1 \uace0\uac1d\ub2d8\uc758 \uc815\ubcf4\uac00 \ud0c0\uc778\uc5d0\uac8c \uc27d\uac8c \uc720\ucd9c\ub420 \uc704\ud5d8\uc774 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u246a\uadf8 \uc678 \ub0b4\ubd80 \uad00\ub9ac\uc790\uc758 \uc2e4\uc218\ub098 \uae30\uc220\uad00\ub9ac \uc0c1\uc758 \uc0ac\uace0\ub85c \uc778\ud574 \uac1c\uc778\uc815\ubcf4\uc758 \uc0c1\uc2e4, \uc720\ucd9c, \ubcc0\uc870, \ud6fc\uc190\uc774 \uc720\ubc1c\ub420 \uacbd\uc6b0 \ubcf8 \uc11c\ube44\uc2a4\ub294 \uc9c0\uccb4\uc5c6\uc774 \uace0\uac1d\ub2d8\uaed8 \uc0ac\uc2e4\uc744 \uc54c\ub9ac\uace0 \uc801\uc808\ud55c \ub300\ucc45\uacfc \ubcf4\uc0c1\uc744 \uac15\uad6c\ud560 \uac83\uc785\ub2c8\ub2e4. \r\n\r\n\r\n\r\n\u3147 \ub9c1\ud06c\uc0ac\uc774\ud2b8\r\n\r\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \ud68c\uc6d0\uc5d0\uac8c \ub2e4\ub978 \ud68c\uc0ac\uc758 \uc0ac\uc774\ud2b8 \ub610\ub294 \uc790\ub8cc\uc5d0 \ub300\ud55c \ub9c1\ud06c\ub97c \uc81c\uacf5\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uc774 \uacbd\uc6b0 \ubcf8 \uc11c\ube44\uc2a4\ub294 \uc678\ubd80\uc0ac\uc774\ud2b8 \ubc0f \uc790\ub8cc\uc5d0 \ub300\ud55c \uc544\ubb34\ub7f0 \ud1b5\uc81c\uad8c\uc774 \uc5c6\uc73c\ubbc0\ub85c \uadf8\ub85c\ubd80\ud130 \uc81c\uacf5\ubc1b\ub294 \uc11c\ube44\uc2a4\ub098 \uc790\ub8cc\uc758 \uc9c4\uc2e4\uc131, \uc720\uc6a9\uc131 \ub4f1\uc5d0 \ub300\ud574 \ucc45\uc784\uc9c0\uc9c0 \uc54a\uc73c\uba70, \uc5b4\ub5a0\ud55c \ubcf4\uc99d\ub3c4 \ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\r\n2.\ubcf8 \uc11c\ube44\uc2a4\uac00 \ud3ec\ud568\ud558\uace0 \uc788\ub294 \ub9c1\ud06c\ub97c \ud074\ub9ad(click)\ud558\uc5ec \ud0c0 \uc0ac\uc774\ud2b8(site)\uc758 \ud398\uc774\uc9c0\ub85c \uc62e\uaca8\uac08 \uacbd\uc6b0 \ud574\ub2f9 \uc0ac\uc774\ud2b8\uc758 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc740 \ubcf8 \uc11c\ube44\uc2a4\uc640 \ubb34\uad00\ud558\ubbc0\ub85c \uc0c8\ub85c \ubc29\ubb38\ud55c \uc0ac\uc774\ud2b8\uc758 \uc815\ucc45\uc744 \ubc18\ub4dc\uc2dc \uac80\ud1a0\ud574 \ubcf4\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac8c\uc2dc\ubb3c\r\n\r\n1.\uac8c\uc2dc\ubb3c\uc5d0 \uad00\ub828\ub41c \uc81c\ubc18 \uad8c\ub9ac\uc640 \ucc45\uc784\uc740 \uc791\uc131\uc790 \uac1c\uc778\uc5d0\uac8c \uc788\uc2b5\ub2c8\ub2e4. \ub610\ud55c \uac8c\uc2dc\ubb3c\uc744 \ud1b5\ud574 \uc790\ubc1c\uc801\uc73c\ub85c \uacf5\uac1c\ub41c \uc815\ubcf4\ub294 \ubcf4\ud638\ubc1b\uae30 \uc5b4\ub824\uc6b0\ubbc0\ub85c \uc815\ubcf4 \uacf5\uac1c \uc804\uc5d0 \uc2ec\uc0ac\uc219\uace0\ud55c \ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc5ec\uc57c \ud569\ub2c8\ub2e4.\r\n2.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac8c\uc2dc\ubb3c\uc744 \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uba70 \ubcc0\uc870, \ud6fc\uc190, \uc0ad\uc81c\ub418\uc9c0 \uc54a\ub3c4\ub85d \ucd5c\uc120\uc744 \ub2e4\ud558\uc5ec \ubcf4\ud638\ud569\ub2c8\ub2e4. \uadf8\ub7ec\ub098 \ub2e4\uc74c\uc758 \uacbd\uc6b0\ub294 \uba85\uc2dc\uc801 \ub610\ub294 \uac1c\ubcc4\uc801\uc778 \uacbd\uace0 \ud6c4 \uc0ad\uc81c \ub610\ub294 \uc218\uc815 \uc870\uce58\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n- \uc2a4\ud338(spam)\uc131 \uac8c\uc2dc\ubb3c (\uc608: \ud589\uc6b4\uc758 \ud3b8\uc9c0, \ud2b9\uc815\uc0ac\uc774\ud2b8\uc5d0 \ub300\ud55c \uad11\uace0, \ud0c0 \uc0ac\uc774\ud2b8\ub85c\uc758 \uc720\ub3c4 \uad11\uace0 \ubc0f \ub9c1\ud06c \ub4f1)\r\n- \ud0c0\uc778\uc744 \ube44\ubc29\ud560 \ubaa9\uc801\uc73c\ub85c \ud5c8\uc704 \uc0ac\uc2e4\uc744 \uc720\ud3ec\ud558\uc5ec \ud0c0\uc778\uc758 \uba85\uc608\ub97c \ud6fc\uc190\ud558\ub294 \uac8c\uc2dc\ubb3c\r\n- \ub3d9\uc758 \uc5c6\ub294 \ud0c0\uc778\uc758 \uc2e0\uc0c1\uacf5\uac1c, \ubcf8 \uc11c\ube44\uc2a4\uc758 \uc800\uc791\uad8c, \uc81c3\uc790\uc758 \uc9c0\uc801\uc7ac\uc0b0\uad8c \ub4f1 \uad8c\ub9ac\ub97c \uce68\ud574\ud558\ub294 \ub0b4\uc6a9, \uae30\ud0c0 \uac8c\uc2dc\ud310 \uc8fc\uc81c\uc640 \ub2e4\ub978 \ub0b4\uc6a9\uc758 \uac8c\uc2dc\ubb3c\r\n- \uae30\ud0c0 \ubcf8 \uc11c\ube44\uc2a4 \uc774\uc6a9\uc57d\uad00 \ub610\ub294 \uac01\uc885 \uc9c0\uce68, \uc6b4\uc601\uc6d0\uce59\uc5d0 \ubc18\ud558\ub294 \uac8c\uc2dc\ubb3c\r\n3.\ub2e4\ub978 \uc8fc\uc81c\uc758 \uac8c\uc2dc\ud310\uc73c\ub85c \uc774\ub3d9 \uac00\ub2a5\ud55c \ub0b4\uc6a9\uc77c \uacbd\uc6b0 \ud574\ub2f9 \uac8c\uc2dc\ubb3c\uc5d0 \uc774\ub3d9 \uacbd\ub85c\ub97c \ubc1d\ud600 \uc624\ud574\uac00 \uc5c6\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4 \uc790\ub3d9\uc218\uc9d1\uc7a5\uce58\uc758 \uc124\uce58,\uc6b4\uc601 \ubc0f \uadf8 \uac70\ubd80\uc5d0 \ub300\ud55c \uc0ac\ud56d\r\n\r\n1.\ubcf8 \uc11c\ube44\uc2a4\ub97c \ud1b5\ud558\uc5ec \uace0\uac1d\ub2d8\uc758 \uc815\ubcf4\ub97c \uc800\uc7a5\ud558\uace0 \uc218\uc2dc\ub85c \ucc3e\uc544\ub0b4\ub294 \ucfe0\ud0a4(cookie)\ub97c \uc124\uce58/ \uc6b4\uc6a9\ud560 \uacbd\uc6b0\ub3c4 \uc788\uc2b5\ub2c8\ub2e4. \ucfe0\ud0a4\ub780 \uc6f9 \uc11c\ubc84\uac00 \uc6f9 \ube0c\ub77c\uc6b0\uc800\uc5d0 \ubcf4\ub0b4\uc5b4 \uc800\uc7a5\ud588\ub2e4\uac00 \uc11c\ubc84\uc758 \ubd80\uac00\uc801\uc778 \uc694\uccad\uc774 \uc788\uc744 \ub54c \ub2e4\uc2dc \uc11c\ubc84\ub85c \ubcf4\ub0b4\uc8fc\ub294 \ubb38\uc790\uc5f4 \uc815\ubcf4\ub97c \ub9d0\ud569\ub2c8\ub2e4. \uace0\uac1d\uc774 \ud648\ud398\uc774\uc9c0\uc5d0 \uc811\uc18d\uc744 \ud558\uba74 \uace0\uac1d\uc758 \ube0c\ub77c\uc6b0\uc800\uc5d0 \uc788\ub294 \ucfe0\ud0a4\uc758 \ub0b4\uc6a9\uc744 \uc77d\uace0, \ucd94\uac00\uc815\ubcf4\ub97c \ucc3e\uc544 \uc811\uc18d\uc5d0 \ub530\ub978 \uc131\uba85 \ub4f1\uc758 \ucd94\uac00 \uc785\ub825 \uc5c6\uc774 \uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \ubcf8 \uc11c\ube44\uc2a4\uc758 \ucfe0\ud0a4\ub97c \ud1b5\ud574 \uc218\uc9d1\ud558\ub294 \uc815\ubcf4\ub294 \ud68c\uc6d0\uc758 \uc544\uc774\ub514(ID)\uc5d0 \ud55c\ud558\uba70, \uadf8 \uc678\uc758 \ub2e4\ub978 \uc815\ubcf4\ub294 \uc218\uc9d1\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ubcf8 \uc11c\ube44\uc2a4\uc758 \ucfe0\ud0a4(cookie)\ub97c \ud1b5\ud574 \uc218\uc9d1\ud55c \ud68c\uc6d0\uc758 \uc544\uc774\ub514(ID)\ub294 \uac1c\uc778\uc758 \uad00\uc2ec \ubd84\uc57c\uc5d0 \ub530\ub77c \ucc28\ubcc4\ud654\ub41c \uc815\ubcf4\ub97c \uc81c\uacf5\ud68c\uc6d0\uacfc \ube44\ud68c\uc6d0\uc758 \uc811\uc18d\ube48\ub3c4 \ub610\ub294 \uba38\ubb38 \uc2dc\uac04 \ub4f1\uc744 \ubd84\uc11d\ud558\uc5ec \uc774\uc6a9\uc790\uc758 \ucde8\ud5a5\uacfc \uad00\uc2ec\ubd84\uc57c\ub97c \ud30c\uc545\ud558\uc5ec \ud0c0\uac9f(target)\ub9c8\ucf00\ud305\uc5d0 \ud65c\uc6a9\uad00\uc2ec \uc788\uac8c \ub458\ub7ec\ubcf8 \ub0b4\uc6a9\ub4e4\uc5d0 \ub300\ud55c \uc790\ucde8\ub97c \ucd94\uc801\ud558\uc5ec \ub2e4\uc74c \ubc88 \uc811\uc18d \ub54c \uac1c\uc778\ub9de\ucda4\uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\uc720\ub8cc\uc11c\ube44\uc2a4 \uc774\uc6a9 \uc2dc \uc774\uc6a9\uae30\uac04 \uc548\ub0b4\ud68c\uc6d0\ub4e4\uc758 \uc2b5\uad00\uc744 \ubd84\uc11d\ud558\uc5ec \uc11c\ube44\uc2a4 \uac1c\ud3b8 \ub4f1\uc758 \ucc99\ub3c4\ub85c \ud65c\uc6a9\ud558\uae30 \uc704\ud574 \uc0ac\uc6a9\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n2.\uace0\uac1d\uc740 \ucfe0\ud0a4 \uc124\uce58\uc5d0 \ub300\ud55c \uc120\ud0dd\uad8c\uc744 \uac00\uc9c0\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc6f9 \ube0c\ub77c\uc6b0\uc800 \uc0c1\ub2e8\uc758 \u201c\ub3c4\uad6c > \uc778\ud130\ub137\uc635\uc158 > \uac1c\uc778\uc815\ubcf4 > \uace0\uae09\u201d\uc5d0\uc11c \ubaa8\ub4e0 \ucfe0\ud0a4\ub97c \ub2e4 \ubc1b\uc544\ub4e4\uc774\uac70\ub098, \ucfe0\ud0a4\uac00 \uc124\uce58\ub420 \ub54c \ud1b5\uc9c0\ub97c \ubcf4\ub0b4\ub3c4\ub85d \ud558\uac70\ub098, \uc544\ub2c8\uba74 \ubaa8\ub4e0 \ucfe0\ud0a4\ub97c \uac70\ubd80\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \ub2e8, \uace0\uac1d\uc774 \ucfe0\ud0a4 \uc124\uce58\ub97c \uac70\ubd80\ud558\uc600\uc744 \uacbd\uc6b0 \uc11c\ube44\uc2a4 \uc774\uc6a9\uc5d0 \ubd88\ud3b8\uc774 \uc788\uac70\ub098, \uc11c\ube44\uc2a4 \uc81c\uacf5\uc5d0 \uc5b4\ub824\uc6c0\uc774 \uc788\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n3.\ucfe0\ud0a4\ub294 \ube0c\ub77c\uc6b0\uc800\uc758 \uc885\ub8cc \uc2dc\ub098 \ub85c\uadf8 \uc544\uc6c3 \uc2dc \ub9cc\ub8cc\ub429\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uc774\uc6a9\uc790\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34\r\n\r\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uc758\uacac\uc744 \ub9e4\uc6b0 \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uba70, \uace0\uac1d\ub2d8\uc740 \uc758\ubb38\uc0ac\ud56d\uc73c\ub85c\ubd80\ud130 \uc5b8\uc81c\ub098 \uc131\uc2e4\ud55c \ub2f5\ubcc0\uc744 \ubc1b\uc744 \uad8c\ub9ac\uac00 \uc788\uc2b5\ub2c8\ub2e4.\r\n2.\uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ucd5c\uc2e0\uc758 \uc0c1\ud0dc\ub85c \uc815\ud655\ud558\uac8c \uc785\ub825\ud558\uc5ec \ubd88\uc758\uc758 \uc0ac\uace0\ub97c \uc608\ubc29\ud574 \uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4. \uc785\ub825\ud55c \ubd80\uc815\ud655\ud55c \uc815\ubcf4\ub85c \uc778\ud574 \ubc1c\uc0dd\ud558\ub294 \uc0ac\uace0\uc758 \ucc45\uc784\uc740 \uace0\uac1d\ub2d8\uaed8 \uc788\uc73c\uba70 \ud0c0\uc778 \uc815\ubcf4\uc758 \ub3c4\uc6a9 \ub4f1 \ud5c8\uc704\uc815\ubcf4\ub97c \uc785\ub825\ud560 \uacbd\uc6b0 \ud68c\uc6d0\uc790\uaca9\uc774 \uc0c1\uc2e4\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n3.\uc758\ubb34\ub3c4 \uac00\uc9c0\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ud328\uc2a4\uc6cc\ub4dc\ub97c \ud3ec\ud568\ud55c \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uac00 \uc720\ucd9c\ub418\uc9c0 \uc54a\ub3c4\ub85d \uc870\uc2ec\ud558\uc2dc\uace0 \uac8c\uc2dc\ubb3c\uc744 \ud3ec\ud568\ud55c \ud0c0\uc778\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ud6fc\uc190\ud558\uc9c0 \uc54a\ub3c4\ub85d \uc720\uc758\ud574 \uc8fc\uc2ed\uc2dc\uc624. \ub9cc\uc57d \uc774 \uac19\uc740 \ucc45\uc784\uc744 \ub2e4\ud558\uc9c0 \ubabb\ud558\uace0 \ud0c0\uc778\uc758 \uc815\ubcf4\ub97c \ud6fc\uc190\ud560 \uc2dc\uc5d0\ub294\u300e\uc815\ubcf4\ud1b5\uc2e0\ub9dd \uc774\uc6a9\ucd09\uc9c4 \ubc0f \uc815\ubcf4\ubcf4\ud638 \ub4f1\uc5d0 \uad00\ud55c \ubc95\ub960\u300f\ub4f1\uc5d0 \uc758\ud574 \ucc98\ubc8c\ubc1b\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n\r\n\r\n\u3147 \uc758\uacac\uc218\ub834 \ubc0f \ubd88\ub9cc \ucc98\ub9ac\r\n\r\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uacfc\uc758 \uc6d0\ud65c\ud55c \uc758\uc0ac\uc18c\ud1b5\uc744 \uc704\ud574 \uace0\uac1d\uc13c\ud130 \ub4f1 \uace0\uac1d\uc0c1\ub2f4\ucc3d\uad6c\ub97c \uc6b4\uc601\ud558\uace0 \uc788\uc73c\uba70 \uace0\uac1d\ub2d8\uaed8\uc11c \ubb38\uc758\uc0ac\ud56d\uc774 \uc788\uc744 \uacbd\uc6b0 \uc544\ub798\uc758 \uc5f0\ub77d\ucc98\ub85c \ubb38\uc758\ud558\uc2dc\uba74 \uc5b8\uc81c\ub4e0 \uc131\uc2e4\ud55c \ub2f5\ubcc0\uc744 \ubc1b\uc73c\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\r\n\u2460\uac1c\uc778\uc815\ubcf4 \uad00\ub828 \uace0\uac1d\uc13c\ud130\r\n- \uac1c\uc778\uc815\ubcf4\ucc98\ub9ac\ub2f4\ub2f9\uc790 : cscenter@tstore.co.kr\r\n- \uc804\ud654\ubc88\ud638 : \uc774\ub3d9\uc804\ud654 114(\ubb34\ub8cc), (\uad6d\ubc88\uc5c6\uc774) 1599-0011(\uc720\ub8cc)\r\n\u2461\uc0ac\uc774\ubc84\uc0c1\ub2f4: \ubcf8 \uc11c\ube44\uc2a4\uc5d0 \uc811\uc18d\ud558\uc2e0 \ud6c4 \uace0\uac1d\uc13c\ud130 \uba54\ub274\uc758 Q&A \ucf54\ub108\uc0c1\ub2f4/\uc548\ub0b4\uc5d0\uc11c \uc0ac\uc774\ubc84 \uc0c1\ub2f4\uc6d0\uc5d0\uac8c \uc9c8\ubb38\uc744 \ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \r\n\r\n2.E-mail\uc774\ub098 \ud329\uc2a4 \ubc0f \uc6b0\ud3b8\uc744 \uc774\uc6a9\ud55c \uc0c1\ub2f4\uc740 \uc811\uc218 \ud6c4 24\uc2dc\uac04 \uc774\ub0b4\uc5d0 \ub2f5\ubcc0\uc774 \ub420 \uc218 \uc788\ub3c4\ub85d \ub178\ub825\ud558\uaca0\uc2b5\ub2c8\ub2e4.\r\n3.\uae30\ud0c0 \uac1c\uc778\uc815\ubcf4 \uce68\ud574\uc5d0 \uad00\ud55c \uc0c1\ub2f4\uc774 \ud544\uc694\ud55c \uacbd\uc6b0\uc5d0\ub294 \ud55c\uad6d\uc815\ubcf4\ubcf4\ud638\uc9c4\ud765\uc6d0 \uac1c\uc778\uc815\ubcf4\uce68\ud574\uc2e0\uace0\uc13c\ud130, \uacbd\ucc30\uccad \uc0ac\uc774\ubc84\ud14c\ub7ec\ub300\uc751\uc13c\ud130 \ub4f1\uc73c\ub85c \ubb38\uc758\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \r\n\u2460\uac1c\uc778\uc815\ubcf4\uce68\ud574\uc2e0\uace0\uc13c\ud130\r\n- \uc804\ud654: 1336\r\n- URL: http://www.cyberprivacy.or.kr \r\n\u2461\uacbd\ucc30\uccad \uc0ac\uc774\ubc84\ud14c\ub7ec\ub300\uc751\uc13c\ud130\r\n- \uc804\ud654: 02 - 3939 - 112\r\n- URL: http://www.netan.go.kr \r\n\r\n\r\n\r\n\u3147 \uac1c\uc778\uc815\ubcf4\uad00\ub9ac \ucc45\uc784\uc790 \ubc0f \ub2f4\ub2f9\uc790\r\n\r\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \ub9e4\uc6b0 \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uba70, \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uac00 \ud6fc\uc190, \uce68\ud574 \ub610\ub294 \ub204\uc124\ub418\uc9c0 \uc54a\ub3c4\ub85d \ucd5c\uc120\uc744 \ub2e4\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uadf8\ub7ec\ub098 \uae30\uc220\uc801\uc778 \ubcf4\uc644\uc870\uce58\ub97c \ud588\uc74c\uc5d0\ub3c4 \ubd88\uad6c\ud558\uace0, \ud574\ud0b9 \ub4f1 \uae30\ubcf8\uc801\uc778 \ub124\ud2b8\uc6cc\ud06c\uc0c1\uc758 \uc704\ud5d8\uc131\uc5d0 \uc758\ud574 \ubc1c\uc0dd\ud558\ub294 \uc608\uae30\uce58 \ubabb\ud55c \uc0ac\uace0\ub85c \uc778\ud55c \uc815\ubcf4\uc758 \ud6fc\uc190 \ubc0f \ubc29\ubb38\uc790\uac00 \uc791\uc131\ud55c \uac8c\uc2dc\ubb3c\uc5d0 \uc758\ud55c \uac01\uc885 \ubd84\uc7c1\uc5d0 \uad00\ud574\uc11c\ub294 \ucc45\uc784\uc774 \uc5c6\uc2b5\ub2c8\ub2e4.\r\n2.\uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uad00\ub828 \ubb38\uc758 \uc2dc \uace0\uac1d\uc13c\ud130\uc5d0\uc11c \uc2e0\uc18d\ud558\uace0 \uc131\uc2e4\ud558\uac8c \ub2f5\ubcc0\uc744 \ub4dc\ub9ac\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ub610\ud55c \uace0\uac1d\ub2d8\uc774 \ubcf8 \uc11c\ube44\uc2a4\uc758 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \ub2f4\ub2f9\uc790\uc640 \uc5f0\ub77d\uc744 \uc6d0\ud558\uc2e4 \uacbd\uc6b0 \uc544\ub798\uc758 \uc5f0\ub77d\ucc98 \ub610\ub294 E-mail\ub85c \uc5f0\ub77d\uc744 \uc8fc\uc2dc\uba74 \uac1c\uc778\uc815\ubcf4 \uad00\ub828 \ubb38\uc758\uc0ac\ud56d\uc5d0 \ub300\ud558\uc5ec \uc2e0\uc18d\ud558\uace0 \uc131\uc2e4\ud558\uac8c \ub2f5\ubcc0\ud574 \ub4dc\ub9ac\uaca0\uc2b5\ub2c8\ub2e4.\r\n- \uac1c\uc778\uc815\ubcf4\uad00\ub9ac \ucc45\uc784\uc790 : \uc774\uc9c4\uc6b0 \ub300\uc678\ud611\ub825\uc2e4\uc7a5\r\n- \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\ub2f4\ub2f9\uc790 : \uc774\uc0c1\uc775 \ub9e4\ub2c8\uc800\r\n- \uc18c\uc18d\ubd80\uc11c : SK\ud50c\ub798\ub2db \ub300\uc678\ud611\ub825\uc2e4 BR&C\ud300\r\n- \uc804\ud654\ubc88\ud638 : \uc774\ub3d9\uc804\ud654 114(\ubb34\ub8cc), (\uad6d\ubc88\uc5c6\uc774)1599-0011(\uc720\ub8cc)\r\n- \uc774\uba54\uc77c : privacy.skp@skplanet.co.kr\r\n\r\n\r\n\r\n\u3147 \uad11\uace0\uc131 \uc815\ubcf4 \uc804\uc1a1\r\n\r\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uba85\uc2dc\uc801\uc778 \uc218\uc2e0\uac70\ubd80 \uc758\uc0ac\uc5d0 \ubc18\ud558\uc5ec \uc601\ub9ac\ubaa9\uc801\uc758 \uad11\uace0\uc131 \uc815\ubcf4\ub97c \uc804\uc1a1\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4\r\n\r\n\r\n\u3147 \uace0\uc9c0\uc758\ubb34\r\n\r\n\ud604 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc740 2009\ub144 6\uc6d4 30\uc77c\uc5d0 \uc81c\uc815\ub418\uc5c8\uc73c\uba70 \uc815\ubd80\uc758 \uc815\ucc45 \ub610\ub294 \ubcf4\uc548\uae30\uc220\uc758 \ubcc0\uacbd\uc5d0 \ub530\ub77c \ub0b4\uc6a9\uc758 \ucd94\uac00, \uc0ad\uc81c \ubc0f \uc218\uc815\uc774 \uc788\uc744 \uacbd\uc6b0\uc5d0\ub294 \uac1c\uc815 \ucd5c\uc18c 7\uc77c \uc804\ubd80\ud130 \ud648\ud398\uc774\uc9c0\uc758 \'\uacf5\uc9c0\'\ub780\uc744 \ud1b5\ud574 \uace0\uc9c0\ud560 \uac83\uc785\ub2c8\ub2e4.\r\n\r\n\ubd80\uce59\r\n(\uc2dc\ud589\uc77c) \ubcf8 \uc57d\uad00\uc740 2011\ub144 10\uc6d4 1\uc77c\ubd80\ud130 \uc2dc\ud589\ud569\ub2c8\ub2e4.\r\n"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2598
    :cond_20
    if-eqz v5, :cond_21

    .line 2600
    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2603
    :cond_21
    if-eqz v48, :cond_22

    .line 2604
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2605
    :cond_22
    if-eqz v45, :cond_23

    .line 2606
    invoke-static/range {v45 .. v45}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2609
    :cond_23
    if-eqz v46, :cond_24

    .line 2610
    const-string v52, "center"

    move-object/from16 v0, v46

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_25

    .line 2611
    const/16 v52, 0x11

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2618
    :cond_24
    :goto_6
    const/16 v52, 0x0

    const v53, 0x3f933333

    move-object/from16 v0, v50

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_4

    .line 2612
    :cond_25
    const-string v52, "right"

    move-object/from16 v0, v46

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_26

    .line 2613
    const/16 v52, 0x5

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_6

    .line 2614
    :cond_26
    const-string v52, "left"

    move-object/from16 v0, v46

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_27

    .line 2615
    const/16 v52, 0x3

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_6

    .line 2617
    :cond_27
    const/16 v52, 0x13

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_6

    .line 2477
    nop

    :array_0
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2478
    :array_1
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2480
    :array_2
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2481
    :array_3
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 2482
    :array_4
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 2483
    :array_5
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2484
    :array_6
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method private createViewImagePopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    .locals 37
    .parameter "parse"
    .parameter "message"

    .prologue
    .line 1893
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1894
    .local v18, name:Ljava/lang/String;
    const/16 v23, 0x0

    .line 1895
    .local v23, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 1896
    .local v6, atts:Landroid/util/AttributeSet;
    move-object/from16 v5, p2

    .line 1897
    .local v5, YesNomessage:Ljava/lang/String;
    const-string v34, "LinearLayout"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 1898
    new-instance v23, Landroid/widget/LinearLayout;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1916
    .restart local v23       #result:Landroid/view/View;
    :goto_0
    if-nez v23, :cond_5

    .line 1917
    const/16 v23, 0x0

    .line 2048
    .end local v23           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v23

    .line 1900
    .restart local v23       #result:Landroid/view/View;
    :cond_1
    const-string v34, "TextView"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 1901
    new-instance v23, Landroid/widget/TextView;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto :goto_0

    .line 1903
    :cond_2
    const-string v34, "Button"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 1904
    new-instance v23, Landroid/widget/Button;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto :goto_0

    .line 1906
    :cond_3
    const-string v34, "ImageView"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 1907
    new-instance v23, Landroid/widget/ImageView;

    .end local v23           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v23       #result:Landroid/view/View;
    goto :goto_0

    .line 1913
    :cond_4
    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "# UnSupported tag:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1919
    :cond_5
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v34, v0

    if-eqz v34, :cond_b

    move-object/from16 v17, v23

    .line 1920
    check-cast v17, Landroid/widget/LinearLayout;

    .line 1921
    .local v17, ll:Landroid/widget/LinearLayout;
    const-string v34, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1923
    .local v21, orient:Ljava/lang/String;
    if-eqz v21, :cond_6

    .line 1924
    const-string v34, "horizontal"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 1925
    const/16 v34, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1931
    :cond_6
    :goto_2
    const-string v34, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1932
    .local v12, image:Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 1933
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".png"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1934
    .local v14, is:Ljava/io/InputStream;
    invoke-static {v14, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1938
    .end local v14           #is:Ljava/io/InputStream;
    :cond_7
    const-string v34, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1939
    .local v13, imageColor:Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 1942
    const/high16 v34, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1946
    :cond_8
    const-string v34, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1947
    .local v11, gravity:Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 1948
    const-string v34, "center"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 1949
    const/16 v34, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1955
    :cond_9
    :goto_3
    const-string v34, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1956
    .local v22, padding:Ljava/lang/String;
    if-eqz v22, :cond_a

    .line 1957
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v24

    .line 1958
    .local v24, size:I
    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v24

    move/from16 v3, v24

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1962
    .end local v24           #size:I
    :cond_a
    const-string v34, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1963
    .local v32, touchMode:Ljava/lang/String;
    if-eqz v32, :cond_b

    .line 1964
    const/16 v34, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1969
    .end local v11           #gravity:Ljava/lang/String;
    .end local v12           #image:Ljava/lang/String;
    .end local v13           #imageColor:Ljava/lang/String;
    .end local v17           #ll:Landroid/widget/LinearLayout;
    .end local v21           #orient:Ljava/lang/String;
    .end local v22           #padding:Ljava/lang/String;
    .end local v32           #touchMode:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v34, v0

    if-eqz v34, :cond_c

    move-object/from16 v16, v23

    .line 1971
    check-cast v16, Landroid/widget/ImageView;

    .line 1973
    .local v16, iv:Landroid/widget/ImageView;
    const-string v34, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1974
    .restart local v12       #image:Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 1975
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".png"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1976
    .restart local v14       #is:Ljava/io/InputStream;
    invoke-static {v14, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1981
    .end local v12           #image:Ljava/lang/String;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v16           #iv:Landroid/widget/ImageView;
    :cond_c
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v34, v0

    if-eqz v34, :cond_11

    move-object/from16 v33, v23

    .line 1982
    check-cast v33, Landroid/widget/TextView;

    .line 1984
    .local v33, tv:Landroid/widget/TextView;
    const-string v34, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1985
    .local v29, textID:Ljava/lang/String;
    const-string v34, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1986
    .local v26, text:Ljava/lang/String;
    move-object/from16 v31, v5

    .line 1987
    .local v31, textmessage:Ljava/lang/String;
    const-string v34, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1988
    .local v30, textSize:Ljava/lang/String;
    const-string v34, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1989
    .local v27, textColor:Ljava/lang/String;
    const-string v34, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1991
    .local v28, textGravity:Ljava/lang/String;
    if-eqz v26, :cond_d

    .line 1992
    const-string v34, "\\n"

    const-string v35, "\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1993
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    :cond_d
    if-eqz v30, :cond_e

    .line 1996
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1997
    :cond_e
    if-eqz v27, :cond_f

    .line 1998
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1999
    :cond_f
    if-eqz v29, :cond_10

    .line 2002
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    :cond_10
    if-eqz v28, :cond_15

    .line 2007
    const/16 v34, 0x11

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setGravity(I)V

    .line 2010
    :goto_4
    const/16 v34, 0x0

    const v35, 0x3f933333

    invoke-virtual/range {v33 .. v35}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2014
    .end local v26           #text:Ljava/lang/String;
    .end local v27           #textColor:Ljava/lang/String;
    .end local v28           #textGravity:Ljava/lang/String;
    .end local v29           #textID:Ljava/lang/String;
    .end local v30           #textSize:Ljava/lang/String;
    .end local v31           #textmessage:Ljava/lang/String;
    .end local v33           #tv:Landroid/widget/TextView;
    :cond_11
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v34, v0

    if-eqz v34, :cond_12

    .line 2017
    const-string v34, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2018
    .local v19, offimage:Ljava/lang/String;
    const-string v34, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, onimage:Ljava/lang/String;
    move-object/from16 v9, v23

    .line 2020
    check-cast v9, Landroid/widget/Button;

    .line 2023
    .local v9, btn:Landroid/widget/Button;
    const/4 v7, 0x0

    .local v7, btOn:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 2025
    .local v8, btOver:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".png"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 2026
    .local v15, isStream:Ljava/io/InputStream;
    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2028
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".png"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 2029
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2031
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2032
    .local v10, drawables:Landroid/graphics/drawable/StateListDrawable;
    const v25, 0x10100a7

    .line 2033
    .local v25, statePressed:I
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput v25, v34, v35

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2034
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2035
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2039
    const-string v34, "btn_con_sel"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2045
    .end local v7           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v8           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v9           #btn:Landroid/widget/Button;
    .end local v10           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v15           #isStream:Ljava/io/InputStream;
    .end local v19           #offimage:Ljava/lang/String;
    .end local v20           #onimage:Ljava/lang/String;
    .end local v25           #statePressed:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Stack;->size()I

    move-result v34

    if-lez v34, :cond_0

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1926
    .restart local v17       #ll:Landroid/widget/LinearLayout;
    .restart local v21       #orient:Ljava/lang/String;
    :cond_13
    const-string v34, "vertical"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 1927
    const/16 v34, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1951
    .restart local v11       #gravity:Ljava/lang/String;
    .restart local v12       #image:Ljava/lang/String;
    .restart local v13       #imageColor:Ljava/lang/String;
    :cond_14
    const/16 v34, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2009
    .end local v11           #gravity:Ljava/lang/String;
    .end local v12           #image:Ljava/lang/String;
    .end local v13           #imageColor:Ljava/lang/String;
    .end local v17           #ll:Landroid/widget/LinearLayout;
    .end local v21           #orient:Ljava/lang/String;
    .restart local v26       #text:Ljava/lang/String;
    .restart local v27       #textColor:Ljava/lang/String;
    .restart local v28       #textGravity:Ljava/lang/String;
    .restart local v29       #textID:Ljava/lang/String;
    .restart local v30       #textSize:Ljava/lang/String;
    .restart local v31       #textmessage:Ljava/lang/String;
    .restart local v33       #tv:Landroid/widget/TextView;
    :cond_15
    const/16 v34, 0x13

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4
.end method

.method private createViewJoinPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 51
    .parameter "parse"

    .prologue
    .line 2631
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 2632
    .local v23, name:Ljava/lang/String;
    const/16 v33, 0x0

    .line 2633
    .local v33, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 2634
    .local v5, atts:Landroid/util/AttributeSet;
    const-string v48, "LinearLayout"

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1

    .line 2635
    new-instance v33, Landroid/widget/LinearLayout;

    .end local v33           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2660
    .restart local v33       #result:Landroid/view/View;
    :goto_0
    if-nez v33, :cond_7

    .line 2661
    const/16 v33, 0x0

    .line 2874
    .end local v33           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v33

    .line 2637
    .restart local v33       #result:Landroid/view/View;
    :cond_1
    const-string v48, "TextView"

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_2

    .line 2638
    new-instance v33, Landroid/widget/TextView;

    .end local v33           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v33       #result:Landroid/view/View;
    goto :goto_0

    .line 2640
    :cond_2
    const-string v48, "Button"

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_3

    .line 2641
    new-instance v33, Landroid/widget/Button;

    .end local v33           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v33       #result:Landroid/view/View;
    goto :goto_0

    .line 2643
    :cond_3
    const-string v48, "ImageView"

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_4

    .line 2644
    new-instance v33, Landroid/widget/ImageView;

    .end local v33           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v33       #result:Landroid/view/View;
    goto :goto_0

    .line 2646
    :cond_4
    const-string v48, "ScrollView"

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_5

    .line 2647
    new-instance v33, Landroid/widget/ScrollView;

    .end local v33           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2648
    .restart local v33       #result:Landroid/view/View;
    const/16 v48, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    goto :goto_0

    .line 2650
    :cond_5
    const-string v48, "CheckBox"

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_6

    .line 2651
    new-instance v33, Landroid/widget/CheckBox;

    .end local v33           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v33       #result:Landroid/view/View;
    goto/16 :goto_0

    .line 2657
    :cond_6
    new-instance v48, Ljava/lang/StringBuilder;

    const-string v49, "# UnSupported tag:"

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2663
    :cond_7
    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v48, v0

    if-eqz v48, :cond_11

    move-object/from16 v21, v33

    .line 2664
    check-cast v21, Landroid/widget/LinearLayout;

    .line 2665
    .local v21, ll:Landroid/widget/LinearLayout;
    const-string v48, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2667
    .local v27, orient:Ljava/lang/String;
    if-eqz v27, :cond_8

    .line 2668
    const-string v48, "horizontal"

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1b

    .line 2669
    const/16 v48, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2675
    :cond_8
    :goto_2
    const-string v48, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2676
    .local v16, image:Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 2677
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ".png"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 2678
    .local v18, is:Ljava/io/InputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v48

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2682
    .end local v18           #is:Ljava/io/InputStream;
    :cond_9
    const-string v48, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2683
    .local v17, imageColor:Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 2686
    const/high16 v48, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2690
    :cond_a
    const-string v48, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2691
    .local v14, gravity:Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 2692
    const-string v48, "center"

    move-object/from16 v0, v48

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1c

    .line 2693
    const/16 v48, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2701
    :cond_b
    :goto_3
    const-string v48, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2702
    .local v28, padding:Ljava/lang/String;
    if-eqz v28, :cond_c

    .line 2703
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v34

    .line 2704
    .local v34, size:I
    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v34

    move/from16 v3, v34

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2707
    .end local v34           #size:I
    :cond_c
    const-string v48, "a:paddingleft"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2708
    .local v30, paddingLeft:Ljava/lang/String;
    const-string v48, "a:paddingTop"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2709
    .local v32, paddingTop:Ljava/lang/String;
    const-string v48, "a:paddingRight"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2710
    .local v31, paddingRight:Ljava/lang/String;
    const-string v48, "a:paddingBottom"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2711
    .local v29, paddingBottom:Ljava/lang/String;
    const/16 v36, 0x0

    .local v36, sizeLeft:I
    const/16 v38, 0x0

    .local v38, sizeTop:I
    const/16 v37, 0x0

    .local v37, sizeRight:I
    const/16 v35, 0x0

    .line 2713
    .local v35, sizeBottom:I
    if-eqz v30, :cond_d

    .line 2714
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v36

    .line 2715
    :cond_d
    if-eqz v32, :cond_e

    .line 2716
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v38

    .line 2717
    :cond_e
    if-eqz v31, :cond_f

    .line 2718
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v37

    .line 2719
    :cond_f
    if-eqz v29, :cond_10

    .line 2720
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v35

    .line 2722
    :cond_10
    move-object/from16 v0, v21

    move/from16 v1, v36

    move/from16 v2, v38

    move/from16 v3, v37

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2725
    const-string v48, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 2726
    .local v45, touchMode:Ljava/lang/String;
    if-eqz v45, :cond_11

    .line 2727
    const/16 v48, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 2732
    .end local v14           #gravity:Ljava/lang/String;
    .end local v16           #image:Ljava/lang/String;
    .end local v17           #imageColor:Ljava/lang/String;
    .end local v21           #ll:Landroid/widget/LinearLayout;
    .end local v27           #orient:Ljava/lang/String;
    .end local v28           #padding:Ljava/lang/String;
    .end local v29           #paddingBottom:Ljava/lang/String;
    .end local v30           #paddingLeft:Ljava/lang/String;
    .end local v31           #paddingRight:Ljava/lang/String;
    .end local v32           #paddingTop:Ljava/lang/String;
    .end local v35           #sizeBottom:I
    .end local v36           #sizeLeft:I
    .end local v37           #sizeRight:I
    .end local v38           #sizeTop:I
    .end local v45           #touchMode:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v48, v0

    if-eqz v48, :cond_12

    move-object/from16 v20, v33

    .line 2734
    check-cast v20, Landroid/widget/ImageView;

    .line 2736
    .local v20, iv:Landroid/widget/ImageView;
    const-string v48, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2737
    .restart local v16       #image:Ljava/lang/String;
    if-eqz v16, :cond_12

    .line 2738
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ".png"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 2739
    .restart local v18       #is:Ljava/io/InputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v48

    move-object/from16 v0, v20

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2745
    .end local v16           #image:Ljava/lang/String;
    .end local v18           #is:Ljava/io/InputStream;
    .end local v20           #iv:Landroid/widget/ImageView;
    :cond_12
    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v48, v0

    if-eqz v48, :cond_17

    move-object/from16 v46, v33

    .line 2746
    check-cast v46, Landroid/widget/TextView;

    .line 2748
    .local v46, tv:Landroid/widget/TextView;
    const-string v48, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2749
    .local v43, textID:Ljava/lang/String;
    const-string v48, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2750
    .local v40, text:Ljava/lang/String;
    const-string v48, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2751
    .local v44, textSize:Ljava/lang/String;
    const-string v48, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2752
    .local v41, textColor:Ljava/lang/String;
    const-string v48, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2754
    .local v42, textGravity:Ljava/lang/String;
    if-eqz v40, :cond_13

    .line 2755
    const-string v48, "\\n"

    const-string v49, "\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2756
    move-object/from16 v0, v46

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2758
    :cond_13
    if-eqz v44, :cond_14

    .line 2759
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, v46

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2760
    :cond_14
    if-eqz v41, :cond_15

    .line 2761
    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    move-object/from16 v0, v46

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2762
    :cond_15
    if-eqz v43, :cond_16

    .line 2765
    move-object/from16 v0, v46

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2769
    :cond_16
    if-eqz v42, :cond_1e

    .line 2770
    const/16 v48, 0x11

    move-object/from16 v0, v46

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2773
    :goto_4
    const/16 v48, 0x0

    const v49, 0x3f933333

    move-object/from16 v0, v46

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2777
    .end local v40           #text:Ljava/lang/String;
    .end local v41           #textColor:Ljava/lang/String;
    .end local v42           #textGravity:Ljava/lang/String;
    .end local v43           #textID:Ljava/lang/String;
    .end local v44           #textSize:Ljava/lang/String;
    .end local v46           #tv:Landroid/widget/TextView;
    :cond_17
    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/widget/CheckBox;

    move/from16 v48, v0

    if-eqz v48, :cond_1f

    move-object/from16 v11, v33

    .line 2779
    check-cast v11, Landroid/widget/CheckBox;

    .line 2780
    .local v11, checkbtn:Landroid/widget/CheckBox;
    const-string v48, "a:checkid"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2781
    .local v15, id:Ljava/lang/String;
    invoke-virtual {v11, v15}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 2784
    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2785
    .local v22, modelName:Ljava/lang/String;
    const/16 v47, 0x0

    .line 2787
    .local v47, xperia:Z
    const-string v48, "LT15i"

    move-object/from16 v0, v22

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_18

    .line 2788
    const/16 v47, 0x1

    .line 2789
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 2792
    :cond_18
    if-nez v47, :cond_19

    .line 2793
    const-string v48, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2794
    .local v26, onimage:Ljava/lang/String;
    const-string v10, "checkbox_y"

    .line 2797
    .local v10, checkImage:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, btOn:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 2799
    .local v6, btCheck:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ".png"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    .line 2800
    .local v25, onStream:Ljava/io/InputStream;
    invoke-static/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2803
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ".png"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    .line 2804
    move-object/from16 v0, v25

    invoke-static {v0, v10}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2807
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2808
    .local v12, drawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2810
    .local v13, drawables2:Landroid/graphics/drawable/StateListDrawable;
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    fill-array-data v48, :array_0

    move-object/from16 v0, v48

    invoke-virtual {v12, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2811
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    fill-array-data v48, :array_1

    move-object/from16 v0, v48

    invoke-virtual {v12, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2813
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    fill-array-data v48, :array_2

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2814
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    fill-array-data v48, :array_3

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2815
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    fill-array-data v48, :array_4

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2816
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    fill-array-data v48, :array_5

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2817
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    fill-array-data v48, :array_6

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2819
    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2820
    invoke-virtual {v11, v13}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2824
    .end local v6           #btCheck:Landroid/graphics/drawable/Drawable;
    .end local v7           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v10           #checkImage:Ljava/lang/String;
    .end local v12           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v13           #drawables2:Landroid/graphics/drawable/StateListDrawable;
    .end local v25           #onStream:Ljava/io/InputStream;
    .end local v26           #onimage:Ljava/lang/String;
    :cond_19
    const/16 v47, 0x0

    .line 2828
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2871
    .end local v11           #checkbtn:Landroid/widget/CheckBox;
    .end local v15           #id:Ljava/lang/String;
    .end local v22           #modelName:Ljava/lang/String;
    .end local v47           #xperia:Z
    :cond_1a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/Stack;->size()I

    move-result v48

    if-lez v48, :cond_0

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v48

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2670
    .restart local v21       #ll:Landroid/widget/LinearLayout;
    .restart local v27       #orient:Ljava/lang/String;
    :cond_1b
    const-string v48, "vertical"

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_8

    .line 2671
    const/16 v48, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 2694
    .restart local v14       #gravity:Ljava/lang/String;
    .restart local v16       #image:Ljava/lang/String;
    .restart local v17       #imageColor:Ljava/lang/String;
    :cond_1c
    const-string v48, "left"

    move-object/from16 v0, v48

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1d

    .line 2695
    const/16 v48, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2697
    :cond_1d
    const/16 v48, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2772
    .end local v14           #gravity:Ljava/lang/String;
    .end local v16           #image:Ljava/lang/String;
    .end local v17           #imageColor:Ljava/lang/String;
    .end local v21           #ll:Landroid/widget/LinearLayout;
    .end local v27           #orient:Ljava/lang/String;
    .restart local v40       #text:Ljava/lang/String;
    .restart local v41       #textColor:Ljava/lang/String;
    .restart local v42       #textGravity:Ljava/lang/String;
    .restart local v43       #textID:Ljava/lang/String;
    .restart local v44       #textSize:Ljava/lang/String;
    .restart local v46       #tv:Landroid/widget/TextView;
    :cond_1e
    const/16 v48, 0x13

    move-object/from16 v0, v46

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 2833
    .end local v40           #text:Ljava/lang/String;
    .end local v41           #textColor:Ljava/lang/String;
    .end local v42           #textGravity:Ljava/lang/String;
    .end local v43           #textID:Ljava/lang/String;
    .end local v44           #textSize:Ljava/lang/String;
    .end local v46           #tv:Landroid/widget/TextView;
    :cond_1f
    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v48, v0

    if-eqz v48, :cond_1a

    .line 2836
    const-string v48, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2837
    .local v24, offimage:Ljava/lang/String;
    const-string v48, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2840
    .restart local v26       #onimage:Ljava/lang/String;
    if-eqz v24, :cond_1a

    move-object/from16 v9, v33

    .line 2841
    check-cast v9, Landroid/widget/Button;

    .line 2844
    .local v9, btn:Landroid/widget/Button;
    const/4 v7, 0x0

    .restart local v7       #btOn:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 2846
    .local v8, btOver:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ".png"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 2847
    .local v19, isStream:Ljava/io/InputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2849
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ".png"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 2850
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2852
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2853
    .restart local v12       #drawables:Landroid/graphics/drawable/StateListDrawable;
    const v39, 0x10100a7

    .line 2854
    .local v39, statePressed:I
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v39, v48, v49

    move-object/from16 v0, v48

    invoke-virtual {v12, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2855
    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v12, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2856
    invoke-virtual {v9, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2858
    const-string v48, "btn_con_sel"

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_20

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2860
    :cond_20
    const-string v48, "btn_cancel_sel_h"

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_21

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2862
    :cond_21
    const-string v48, "btn_terms_sel_b"

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_22

    .line 2863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2864
    :cond_22
    const-string v48, "btn_terms_sel_b2"

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_23

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2866
    :cond_23
    const-string v48, "btn_policy_sel_b"

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1a

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2810
    :array_0
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2811
    :array_1
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2813
    :array_2
    .array-data 0x4
        0x62t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2814
    :array_3
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 2815
    :array_4
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 2816
    :array_5
    .array-data 0x4
        0x60t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 2817
    :array_6
    .array-data 0x4
        0xa0t 0x0t 0x1t 0x1t
        0x64t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method private createViewLguSmsAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 34
    .parameter "parse"

    .prologue
    .line 3132
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3133
    .local v15, name:Ljava/lang/String;
    const/16 v22, 0x0

    .line 3134
    .local v22, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 3135
    .local v4, atts:Landroid/util/AttributeSet;
    const-string v31, "LinearLayout"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 3136
    new-instance v22, Landroid/widget/LinearLayout;

    .end local v22           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3154
    .restart local v22       #result:Landroid/view/View;
    :goto_0
    if-nez v22, :cond_6

    .line 3155
    const/16 v22, 0x0

    .line 3407
    .end local v22           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v22

    .line 3138
    .restart local v22       #result:Landroid/view/View;
    :cond_1
    const-string v31, "TextView"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 3139
    new-instance v22, Landroid/widget/TextView;

    .end local v22           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v22       #result:Landroid/view/View;
    goto :goto_0

    .line 3141
    :cond_2
    const-string v31, "Button"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 3142
    new-instance v22, Landroid/widget/Button;

    .end local v22           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v22       #result:Landroid/view/View;
    goto :goto_0

    .line 3144
    :cond_3
    const-string v31, "ImageView"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 3145
    new-instance v22, Landroid/widget/ImageView;

    .end local v22           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v22       #result:Landroid/view/View;
    goto :goto_0

    .line 3147
    :cond_4
    const-string v31, "EditText"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 3148
    new-instance v22, Landroid/widget/EditText;

    .end local v22           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v22       #result:Landroid/view/View;
    goto :goto_0

    .line 3151
    :cond_5
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "# UnSupported tag:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3157
    :cond_6
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v31, v0

    if-eqz v31, :cond_c

    move-object/from16 v14, v22

    .line 3158
    check-cast v14, Landroid/widget/LinearLayout;

    .line 3159
    .local v14, ll:Landroid/widget/LinearLayout;
    const-string v31, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3161
    .local v18, orient:Ljava/lang/String;
    if-eqz v18, :cond_7

    .line 3162
    const-string v31, "horizontal"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 3163
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3169
    :cond_7
    :goto_2
    const-string v31, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3170
    .local v9, image:Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 3171
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 3172
    .local v11, is:Ljava/io/InputStream;
    invoke-static {v11, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3176
    .end local v11           #is:Ljava/io/InputStream;
    :cond_8
    const-string v31, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3177
    .local v10, imageColor:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 3180
    const/high16 v31, -0x1

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 3184
    :cond_9
    const-string v31, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3185
    .local v8, gravity:Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 3186
    const-string v31, "center"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 3187
    const/16 v31, 0x11

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3193
    :cond_a
    :goto_3
    const-string v31, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3194
    .local v19, padding:Ljava/lang/String;
    if-eqz v19, :cond_b

    .line 3195
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v23

    .line 3196
    .local v23, size:I
    move/from16 v0, v23

    move/from16 v1, v23

    move/from16 v2, v23

    move/from16 v3, v23

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3200
    .end local v23           #size:I
    :cond_b
    const-string v31, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3201
    .local v29, touchMode:Ljava/lang/String;
    if-eqz v29, :cond_c

    .line 3202
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 3207
    .end local v8           #gravity:Ljava/lang/String;
    .end local v9           #image:Ljava/lang/String;
    .end local v10           #imageColor:Ljava/lang/String;
    .end local v14           #ll:Landroid/widget/LinearLayout;
    .end local v18           #orient:Ljava/lang/String;
    .end local v19           #padding:Ljava/lang/String;
    .end local v29           #touchMode:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v7, v22

    .line 3210
    check-cast v7, Landroid/widget/EditText;

    .line 3211
    .local v7, et:Landroid/widget/EditText;
    const/16 v31, 0x5

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 3212
    const/16 v31, 0x2

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 3215
    const-string v31, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3216
    .restart local v9       #image:Ljava/lang/String;
    if-eqz v9, :cond_d

    .line 3217
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 3218
    .restart local v11       #is:Ljava/io/InputStream;
    invoke-static {v11, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3221
    .end local v11           #is:Ljava/io/InputStream;
    :cond_d
    const-string v31, "a:lgu_auth_text"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3223
    .local v12, lgu_auth_text:Ljava/lang/String;
    if-eqz v12, :cond_e

    .line 3224
    sput-object v7, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    .line 3225
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOTPNumber()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1b

    .line 3226
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOTPNumber()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3227
    const-string v31, "#FF6F00"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 3228
    const/high16 v31, 0x41f0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3229
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthBtn:Landroid/widget/Button;

    sget-object v32, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3235
    :goto_4
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    new-instance v32, Lcom/feelingk/iap/gui/parser/ParserXML$28;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$28;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3267
    .end local v7           #et:Landroid/widget/EditText;
    .end local v9           #image:Ljava/lang/String;
    .end local v12           #lgu_auth_text:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v31, v0

    if-eqz v31, :cond_13

    move-object/from16 v30, v22

    .line 3268
    check-cast v30, Landroid/widget/TextView;

    .line 3270
    .local v30, tv:Landroid/widget/TextView;
    const-string v31, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3271
    .local v25, text:Ljava/lang/String;
    const-string v31, "a:lgu_auth_text"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3272
    .restart local v12       #lgu_auth_text:Ljava/lang/String;
    const-string v31, "a:lgu_info_text"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3273
    .local v13, lgu_info_text:Ljava/lang/String;
    const-string v31, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3274
    .local v28, textSize:Ljava/lang/String;
    const-string v31, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3275
    .local v26, textColor:Ljava/lang/String;
    const-string v31, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3277
    .local v27, textGravity:Ljava/lang/String;
    if-eqz v25, :cond_f

    .line 3278
    const-string v31, "\\n"

    const-string v32, "\n"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 3279
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3282
    :cond_f
    if-eqz v13, :cond_10

    .line 3283
    const-string v31, "\uc548\uc804\ud55c \uacb0\uc81c\ub97c \uc704\ud574 SMS \uc778\uc99d\uc11c\ube44\uc2a4\ub97c\n\uc81c\uacf5\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\nSMS \uc778\uc99d\ubc88\ud638\uac00 \uc218\uc2e0\ub418\uba74 \uc790\ub3d9\uc73c\ub85c\n\uc778\uc99d\ubc88\ud638\uac00 \uc801\uc6a9\ub418\uc624\ub2c8,\n\uc778\uc99d \ubc88\ud638 \uc694\uccad \ud6c4 \uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824\uc8fc\uc138\uc694."

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3287
    :cond_10
    if-eqz v28, :cond_11

    .line 3288
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3289
    :cond_11
    if-eqz v26, :cond_12

    .line 3290
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3306
    :cond_12
    if-eqz v27, :cond_1c

    .line 3307
    const/16 v31, 0x11

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setGravity(I)V

    .line 3310
    :goto_5
    const/16 v31, 0x0

    const v32, 0x3f933333

    invoke-virtual/range {v30 .. v32}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3312
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOTPNumber()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_13

    .line 3313
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOTPNumber()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3314
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    const-string v32, "#FF6F00"

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/EditText;->setTextColor(I)V

    .line 3315
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    const/high16 v32, 0x41f0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3316
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthBtn:Landroid/widget/Button;

    sget-object v32, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3321
    .end local v12           #lgu_auth_text:Ljava/lang/String;
    .end local v13           #lgu_info_text:Ljava/lang/String;
    .end local v25           #text:Ljava/lang/String;
    .end local v26           #textColor:Ljava/lang/String;
    .end local v27           #textGravity:Ljava/lang/String;
    .end local v28           #textSize:Ljava/lang/String;
    .end local v30           #tv:Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v31, v0

    if-eqz v31, :cond_18

    .line 3324
    const-string v31, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3325
    .local v16, offimage:Ljava/lang/String;
    const-string v31, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3328
    .local v17, onimage:Ljava/lang/String;
    const-string v20, "bt_01_reclaim_nor"

    .line 3329
    .local v20, reClaimOffimage:Ljava/lang/String;
    const-string v21, "bt_01_reclaim_sel"

    .line 3332
    .local v21, reClaimOnimage:Ljava/lang/String;
    const-string v5, "btn_con_nor"

    .line 3333
    .local v5, authOkOffimage:Ljava/lang/String;
    const-string v6, "btn_con_sel"

    .local v6, authOkOnimage:Ljava/lang/String;
    move-object/from16 v31, v22

    .line 3335
    check-cast v31, Landroid/widget/Button;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    .line 3337
    const-string v31, "bt_01_claim_nor"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 3338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v31, v0

    sput-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthBtn:Landroid/widget/Button;

    .line 3340
    :cond_14
    const-string v31, "bt_confirm_dim"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 3341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v31, v0

    sput-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthOkBtn:Landroid/widget/Button;

    .line 3346
    :cond_15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mStream:Ljava/io/InputStream;

    .line 3347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mStream:Ljava/io/InputStream;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    .line 3349
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mStream:Ljava/io/InputStream;

    .line 3350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mStream:Ljava/io/InputStream;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    .line 3352
    new-instance v31, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 3353
    const v24, 0x10100a7

    .line 3354
    .local v24, statePressed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v24, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOver:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mbtOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3360
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimStream:Ljava/io/InputStream;

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimStream:Ljava/io/InputStream;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    .line 3363
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimStream:Ljava/io/InputStream;

    .line 3364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimStream:Ljava/io/InputStream;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    .line 3366
    new-instance v31, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sput-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 3367
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v24, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOver:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3368
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mLimitExcessbtOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3372
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    .line 3375
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".png"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    .line 3376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkStream:Ljava/io/InputStream;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v0, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    .line 3378
    new-instance v31, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sput-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mSmsAuthDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 3379
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mSmsAuthDrawables:Landroid/graphics/drawable/StateListDrawable;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v24, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOver:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3380
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mSmsAuthDrawables:Landroid/graphics/drawable/StateListDrawable;

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAuthOkbtOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3385
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthClickFlag:Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_16

    const-string v31, "bt_01_claim_nor"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v31, v0

    sget-object v32, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3388
    :cond_16
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOTPNumber()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_17

    .line 3389
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthBtn:Landroid/widget/Button;

    sget-object v32, Lcom/feelingk/iap/gui/parser/ParserXML;->mReClaimDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3390
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthOkBtn:Landroid/widget/Button;

    sget-object v32, Lcom/feelingk/iap/gui/parser/ParserXML;->mSmsAuthDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3391
    sget-object v31, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthOkBtn:Landroid/widget/Button;

    sget-object v32, Lcom/feelingk/iap/gui/parser/ParserXML;->okLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3395
    :cond_17
    const-string v31, "bt_01_claim_sel"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->getlguSmsAuthBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3404
    .end local v5           #authOkOffimage:Ljava/lang/String;
    .end local v6           #authOkOnimage:Ljava/lang/String;
    .end local v16           #offimage:Ljava/lang/String;
    .end local v17           #onimage:Ljava/lang/String;
    .end local v20           #reClaimOffimage:Ljava/lang/String;
    .end local v21           #reClaimOnimage:Ljava/lang/String;
    .end local v24           #statePressed:I
    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Stack;->size()I

    move-result v31

    if-lez v31, :cond_0

    .line 3405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 3164
    .restart local v14       #ll:Landroid/widget/LinearLayout;
    .restart local v18       #orient:Ljava/lang/String;
    :cond_19
    const-string v31, "vertical"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 3165
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 3189
    .restart local v8       #gravity:Ljava/lang/String;
    .restart local v9       #image:Ljava/lang/String;
    .restart local v10       #imageColor:Ljava/lang/String;
    :cond_1a
    const/16 v31, 0x5

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 3232
    .end local v8           #gravity:Ljava/lang/String;
    .end local v10           #imageColor:Ljava/lang/String;
    .end local v14           #ll:Landroid/widget/LinearLayout;
    .end local v18           #orient:Ljava/lang/String;
    .restart local v7       #et:Landroid/widget/EditText;
    .restart local v12       #lgu_auth_text:Ljava/lang/String;
    :cond_1b
    const-string v31, "\uc778\uc99d\ubc88\ud638\ub97c \uc694\uccad\ud574\uc8fc\uc138\uc694"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 3309
    .end local v7           #et:Landroid/widget/EditText;
    .end local v9           #image:Ljava/lang/String;
    .restart local v13       #lgu_info_text:Ljava/lang/String;
    .restart local v25       #text:Ljava/lang/String;
    .restart local v26       #textColor:Ljava/lang/String;
    .restart local v27       #textGravity:Ljava/lang/String;
    .restart local v28       #textSize:Ljava/lang/String;
    .restart local v30       #tv:Landroid/widget/TextView;
    :cond_1c
    const/16 v31, 0x13

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_5

    .line 3398
    .end local v12           #lgu_auth_text:Ljava/lang/String;
    .end local v13           #lgu_info_text:Ljava/lang/String;
    .end local v25           #text:Ljava/lang/String;
    .end local v26           #textColor:Ljava/lang/String;
    .end local v27           #textGravity:Ljava/lang/String;
    .end local v28           #textSize:Ljava/lang/String;
    .end local v30           #tv:Landroid/widget/TextView;
    .restart local v5       #authOkOffimage:Ljava/lang/String;
    .restart local v6       #authOkOnimage:Ljava/lang/String;
    .restart local v16       #offimage:Ljava/lang/String;
    .restart local v17       #onimage:Ljava/lang/String;
    .restart local v20       #reClaimOffimage:Ljava/lang/String;
    .restart local v21       #reClaimOnimage:Ljava/lang/String;
    .restart local v24       #statePressed:I
    :cond_1d
    const-string v31, "btn_con_sel"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v31, v0

    sget-object v32, Lcom/feelingk/iap/gui/parser/ParserXML;->okLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 3400
    :cond_1e
    const-string v31, "btn_cancel_sel_h"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_18

    .line 3401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mBtn:Landroid/widget/Button;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6
.end method

.method private createViewOtpPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 46
    .parameter "parse"

    .prologue
    .line 2880
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 2881
    .local v25, name:Ljava/lang/String;
    const/16 v32, 0x0

    .line 2882
    .local v32, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 2883
    .local v5, atts:Landroid/util/AttributeSet;
    const-string v42, "LinearLayout"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 2884
    new-instance v32, Landroid/widget/LinearLayout;

    .end local v32           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2902
    .restart local v32       #result:Landroid/view/View;
    :goto_0
    if-nez v32, :cond_6

    .line 2903
    const/16 v32, 0x0

    .line 3126
    .end local v32           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v32

    .line 2886
    .restart local v32       #result:Landroid/view/View;
    :cond_1
    const-string v42, "TextView"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2

    .line 2887
    new-instance v32, Landroid/widget/TextView;

    .end local v32           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v32       #result:Landroid/view/View;
    goto :goto_0

    .line 2889
    :cond_2
    const-string v42, "Button"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 2890
    new-instance v32, Landroid/widget/Button;

    .end local v32           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v32       #result:Landroid/view/View;
    goto :goto_0

    .line 2892
    :cond_3
    const-string v42, "ImageView"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_4

    .line 2893
    new-instance v32, Landroid/widget/ImageView;

    .end local v32           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v32       #result:Landroid/view/View;
    goto :goto_0

    .line 2895
    :cond_4
    const-string v42, "EditText"

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_5

    .line 2896
    new-instance v32, Landroid/widget/EditText;

    .end local v32           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v32       #result:Landroid/view/View;
    goto :goto_0

    .line 2899
    :cond_5
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "# UnSupported tag:"

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2905
    :cond_6
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v42, v0

    if-eqz v42, :cond_c

    move-object/from16 v21, v32

    .line 2906
    check-cast v21, Landroid/widget/LinearLayout;

    .line 2907
    .local v21, ll:Landroid/widget/LinearLayout;
    const-string v42, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2909
    .local v29, orient:Ljava/lang/String;
    if-eqz v29, :cond_7

    .line 2910
    const-string v42, "horizontal"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_17

    .line 2911
    const/16 v42, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2917
    :cond_7
    :goto_2
    const-string v42, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2918
    .local v15, image:Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 2919
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ".png"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 2920
    .local v18, is:Ljava/io/InputStream;
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2924
    .end local v18           #is:Ljava/io/InputStream;
    :cond_8
    const-string v42, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2925
    .local v16, imageColor:Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 2928
    const/high16 v42, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2932
    :cond_9
    const-string v42, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2933
    .local v12, gravity:Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 2934
    const-string v42, "center"

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_18

    .line 2935
    const/16 v42, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2941
    :cond_a
    :goto_3
    const-string v42, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2942
    .local v31, padding:Ljava/lang/String;
    if-eqz v31, :cond_b

    .line 2943
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v33

    .line 2944
    .local v33, size:I
    move-object/from16 v0, v21

    move/from16 v1, v33

    move/from16 v2, v33

    move/from16 v3, v33

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2948
    .end local v33           #size:I
    :cond_b
    const-string v42, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2949
    .local v40, touchMode:Ljava/lang/String;
    if-eqz v40, :cond_c

    .line 2950
    const/16 v42, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 2955
    .end local v12           #gravity:Ljava/lang/String;
    .end local v15           #image:Ljava/lang/String;
    .end local v16           #imageColor:Ljava/lang/String;
    .end local v21           #ll:Landroid/widget/LinearLayout;
    .end local v29           #orient:Ljava/lang/String;
    .end local v31           #padding:Ljava/lang/String;
    .end local v40           #touchMode:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v42, v0

    if-eqz v42, :cond_d

    move-object/from16 v20, v32

    .line 2957
    check-cast v20, Landroid/widget/ImageView;

    .line 2959
    .local v20, iv:Landroid/widget/ImageView;
    const-string v42, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2960
    .restart local v15       #image:Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 2961
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ".png"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 2962
    .restart local v18       #is:Ljava/io/InputStream;
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2967
    .end local v15           #image:Ljava/lang/String;
    .end local v18           #is:Ljava/io/InputStream;
    .end local v20           #iv:Landroid/widget/ImageView;
    :cond_d
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v42, v0

    if-eqz v42, :cond_13

    move-object/from16 v41, v32

    .line 2968
    check-cast v41, Landroid/widget/TextView;

    .line 2970
    .local v41, tv:Landroid/widget/TextView;
    const-string v42, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2971
    .local v38, textID:Ljava/lang/String;
    const-string v42, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2972
    .local v35, text:Ljava/lang/String;
    const-string v42, "a:otpnumbertext"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2973
    .local v30, otpnumbertext:Ljava/lang/String;
    const-string v42, "a:infotext"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2974
    .local v17, infotext:Ljava/lang/String;
    const-string v42, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2975
    .local v39, textSize:Ljava/lang/String;
    const-string v42, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2976
    .local v36, textColor:Ljava/lang/String;
    const-string v42, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2978
    .local v37, textGravity:Ljava/lang/String;
    if-eqz v35, :cond_e

    .line 2979
    const-string v42, "\\n"

    const-string v43, "\n"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    .line 2980
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2982
    :cond_e
    if-eqz v30, :cond_f

    .line 2983
    const/16 v26, 0x0

    .line 2984
    .local v26, num:I
    const/4 v13, 0x1

    .local v13, i:I
    :goto_4
    const/16 v42, 0x14

    move/from16 v0, v42

    if-le v13, v0, :cond_19

    .line 2988
    const-string v42, "\\n"

    const-string v43, "\n"

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 2989
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2990
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->otpAuthNumber:Ljava/lang/String;

    .line 2993
    .end local v13           #i:I
    .end local v26           #num:I
    :cond_f
    if-eqz v17, :cond_10

    .line 2994
    const-string v42, "\\n"

    const-string v43, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 2995
    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2997
    :cond_10
    if-eqz v39, :cond_11

    .line 2998
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2999
    :cond_11
    if-eqz v36, :cond_12

    .line 3000
    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3008
    :cond_12
    if-eqz v37, :cond_1a

    .line 3009
    const/16 v42, 0x11

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setGravity(I)V

    .line 3012
    :goto_5
    const/16 v42, 0x0

    const v43, 0x3f933333

    invoke-virtual/range {v41 .. v43}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3016
    .end local v17           #infotext:Ljava/lang/String;
    .end local v30           #otpnumbertext:Ljava/lang/String;
    .end local v35           #text:Ljava/lang/String;
    .end local v36           #textColor:Ljava/lang/String;
    .end local v37           #textGravity:Ljava/lang/String;
    .end local v38           #textID:Ljava/lang/String;
    .end local v39           #textSize:Ljava/lang/String;
    .end local v41           #tv:Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v42, v0

    if-eqz v42, :cond_14

    .line 3019
    const-string v42, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3020
    .local v27, offimage:Ljava/lang/String;
    const-string v42, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .local v28, onimage:Ljava/lang/String;
    move-object/from16 v8, v32

    .line 3022
    check-cast v8, Landroid/widget/Button;

    .line 3025
    .local v8, btn:Landroid/widget/Button;
    const/4 v6, 0x0

    .local v6, btOn:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 3027
    .local v7, btOver:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ".png"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 3028
    .local v19, isStream:Ljava/io/InputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3030
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ".png"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 3031
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3033
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 3034
    .local v9, drawables:Landroid/graphics/drawable/StateListDrawable;
    const v34, 0x10100a7

    .line 3035
    .local v34, statePressed:I
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [I

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput v34, v42, v43

    move-object/from16 v0, v42

    invoke-virtual {v9, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3036
    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [I

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v9, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3037
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3039
    const-string v42, "btn_locking_sel"

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_14

    .line 3040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okOtpBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3043
    .end local v6           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v7           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v8           #btn:Landroid/widget/Button;
    .end local v9           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v19           #isStream:Ljava/io/InputStream;
    .end local v27           #offimage:Ljava/lang/String;
    .end local v28           #onimage:Ljava/lang/String;
    .end local v34           #statePressed:I
    :cond_14
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v42, v0

    if-eqz v42, :cond_16

    move-object/from16 v10, v32

    .line 3045
    check-cast v10, Landroid/widget/EditText;

    .line 3046
    .local v10, editText:Landroid/widget/EditText;
    const-string v42, "\uc778\uc99d\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694."

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3049
    const/16 v42, 0x1

    move/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3051
    const/16 v42, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3052
    const/16 v42, 0x2

    move/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 3054
    const-string v42, "a:maxLength"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3055
    .local v22, maxLength:Ljava/lang/String;
    if-eqz v22, :cond_15

    .line 3056
    invoke-virtual {v10}, Landroid/widget/EditText;->setSingleLine()V

    .line 3057
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v11, v0, [Landroid/text/InputFilter;

    .line 3058
    .local v11, filterArray:[Landroid/text/InputFilter;
    const/16 v42, 0x0

    new-instance v43, Landroid/text/InputFilter$LengthFilter;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    invoke-direct/range {v43 .. v44}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v43, v11, v42

    .line 3059
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3062
    .end local v11           #filterArray:[Landroid/text/InputFilter;
    :cond_15
    const-string v42, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3070
    .local v14, id:Ljava/lang/String;
    new-instance v42, Lcom/feelingk/iap/gui/parser/ParserXML$26;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/feelingk/iap/gui/parser/ParserXML$26;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;)V

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3107
    new-instance v42, Lcom/feelingk/iap/gui/parser/ParserXML$27;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/feelingk/iap/gui/parser/ParserXML$27;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;)V

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3123
    .end local v10           #editText:Landroid/widget/EditText;
    .end local v14           #id:Ljava/lang/String;
    .end local v22           #maxLength:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Stack;->size()I

    move-result v42

    if-lez v42, :cond_0

    .line 3124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v42

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2912
    .restart local v21       #ll:Landroid/widget/LinearLayout;
    .restart local v29       #orient:Ljava/lang/String;
    :cond_17
    const-string v42, "vertical"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2913
    const/16 v42, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 2937
    .restart local v12       #gravity:Ljava/lang/String;
    .restart local v15       #image:Ljava/lang/String;
    .restart local v16       #imageColor:Ljava/lang/String;
    :cond_18
    const/16 v42, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2985
    .end local v12           #gravity:Ljava/lang/String;
    .end local v15           #image:Ljava/lang/String;
    .end local v16           #imageColor:Ljava/lang/String;
    .end local v21           #ll:Landroid/widget/LinearLayout;
    .end local v29           #orient:Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v17       #infotext:Ljava/lang/String;
    .restart local v26       #num:I
    .restart local v30       #otpnumbertext:Ljava/lang/String;
    .restart local v35       #text:Ljava/lang/String;
    .restart local v36       #textColor:Ljava/lang/String;
    .restart local v37       #textGravity:Ljava/lang/String;
    .restart local v38       #textID:Ljava/lang/String;
    .restart local v39       #textSize:Ljava/lang/String;
    .restart local v41       #tv:Landroid/widget/TextView;
    :cond_19
    const/16 v23, 0x3e8

    .local v23, n1:I
    const/16 v24, 0x270f

    .line 2986
    .local v24, n2:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v42

    const/16 v44, 0x2328

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v44, v0

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    double-to-int v0, v0

    move/from16 v26, v0

    .line 2984
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 3011
    .end local v13           #i:I
    .end local v23           #n1:I
    .end local v24           #n2:I
    .end local v26           #num:I
    :cond_1a
    const/16 v42, 0x13

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_5
.end method

.method private createViewYesNoPopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    .locals 35
    .parameter "parse"
    .parameter "message"

    .prologue
    .line 1745
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1746
    .local v16, name:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1747
    .local v21, result:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 1748
    .local v5, atts:Landroid/util/AttributeSet;
    move-object/from16 v4, p2

    .line 1749
    .local v4, YesNomessage:Ljava/lang/String;
    const-string v32, "LinearLayout"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 1750
    new-instance v21, Landroid/widget/LinearLayout;

    .end local v21           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1765
    .restart local v21       #result:Landroid/view/View;
    :goto_0
    if-nez v21, :cond_4

    .line 1766
    const/16 v21, 0x0

    .line 1888
    .end local v21           #result:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v21

    .line 1752
    .restart local v21       #result:Landroid/view/View;
    :cond_1
    const-string v32, "TextView"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 1753
    new-instance v21, Landroid/widget/TextView;

    .end local v21           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v21       #result:Landroid/view/View;
    goto :goto_0

    .line 1755
    :cond_2
    const-string v32, "Button"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 1756
    new-instance v21, Landroid/widget/Button;

    .end local v21           #result:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v21       #result:Landroid/view/View;
    goto :goto_0

    .line 1762
    :cond_3
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "# UnSupported tag:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1768
    :cond_4
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v32, v0

    if-eqz v32, :cond_a

    move-object/from16 v15, v21

    .line 1769
    check-cast v15, Landroid/widget/LinearLayout;

    .line 1770
    .local v15, ll:Landroid/widget/LinearLayout;
    const-string v32, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1772
    .local v19, orient:Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 1773
    const-string v32, "horizontal"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 1774
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1780
    :cond_5
    :goto_2
    const-string v32, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1781
    .local v11, image:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 1782
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".png"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 1783
    .local v13, is:Ljava/io/InputStream;
    invoke-static {v13, v11}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1787
    .end local v13           #is:Ljava/io/InputStream;
    :cond_6
    const-string v32, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1788
    .local v12, imageColor:Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 1791
    const/high16 v32, -0x1

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1795
    :cond_7
    const-string v32, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1796
    .local v10, gravity:Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 1797
    const-string v32, "center"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1798
    const/16 v32, 0x11

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1804
    :cond_8
    :goto_3
    const-string v32, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1805
    .local v20, padding:Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 1806
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v22

    .line 1807
    .local v22, size:I
    move/from16 v0, v22

    move/from16 v1, v22

    move/from16 v2, v22

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1811
    .end local v22           #size:I
    :cond_9
    const-string v32, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1812
    .local v30, touchMode:Ljava/lang/String;
    if-eqz v30, :cond_a

    .line 1813
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1819
    .end local v10           #gravity:Ljava/lang/String;
    .end local v11           #image:Ljava/lang/String;
    .end local v12           #imageColor:Ljava/lang/String;
    .end local v15           #ll:Landroid/widget/LinearLayout;
    .end local v19           #orient:Ljava/lang/String;
    .end local v20           #padding:Ljava/lang/String;
    .end local v30           #touchMode:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v31, v21

    .line 1820
    check-cast v31, Landroid/widget/TextView;

    .line 1822
    .local v31, tv:Landroid/widget/TextView;
    const-string v32, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1823
    .local v27, textID:Ljava/lang/String;
    const-string v32, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1824
    .local v24, text:Ljava/lang/String;
    move-object/from16 v29, v4

    .line 1825
    .local v29, textmessage:Ljava/lang/String;
    const-string v32, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1826
    .local v28, textSize:Ljava/lang/String;
    const-string v32, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1827
    .local v25, textColor:Ljava/lang/String;
    const-string v32, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1829
    .local v26, textGravity:Ljava/lang/String;
    if-eqz v24, :cond_b

    .line 1830
    const-string v32, "\\n"

    const-string v33, "\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 1831
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1833
    :cond_b
    if-eqz v28, :cond_c

    .line 1834
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1835
    :cond_c
    if-eqz v25, :cond_d

    .line 1836
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1837
    :cond_d
    if-eqz v27, :cond_e

    .line 1840
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1844
    :cond_e
    if-eqz v26, :cond_13

    .line 1845
    const/16 v32, 0x11

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setGravity(I)V

    .line 1848
    :goto_4
    const/16 v32, 0x0

    const v33, 0x3f933333

    invoke-virtual/range {v31 .. v33}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1852
    .end local v24           #text:Ljava/lang/String;
    .end local v25           #textColor:Ljava/lang/String;
    .end local v26           #textGravity:Ljava/lang/String;
    .end local v27           #textID:Ljava/lang/String;
    .end local v28           #textSize:Ljava/lang/String;
    .end local v29           #textmessage:Ljava/lang/String;
    .end local v31           #tv:Landroid/widget/TextView;
    :cond_f
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 1855
    const-string v32, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1856
    .local v17, offimage:Ljava/lang/String;
    const-string v32, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, onimage:Ljava/lang/String;
    move-object/from16 v8, v21

    .line 1858
    check-cast v8, Landroid/widget/Button;

    .line 1861
    .local v8, btn:Landroid/widget/Button;
    const/4 v6, 0x0

    .local v6, btOn:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 1863
    .local v7, btOver:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".png"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1864
    .local v14, isStream:Ljava/io/InputStream;
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1866
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".png"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1867
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1869
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1870
    .local v9, drawables:Landroid/graphics/drawable/StateListDrawable;
    const v23, 0x10100a7

    .line 1871
    .local v23, statePressed:I
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v23, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v9, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1872
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v9, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1873
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1877
    const-string v32, "btn_con_sel"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1885
    .end local v6           #btOn:Landroid/graphics/drawable/Drawable;
    .end local v7           #btOver:Landroid/graphics/drawable/Drawable;
    .end local v8           #btn:Landroid/widget/Button;
    .end local v9           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v14           #isStream:Ljava/io/InputStream;
    .end local v17           #offimage:Ljava/lang/String;
    .end local v18           #onimage:Ljava/lang/String;
    .end local v23           #statePressed:I
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Stack;->size()I

    move-result v32

    if-lez v32, :cond_0

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1775
    .restart local v15       #ll:Landroid/widget/LinearLayout;
    .restart local v19       #orient:Ljava/lang/String;
    :cond_11
    const-string v32, "vertical"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 1776
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1800
    .restart local v10       #gravity:Ljava/lang/String;
    .restart local v11       #image:Ljava/lang/String;
    .restart local v12       #imageColor:Ljava/lang/String;
    :cond_12
    const/16 v32, 0x5

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 1847
    .end local v10           #gravity:Ljava/lang/String;
    .end local v11           #image:Ljava/lang/String;
    .end local v12           #imageColor:Ljava/lang/String;
    .end local v15           #ll:Landroid/widget/LinearLayout;
    .end local v19           #orient:Ljava/lang/String;
    .restart local v24       #text:Ljava/lang/String;
    .restart local v25       #textColor:Ljava/lang/String;
    .restart local v26       #textGravity:Ljava/lang/String;
    .restart local v27       #textID:Ljava/lang/String;
    .restart local v28       #textSize:Ljava/lang/String;
    .restart local v29       #textmessage:Ljava/lang/String;
    .restart local v31       #tv:Landroid/widget/TextView;
    :cond_13
    const/16 v32, 0x13

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 1880
    .end local v24           #text:Ljava/lang/String;
    .end local v25           #textColor:Ljava/lang/String;
    .end local v26           #textGravity:Ljava/lang/String;
    .end local v27           #textID:Ljava/lang/String;
    .end local v28           #textSize:Ljava/lang/String;
    .end local v29           #textmessage:Ljava/lang/String;
    .end local v31           #tv:Landroid/widget/TextView;
    .restart local v6       #btOn:Landroid/graphics/drawable/Drawable;
    .restart local v7       #btOver:Landroid/graphics/drawable/Drawable;
    .restart local v8       #btn:Landroid/widget/Button;
    .restart local v9       #drawables:Landroid/graphics/drawable/StateListDrawable;
    .restart local v14       #isStream:Ljava/io/InputStream;
    .restart local v17       #offimage:Ljava/lang/String;
    .restart local v18       #onimage:Ljava/lang/String;
    .restart local v23       #statePressed:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method private dipToInt(F)I
    .locals 3
    .parameter "number"

    .prologue
    .line 3647
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 3648
    const/4 v0, 0x0

    .line 3652
    :goto_0
    return v0

    .line 3651
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 3652
    .local v0, num:I
    goto :goto_0
.end method

.method private findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "atts"
    .parameter "id"

    .prologue
    .line 3434
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 3440
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3441
    .local v1, ix:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 3442
    const-string v2, "http://schemas.android.com/apk/res/android"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3445
    .end local v1           #ix:I
    :goto_1
    return-object v2

    .line 3435
    :cond_0
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3437
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3434
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3445
    .restart local v1       #ix:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method private getResourceXMLPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 3622
    const/4 v0, 0x0

    .line 3624
    .local v0, path:Ljava/lang/String;
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    if-ne v1, v2, :cond_0

    .line 3625
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3638
    :goto_0
    return-object v0

    .line 3627
    :cond_0
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private inflatIMEIAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .parameter "parse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1364
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 1365
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1367
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1368
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1369
    .local v1, evt:I
    const/4 v2, 0x0

    .line 1371
    .local v2, root:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1410
    return-object v2

    .line 1372
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1408
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1375
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1378
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewIMEIPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 1381
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1384
    if-nez v2, :cond_3

    .line 1385
    move-object v2, v3

    .line 1391
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1392
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1388
    .restart local v3       #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1396
    .end local v3           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1399
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1401
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1402
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1403
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1404
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .parameter "parse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 497
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 499
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 500
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 501
    .local v1, evt:I
    const/4 v2, 0x0

    .line 503
    .local v2, root:Landroid/view/View;
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 543
    return-object v2

    .line 504
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 541
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 507
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 510
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 514
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 517
    if-nez v2, :cond_2

    .line 518
    move-object v2, v3

    .line 524
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 525
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 521
    .restart local v3       #v:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 529
    .end local v3           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 532
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 534
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 535
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 536
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 537
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .parameter "parse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 1167
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1169
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1170
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1171
    .local v1, evt:I
    const/4 v2, 0x0

    .line 1173
    .local v2, root:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1209
    return-object v2

    .line 1174
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1207
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1177
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1180
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 1183
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1186
    if-nez v2, :cond_3

    .line 1187
    move-object v2, v3

    .line 1193
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1194
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1190
    .restart local v3       #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1198
    .end local v3           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1201
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1203
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1204
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateAutoPurchaseFormPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .parameter "parse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 1314
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1316
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1317
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1318
    .local v1, evt:I
    const/4 v2, 0x0

    .line 1320
    .local v2, root:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1359
    return-object v2

    .line 1321
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1357
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1324
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1327
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewAutoPurchaseFormPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 1330
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1333
    if-nez v2, :cond_3

    .line 1334
    move-object v2, v3

    .line 1340
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1341
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1337
    .restart local v3       #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1345
    .end local v3           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1348
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1350
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1351
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1352
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1353
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateImagePopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "parse"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1264
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clear()V

    .line 1265
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 1267
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1268
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1269
    .local v1, evt:I
    const/4 v3, 0x0

    .line 1270
    .local v3, root:Landroid/view/View;
    move-object v2, p2

    .line 1272
    .local v2, infomessage:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 1308
    return-object v3

    .line 1273
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1306
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1276
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1279
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    invoke-direct {p0, p1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewImagePopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 1282
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1285
    if-nez v3, :cond_3

    .line 1286
    move-object v3, v4

    .line 1292
    :goto_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1293
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #v:Landroid/view/View;
    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1289
    .restart local v4       #v:Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1297
    .end local v4           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1300
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1302
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1303
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateJoinPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .parameter "parse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1416
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 1417
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1419
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1420
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1421
    .local v1, evt:I
    const/4 v2, 0x0

    .line 1423
    .local v2, root:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1462
    return-object v2

    .line 1424
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1460
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1427
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1430
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewJoinPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 1433
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1436
    if-nez v2, :cond_3

    .line 1437
    move-object v2, v3

    .line 1443
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1444
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1440
    .restart local v3       #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1448
    .end local v3           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1451
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1453
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1454
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1455
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1456
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateLguSmsAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .parameter "parse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1519
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 1520
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1522
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1523
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1524
    .local v1, evt:I
    const/4 v2, 0x0

    .line 1526
    .local v2, root:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1565
    return-object v2

    .line 1527
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1563
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1530
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1533
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewLguSmsAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 1536
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1539
    if-nez v2, :cond_3

    .line 1540
    move-object v2, v3

    .line 1546
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1547
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1543
    .restart local v3       #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1551
    .end local v3           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1554
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1556
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1557
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1558
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1559
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateOtpPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .parameter "parse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 1469
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1471
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1472
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1473
    .local v1, evt:I
    const/4 v2, 0x0

    .line 1475
    .local v2, root:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1514
    return-object v2

    .line 1476
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1512
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1479
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1482
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewOtpPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 1485
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1488
    if-nez v2, :cond_3

    .line 1489
    move-object v2, v3

    .line 1495
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1496
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1492
    .restart local v3       #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1500
    .end local v3           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1503
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1505
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1506
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1507
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1508
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateYesNoPopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "parse"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1215
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clear()V

    .line 1216
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 1218
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1219
    .local v0, data:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1220
    .local v1, evt:I
    const/4 v3, 0x0

    .line 1221
    .local v3, root:Landroid/view/View;
    move-object v2, p2

    .line 1223
    .local v2, infomessage:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 1259
    return-object v3

    .line 1224
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1257
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1227
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1230
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    invoke-direct {p0, p1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewYesNoPopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 1233
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1236
    if-nez v3, :cond_3

    .line 1237
    move-object v3, v4

    .line 1243
    :goto_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1244
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #v:Landroid/view/View;
    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1240
    .restart local v4       #v:Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1248
    .end local v4           #v:Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1251
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1254
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isLayout(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 547
    const-string v0, "Layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isScrollView(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 552
    const-string v0, "ScrollView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 19
    .parameter "atts"
    .parameter "vg"

    .prologue
    .line 3467
    const/4 v7, 0x0

    .line 3469
    .local v7, lps:Landroid/view/ViewGroup$LayoutParams;
    const-string v18, "a:layout_width"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3470
    .local v15, width:Ljava/lang/String;
    const-string v18, "a:layout_height"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3472
    .local v5, height:Ljava/lang/String;
    const-string v18, "a:xlayout_width"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3473
    .local v17, xwidth:Ljava/lang/String;
    const-string v18, "a:xlayout_height"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3477
    .local v16, xheight:Ljava/lang/String;
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3478
    .local v12, modelName:Ljava/lang/String;
    const-string v18, "LT15i"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 3479
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v13

    .line 3480
    .local v13, w:I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v4

    .line 3481
    .local v4, h:I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->xperiacheckbox:Z

    .line 3489
    :goto_0
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3490
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7           #lps:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v7, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3492
    .restart local v7       #lps:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/ScrollView;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 3493
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7           #lps:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v7, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3501
    .restart local v7       #lps:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, v7, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object v6, v7

    .line 3502
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 3503
    .local v6, l:Landroid/widget/LinearLayout$LayoutParams;
    const-string v18, "a:layout_gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3504
    .local v3, gravity:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 3505
    const-string v18, "center"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 3506
    const/16 v18, 0x11

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3513
    :cond_2
    :goto_1
    const-string v18, "a:layout_weight"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3514
    .local v14, weight:Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 3515
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3518
    :cond_3
    const-string v18, "a:layout_marginTop"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3519
    .local v11, marginTop:Ljava/lang/String;
    const-string v18, "a:layout_marginLeft"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3520
    .local v9, marginLeft:Ljava/lang/String;
    const-string v18, "a:layout_marginRight"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3521
    .local v10, marginRight:Ljava/lang/String;
    const-string v18, "a:layout_marginBottom"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3523
    .local v8, marginBottom:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 3524
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3525
    :cond_4
    if-eqz v9, :cond_5

    .line 3526
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 3527
    :cond_5
    if-eqz v8, :cond_6

    .line 3528
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 3529
    :cond_6
    if-eqz v10, :cond_7

    .line 3530
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3532
    :cond_7
    move-object v7, v6

    .line 3535
    .end local v3           #gravity:Ljava/lang/String;
    .end local v6           #l:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #marginBottom:Ljava/lang/String;
    .end local v9           #marginLeft:Ljava/lang/String;
    .end local v10           #marginRight:Ljava/lang/String;
    .end local v11           #marginTop:Ljava/lang/String;
    .end local v14           #weight:Ljava/lang/String;
    :cond_8
    return-object v7

    .line 3484
    .end local v4           #h:I
    .end local v13           #w:I
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v13

    .line 3485
    .restart local v13       #w:I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v4

    .restart local v4       #h:I
    goto/16 :goto_0

    .line 3507
    .restart local v3       #gravity:Ljava/lang/String;
    .restart local v6       #l:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    const-string v18, "left"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 3508
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 3510
    :cond_b
    const/16 v18, 0x5

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_1
.end method

.method private lookupId(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, -0x1

    .line 3419
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3420
    .local v1, ix:I
    if-eq v1, v3, :cond_1

    .line 3421
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3422
    .local v0, idName:Ljava/lang/String;
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3423
    .local v2, n:Ljava/lang/Integer;
    if-nez v2, :cond_0

    const-string v4, "@+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3424
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #n:Ljava/lang/Integer;
    iget v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->idg:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->idg:I

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 3425
    .restart local v2       #n:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3427
    :cond_0
    if-eqz v2, :cond_1

    .line 3428
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3430
    .end local v0           #idName:Ljava/lang/String;
    .end local v2           #n:Ljava/lang/Integer;
    :cond_1
    return v3
.end method

.method private readDPSize(Ljava/lang/String;)I
    .locals 4
    .parameter "val"

    .prologue
    .line 3604
    const/4 v1, 0x0

    .line 3607
    .local v1, size:F
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 3609
    const-string v2, "dp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3610
    invoke-direct {p0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->dipToInt(F)I

    move-result v2

    .line 3616
    :goto_0
    return v2

    .line 3613
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3615
    :catch_0
    move-exception v0

    .line 3616
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private readFontSize(Ljava/lang/String;)I
    .locals 7
    .parameter "val"

    .prologue
    .line 3584
    const/4 v2, 0x0

    .line 3587
    .local v2, size:F
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3594
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8

    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 3595
    .local v0, dpChange:F
    float-to-int v3, v0

    .line 3598
    .end local v0           #dpChange:F
    :goto_0
    return v3

    .line 3597
    :catch_0
    move-exception v1

    .line 3598
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private readSize(Ljava/lang/String;)I
    .locals 8
    .parameter "val"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 3539
    const/high16 v0, 0x3f80

    .line 3541
    .local v0, density:F
    const-string v6, "wrap_content"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3576
    :cond_0
    :goto_0
    return v4

    .line 3544
    :cond_1
    const-string v6, "fill_parent"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 3545
    goto :goto_0

    .line 3547
    :cond_2
    if-eqz p1, :cond_0

    .line 3549
    const/4 v3, 0x0

    .line 3551
    .local v3, size:F
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 3557
    const-string v4, "dp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3558
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->dipToInt(F)I

    move-result v4

    goto :goto_0

    .line 3564
    :cond_3
    const-string v4, "pt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3565
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff8

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 3566
    .local v1, dpChange:F
    mul-float v4, v1, v0

    float-to-int v4, v4

    goto :goto_0

    .line 3569
    .end local v1           #dpChange:F
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 3571
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/NumberFormatException;
    move v4, v5

    .line 3572
    goto :goto_0
.end method

.method public static setOTPNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "otpNum"

    .prologue
    .line 152
    if-eqz p0, :cond_0

    sget-object v2, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 153
    sput-object p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mOTPNumber:Ljava/lang/String;

    .line 154
    sget-object v2, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    const-string v3, "#FF6F00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 155
    sget-object v2, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    const/high16 v3, 0x41f0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 156
    sget-object v2, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const/4 v1, 0x6

    .line 159
    .local v1, maxLength:I
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 160
    .local v0, filterArray:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 162
    sget-object v2, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthTv:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 165
    sget-object v2, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthOkBtn:Landroid/widget/Button;

    sget-object v3, Lcom/feelingk/iap/gui/parser/ParserXML;->mSmsAuthDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    sget-object v2, Lcom/feelingk/iap/gui/parser/ParserXML;->mLguSmsAuthOkBtn:Landroid/widget/Button;

    sget-object v3, Lcom/feelingk/iap/gui/parser/ParserXML;->okLguSmsAuthBtn:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .end local v0           #filterArray:[Landroid/text/InputFilter;
    .end local v1           #maxLength:I
    :cond_0
    return-void
.end method


# virtual methods
.method public ReleaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 315
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 320
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 323
    :cond_1
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 324
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 325
    return-void
.end method

.method public Start(ILjava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "orientation"
    .parameter "objData"

    .prologue
    const/4 v4, 0x2

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, fileName:Ljava/lang/String;
    iput p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 331
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# purchase Start !! GUI-rotate ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    check-cast p2, Lcom/feelingk/iap/gui/data/PurchaseItem;

    .end local p2
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 336
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    if-eqz v1, :cond_2

    .line 337
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-ne v1, v4, :cond_1

    .line 338
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W_Auto.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    invoke-direct {p0, v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 340
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "H_Auto.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->FinalVersionCheck:Z

    if-eqz v1, :cond_5

    .line 346
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-ne v1, v4, :cond_4

    .line 347
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "H.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_5
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-ne v1, v4, :cond_7

    .line 354
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W_finalVersion.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 356
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "H_finalVersion.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public Start(Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;
    .locals 4
    .parameter "xmlFileFname"
    .parameter "obj"
    .parameter "orientation"

    .prologue
    .line 425
    check-cast p2, Landroid/view/View$OnClickListener;

    .end local p2
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, fileName:Ljava/lang/String;
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 430
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# Dlg Start !! GUI-rotate ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-direct {p0, v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "xmlFileFname"
    .parameter "message"
    .parameter "obj"

    .prologue
    .line 364
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 365
    check-cast p3, Landroid/view/View$OnClickListener;

    .end local p3
    iput-object p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 367
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;
    .locals 4
    .parameter "xmlFileFname"
    .parameter "message"
    .parameter "obj"
    .parameter "orientation"

    .prologue
    .line 407
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 408
    check-cast p3, Landroid/view/View$OnClickListener;

    .end local p3
    iput-object p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, fileName:Ljava/lang/String;
    iput p4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 413
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# Dlg Start !! GUI-rotate ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 417
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "W.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_0
    invoke-direct {p0, v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 419
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "H.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;
    .locals 4
    .parameter "xmlFileFname"
    .parameter "formName"
    .parameter "message"
    .parameter "obj"
    .parameter "orientation"

    .prologue
    .line 371
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 372
    iput-object p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 373
    check-cast p4, Landroid/view/View$OnClickListener;

    .end local p4
    iput-object p4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, fileName:Ljava/lang/String;
    iput p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 378
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# AutoPurchaseForm\uc6a9 Start !! GUI-rotate ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 382
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "W.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :goto_0
    invoke-direct {p0, v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 384
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "H.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public StartIMEIAuth(Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;
    .locals 4
    .parameter "xmlFileFname"
    .parameter "obj"
    .parameter "orientation"

    .prologue
    .line 390
    check-cast p2, Landroid/view/View$OnClickListener;

    .end local p2
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 391
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, fileName:Ljava/lang/String;
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# IMEIAuthDialog Start !! GUI-rotate ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 398
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "w.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_0
    invoke-direct {p0, v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 400
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "h.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public UseTCash(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "flag"

    .prologue
    .line 4079
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4081
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget v3, v3, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget v4, v4, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    sub-int v2, v3, v4

    .line 4083
    .local v2, total:I
    if-lez v2, :cond_0

    .line 4084
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4085
    .local v0, df:Ljava/text/DecimalFormat;
    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 4087
    .local v1, dfMoney:Ljava/lang/String;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uc6d0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4102
    .end local v2           #total:I
    :goto_0
    return-void

    .line 4090
    .end local v0           #df:Ljava/text/DecimalFormat;
    .end local v1           #dfMoney:Ljava/lang/String;
    .restart local v2       #total:I
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4091
    .restart local v0       #df:Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget v3, v3, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 4094
    .restart local v1       #dfMoney:Ljava/lang/String;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uc6d0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "P=0\uc6d0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4098
    .end local v0           #df:Ljava/text/DecimalFormat;
    .end local v1           #dfMoney:Ljava/lang/String;
    .end local v2           #total:I
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4099
    .restart local v0       #df:Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget v3, v3, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 4100
    .restart local v1       #dfMoney:Ljava/lang/String;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uc6d0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
