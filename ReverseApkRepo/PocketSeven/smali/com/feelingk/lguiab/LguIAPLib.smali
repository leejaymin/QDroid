.class public Lcom/feelingk/lguiab/LguIAPLib;
.super Landroid/app/Activity;
.source "LguIAPLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;
    }
.end annotation


# static fields
.field public static aid_complete:Ljava/lang/String;

.field private static buyComfirmDialog:Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;

.field private static dlgType:Ljava/lang/String;

.field private static flowType:Ljava/lang/String;

.field static listenerKey:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

.field private static lockPopup:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

.field private static mClientListenerKey:Ljava/lang/String;

.field private static mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mListSize:I

.field private static mPassword:Ljava/lang/String;

.field private static mPopBtnNoText:Ljava/lang/String;

.field private static mPopBtnYesText:Ljava/lang/String;

.field private static mPopMsg:Ljava/lang/String;

.field private static mPopTitle:Ljava/lang/String;

.field private static mPurchaseAPPID:Ljava/lang/String;

.field private static mPurchaseBpData:Ljava/lang/String;

.field private static mPurchaseBpUri:Ljava/lang/String;

.field private static mPurchasePID:Ljava/lang/String;

.field private static mPurchaseResult:Lcom/feelingk/lguiab/vo/ProductItemInfo;

.field private static mRequest:I

.field private static mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

.field private static mUsimCheckFlag:Z

.field private static mUsimPurchaseItemWorkFlow:I

.field private static mfinalVer:Z

.field private static onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

.field private static payAuthDialog:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

.field private static popPurchaseDlgFlag:Z

.field private static purchaseItemListFlag:Z

.field private static purchaseListdlg:Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;

.field private static twoPopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

.field private static viewBuyCheck:Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;

.field private static viewItemWholeAuthListJob:Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    .line 57
    const-string v0, "None"

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    .line 58
    const-string v0, "None"

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->flowType:Ljava/lang/String;

    .line 59
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mList:Ljava/util/List;

    .line 60
    sput v2, Lcom/feelingk/lguiab/LguIAPLib;->mListSize:I

    .line 63
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseAPPID:Ljava/lang/String;

    .line 64
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    .line 67
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseResult:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    .line 70
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPopTitle:Ljava/lang/String;

    .line 71
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnYesText:Ljava/lang/String;

    .line 72
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnNoText:Ljava/lang/String;

    .line 73
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPopMsg:Ljava/lang/String;

    .line 74
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mClientListenerKey:Ljava/lang/String;

    .line 77
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->buyComfirmDialog:Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;

    .line 78
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->purchaseListdlg:Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;

    .line 79
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    .line 80
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->twoPopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    .line 81
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->lockPopup:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    .line 82
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->payAuthDialog:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

    .line 85
    sput-boolean v2, Lcom/feelingk/lguiab/LguIAPLib;->mfinalVer:Z

    .line 86
    sput-boolean v2, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    .line 87
    sput v2, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    .line 88
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPassword:Ljava/lang/String;

    .line 89
    const v0, 0xd7115

    sput v0, Lcom/feelingk/lguiab/LguIAPLib;->mRequest:I

    .line 92
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->viewBuyCheck:Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;

    .line 93
    sput-boolean v2, Lcom/feelingk/lguiab/LguIAPLib;->popPurchaseDlgFlag:Z

    .line 94
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->viewItemWholeAuthListJob:Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;

    .line 95
    sput-boolean v2, Lcom/feelingk/lguiab/LguIAPLib;->purchaseItemListFlag:Z

    .line 97
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->aid_complete:Ljava/lang/String;

    .line 98
    sput-object v1, Lcom/feelingk/lguiab/LguIAPLib;->listenerKey:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static DissmissOneBtnPopupDlg()V
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    .line 618
    return-void
.end method

.method public static DissmissPayAuthDlg()V
    .locals 1

    .prologue
    .line 660
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->payAuthDialog:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->dismiss()V

    .line 661
    return-void
.end method

.method public static DissmissPurchaseDlg()V
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->buyComfirmDialog:Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->dismiss()V

    .line 556
    return-void
.end method

.method public static DissmissShowListDlg()V
    .locals 1

    .prologue
    .line 576
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->purchaseListdlg:Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->dismiss()V

    .line 577
    return-void
.end method

