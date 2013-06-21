.class public Lcom/addthis/parser/ATServiceListParser;
.super Ljava/lang/Object;
.source "ATServiceListParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/addthis/models/ATServiceList;
    .locals 13
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v8, 0x0

    .line 27
    .local v8, serviceList:Lcom/addthis/models/ATServiceList;
    const/4 v7, 0x0

    .line 29
    .local v7, serviceArray:Lorg/json/JSONArray;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v4, jsonObj:Lorg/json/JSONObject;
    const-string v11, "data"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 31
    const-string v11, "data"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 32
    new-instance v9, Lcom/addthis/models/ATServiceList;

    invoke-direct {v9}, Lcom/addthis/models/ATServiceList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v8           #serviceList:Lcom/addthis/models/ATServiceList;
    .local v9, serviceList:Lcom/addthis/models/ATServiceList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_1

    move-object v8, v9

    .line 57
    .end local v2           #i:I
    .end local v9           #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v8       #serviceList:Lcom/addthis/models/ATServiceList;
    :cond_0
    return-object v8

    .line 35
    .end local v8           #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v2       #i:I
    .restart local v9       #serviceList:Lcom/addthis/models/ATServiceList;
    :cond_1
    const/4 v5, 0x0

    .line 36
    .local v5, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 37
    .local v0, code:Ljava/lang/String;
    const/4 v3, 0x0

    .line 38
    .local v3, image:Ljava/lang/String;
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 39
    .local v10, serviceObj:Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 40
    const-string v11, "code"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_2
    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 43
    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    :cond_3
    const-string v11, "icon32"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 46
    const-string v11, "icon32"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    :cond_4
    new-instance v6, Lcom/addthis/models/ATService;

    const/4 v11, 0x0

    invoke-direct {v6, v5, v0, v3, v11}, Lcom/addthis/models/ATService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 50
    .local v6, service:Lcom/addthis/models/ATService;
    invoke-virtual {v9, v6}, Lcom/addthis/models/ATServiceList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0           #code:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #image:Ljava/lang/String;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #service:Lcom/addthis/models/ATService;
    .end local v9           #serviceList:Lcom/addthis/models/ATServiceList;
    .end local v10           #serviceObj:Lorg/json/JSONObject;
    .restart local v8       #serviceList:Lcom/addthis/models/ATServiceList;
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    new-instance v11, Lorg/json/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 54
    .end local v1           #e:Ljava/lang/Exception;
    .end local v8           #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v2       #i:I
    .restart local v4       #jsonObj:Lorg/json/JSONObject;
    .restart local v9       #serviceList:Lcom/addthis/models/ATServiceList;
    :catch_1
    move-exception v1

    move-object v8, v9

    .end local v9           #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v8       #serviceList:Lcom/addthis/models/ATServiceList;
    goto :goto_1
.end method
