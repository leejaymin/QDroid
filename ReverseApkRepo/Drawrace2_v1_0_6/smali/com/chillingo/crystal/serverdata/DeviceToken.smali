.class public Lcom/chillingo/crystal/serverdata/DeviceToken;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/DeviceToken;->setUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->DeviceToken:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AppConfiguration:Lcom/chillingo/crystal/serverdata/FetchPriority;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_fetchPriority:Lcom/chillingo/crystal/serverdata/FetchPriority;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_postData:[B

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_mainDataDictionary:Lorg/json/JSONObject;

    :try_start_1
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getPostData()[B
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_postData:[B

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_postData:[B

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/DeviceToken;->_postData:[B

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public shouldPost()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