.method public static DissmissTwoBtnPopupDlg()V
    .locals 1

    .prologue
    .line 648
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->twoPopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    .line 649
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    return v0
.end method

.method public static finalVerDown()V
    .locals 9

    .prologue
    .line 774
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 775
    .local v3, intent:Landroid/content/Intent;
    new-instance v2, Lcom/feelingk/lguiab/util/ExternalLinkedCheck;

    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/feelingk/lguiab/util/ExternalLinkedCheck;-><init>(Landroid/content/Context;)V

    .line 776
    .local v2, externalLinkedCheck:Lcom/feelingk/lguiab/util/ExternalLinkedCheck;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Market ver : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/feelingk/lguiab/util/ExternalLinkedCheck;->marketVersionCheck()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v2}, Lcom/feelingk/lguiab/util/ExternalLinkedCheck;->marketVersionCheck()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 780
    const-string v5, "\uad6c\ubc84\uc804 \uc571\ub9c8\ucf13"

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 781
    const-string v5, "android.lgt.appstore"

    const-string v6, "android.lgt.appstore.ExternalUpdate"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v5, "PID"

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->aid_complete:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "call pid :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->aid_complete:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 807
    :goto_0
    :try_start_0
    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_1
    return-void

    .line 797
    :cond_0
    const-string v5, "U+ \uc571\ub9c8\ucf13"

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "call pid :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->aid_complete:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 799
    const/4 v0, 0x3

    .line 801
    .local v0, checkValue:I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ozstore://EXTERNAL/PID="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->aid_complete:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, uriData:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v5, "ozstore.external.linked"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 809
    .end local v0           #checkValue:I
    .end local v4           #uriData:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 810
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FileManager : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 812
    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    const-string v6, "\uc815\uc2dd\ud310 \uacb0\uc7ac \uc694\uccad"

    .line 813
    const-string v7, "\ud655\uc778"

    const-string v8, "OZ \uc2a4\ud1a0\uc5b4\uac00 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. OZ \uc2a4\ud1a0\uc5b4\ub97c \ub2e4\uc6b4\ubc1b\uc544\uc8fc\uc138\uc694"

    .line 812
    invoke-static {v5, v6, v7, v8}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->listenerKey:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    return-object v0
.end method

.method public static getDialogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    return-object v0
.end method

.method public static getFlowType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->flowType:Ljava/lang/String;

    return-object v0
.end method

