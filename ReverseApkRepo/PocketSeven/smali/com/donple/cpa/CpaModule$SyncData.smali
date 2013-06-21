.class Lcom/donple/cpa/CpaModule$SyncData;
.super Ljava/lang/Object;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncData"
.end annotation


# instance fields
.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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
    .line 1802
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$SyncData;->this$0:Lcom/donple/cpa/CpaModule;

    .line 1801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/donple/cpa/CpaModule$SyncData;->records:Ljava/util/List;

    .line 1803
    const/16 v0, 0x270f

    iput v0, p0, Lcom/donple/cpa/CpaModule$SyncData;->retCode:I

    .line 1804
    return-void
.end method


# virtual methods
.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$SyncData;->records:Ljava/util/List;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    .prologue
    .line 1832
    iget v0, p0, Lcom/donple/cpa/CpaModule$SyncData;->retCode:I

    return v0
.end method

.method public toObject(Ljava/lang/String;)V
    .locals 8
    .parameter "json"

    .prologue
    .line 1811
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1812
    .local v5, rootObj:Lorg/json/JSONObject;
    const-string v6, "ret"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/donple/cpa/CpaModule$SyncData;->retCode:I

    .line 1813
    iget v6, p0, Lcom/donple/cpa/CpaModule$SyncData;->retCode:I

    if-nez v6, :cond_0

    .line 1815
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1816
    .local v2, msgObj:Lorg/json/JSONObject;
    const-string v6, "records"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1817
    .local v4, recordObjs:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 1828
    .end local v1           #i:I
    .end local v2           #msgObj:Lorg/json/JSONObject;
    .end local v4           #recordObjs:Lorg/json/JSONArray;
    .end local v5           #rootObj:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 1819
    .restart local v1       #i:I
    .restart local v2       #msgObj:Lorg/json/JSONObject;
    .restart local v4       #recordObjs:Lorg/json/JSONArray;
    .restart local v5       #rootObj:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1820
    .local v3, record:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$SyncData;->records:Ljava/util/List;

    const-string v7, "appInfoId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1824
    .end local v1           #i:I
    .end local v2           #msgObj:Lorg/json/JSONObject;
    .end local v3           #record:Lorg/json/JSONObject;
    .end local v4           #recordObjs:Lorg/json/JSONArray;
    .end local v5           #rootObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1826
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "toObject()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v6, v0}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
