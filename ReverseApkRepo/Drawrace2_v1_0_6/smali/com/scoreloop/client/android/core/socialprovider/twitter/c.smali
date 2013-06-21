.class final Lcom/scoreloop/client/android/core/socialprovider/twitter/c;
.super Lcom/scoreloop/client/android/core/socialprovider/AuthViewController;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/socialprovider/AuthViewController;-><init>(Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 36
    new-instance v0, Lcom/scoreloop/client/android/core/util/OAuthBuilder;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;-><init>()V

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string v2, "oauth_token"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "http://twitter.com/oauth/authorize"

    invoke-virtual {v0, v2, v1}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    invoke-direct {v1, p1, p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/socialprovider/twitter/c;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    .line 42
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->f()V

    .line 43
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->setCancelable(Z)V

    .line 44
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->setCanceledOnTouchOutside(Z)V

    .line 45
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    new-instance v2, Lcom/scoreloop/client/android/core/socialprovider/twitter/c$1;

    invoke-direct {v2}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    new-instance v2, Lcom/scoreloop/client/android/core/socialprovider/twitter/c$2;

    invoke-direct {v2}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c$2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 60
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->c(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/a;->show()V

    .line 62
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->a:Ljava/lang/String;

    .line 66
    return-void
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->a:Ljava/lang/String;

    return-object v0
.end method