.method protected static goLibProcess()V
    .locals 12

    .prologue
    const/4 v2, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 266
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->isLguServiceState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 269
    const-string v0, "PopupDlgOneBtn"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\uc778\uc99d\uc5d0\ub7ec"

    const-string v2, "\ud655\uc778"

    const-string v3, "\uc778\uc99d\uc774 \ud544\uc694\ud569\ub2c8\ub2e4. \ud734\ub300\ud3f0\uc744 \uaecf\ub2e4 \ucf1c\uc8fc\uc2dc\uace0 \uc7ac\ubc1c\uc2dc LGU+\uace0\uac1d\uc13c\ud130(114)\ub85c \uc5f0\ub77d\ubc14\ub78d\ub2c8\ub2e4."

    invoke-static {v0, v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmPhoneUSIMState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "PopupDlgOneBtn"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\uc5d0\ub7ec"

    const-string v2, "\ud655\uc778"

    const-string v3, "USIM\uc758 \uc0c1\ud0dc\ub97c \ud655\uc778\ud574\uc8fc\uc138\uc694."

    invoke-static {v0, v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sput-boolean v10, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->isAvailableLibState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    sput-boolean v10, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    goto :goto_0

    .line 287
    :cond_2
    sget v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    if-ne v0, v11, :cond_5

    .line 288
    const-string v0, "IAP Lib popPurchaseDlg call!"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/DeviceUtil;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "070"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/DeviceUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 293
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "070\ub2e8\ub9d0\uae30\ub294 WiFi \uc0c1\ud0dc\uc5d0\uc11c\ub9cc \uc11c\ube44\uc2a4\uc9c0\uc6d0 \ud569\ub2c8\ub2e4."

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    sput-boolean v10, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    goto :goto_0

    .line 298
    :cond_3
    new-instance v0, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseAPPID:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/IAPLibSetting;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->viewBuyCheck:Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;

    .line 299
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->viewBuyCheck:Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;

    new-array v1, v11, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    sput-boolean v11, Lcom/feelingk/lguiab/LguIAPLib;->popPurchaseDlgFlag:Z

    .line 332
    :cond_4
    :goto_1
    sput v10, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    .line 333
    sput-boolean v10, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    goto/16 :goto_0

    .line 302
    :cond_5
    sget v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 303
    const-string v0, "IAP Lib sendItemWholeAuth call!"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 307
    new-instance v9, Lcom/feelingk/lguiab/manager/task/ReqItemWholeAuthJob;

    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lcom/feelingk/lguiab/manager/task/ReqItemWholeAuthJob;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    .local v9, reqItemWholeAuthJob:Lcom/feelingk/lguiab/manager/task/ReqItemWholeAuthJob;
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v10

    invoke-virtual {v9, v0}, Lcom/feelingk/lguiab/manager/task/ReqItemWholeAuthJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 310
    .end local v9           #reqItemWholeAuthJob:Lcom/feelingk/lguiab/manager/task/ReqItemWholeAuthJob;
    :cond_6
    sget v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    if-ne v0, v2, :cond_7

    .line 311
    const-string v0, "IAP Lib sendItemAuth call!"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 315
    new-instance v7, Lcom/feelingk/lguiab/manager/task/ReqItemAuthJob;

    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/feelingk/lguiab/manager/task/ReqItemAuthJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v7, reqItemAuthJob:Lcom/feelingk/lguiab/manager/task/ReqItemAuthJob;
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v10

    invoke-virtual {v7, v0}, Lcom/feelingk/lguiab/manager/task/ReqItemAuthJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 318
    .end local v7           #reqItemAuthJob:Lcom/feelingk/lguiab/manager/task/ReqItemAuthJob;
    :cond_7
    sget v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 319
    const-string v0, "IAP Lib sendItemUse call!"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 322
    new-instance v8, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;

    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseAPPID:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .local v8, reqItemUseJob:Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v10

    invoke-virtual {v8, v0}, Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 325
    .end local v8           #reqItemUseJob:Lcom/feelingk/lguiab/manager/task/ReqItemUseJob;
    :cond_8
    sget v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 326
    const-string v0, "IAP Lib purchaseItemList call!"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v3}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->viewItemWholeAuthListJob:Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;

    .line 328
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->viewItemWholeAuthListJob:Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;

    new-array v1, v11, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    sput-boolean v11, Lcom/feelingk/lguiab/LguIAPLib;->purchaseItemListFlag:Z

    goto/16 :goto_1
.end method

.method private static isAvailableLibState()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    if-nez v2, :cond_1

    .line 345
    const-string v0, "IAPLib has not been initialized."

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    move v0, v1

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmPhoneUSIMState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/feelingk/lguiab/util/DeviceUtil;->checkNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 352
    :cond_2
    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\ub124\ud2b8\uc6cc\ud06c \uc0c1\ud0dc\ub97c \ud655\uc778\ud558\uc138\uc694 "

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 353
    goto :goto_0

    .line 358
    :cond_3
    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/feelingk/lguiab/util/DeviceUtil;->checkNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 359
    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/feelingk/lguiab/util/DeviceUtil;->isExistUSIM(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 361
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "\uc624\ub958"

    .line 362
    const-string v3, "\ud655\uc778"

    const-string v4, "USIM\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    .line 361
    invoke-static {v0, v2, v3, v4}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "4G && USIM not exist."

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    move v0, v1

    .line 365
    goto :goto_0

    .line 370
    :cond_4
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmMDN()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, ""

    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmMDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 372
    :cond_5
    const-string v0, "MDN information does not exist."

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    move v0, v1

    .line 373
    goto :goto_0

    .line 376
    :cond_6
    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/feelingk/lguiab/util/DeviceUtil;->isAvailableService(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const-string v0, "Service is not available."

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    move v0, v1

    .line 379
    goto/16 :goto_0
.end method

.method public static lguIABsendItemAuth(Ljava/lang/String;)V
    .locals 1
    .parameter "pID"

    .prologue
    .line 463
    sput-object p0, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    .line 465
    const/4 v0, 0x1

    sput-boolean v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    .line 466
    const/4 v0, 0x3

    sput v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    .line 467
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->serviceStateAvailableCheck()V

    .line 469
    return-void
.end method

.method public static lguIABsendItemWholeAuth()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    sput-boolean v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    .line 451
    const/4 v0, 0x2

    sput v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    .line 452
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->serviceStateAvailableCheck()V

    .line 454
    return-void
.end method

.method public static purchaseProcess(Z)V
    .locals 14
    .parameter "finalVer"

    .prologue
    .line 670
    sput-boolean p0, Lcom/feelingk/lguiab/LguIAPLib;->mfinalVer:Z

    .line 671
    const/4 v8, 0x0

    .line 672
    .local v8, honeyComb:Z
    const/4 v10, 0x0

    .line 675
    .local v10, lock:Ljava/lang/String;
    :try_start_0
    const-string v12, "content://android.lgt.appstore/islock"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 676
    .local v0, CONTENT_URI_ISLOCK:Landroid/net/Uri;
    const-string v12, "content://android.lgt.appstore/password"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 678
    .local v1, CONTENT_URI_PASSWORD:Landroid/net/Uri;
    sget-object v12, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v12}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 679
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 680
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/feelingk/lguiab/LguIAPLib;->mPassword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v0           #CONTENT_URI_ISLOCK:Landroid/net/Uri;
    .end local v1           #CONTENT_URI_PASSWORD:Landroid/net/Uri;
    .end local v2           #cr:Landroid/content/ContentResolver;
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "lock: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 691
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "password: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/feelingk/lguiab/LguIAPLib;->mPassword:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 693
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 694
    .local v6, displayMetrics:Landroid/util/DisplayMetrics;
    sget-object v12, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v12}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 695
    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 696
    .local v4, deviceWidth:I
    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 698
    .local v3, deviceHeight:I
    sget-object v12, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v12}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 699
    .local v11, wm:Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 711
    .local v5, disp:Landroid/view/Display;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Y"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 713
    sget-object v12, Lcom/feelingk/lguiab/LguIAPLib;->buyComfirmDialog:Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;

    if-eqz v12, :cond_0

    .line 714
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissPurchaseDlg()V

    .line 715
    :cond_0
    sget-object v12, Lcom/feelingk/lguiab/LguIAPLib;->twoPopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    if-eqz v12, :cond_1

    .line 716
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissTwoBtnPopupDlg()V

    .line 731
    :cond_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 732
    .local v9, intent:Landroid/content/Intent;
    sget-object v12, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v12}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 733
    const-string v12, "password"

    sget-object v13, Lcom/feelingk/lguiab/LguIAPLib;->mPassword:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v12, "clientListenerKey"

    sget-object v13, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v13}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    sget-object v12, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v12}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    sget v13, Lcom/feelingk/lguiab/LguIAPLib;->mRequest:I

    invoke-virtual {v12, v9, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 768
    .end local v9           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 682
    .end local v3           #deviceHeight:I
    .end local v4           #deviceWidth:I
    .end local v5           #disp:Landroid/view/Display;
    .end local v6           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v11           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v7

    .line 684
    .local v7, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Get Lock Info Error : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 686
    const/4 v10, 0x0

    .line 687
    const/4 v12, 0x0

    sput-object v12, Lcom/feelingk/lguiab/LguIAPLib;->mPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 745
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #deviceHeight:I
    .restart local v4       #deviceWidth:I
    .restart local v5       #disp:Landroid/view/Display;
    .restart local v6       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v11       #wm:Landroid/view/WindowManager;
    :cond_2
    const-string v12, "show Pay Auth Dialog"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 746
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->showPayAuthDlg()V

    goto :goto_1
.end method

.method private static serviceStateAvailableCheck()V
    .locals 3

    .prologue
    .line 238
    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 240
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/feelingk/lguiab/LguIAPLib$1;

    invoke-direct {v1, v0}, Lcom/feelingk/lguiab/LguIAPLib$1;-><init>(Landroid/telephony/TelephonyManager;)V

    .line 260
    const/4 v2, 0x1

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 262
    return-void
.end method

.method public static setDialogType(Ljava/lang/String;)V
    .locals 0
    .parameter "mDialogType"

    .prologue
    .line 401
    sput-object p0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public static setFlowType(Ljava/lang/String;)V
    .locals 0
    .parameter "mDialogType"

    .prologue
    .line 417
    sput-object p0, Lcom/feelingk/lguiab/LguIAPLib;->flowType:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public static showListDlg(Landroid/content/Context;Ljava/util/List;I)V
    .locals 3
    .parameter "mContext"
    .parameter
    .parameter "listSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    sput-object p1, Lcom/feelingk/lguiab/LguIAPLib;->mList:Ljava/util/List;

    .line 568
    sput p2, Lcom/feelingk/lguiab/LguIAPLib;->mListSize:I

    .line 569
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->purchaseListdlg:Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;

    .line 570
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->purchaseListdlg:Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->purchaseListdlg:Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->show()V

    .line 574
    return-void
.end method

.method public static showPayAuthDlg()V
    .locals 10

    .prologue
    .line 653
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean v2, Lcom/feelingk/lguiab/LguIAPLib;->mfinalVer:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v3}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpIp()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v6}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpPort()I

    move-result v6

    sget-object v7, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    .line 654
    sget-object v8, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    sget-object v9, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v9}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 653
    invoke-direct/range {v0 .. v9}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->payAuthDialog:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

    .line 655
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->payAuthDialog:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 656
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->payAuthDialog:Lcom/feelingk/lguiab/manager/gui/payAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->show()V

    .line 658
    return-void
