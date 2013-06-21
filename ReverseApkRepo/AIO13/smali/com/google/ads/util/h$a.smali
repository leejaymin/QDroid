.class public Lcom/google/ads/util/h$a;
.super Lcom/google/ads/util/g$a;


# direct methods
.method public constructor <init>(Lcom/google/ads/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/util/g$a;-><init>(Lcom/google/ads/m;)V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
