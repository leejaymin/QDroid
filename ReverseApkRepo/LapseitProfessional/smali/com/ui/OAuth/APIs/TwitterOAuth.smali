.class public final enum Lcom/ui/OAuth/APIs/TwitterOAuth;
.super Ljava/lang/Enum;
.source "TwitterOAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;,
        Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;,
        Lcom/ui/OAuth/APIs/TwitterOAuth$TwitterCallback;,
        Lcom/ui/OAuth/APIs/TwitterOAuth$VerifyCredentials;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/OAuth/APIs/TwitterOAuth;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTH_TOKEN:Ljava/lang/String; = "twitterAuthToken"

.field public static final AUTH_TOKEN_SECRET:Ljava/lang/String; = "twitterAuthTokenSecret"

.field static final CALLBACK:Ljava/lang/String; = "http://www.lapseit.com/oauth.html"

.field static final CONSUMER_KEY:Ljava/lang/String; = "zZPcv0DhUK9xHmsb5gIAw"

.field static final CONSUMER_SECRET:Ljava/lang/String; = "cbsSE2tDwXZ03aKJgMQNVdYTCnVQFJlHm2XSXBPrxz4"

.field private static final synthetic ENUM$VALUES:[Lcom/ui/OAuth/APIs/TwitterOAuth; = null

.field public static final enum INSTANCE:Lcom/ui/OAuth/APIs/TwitterOAuth; = null

.field static final QUERY_AUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field static final QUERY_AUTH_TOKEN_SECRET:Ljava/lang/String; = "oauth_token_secret"

.field static final QUERY_REQUEST_TOKEN:Ljava/lang/String; = "oauth_token"

.field static final QUERY_VERIFIER_TOKEN:Ljava/lang/String; = "oauth_verifier"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/ui/OAuth/APIs/TwitterOAuth;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/ui/OAuth/APIs/TwitterOAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/OAuth/APIs/TwitterOAuth;->INSTANCE:Lcom/ui/OAuth/APIs/TwitterOAuth;

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ui/OAuth/APIs/TwitterOAuth;

    sget-object v1, Lcom/ui/OAuth/APIs/TwitterOAuth;->INSTANCE:Lcom/ui/OAuth/APIs/TwitterOAuth;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ui/OAuth/APIs/TwitterOAuth;->ENUM$VALUES:[Lcom/ui/OAuth/APIs/TwitterOAuth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected static final buildService()Lorg/scribe/oauth/OAuthService;
    .locals 3

    .prologue
    .line 43
    new-instance v1, Lorg/scribe/builder/ServiceBuilder;

    invoke-direct {v1}, Lorg/scribe/builder/ServiceBuilder;-><init>()V

    .line 44
    const-class v2, Lorg/scribe/builder/api/TwitterApi;

    invoke-virtual {v1, v2}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v1

    .line 45
    const-string v2, "zZPcv0DhUK9xHmsb5gIAw"

    invoke-virtual {v1, v2}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v1

    .line 46
    const-string v2, "cbsSE2tDwXZ03aKJgMQNVdYTCnVQFJlHm2XSXBPrxz4"

    invoke-virtual {v1, v2}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v1

    .line 47
    const-string v2, "http://www.lapseit.com/oauth.html"

    invoke-virtual {v1, v2}, Lorg/scribe/builder/ServiceBuilder;->callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v0

    .line 49
    .local v0, builder:Lorg/scribe/builder/ServiceBuilder;
    invoke-virtual {v0}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/OAuth/APIs/TwitterOAuth;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/OAuth/APIs/TwitterOAuth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/OAuth/APIs/TwitterOAuth;

    return-object v0
.end method

.method public static values()[Lcom/ui/OAuth/APIs/TwitterOAuth;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/OAuth/APIs/TwitterOAuth;->ENUM$VALUES:[Lcom/ui/OAuth/APIs/TwitterOAuth;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/OAuth/APIs/TwitterOAuth;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public requestAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "requestTokenValue"
    .parameter "verifierTokenValue"

    .prologue
    .line 59
    new-instance v0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;-><init>(Lcom/ui/OAuth/APIs/TwitterOAuth;Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method public requestVerifierToken()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;-><init>(Lcom/ui/OAuth/APIs/TwitterOAuth;Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ui/OAuth/OAuthCallback;

    const/4 v2, 0x0

    new-instance v3, Lcom/ui/OAuth/APIs/TwitterOAuth$TwitterCallback;

    invoke-direct {v3, p0}, Lcom/ui/OAuth/APIs/TwitterOAuth$TwitterCallback;-><init>(Lcom/ui/OAuth/APIs/TwitterOAuth;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public verifyCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/ui/OAuth/OAuthCallback;)V
    .locals 3
    .parameter "authTokenValue"
    .parameter "authTokenSecretValue"
    .parameter "callback"

    .prologue
    .line 63
    new-instance v0, Lcom/ui/OAuth/APIs/TwitterOAuth$VerifyCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ui/OAuth/APIs/TwitterOAuth$VerifyCredentials;-><init>(Lcom/ui/OAuth/APIs/TwitterOAuth;Lcom/ui/OAuth/APIs/TwitterOAuth$VerifyCredentials;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ui/OAuth/APIs/TwitterOAuth$VerifyCredentials;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method
