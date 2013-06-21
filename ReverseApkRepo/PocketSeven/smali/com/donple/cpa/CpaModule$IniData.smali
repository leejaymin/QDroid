.class Lcom/donple/cpa/CpaModule$IniData;
.super Ljava/lang/Object;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IniData"
.end annotation


# instance fields
.field private appsServer:Ljava/lang/String;

.field private devServer:Ljava/lang/String;

.field private guideTxt:Ljava/lang/String;

.field private infoServer:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private onOff:Z

.field private retCode:I

.field private targetAD:I

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 1
    .parameter

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    .line 1665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1667
    const/16 v0, 0x270f

    iput v0, p0, Lcom/donple/cpa/CpaModule$IniData;->retCode:I

    .line 1668
    const/4 v0, 0x0

    iput v0, p0, Lcom/donple/cpa/CpaModule$IniData;->type:I

    .line 1669
    return-void
.end method


# virtual methods
.method public addSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 1698
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1702
    :cond_0
    return-object p1
.end method

.method public getAppsServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$IniData;->appsServer:Ljava/lang/String;

    return-object v0
.end method

.method public getDevServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$IniData;->devServer:Ljava/lang/String;

    return-object v0
.end method

.method public getGuideTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$IniData;->guideTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$IniData;->infoServer:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$IniData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    .prologue
    .line 1727
    iget v0, p0, Lcom/donple/cpa/CpaModule$IniData;->retCode:I

    return v0
.end method

.method public getTargetAD()I
    .locals 1

    .prologue
    .line 1757
    iget v0, p0, Lcom/donple/cpa/CpaModule$IniData;->targetAD:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1787
    iget v0, p0, Lcom/donple/cpa/CpaModule$IniData;->type:I

    return v0
.end method

.method public isOnOff()Z
    .locals 1

    .prologue
    .line 1737
    iget-boolean v0, p0, Lcom/donple/cpa/CpaModule$IniData;->onOff:Z

    return v0
.end method

.method public setAppsServer(Ljava/lang/String;)V
    .locals 0
    .parameter "appsServer"

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$IniData;->appsServer:Ljava/lang/String;

    .line 1713
    return-void
.end method

.method public setDevServer(Ljava/lang/String;)V
    .locals 0
    .parameter "devServer"

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$IniData;->devServer:Ljava/lang/String;

    .line 1753
    return-void
.end method

.method public setGuideTxt(Ljava/lang/String;)V
    .locals 0
    .parameter "guideTxt"

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$IniData;->guideTxt:Ljava/lang/String;

    .line 1783
    return-void
.end method

.method public setInfoServer(Ljava/lang/String;)V
    .locals 0
    .parameter "infoServer"

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$IniData;->infoServer:Ljava/lang/String;

    .line 1723
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$IniData;->message:Ljava/lang/String;

    .line 1773
    return-void
.end method

.method public setOnOff(Z)V
    .locals 0
    .parameter "onOff"

    .prologue
    .line 1742
    iput-boolean p1, p0, Lcom/donple/cpa/CpaModule$IniData;->onOff:Z

    .line 1743
    return-void
.end method

.method public setRetCode(I)V
    .locals 0
    .parameter "retCode"

    .prologue
    .line 1732
    iput p1, p0, Lcom/donple/cpa/CpaModule$IniData;->retCode:I

    .line 1733
    return-void
.end method

.method public setTargetAD(I)V
    .locals 0
    .parameter "targetAD"

    .prologue
    .line 1762
    iput p1, p0, Lcom/donple/cpa/CpaModule$IniData;->targetAD:I

    .line 1763
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1792
    iput p1, p0, Lcom/donple/cpa/CpaModule$IniData;->type:I

    .line 1793
    return-void
.end method

.method public toObject(Ljava/lang/String;)V
    .locals 6
    .parameter "json"

    .prologue
    const/4 v3, 0x0

    .line 1675
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1676
    .local v2, rootObj:Lorg/json/JSONObject;
    const-string v4, "ret"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->setRetCode(I)V

    .line 1677
    invoke-virtual {p0}, Lcom/donple/cpa/CpaModule$IniData;->getRetCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 1679
    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1680
    .local v1, msgObj:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v5, "mainServer"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v1, v5}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->addSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->setAppsServer(Ljava/lang/String;)V

    .line 1681
    iget-object v4, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v5, "serverName"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v1, v5}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->addSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->setInfoServer(Ljava/lang/String;)V

    .line 1682
    iget-object v4, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v5, "opiServer"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v1, v5}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->addSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->setDevServer(Ljava/lang/String;)V

    .line 1683
    iget-object v4, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v5, "guideTxt"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v1, v5}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->setGuideTxt(Ljava/lang/String;)V

    .line 1684
    iget-object v4, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v5, "guideOn"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v1, v5}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->setOnOff(Z)V

    .line 1685
    iget-object v4, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v5, "message"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v1, v5}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/donple/cpa/CpaModule$IniData;->setMessage(Ljava/lang/String;)V

    .line 1686
    iget-object v4, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v5, "m4"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v1, v5}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/donple/cpa/CpaModule$IniData;->setTargetAD(I)V

    .line 1687
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v4, "m1t"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1, v4}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/donple/cpa/CpaModule$IniData;->setType(I)V

    .line 1694
    .end local v1           #msgObj:Lorg/json/JSONObject;
    .end local v2           #rootObj:Lorg/json/JSONObject;
    :cond_0
    :goto_2
    return-void

    .restart local v1       #msgObj:Lorg/json/JSONObject;
    .restart local v2       #rootObj:Lorg/json/JSONObject;
    :cond_1
    move v4, v3

    .line 1684
    goto :goto_0

    .line 1686
    :cond_2
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$IniData;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v4, "m4"

    #calls: Lcom/donple/cpa/CpaModule;->jsonObjToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1, v4}, Lcom/donple/cpa/CpaModule;->access$26(Lcom/donple/cpa/CpaModule;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 1690
    .end local v1           #msgObj:Lorg/json/JSONObject;
    .end local v2           #rootObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1692
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "toObject()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v0}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
