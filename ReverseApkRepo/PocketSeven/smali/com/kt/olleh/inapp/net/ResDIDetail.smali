.class public Lcom/kt/olleh/inapp/net/ResDIDetail;
.super Lcom/kt/olleh/inapp/net/Response;
.source "ResDIDetail.java"


# instance fields
.field public mApp_id:Ljava/lang/String;

.field public mDesc:Ljava/lang/String;

.field public mDi_id:Ljava/lang/String;

.field public mDi_title:Ljava/lang/String;

.field public mPrice:Ljava/lang/String;

.field public mPrice_vat:Ljava/lang/String;

.field public mUse_lmt_cnt:Ljava/lang/String;

.field public mUse_term:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/kt/olleh/inapp/net/Response;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    .line 73
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->clear()V

    .line 74
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDiTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceVat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    return-object v0
.end method

.method public getUseLmtCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getUseTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    return-object v0
.end method

.method protected searchValueTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 78
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 85
    const-string v3, "app_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    const-string v3, "di_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_3
    const-string v3, "di_title"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_4
    const-string v3, "desc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_5
    const-string v3, "price"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 107
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice:Ljava/lang/String;

    move v1, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_6
    const-string v3, "PRICE_VAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 112
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    move v1, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_7
    const-string v3, "use_term"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 117
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    move v1, v2

    .line 118
    goto :goto_0

    .line 120
    :cond_8
    const-string v3, "use_lmt_cnt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    move v1, v2

    .line 123
    goto/16 :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appid"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setDiId(Ljava/lang/String;)V
    .locals 0
    .parameter "diid"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setDiTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "dititle"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setPriceVat(Ljava/lang/String;)V
    .locals 0
    .parameter "price_vat"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setUseLmtCnt(Ljava/lang/String;)V
    .locals 0
    .parameter "uselmtcnt"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setUseTerm(Ljava/lang/String;)V
    .locals 0
    .parameter "useterm"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v0, str:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "di_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "di_title"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "desc"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "price"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "PRICE_VAT"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "use_term"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "use_lmt_cnt"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
