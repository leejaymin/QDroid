.class public Lcom/shoutem/DeviceGeoHandler;
.super Ljava/lang/Object;
.source "DeviceGeoHandler.java"


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/String;

    const-string v1, "device://geo/"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shoutem/DeviceGeoHandler;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method private handleGetPosition(Ljava/lang/String;I)V
    .locals 13
    .parameter "data"
    .parameter "start"

    .prologue
    .line 51
    const-string v9, ""

    .line 53
    .local v9, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, completescript:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 63
    .local v8, test:Lorg/json/JSONTokener;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, obj:Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 64
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lorg/json/JSONObject;

    if-ne v10, v11, :cond_0

    .line 65
    move-object v0, v7

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    .line 66
    .local v4, jobj:Lorg/json/JSONObject;
    const-string v10, "complete"

    invoke-virtual {p0, v10, v4}, Lcom/shoutem/DeviceGeoHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 77
    .end local v4           #jobj:Lorg/json/JSONObject;
    .end local v7           #obj:Ljava/lang/Object;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 113
    .end local v1           #completescript:Ljava/lang/String;
    .end local v8           #test:Lorg/json/JSONTokener;
    :goto_1
    return-void

    .line 54
    :catch_0
    move-exception v3

    .line 56
    .local v3, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v3           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #completescript:Ljava/lang/String;
    .restart local v8       #test:Lorg/json/JSONTokener;
    :catch_1
    move-exception v2

    .line 74
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    sget-object v10, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v10}, Lcom/shoutem/n64635/HomeActivity;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 99
    .local v6, loc:Landroid/location/Location;
    const-string v5, "javascript:"

    .line 101
    .local v5, jsstr:Ljava/lang/String;
    if-nez v6, :cond_3

    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(false);"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    sget-object v10, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v10, v5}, Lcom/shoutem/n64635/HomeActivity;->goUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    sget-object v10, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v10, v5}, Lcom/shoutem/n64635/HomeActivity;->goUrl(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, val:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public handle(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 20
    iget-object v3, p0, Lcom/shoutem/DeviceGeoHandler;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v3, p0, Lcom/shoutem/DeviceGeoHandler;->mPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    .local v2, startInd:I
    const/16 v3, 0x2f

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 27
    .local v0, endInd:I
    if-ltz v0, :cond_0

    .line 31
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, method:Ljava/lang/String;
    const-string v3, "getPosition"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lcom/shoutem/DeviceGeoHandler;->handleGetPosition(Ljava/lang/String;I)V

    goto :goto_0
.end method
