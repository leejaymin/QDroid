.class public Ldq;
.super Ldh;


# direct methods
.method public constructor <init>(Lbw;)V
    .locals 0

    invoke-direct {p0, p1}, Ldh;-><init>(Lbw;)V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
