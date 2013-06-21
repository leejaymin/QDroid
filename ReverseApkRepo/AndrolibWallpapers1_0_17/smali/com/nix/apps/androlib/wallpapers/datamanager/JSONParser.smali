.class public Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Wallpapers"

.field private static http:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static final verboseLog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static JSONparseWallpaperCategoryAPI(Ljava/lang/String;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .locals 15
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v14, "Total"

    const-string v13, "Wallpapers"

    const-string v12, ""

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v9

    long-to-float v8, v9

    .line 145
    .local v8, tm:F
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;-><init>()V

    .line 147
    .local v0, api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    const-string v7, ""

    .line 150
    .local v7, rawJSON:Ljava/lang/String;
    :try_start_0
    const-string v9, "Wallpapers"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Recup url : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->sendXMLRequest(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 155
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v5, ob:Lorg/json/JSONObject;
    const-string v9, "Total"

    invoke-static {v5, v14}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->total:I

    .line 157
    const-string v9, "PageSize"

    invoke-static {v5, v9}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->pageSize:I

    .line 158
    const-string v9, "Link"

    invoke-static {v5, v9}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->link:Ljava/lang/String;

    .line 160
    const-string v9, "Wallpapers"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Total : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "Total"

    invoke-static {v5, v14}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v9, "items"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 166
    .local v6, parseArray:Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    .line 168
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_0

    .line 183
    const-string v9, "Wallpapers"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "JSON Parse time : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    long-to-float v10, v10

    sub-float/2addr v10, v8

    const/high16 v11, 0x447a

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sec"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v0

    .line 152
    .end local v2           #i:I
    .end local v5           #ob:Lorg/json/JSONObject;
    .end local v6           #parseArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 153
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i:I
    .restart local v5       #ob:Lorg/json/JSONObject;
    .restart local v6       #parseArray:Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 171
    .local v4, jo:Lorg/json/JSONObject;
    new-instance v3, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    invoke-direct {v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;-><init>()V

    .line 173
    .local v3, item:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    const-string v9, "CatName"

    const-string v10, ""

    invoke-static {v4, v9, v12}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    .line 174
    const-string v9, "CatID"

    const-string v10, ""

    invoke-static {v4, v9, v12}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatID:Ljava/lang/String;

    .line 175
    const-string v9, "CatCount"

    const-string v10, ""

    invoke-static {v4, v9, v12}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatCount:Ljava/lang/String;

    .line 176
    sget-object v9, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->normal:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    iput-object v9, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    .line 177
    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    .line 179
    iget-object v9, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->categories:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static JSONparseWallpaperItemAPI(Ljava/lang/String;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .locals 10
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    long-to-float v5, v0

    .line 65
    .local v5, tm:F
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;-><init>()V

    .line 67
    .local v0, api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    const-string v1, ""

    .line 70
    .local v1, rawJSON:Ljava/lang/String;
    :try_start_0
    const-string v2, "Wallpapers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Recup url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->sendXMLRequest(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .end local v1           #rawJSON:Ljava/lang/String;
    .local p0, rawJSON:Ljava/lang/String;
    move-object v1, p0

    .line 75
    .end local p0           #rawJSON:Ljava/lang/String;
    .restart local v1       #rawJSON:Ljava/lang/String;
    :goto_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local p0, ob:Lorg/json/JSONObject;
    const-string v1, "Total"

    .end local v1           #rawJSON:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->total:I

    .line 77
    const-string v1, "PageSize"

    invoke-static {p0, v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->pageSize:I

    .line 78
    const-string v1, "Link"

    invoke-static {p0, v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->link:Ljava/lang/String;

    .line 80
    const-string v1, "Wallpapers"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Total"

    invoke-static {p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "items"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 85
    .local v4, parseArray:Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, itemsarr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;>;"
    new-instance p0, Ljava/util/ArrayList;

    .end local p0           #ob:Lorg/json/JSONObject;
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    .line 90
    const/4 p0, 0x0

    .local p0, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt p0, v1, :cond_0

    .line 133
    const-string p0, "Wallpapers"

    .end local p0           #i:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON Parse time : "

    .end local v2           #itemsarr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;>;"
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    long-to-float v2, v2

    sub-float/2addr v2, v5

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v0

    .line 72
    .end local v4           #parseArray:Lorg/json/JSONArray;
    .restart local v1       #rawJSON:Ljava/lang/String;
    .local p0, url:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 73
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v1           #rawJSON:Ljava/lang/String;
    .restart local v2       #itemsarr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;>;"
    .restart local v4       #parseArray:Lorg/json/JSONArray;
    .local p0, i:I
    :cond_0
    invoke-virtual {v4, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 93
    .local v3, jo:Lorg/json/JSONObject;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;-><init>()V

    .line 95
    .local v1, item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;
    const-string v6, "Title"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    .line 96
    const-string v6, "Description"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Description:Ljava/lang/String;

    .line 97
    const-string v6, "Link"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Link:Ljava/lang/String;

    .line 98
    const-string v6, "pubDate"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->PubDate:Ljava/lang/String;

    .line 99
    const-string v6, "Category"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Category:Ljava/lang/String;

    .line 100
    const-string v6, "CategoryLink"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->CategoryLink:Ljava/lang/String;

    .line 101
    const-string v6, "Creator"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Creator:Ljava/lang/String;

    .line 102
    const-string v6, "AuthorID"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->AuthorID:Ljava/lang/String;

    .line 103
    const-string v6, "CategoryID"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->CategoryID:Ljava/lang/String;

    .line 104
    const-string v6, "ImageMini"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMini:Ljava/lang/String;

    .line 105
    const-string v6, "ImageMax"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMax:Ljava/lang/String;

    .line 106
    const-string v6, "ImageMedium"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMedium:Ljava/lang/String;

    .line 107
    const-string v6, "WallpaperID"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->WallpaperID:Ljava/lang/String;

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "GlobalRating"

    const-wide/16 v8, 0x0

    invoke-static {v3, v7, v8, v9}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->GlobalRating:Ljava/lang/String;

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UserRating"

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->UserRating:Ljava/lang/String;

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RatingCount"

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->RatingCount:Ljava/lang/String;

    .line 111
    const-string v6, "IsFav"

    invoke-static {v3, v6}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    :goto_2
    iput-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->IsFav:Ljava/lang/String;

    .line 112
    const-string v6, "Score"

    invoke-static {v3, v6}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Score:I

    .line 113
    const-string v6, "FavsCount"

    invoke-static {v3, v6}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .end local v3           #jo:Lorg/json/JSONObject;
    iput v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->FavsCount:I

    .line 115
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Description:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x25

    if-le v3, v6, :cond_2

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Description:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x23

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->DescriptionShort:Ljava/lang/String;

    .line 121
    :goto_3
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x12

    if-le v3, v6, :cond_3

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->TitleShort:Ljava/lang/String;

    .line 127
    :goto_4
    iget-object v3, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_1

    .line 111
    .restart local v3       #jo:Lorg/json/JSONObject;
    :cond_1
    const-string v6, "0"

    goto :goto_2

    .line 119
    .end local v3           #jo:Lorg/json/JSONObject;
    :cond_2
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Description:Ljava/lang/String;

    iput-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->DescriptionShort:Ljava/lang/String;

    goto :goto_3

    .line 125
    :cond_3
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    iput-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->TitleShort:Ljava/lang/String;

    goto :goto_4
.end method

.method public static generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "stream"

    .prologue
    .line 274
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 275
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 276
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1           #cur:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 280
    .restart local v1       #cur:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 283
    .end local v1           #cur:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 284
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getJSBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getJSBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public static getJSDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJSDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 253
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static getJSDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 2
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 228
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getJSDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D
    .locals 2
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 236
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method public static getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getJSInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public static getJSLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 215
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getJSLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 2
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 223
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method public static getJSString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static parseWallpaperCategoryAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .locals 1
    .parameter "url"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->JSONparseWallpaperCategoryAPI(Ljava/lang/String;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v0

    .line 139
    .local v0, item:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    iput-object p1, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 140
    return-object v0
.end method

.method public static parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .locals 1
    .parameter "url"
    .parameter "type"
    .parameter "pageNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->JSONparseWallpaperItemAPI(Ljava/lang/String;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v0

    .line 58
    .local v0, item:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    iput p2, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentPageNum:I

    .line 59
    iput-object p1, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 60
    return-object v0
.end method

.method public static sendXMLRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->sendXMLRequest(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sendXMLRequest(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter "uri"
    .parameter "firstTry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v8, "Wallpapers"

    const-string v7, "Content-Encoding"

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    long-to-float v4, v5

    .line 36
    .local v4, tm:F
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->http:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v5, :cond_0

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->http:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 37
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip, deflate"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->http:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 40
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 42
    .local v0, is:Ljava/io/InputStream;
    const-string v5, "Wallpapers"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sendXMLRequest :: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v5, "Content-Encoding"

    invoke-interface {v3, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    .line 45
    const-string v5, "Content-Encoding"

    invoke-interface {v3, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v0           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    move-object v0, v1

    .line 50
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    :cond_1
    const-string v5, "Wallpapers"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JSON Feed load time : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    long-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->generateString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
