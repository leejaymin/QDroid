.class public final enum Lcom/ui/OAuth/APIs/FacebookOAuth;
.super Ljava/lang/Enum;
.source "FacebookOAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/OAuth/APIs/FacebookOAuth$FacebookCallback;,
        Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;,
        Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;,
        Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/OAuth/APIs/FacebookOAuth;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "facebookAccessToken"

.field private static final API_KEY:Ljava/lang/String; = "112175132190726"

.field private static final API_SECRET:Ljava/lang/String; = "7d4a586ec0a678ca355fcfa77be3c4e1"

.field private static final CALLBACK_URL:Ljava/lang/String; = "http://www.lapseit.com/"

.field private static final EMPTY_TOKEN:Lorg/scribe/model/Token; = null

.field private static final synthetic ENUM$VALUES:[Lcom/ui/OAuth/APIs/FacebookOAuth; = null

.field public static final enum INSTANCE:Lcom/ui/OAuth/APIs/FacebookOAuth; = null

.field private static final PROTECTED_RESOURCE_URL:Ljava/lang/String; = "https://graph.facebook.com/me"

.field private static final QUERY_CODE_TOKEN:Ljava/lang/String; = "code"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/ui/OAuth/APIs/FacebookOAuth;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/ui/OAuth/APIs/FacebookOAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/OAuth/APIs/FacebookOAuth;->INSTANCE:Lcom/ui/OAuth/APIs/FacebookOAuth;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ui/OAuth/APIs/FacebookOAuth;

    sget-object v1, Lcom/ui/OAuth/APIs/FacebookOAuth;->INSTANCE:Lcom/ui/OAuth/APIs/FacebookOAuth;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ui/OAuth/APIs/FacebookOAuth;->ENUM$VALUES:[Lcom/ui/OAuth/APIs/FacebookOAuth;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/ui/OAuth/APIs/FacebookOAuth;->EMPTY_TOKEN:Lorg/scribe/model/Token;

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2()Lorg/scribe/model/Token;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/ui/OAuth/APIs/FacebookOAuth;->EMPTY_TOKEN:Lorg/scribe/model/Token;

    return-object v0
.end method

.method protected static final buildService()Lorg/scribe/oauth/OAuthService;
    .locals 3

    .prologue
    .line 42
    new-instance v1, Lorg/scribe/builder/ServiceBuilder;

    invoke-direct {v1}, Lorg/scribe/builder/ServiceBuilder;-><init>()V

    .line 43
    const-class v2, Lorg/scribe/builder/api/FacebookApi;

    invoke-virtual {v1, v2}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v1

    .line 44
    const-string v2, "112175132190726"

    invoke-virtual {v1, v2}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v1

    .line 45
    const-string v2, "7d4a586ec0a678ca355fcfa77be3c4e1"

    invoke-virtual {v1, v2}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v1

    .line 46
    const-string v2, "http://www.lapseit.com/"

    invoke-virtual {v1, v2}, Lorg/scribe/builder/ServiceBuilder;->callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v0

    .line 48
    .local v0, builder:Lorg/scribe/builder/ServiceBuilder;
    invoke-virtual {v0}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/OAuth/APIs/FacebookOAuth;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/OAuth/APIs/FacebookOAuth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/OAuth/APIs/FacebookOAuth;

    return-object v0
.end method

.method public static values()[Lcom/ui/OAuth/APIs/FacebookOAuth;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/OAuth/APIs/FacebookOAuth;->ENUM$VALUES:[Lcom/ui/OAuth/APIs/FacebookOAuth;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/OAuth/APIs/FacebookOAuth;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public requestAccessToken(Ljava/lang/String;)V
    .locals 3
    .parameter "verifierCodeValue"

    .prologue
    .line 58
    new-instance v0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;-><init>(Lcom/ui/OAuth/APIs/FacebookOAuth;Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method

.method public requestVerifierToken()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;-><init>(Lcom/ui/OAuth/APIs/FacebookOAuth;Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ui/OAuth/OAuthCallback;

    const/4 v2, 0x0

    new-instance v3, Lcom/ui/OAuth/APIs/FacebookOAuth$FacebookCallback;

    invoke-direct {v3, p0}, Lcom/ui/OAuth/APIs/FacebookOAuth$FacebookCallback;-><init>(Lcom/ui/OAuth/APIs/FacebookOAuth;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method public verifyCredentials(Ljava/lang/String;Lcom/ui/OAuth/OAuthCallback;)V
    .locals 3
    .parameter "authCodeValue"
    .parameter "callback"

    .prologue
    .line 62
    new-instance v0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;-><init>(Lcom/ui/OAuth/APIs/FacebookOAuth;Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method
