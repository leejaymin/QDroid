.class public Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;
.super Lcom/scoreloop/client/android/core/ui/WebViewDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;

.field private final d:Ljava/lang/String;

.field private e:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 46
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url and delegate arguments must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    const-string v0, "Payment"

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->setCancelable(Z)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->d:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->c:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;

    .line 59
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$1;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 71
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$2;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;)Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->c:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->b:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->c:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;->d_()V

    .line 105
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    const/4 v1, 0x0

    .line 143
    const-string v2, "scoreloop://payments/booked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->OK:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    .line 151
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 152
    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->b:Z

    .line 153
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->dismiss()V

    .line 154
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->c:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;)V

    .line 155
    const/4 v0, 0x1

    .line 157
    :cond_1
    return v0

    .line 145
    :cond_2
    const-string v2, "scoreloop://payments/failed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->FAILED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    goto :goto_0

    .line 147
    :cond_3
    const-string v2, "scoreloop://payments/canceled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "scoreloop://payments/created"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    :cond_4
    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->e:Landroid/app/ProgressDialog;

    .line 113
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Loading..."

    const-string v2, "Please wait!"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->e:Landroid/app/ProgressDialog;

    .line 163
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Leave Payment?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$4;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$4;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$3;

    invoke-direct {v3}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 126
    invoke-super {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->onStart()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->b:Z

    .line 128
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->d:Ljava/lang/String;

    const-string v1, "scoreloop_redirect"

    const-string v2, "true"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    return-void
.end method
