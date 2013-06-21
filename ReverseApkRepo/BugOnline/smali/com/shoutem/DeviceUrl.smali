.class public Lcom/shoutem/DeviceUrl;
.super Ljava/lang/Object;
.source "DeviceUrl.java"


# static fields
.field private static final URL_PREFIX:Ljava/lang/String; = "device://"


# instance fields
.field private handler:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private paramsJson:Lorg/json/JSONObject;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/shoutem/DeviceUrl;->createFromUrl(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private createFromUrl(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 53
    iput-object p1, p0, Lcom/shoutem/DeviceUrl;->url:Ljava/lang/String;

    .line 54
    const-string v2, "device://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 55
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, urlParts:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/shoutem/DeviceUrl;->handler:Ljava/lang/String;

    .line 57
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/shoutem/DeviceUrl;->method:Ljava/lang/String;

    .line 58
    iput-object v4, p0, Lcom/shoutem/DeviceUrl;->paramsJson:Lorg/json/JSONObject;

    .line 59
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 61
    :try_start_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lcom/shoutem/DeviceUrl;->getJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/shoutem/DeviceUrl;->paramsJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 64
    iput-object v4, p0, Lcom/shoutem/DeviceUrl;->paramsJson:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private getJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v1, ""

    .line 72
    .local v1, jsonString:Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    check-cast v2, Lorg/json/JSONObject;

    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 76
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/shoutem/DeviceUrl;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/shoutem/DeviceUrl;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shoutem/DeviceUrl;->paramsJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/shoutem/DeviceUrl;->url:Ljava/lang/String;

    return-object v0
.end method
