.class final Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
