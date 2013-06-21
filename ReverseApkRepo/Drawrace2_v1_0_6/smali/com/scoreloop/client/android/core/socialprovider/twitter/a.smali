.class final Lcom/scoreloop/client/android/core/socialprovider/twitter/a;
.super Lcom/scoreloop/client/android/core/ui/WebViewDialog;
.source "SourceFile"


# instance fields
.field private final b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/socialprovider/twitter/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    iput-object p2, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    .line 19
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->a()Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;->e_()V

    .line 64
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->g()V

    .line 65
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->dismiss()V

    .line 66
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->a()Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unparsable twitter response"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;->b(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->g()V

    .line 71
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->dismiss()V

    .line 72
    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 25
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www.scoreloop.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/twitter/oauth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    aget-object v1, v0, v4

    .line 33
    const-string v2, "done"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->h()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 38
    :cond_1
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 39
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 40
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 41
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 42
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_2
    const-string v2, "oauth_token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->a()Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;->b()V

    .line 48
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->dismiss()V

    goto :goto_0

    .line 51
    :cond_3
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->i()V

    goto :goto_0

    .line 56
    :cond_4
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->i()V

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->h()V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
