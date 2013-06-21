.class Lcom/donple/cpa/CpaModule$AppData;
.super Ljava/lang/Object;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppData"
.end annotation


# instance fields
.field private apps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/donple/cpa/CpaModule$App;",
            ">;"
        }
    .end annotation
.end field

.field private retCode:I

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method public constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 1
    .parameter

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$AppData;->this$0:Lcom/donple/cpa/CpaModule;

    .line 2194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2196
    const/16 v0, 0x270f

    iput v0, p0, Lcom/donple/cpa/CpaModule$AppData;->retCode:I

    .line 2197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/donple/cpa/CpaModule$AppData;->apps:Ljava/util/Map;

    .line 2198
    return-void
.end method


# virtual methods
.method public getApps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/donple/cpa/CpaModule$App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$AppData;->apps:Ljava/util/Map;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    .prologue
    .line 2233
    iget v0, p0, Lcom/donple/cpa/CpaModule$AppData;->retCode:I

    return v0
.end method

.method public toObject(Ljava/lang/String;)V
    .locals 8
    .parameter "json"

    .prologue
    .line 2204
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2205
    .local v5, rootObj:Lorg/json/JSONObject;
    const-string v6, "ret"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/donple/cpa/CpaModule$AppData;->retCode:I

    .line 2207
    iget v6, p0, Lcom/donple/cpa/CpaModule$AppData;->retCode:I

    if-nez v6, :cond_0

    .line 2209
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2211
    .local v4, objs:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 2229
    .end local v2           #i:I
    .end local v4           #objs:Lorg/json/JSONArray;
    .end local v5           #rootObj:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 2213
    .restart local v2       #i:I
    .restart local v4       #objs:Lorg/json/JSONArray;
    .restart local v5       #rootObj:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2215
    .local v3, obj:Lorg/json/JSONObject;
    new-instance v0, Lcom/donple/cpa/CpaModule$App;

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$AppData;->this$0:Lcom/donple/cpa/CpaModule;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/donple/cpa/CpaModule$App;-><init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$App;)V

    .line 2216
    .local v0, app:Lcom/donple/cpa/CpaModule$App;
    const-string v6, "appId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/donple/cpa/CpaModule$App;->setAppId(I)V

    .line 2217
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$AppData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v7, "appStoreUrl"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v3, v7}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/donple/cpa/CpaModule$App;->setAppStoreUrl(Ljava/lang/String;)V

    .line 2218
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$AppData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v7, "appUrlParams"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v3, v7}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/donple/cpa/CpaModule$App;->setAppUrlParams(Ljava/lang/String;)V

    .line 2219
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$AppData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v7, "bundleId"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v3, v7}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/donple/cpa/CpaModule$App;->setBundleId(Ljava/lang/String;)V

    .line 2220
    const-string v6, "unitPointGiving"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/donple/cpa/CpaModule$App;->setUnitPointGiving(I)V

    .line 2221
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$AppData;->apps:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$App;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2225
    .end local v0           #app:Lcom/donple/cpa/CpaModule$App;
    .end local v2           #i:I
    .end local v3           #obj:Lorg/json/JSONObject;
    .end local v4           #objs:Lorg/json/JSONArray;
    .end local v5           #rootObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 2227
    .local v1, e:Lorg/json/JSONException;
    const-string v6, "toObject()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v6, v1}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
