.class public Lorg/scribe/model/OAuthConfig;
.super Ljava/lang/Object;
.source "OAuthConfig.java"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final apiSecret:Ljava/lang/String;

.field private final callback:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final signatureType:Lorg/scribe/model/SignatureType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "secret"

    .prologue
    const/4 v3, 0x0

    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/scribe/model/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "secret"
    .parameter "callback"
    .parameter "type"
    .parameter "scope"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/scribe/model/OAuthConfig;->apiKey:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/scribe/model/OAuthConfig;->apiSecret:Ljava/lang/String;

    .line 25
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Lorg/scribe/model/OAuthConfig;->callback:Ljava/lang/String;

    .line 26
    if-eqz p4, :cond_1

    .end local p4
    :goto_1
    iput-object p4, p0, Lorg/scribe/model/OAuthConfig;->signatureType:Lorg/scribe/model/SignatureType;

    .line 27
    iput-object p5, p0, Lorg/scribe/model/OAuthConfig;->scope:Ljava/lang/String;

    .line 28
    return-void

    .line 25
    .restart local p3
    .restart local p4
    :cond_0
    const-string p3, "oob"

    goto :goto_0

    .line 26
    .end local p3
    :cond_1
    sget-object p4, Lorg/scribe/model/SignatureType;->Header:Lorg/scribe/model/SignatureType;

    goto :goto_1
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getApiSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->apiSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureType()Lorg/scribe/model/SignatureType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->signatureType:Lorg/scribe/model/SignatureType;

    return-object v0
.end method

.method public hasScope()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->scope:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
