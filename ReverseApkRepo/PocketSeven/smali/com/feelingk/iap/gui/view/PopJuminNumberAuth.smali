.class public Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;
.super Landroid/app/Dialog;
.source "PopJuminNumberAuth.java"


# instance fields
.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V
    .locals 2
    .parameter "context"
    .parameter "themeSytle"
    .parameter "cb"
    .parameter "isDeviceTab"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 12
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 13
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 17
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 18
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupAuthDialog()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->dismiss()V

    .line 58
    return-void
.end method

.method public InflateView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml_kt_lg/pop_Juminnumber.xml"

    invoke-virtual {v0, v1, v2, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->setContentView(Landroid/view/View;)V

    .line 43
    new-instance v0, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth$1;-><init>(Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 49
    return-void
.end method

.method public ShowPopupAuthDialog()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->show()V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 23
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 25
    const/4 v0, 0x1

    .line 28
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
    .line 34
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method