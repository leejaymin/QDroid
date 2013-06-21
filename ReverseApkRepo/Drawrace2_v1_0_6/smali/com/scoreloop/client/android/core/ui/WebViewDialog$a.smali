.class final Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/ui/WebViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Lcom/scoreloop/client/android/core/ui/WebViewDialog;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/ui/WebViewDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;-><init>(Lcom/scoreloop/client/android/core/ui/WebViewDialog;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/ui/WebViewDialog;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->b:Lcom/scoreloop/client/android/core/ui/WebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->b:Lcom/scoreloop/client/android/core/ui/WebViewDialog;

    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->b(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->a:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->b:Lcom/scoreloop/client/android/core/ui/WebViewDialog;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->b()V

    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->a:Z

    .line 42
    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->a:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->b:Lcom/scoreloop/client/android/core/ui/WebViewDialog;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->d()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->a:Z

    .line 50
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;->b:Lcom/scoreloop/client/android/core/ui/WebViewDialog;

    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
