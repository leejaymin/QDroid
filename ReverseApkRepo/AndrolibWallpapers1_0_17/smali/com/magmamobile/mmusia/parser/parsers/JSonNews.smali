.class public Lcom/magmamobile/mmusia/parser/parsers/JSonNews;
.super Lcom/magmamobile/mmusia/parser/JSonParser;
.source "JSonNews.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/magmamobile/mmusia/parser/JSonParser;-><init>()V

    return-void
.end method

.method public static loadItems(Ljava/lang/String;Ljava/util/List;)Lcom/magmamobile/mmusia/parser/data/ApiBase;
    .locals 14
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/magmamobile/mmusia/parser/data/ApiBase;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p1, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v13, 0x0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v11

    long-to-float v8, v11

    .line 22
    .local v8, tm:F
    new-instance v0, Lcom/magmamobile/mmusia/parser/data/ApiBase;

    invoke-direct {v0}, Lcom/magmamobile/mmusia/parser/data/ApiBase;-><init>()V

    .line 23
    .local v0, api:Lcom/magmamobile/mmusia/parser/data/ApiBase;
    new-array v4, v13, [Lcom/magmamobile/mmusia/parser/data/ItemNews;

    .line 24
    .local v4, newsArr:[Lcom/magmamobile/mmusia/parser/data/ItemNews;
    new-array v9, v13, [Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    .line 26
    .local v9, updatesArr:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;
    const-string v7, ""

    .line 28
    .local v7, rawJSON:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/magmamobile/mmusia/parser/parsers/JSonNews;->sendJSonRequestPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 33
    :goto_0
    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 35
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v6, ob:Lorg/json/JSONObject;
    const-string v11, "root"

    const/4 v12, 0x1

    invoke-static {v6, v11, v12}, Lcom/magmamobile/mmusia/parser/parsers/JSonNews;->extractJsonNames(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 38
    const-string v11, "HasNewNews"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/magmamobile/mmusia/parser/data/ApiBase;->HasNewNews:I

    .line 39
    const-string v11, "HasNewUpdates"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/magmamobile/mmusia/parser/data/ApiBase;->HasNewUpdates:I

    .line 41
    const-string v11, "news"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 42
    .local v5, newsItems:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v4, v11, [Lcom/magmamobile/mmusia/parser/data/ItemNews;

    .line 44
    const/4 v2, 0x0

    .local v2, l:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_1

    .line 57
    const-string v11, "updates"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 58
    .local v10, updatesItems:Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v9, v11, [Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    .line 60
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_2

    .line 73
    .end local v2           #l:I
    .end local v5           #newsItems:Lorg/json/JSONArray;
    .end local v6           #ob:Lorg/json/JSONObject;
    .end local v10           #updatesItems:Lorg/json/JSONArray;
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "JSON Parse time : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    long-to-float v12, v12

    sub-float/2addr v12, v8

    const/high16 v13, 0x447a

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sec"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/magmamobile/mmusia/MCommon;->Log_w(Ljava/lang/String;)V

    .line 74
    iput-object v4, v0, Lcom/magmamobile/mmusia/parser/data/ApiBase;->news:[Lcom/magmamobile/mmusia/parser/data/ItemNews;

    .line 75
    iput-object v9, v0, Lcom/magmamobile/mmusia/parser/data/ApiBase;->updates:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    .line 76
    return-object v0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    const-string v7, ""

    goto :goto_0

    .line 46
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #l:I
    .restart local v5       #newsItems:Lorg/json/JSONArray;
    .restart local v6       #ob:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 47
    .local v3, lo:Lorg/json/JSONObject;
    new-instance v11, Lcom/magmamobile/mmusia/parser/data/ItemNews;

    invoke-direct {v11}, Lcom/magmamobile/mmusia/parser/data/ItemNews;-><init>()V

    aput-object v11, v4, v2

    .line 48
    aget-object v11, v4, v2

    const-string v12, "NewsID"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsID:I

    .line 49
    aget-object v11, v4, v2

    const-string v12, "NewsTitle"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsTitle:Ljava/lang/String;

    .line 50
    aget-object v11, v4, v2

    const-string v12, "NewsLanguage"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsLanguage:Ljava/lang/String;

    .line 51
    aget-object v11, v4, v2

    const-string v12, "NewsDesc"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsDesc:Ljava/lang/String;

    .line 52
    aget-object v11, v4, v2

    const-string v12, "NewsDate"

    invoke-static {v3, v12}, Lcom/magmamobile/mmusia/parser/JsonUtils;->getJSDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsDate:Ljava/util/Date;

    .line 53
    aget-object v11, v4, v2

    const-string v12, "NewsUrlLink"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsUrlLink:Ljava/lang/String;

    .line 54
    aget-object v11, v4, v2

    const-string v12, "NewsUrlMarket"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemNews;->NewsUrlMarket:Ljava/lang/String;

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 62
    .end local v3           #lo:Lorg/json/JSONObject;
    .restart local v10       #updatesItems:Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 63
    .restart local v3       #lo:Lorg/json/JSONObject;
    new-instance v11, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    invoke-direct {v11}, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;-><init>()V

    aput-object v11, v9, v2

    .line 64
    aget-object v11, v9, v2

    const-string v12, "Name"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->Name:Ljava/lang/String;

    .line 65
    aget-object v11, v9, v2

    const-string v12, "ChangeLog"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->ChangeLog:Ljava/lang/String;

    .line 66
    aget-object v11, v9, v2

    const-string v12, "MarketLink"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->MarketLink:Ljava/lang/String;

    .line 67
    aget-object v11, v9, v2

    const-string v12, "PackageName"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->PackageName:Ljava/lang/String;

    .line 68
    aget-object v11, v9, v2

    const-string v12, "UpdateDate"

    invoke-static {v3, v12}, Lcom/magmamobile/mmusia/parser/JsonUtils;->getJSDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->UpdateDate:Ljava/util/Date;

    .line 69
    aget-object v11, v9, v2

    const-string v12, "Version"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->Version:Ljava/lang/String;

    .line 70
    aget-object v11, v9, v2

    const-string v12, "VersionName"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->VersionName:Ljava/lang/String;

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method
