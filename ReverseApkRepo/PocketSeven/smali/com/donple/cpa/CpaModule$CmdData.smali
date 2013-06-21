.class Lcom/donple/cpa/CpaModule$CmdData;
.super Ljava/lang/Object;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmdData"
.end annotation


# instance fields
.field private appId:I

.field private msg:Ljava/lang/String;

.field private point:I

.field private retCode:I

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;

.field private trxId:I


# direct methods
.method public constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 1
    .parameter

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CmdData;->this$0:Lcom/donple/cpa/CpaModule;

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    const/16 v0, 0x270f

    iput v0, p0, Lcom/donple/cpa/CpaModule$CmdData;->retCode:I

    .line 1594
    return-void
.end method


# virtual methods
.method public getRetCode()I
    .locals 1

    .prologue
    .line 1626
    iget v0, p0, Lcom/donple/cpa/CpaModule$CmdData;->retCode:I

    return v0
.end method

.method public getTrxId()I
    .locals 1

    .prologue
    .line 1638
    iget v0, p0, Lcom/donple/cpa/CpaModule$CmdData;->trxId:I

    return v0
.end method

.method public setAppId(I)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 1634
    iput p1, p0, Lcom/donple/cpa/CpaModule$CmdData;->appId:I

    .line 1635
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CmdData;->msg:Ljava/lang/String;

    .line 1647
    return-void
.end method

.method public setPoint(I)V
    .locals 0
    .parameter "point"

    .prologue
    .line 1630
    iput p1, p0, Lcom/donple/cpa/CpaModule$CmdData;->point:I

    .line 1631
    return-void
.end method

.method public setTrxId(I)V
    .locals 0
    .parameter "trxId"

    .prologue
    .line 1642
    iput p1, p0, Lcom/donple/cpa/CpaModule$CmdData;->trxId:I

    .line 1643
    return-void
.end method

.method public toObject(Ljava/lang/String;)V
    .locals 4
    .parameter "json"

    .prologue
    .line 1600
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v1, rootObj:Lorg/json/JSONObject;
    const-string v2, "ret"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/donple/cpa/CpaModule$CmdData;->retCode:I

    .line 1602
    iget v2, p0, Lcom/donple/cpa/CpaModule$CmdData;->retCode:I

    if-nez v2, :cond_0

    .line 1604
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1605
    .local v0, msgObj:Lorg/json/JSONObject;
    const-string v2, "appId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/donple/cpa/CpaModule$CmdData;->setAppId(I)V

    .line 1606
    const-string v2, "trxId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/donple/cpa/CpaModule$CmdData;->setTrxId(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    :try_start_1
    const-string v2, "point"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/donple/cpa/CpaModule$CmdData;->setPoint(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1622
    .end local v0           #msgObj:Lorg/json/JSONObject;
    .end local v1           #rootObj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1616
    .restart local v1       #rootObj:Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CmdData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "msg"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v3}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/donple/cpa/CpaModule$CmdData;->setMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1619
    .end local v1           #rootObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1612
    .restart local v0       #msgObj:Lorg/json/JSONObject;
    .restart local v1       #rootObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
