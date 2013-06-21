.class public Lcom/shoutem/DeviceSystemHandler;
.super Ljava/lang/Object;
.source "DeviceSystemHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMeasurementSystem(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 81
    const-string v0, "Metric"

    .line 82
    .local v0, measurementSystem:Ljava/lang/String;
    const-string v1, "US"

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v0, "U.S."

    .line 85
    :cond_0
    return-object v0
.end method

.method private handleSetUser(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    sget-object v1, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v1}, Lcom/shoutem/n64635/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/shoutem/n64635/ShoutemApp;

    .line 36
    .local v0, app:Lcom/shoutem/n64635/ShoutemApp;
    :try_start_0
    const-string v1, "userId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shoutem/n64635/ShoutemApp;->setCurrentUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/shoutem/DeviceUrl;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/shoutem/DeviceUrl;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, method:Ljava/lang/String;
    const-string v1, "getLocale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getSysInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/shoutem/DeviceUrl;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shoutem/DeviceSystemHandler;->handleGetLocale(Lorg/json/JSONObject;)V

    .line 28
    :cond_1
    :goto_0
    return-void

    .line 25
    :cond_2
    const-string v1, "setAlias"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/shoutem/DeviceUrl;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/shoutem/DeviceSystemHandler;->handleSetUser(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public handleGetLocale(Lorg/json/JSONObject;)V
    .locals 9
    .parameter "params"

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    .local v0, completeCallback:Ljava/lang/String;
    :try_start_0
    const-string v7, "complete"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 52
    .local v4, locale:Ljava/util/Locale;
    invoke-direct {p0, v4}, Lcom/shoutem/DeviceSystemHandler;->getMeasurementSystem(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, measurementSystem:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v5, localeJson:Lorg/json/JSONObject;
    const-string v7, "locale"

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v7, "measurementSystem"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v2, 0x0

    .line 59
    .local v2, isPositionFixedSupported:Z
    :try_start_1
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    const/16 v8, 0x8

    if-lt v7, v8, :cond_1

    .line 60
    const/4 v2, 0x1

    .line 65
    :cond_1
    :goto_1
    :try_start_2
    const-string v7, "isPositionFixedSupported"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "javascript:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, jsstr:Ljava/lang/String;
    sget-object v7, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v7, v3}, Lcom/shoutem/n64635/HomeActivity;->goUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 68
    .end local v2           #isPositionFixedSupported:Z
    .end local v3           #jsstr:Ljava/lang/String;
    .end local v4           #locale:Ljava/util/Locale;
    .end local v5           #localeJson:Lorg/json/JSONObject;
    .end local v6           #measurementSystem:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Lorg/json/JSONException;
    goto :goto_0

    .line 62
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #isPositionFixedSupported:Z
    .restart local v4       #locale:Ljava/util/Locale;
    .restart local v5       #localeJson:Lorg/json/JSONObject;
    .restart local v6       #measurementSystem:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1
.end method
