.class Lcom/ui/OAuth/APIs/TwitterOAuth$TwitterCallback;
.super Lcom/ui/OAuth/OAuthCallback;
.source "TwitterOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/APIs/TwitterOAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TwitterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/OAuth/APIs/TwitterOAuth;


# direct methods
.method constructor <init>(Lcom/ui/OAuth/APIs/TwitterOAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$TwitterCallback;->this$0:Lcom/ui/OAuth/APIs/TwitterOAuth;

    invoke-direct {p0}, Lcom/ui/OAuth/OAuthCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public urlReceived(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 221
    const-string v3, "oauth_token"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "oauth_verifier"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, response:Landroid/net/Uri;
    const-string v3, "oauth_token"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, requestTokenValue:Ljava/lang/String;
    const-string v3, "oauth_verifier"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, verifierTokenValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$TwitterCallback;->this$0:Lcom/ui/OAuth/APIs/TwitterOAuth;

    invoke-virtual {v3, v0, v2}, Lcom/ui/OAuth/APIs/TwitterOAuth;->requestAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v3, 0x1

    .line 229
    .end local v0           #requestTokenValue:Ljava/lang/String;
    .end local v1           #response:Landroid/net/Uri;
    .end local v2           #verifierTokenValue:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