.end method

.method public static showPopPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/ProductItemInfo;)V
    .locals 10
    .parameter "pID"
    .parameter "bpUri"
    .parameter "bpData"
    .parameter "result"

    .prologue
    .line 533
    sput-object p0, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    .line 534
    sput-object p1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    .line 535
    sput-object p2, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    .line 536
    sput-object p3, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseResult:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    .line 538
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->isAvailableLibState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string v0, "showPopPurchaseDlg call!"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 542
    if-nez p1, :cond_1

    const-string p1, ""

    .line 543
    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .line 546
    :cond_2
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 547
    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v4}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpIp()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpPort()I

    move-result v5

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    sget-object v7, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    .line 548
    sget-object v8, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseResult:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    sget-object v9, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v9}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 546
    invoke-direct/range {v0 .. v9}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/ProductItemInfo;Ljava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->buyComfirmDialog:Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;

    .line 549
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->buyComfirmDialog:Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->buyComfirmDialog:Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->show()V

    goto :goto_0
.end method

.method public static showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "title"
    .parameter "buttonText"
    .parameter "message"

    .prologue
    .line 588
    sput-object p1, Lcom/feelingk/lguiab/LguIAPLib;->mPopTitle:Ljava/lang/String;

    .line 589
    sput-object p2, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnYesText:Ljava/lang/String;

    .line 590
    sput-object p3, Lcom/feelingk/lguiab/LguIAPLib;->mPopMsg:Ljava/lang/String;

    .line 592
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    .line 593
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->show()V

    .line 595
    const-string v0, "PopupDlgOneBtn"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public static showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "buttonText"
    .parameter "message"

    .prologue
    .line 606
    sput-object p1, Lcom/feelingk/lguiab/LguIAPLib;->mPopTitle:Ljava/lang/String;

    .line 607
    sput-object p2, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnYesText:Ljava/lang/String;

    .line 608
    sput-object p3, Lcom/feelingk/lguiab/LguIAPLib;->mPopMsg:Ljava/lang/String;

    .line 610
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    .line 611
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->onePopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->show()V

    .line 613
    const-string v0, "PopupDlgOneBtn"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public static showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "btnYesText"
    .parameter "btnNoText"
    .parameter "finalVerCheck"
    .parameter "clientListenerKey"

    .prologue
    .line 634
    sput-object p1, Lcom/feelingk/lguiab/LguIAPLib;->mPopTitle:Ljava/lang/String;

    .line 635
    sput-object p3, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnYesText:Ljava/lang/String;

    .line 636
    sput-object p4, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnNoText:Ljava/lang/String;

    .line 637
    sput-object p2, Lcom/feelingk/lguiab/LguIAPLib;->mPopMsg:Ljava/lang/String;

    .line 638
    sput-boolean p5, Lcom/feelingk/lguiab/LguIAPLib;->mfinalVer:Z

    .line 639
    sput-object p6, Lcom/feelingk/lguiab/LguIAPLib;->mClientListenerKey:Ljava/lang/String;

    .line 641
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->twoPopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    .line 643
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->twoPopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 644
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->twoPopupDialog:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->show()V

    .line 646
    return-void
