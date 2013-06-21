.class Lcom/ui/OAuth/APIs/FacebookOAuth$FacebookCallback;
.super Lcom/ui/OAuth/OAuthCallback;
.source "FacebookOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/APIs/FacebookOAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FacebookCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;


# direct methods
.method constructor <init>(Lcom/ui/OAuth/APIs/FacebookOAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$FacebookCallback;->this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;

    invoke-direct {p0}, Lcom/ui/OAuth/OAuthCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public urlReceived(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 215
    const-string v2, "code="

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "trace"

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 218
    .local v1, response:Landroid/net/Uri;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, codeValue:Ljava/lang/String;
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bli "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$FacebookCallback;->this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;

    invoke-virtual {v2, v0}, Lcom/ui/OAuth/APIs/FacebookOAuth;->requestAccessToken(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x1

    .line 224
    .end local v0           #codeValue:Ljava/lang/String;
    .end local v1           #response:Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
