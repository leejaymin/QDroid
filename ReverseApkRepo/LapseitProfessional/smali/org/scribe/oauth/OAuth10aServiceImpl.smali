.class public Lorg/scribe/oauth/OAuth10aServiceImpl;
.super Ljava/lang/Object;
.source "OAuth10aServiceImpl.java"

# interfaces
.implements Lorg/scribe/oauth/OAuthService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/scribe/oauth/OAuth10aServiceImpl$1;
    }
.end annotation


# static fields
.field private static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private api:Lorg/scribe/builder/api/DefaultApi10a;

.field private config:Lorg/scribe/model/OAuthConfig;


# direct methods
.method public constructor <init>(Lorg/scribe/builder/api/DefaultApi10a;Lorg/scribe/model/OAuthConfig;)V
    .locals 0
    .parameter "api"
    .parameter "config"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    .line 29
    iput-object p2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    .line 30
    return-void
.end method

.method private addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V
    .locals 2
    .parameter "request"
    .parameter "token"

    .prologue
    .line 47
    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getTimestampService()Lorg/scribe/services/TimestampService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/TimestampService;->getTimestampInSeconds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getTimestampService()Lorg/scribe/services/TimestampService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/TimestampService;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getSignatureService()Lorg/scribe/services/SignatureService;

    move-result-object v1

    invoke-interface {v1}, Lorg/scribe/services/SignatureService;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "oauth_version"

    invoke-virtual {p0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v0}, Lorg/scribe/model/OAuthConfig;->hasScope()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "scope"

    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v1}, Lorg/scribe/model/OAuthConfig;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    const-string v0, "oauth_signature"

    invoke-direct {p0, p1, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->getSignature(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private addSignature(Lorg/scribe/model/OAuthRequest;)V
    .locals 5
    .parameter "request"

    .prologue
    .line 104
    sget-object v3, Lorg/scribe/oauth/OAuth10aServiceImpl$1;->$SwitchMap$org$scribe$model$SignatureType:[I

    iget-object v4, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v4}, Lorg/scribe/model/OAuthConfig;->getSignatureType()Lorg/scribe/model/SignatureType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/scribe/model/SignatureType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getHeaderExtractor()Lorg/scribe/extractors/HeaderExtractor;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/scribe/extractors/HeaderExtractor;->extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, oauthHeader:Ljava/lang/String;
    const-string v3, "Authorization"

    invoke-virtual {p1, v3, v2}, Lorg/scribe/model/OAuthRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v2           #oauthHeader:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/scribe/model/OAuthRequest;->addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSignature(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 4
    .parameter "request"
    .parameter "token"

    .prologue
    .line 98
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getBaseStringExtractor()Lorg/scribe/extractors/BaseStringExtractor;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/scribe/extractors/BaseStringExtractor;->extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, baseString:Ljava/lang/String;
    iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v1}, Lorg/scribe/builder/api/DefaultApi10a;->getSignatureService()Lorg/scribe/services/SignatureService;

    move-result-object v1

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v2}, Lorg/scribe/model/OAuthConfig;->getApiSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/scribe/model/Token;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/scribe/services/SignatureService;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;
    .locals 4
    .parameter "requestToken"
    .parameter "verifier"

    .prologue
    .line 61
    new-instance v0, Lorg/scribe/model/OAuthRequest;

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenVerb()Lorg/scribe/model/Verb;

    move-result-object v2

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 62
    .local v0, request:Lorg/scribe/model/OAuthRequest;
    const-string v2, "oauth_token"

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "oauth_verifier"

    invoke-virtual {p2}, Lorg/scribe/model/Verifier;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, v0, p1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    .line 65
    invoke-direct {p0, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addSignature(Lorg/scribe/model/OAuthRequest;)V

    .line 66
    invoke-virtual {v0}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v1

    .line 67
    .local v1, response:Lorg/scribe/model/Response;
    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;

    move-result-object v2

    invoke-virtual {v1}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/scribe/extractors/AccessTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;

    move-result-object v2

    return-object v2
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 93
    iget-object v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v0, p1}, Lorg/scribe/builder/api/DefaultApi10a;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestToken()Lorg/scribe/model/Token;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lorg/scribe/model/OAuthRequest;

    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenVerb()Lorg/scribe/model/Verb;

    move-result-object v2

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v3}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 38
    .local v0, request:Lorg/scribe/model/OAuthRequest;
    const-string v2, "oauth_callback"

    iget-object v3, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->config:Lorg/scribe/model/OAuthConfig;

    invoke-virtual {v3}, Lorg/scribe/model/OAuthConfig;->getCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v2, Lorg/scribe/model/OAuthConstants;->EMPTY_TOKEN:Lorg/scribe/model/Token;

    invoke-direct {p0, v0, v2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    .line 40
    invoke-direct {p0, v0}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addSignature(Lorg/scribe/model/OAuthRequest;)V

    .line 41
    invoke-virtual {v0}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v1

    .line 42
    .local v1, response:Lorg/scribe/model/Response;
    iget-object v2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl;->api:Lorg/scribe/builder/api/DefaultApi10a;

    invoke-virtual {v2}, Lorg/scribe/builder/api/DefaultApi10a;->getRequestTokenExtractor()Lorg/scribe/extractors/RequestTokenExtractor;

    move-result-object v2

    invoke-virtual {v1}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/scribe/extractors/RequestTokenExtractor;->extract(Ljava/lang/String;)Lorg/scribe/model/Token;

    move-result-object v2

    return-object v2
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "1.0"

    return-object v0
.end method

.method public signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V
    .locals 2
    .parameter "token"
    .parameter "request"

    .prologue
    .line 75
    const-string v0, "oauth_token"

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/scribe/model/OAuthRequest;->addOAuthParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p2, p1}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addOAuthParams(Lorg/scribe/model/OAuthRequest;Lorg/scribe/model/Token;)V

    .line 77
    invoke-direct {p0, p2}, Lorg/scribe/oauth/OAuth10aServiceImpl;->addSignature(Lorg/scribe/model/OAuthRequest;)V

    .line 78
    return-void
.end method