.end method


# virtual methods
.method public LguIAPLibInit(Lcom/feelingk/lguiab/vo/IAPLibSetting;)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 191
    sput-object p1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    .line 193
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/DeviceUtil;->isAvailableService(Landroid/content/Context;)Z

    .line 194
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/DeviceUtil;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    .line 195
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/DeviceUtil;->getAnyDensityState(Landroid/content/Context;)Z

    .line 196
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/DeviceUtil;->getPixels(Landroid/content/Context;)V

    .line 199
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    iget-object v0, v0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->clientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->listenerKey:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    .line 201
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/PackageInfoUtil;->isAvailablePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const-string v0, "need to AndroidManifest Permission Set Check!!"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Manifest \ud37c\ubbf8\uc158 \uc124\uc815 \ud655\uc778\ud558\uc138\uc694 "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IAP-Lib Init success! ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".java), IAP-Lib Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public lguIABpopPurchaseDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/IAPLibSetting;)V
    .locals 1
    .parameter "context"
    .parameter "appId"
    .parameter "pId"
    .parameter "bpUri"
    .parameter "bpData"
    .parameter "setting"

    .prologue
    const/4 v0, 0x1

    .line 434
    sput-object p2, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseAPPID:Ljava/lang/String;

    .line 435
    sput-object p3, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    .line 436
    sput-object p4, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    .line 437
    sput-object p5, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    .line 439
    sput-boolean v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    .line 440
    sput v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    .line 441
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->serviceStateAvailableCheck()V

    .line 443
    return-void
