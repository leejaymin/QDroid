.class public Lcom/feelingk/iap/gui/view/PopupDialog;
.super Landroid/app/Dialog;
.source "PopupDialog.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;IZ)V
    .locals 1
    .parameter "context"
    .parameter "cb"
    .parameter "themeStyle"
    .parameter "isDeviceTab"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 22
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    .line 28
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-direct {v0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 30
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/feelingk/iap/gui/view/PopupDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupDialog()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupDialog;->dismiss()V

    .line 102
    return-void
.end method

.method public InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "state"
    .parameter "message"
    .parameter "clickListener"

    .prologue
    .line 56
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 58
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getIsOTPAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOTPPurchaseSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/otpCommonPopup.xml"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setContentView(Landroid/view/View;)V

    .line 63
    :goto_0
    const/16 v0, 0x69

    if-ne p1, v0, :cond_1

    .line 64
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 93
    :goto_1
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/commonPopup.xml"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupDialog$2;-><init>(Lcom/feelingk/iap/gui/view/PopupDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1
.end method

.method public ShowPopupDialog()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupDialog;->show()V

    .line 97
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 36
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 38
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 47
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
