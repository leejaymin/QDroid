.class public Lorg/scribe/builder/ServiceBuilder;
.super Ljava/lang/Object;
.source "ServiceBuilder.java"


# instance fields
.field private api:Lorg/scribe/builder/api/Api;

.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private callback:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private signatureType:Lorg/scribe/model/SignatureType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "oob"

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private createApi(Ljava/lang/Class;)Lorg/scribe/builder/api/Api;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/scribe/builder/api/Api;",
            ">;)",
            "Lorg/scribe/builder/api/Api;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, apiClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/scribe/builder/api/Api;>;"
    const-string v2, "Api class cannot be null"

    invoke-static {p1, v2}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/scribe/builder/api/Api;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, api:Lorg/scribe/builder/api/Api;
    return-object v0

    .line 53
    .end local v0           #api:Lorg/scribe/builder/api/Api;
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lorg/scribe/exceptions/OAuthException;

    const-string v3, "Error while creating the Api object"

    invoke-direct {v2, v3, v1}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "apiKey"

    .prologue
    .line 96
    const-string v0, "Invalid Api key"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "apiSecret"

    .prologue
    .line 109
    const-string v0, "Invalid Api secret"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public build()Lorg/scribe/oauth/OAuthService;
    .locals 7

    .prologue
    .line 147
    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    const-string v1, "You must specify a valid api through the provider() method"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    const-string v1, "You must provide an api key"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    const-string v1, "You must provide an api secret"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    new-instance v0, Lorg/scribe/model/OAuthConfig;

    iget-object v1, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    iget-object v2, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    iget-object v3, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    iget-object v4, p0, Lorg/scribe/builder/ServiceBuilder;->signatureType:Lorg/scribe/model/SignatureType;

    iget-object v5, p0, Lorg/scribe/builder/ServiceBuilder;->scope:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/scribe/model/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lorg/scribe/builder/api/Api;->createService(Lorg/scribe/model/OAuthConfig;)Lorg/scribe/oauth/OAuthService;

    move-result-object v0

    return-object v0
.end method

.method public callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "callback"

    .prologue
    .line 83
    const-string v0, "Callback must be a valid URL or \'oob\'"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkValidOAuthCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/scribe/builder/api/Api;",
            ">;)",
            "Lorg/scribe/builder/ServiceBuilder;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, apiClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/scribe/builder/api/Api;>;"
    invoke-direct {p0, p1}, Lorg/scribe/builder/ServiceBuilder;->createApi(Ljava/lang/Class;)Lorg/scribe/builder/api/Api;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    .line 42
    return-object p0
.end method

.method public provider(Lorg/scribe/builder/api/Api;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "api"

    .prologue
    .line 70
    const-string v0, "Api cannot be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    .line 72
    return-object p0
.end method

.method public scope(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "scope"

    .prologue
    .line 122
    const-string v0, "Invalid OAuth scope"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->scope:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public signatureType(Lorg/scribe/model/SignatureType;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .parameter "type"

    .prologue
    .line 135
    const-string v0, "Signature type can\'t be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->signatureType:Lorg/scribe/model/SignatureType;

    .line 137
    return-object p0
.end method