.end method

.method public lguIABpurchaseItemList()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x1

    sput-boolean v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    .line 479
    const/4 v0, 0x5

    sput v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    .line 480
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->serviceStateAvailableCheck()V

    .line 482
    return-void
.end method

.method public lguIABsendBPData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .parameter "pID"
    .parameter "sendData"

    .prologue
    const/4 v8, 0x0

    .line 508
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->isAvailableLibState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    :goto_0
    return-object v8

    .line 510
    :cond_0
    const-string v1, "IAP Lib sendBPData call!"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcom/feelingk/lguiab/manager/task/BPDataJob;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/DeviceUtil;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpIp()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpPort()I

    move-result v7

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/feelingk/lguiab/manager/task/BPDataJob;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 515
    .local v0, bpDataJob:Lcom/feelingk/lguiab/manager/task/BPDataJob;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/task/BPDataJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public lguIABsendItemUse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pID"
    .parameter "appID"

    .prologue
    .line 491
    sput-object p1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    .line 492
    sput-object p2, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseAPPID:Ljava/lang/String;

    .line 494
    const/4 v0, 0x1

    sput-boolean v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimCheckFlag:Z

    .line 495
    const/4 v0, 0x4

    sput v0, Lcom/feelingk/lguiab/LguIAPLib;->mUsimPurchaseItemWorkFlow:I

    .line 496
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->serviceStateAvailableCheck()V

    .line 498
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 820
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 822
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 823
    const v2, 0xd7115

    if-ne p1, v2, :cond_2

    .line 824
    sget-boolean v2, Lcom/feelingk/lguiab/LguIAPLib;->mfinalVer:Z

    if-eqz v2, :cond_1

    .line 825
    new-instance v0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 826
    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v4}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpIp()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpPort()I

    move-result v5

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    .line 827
    sget-object v7, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    sget-object v8, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v8}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 825
    invoke-direct/range {v0 .. v8}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .local v0, finalVerpurchaseClick:Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v10

    invoke-virtual {v0, v2}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 840
    .end local v0           #finalVerpurchaseClick:Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    new-instance v1, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 832
    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v3}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpIp()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v6}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpPort()I

    move-result v6

    sget-object v7, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    .line 833
    sget-object v8, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    sget-object v9, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v9}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 831
    invoke-direct/range {v1 .. v9}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .local v1, purchaseClick:Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 838
    .end local v1           #purchaseClick:Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;
    :cond_2
    const-string v2, "intent"

    const-string v3, "error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IAPLib onPause\t[DLG TYPE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PurchaseDlg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissPurchaseDlg()V

    .line 177
    :cond_0
    :goto_0
    sput-boolean v3, Lcom/feelingk/lguiab/LguIAPLib;->popPurchaseDlgFlag:Z

    .line 178
    sput-boolean v3, Lcom/feelingk/lguiab/LguIAPLib;->purchaseItemListFlag:Z

    .line 180
    invoke-virtual {p0}, Lcom/feelingk/lguiab/LguIAPLib;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getDialogType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "None"

    if-eq v0, v1, :cond_1

    .line 182
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 185
    :cond_1
    return-void

    .line 151
    :cond_2
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PurchaseListDlg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissShowListDlg()V

    goto :goto_0

    .line 154
    :cond_3
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PopupDlgOneBtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissOneBtnPopupDlg()V

    goto :goto_0

    .line 157
    :cond_4
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PopupDlgTwoBtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissTwoBtnPopupDlg()V

    goto :goto_0

    .line 160
    :cond_5
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "InappLockState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->lockPopup:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->lockPopup:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    goto :goto_0

    .line 163
    :cond_6
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "ProgressDlg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 164
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 165
    sget-boolean v0, Lcom/feelingk/lguiab/LguIAPLib;->popPurchaseDlgFlag:Z

    if-eqz v0, :cond_8

    .line 166
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->viewBuyCheck:Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;

    invoke-virtual {v0, v3}, Lcom/feelingk/lguiab/manager/task/ViewBuyCheckJob;->cancel(Z)Z

    .line 172
    :cond_7
    :goto_1
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->listenerKey:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    const/4 v1, 0x1

    const/16 v2, 0x232b

    invoke-interface {v0, v1, v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonError(II)V

    goto :goto_0

    .line 168
    :cond_8
    sget-boolean v0, Lcom/feelingk/lguiab/LguIAPLib;->purchaseItemListFlag:Z

    if-eqz v0, :cond_7

    .line 169
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->viewItemWholeAuthListJob:Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;

    invoke-virtual {v0, v3}, Lcom/feelingk/lguiab/manager/task/ViewItemWholeAuthListJob;->cancel(Z)Z

    goto :goto_1

    .line 174
    :cond_9
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PayAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissPayAuthDlg()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 11

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IAPLib onResume\t[DLG TYPE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 112
    :try_start_0
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PurchaseDlg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseResult:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/feelingk/lguiab/LguIAPLib;->showPopPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/ProductItemInfo;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PurchaseListDlg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mList:Ljava/util/List;

    sget v2, Lcom/feelingk/lguiab/LguIAPLib;->mListSize:I

    invoke-static {v0, v1, v2}, Lcom/feelingk/lguiab/LguIAPLib;->showListDlg(Landroid/content/Context;Ljava/util/List;I)V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 118
    :cond_2
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PopupDlgOneBtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mPopTitle:Ljava/lang/String;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnYesText:Ljava/lang/String;

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mPopMsg:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PopupDlgTwoBtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mPopTitle:Ljava/lang/String;

    sget-object v2, Lcom/feelingk/lguiab/LguIAPLib;->mPopMsg:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnYesText:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/lguiab/LguIAPLib;->mPopBtnNoText:Ljava/lang/String;

    sget-boolean v5, Lcom/feelingk/lguiab/LguIAPLib;->mfinalVer:Z

    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/feelingk/lguiab/LguIAPLib;->showPopupDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_4
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "InappLockState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    sget-object v1, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean v2, Lcom/feelingk/lguiab/LguIAPLib;->mfinalVer:Z

    sget-object v3, Lcom/feelingk/lguiab/LguIAPLib;->mPassword:Ljava/lang/String;

    .line 126
    sget-object v4, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v4}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getAppId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/feelingk/lguiab/LguIAPLib;->mPurchasePID:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v6}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpIp()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v7}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getBpPort()I

    move-result v7

    sget-object v8, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpUri:Ljava/lang/String;

    .line 127
    sget-object v9, Lcom/feelingk/lguiab/LguIAPLib;->mPurchaseBpData:Ljava/lang/String;

    sget-object v10, Lcom/feelingk/lguiab/LguIAPLib;->mSetting:Lcom/feelingk/lguiab/vo/IAPLibSetting;

    invoke-virtual {v10}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    .line 125
    invoke-direct/range {v0 .. v10}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/LguIAPLib;->lockPopup:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    .line 129
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->lockPopup:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->lockPopup:Lcom/feelingk/lguiab/manager/gui/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->show()V

    goto/16 :goto_0

    .line 133
    :cond_5
    sget-object v0, Lcom/feelingk/lguiab/LguIAPLib;->dlgType:Ljava/lang/String;

    const-string v1, "PayAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->showPayAuthDlg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
