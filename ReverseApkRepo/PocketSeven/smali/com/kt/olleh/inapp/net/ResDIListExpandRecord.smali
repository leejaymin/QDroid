.class public Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;
.super Ljava/lang/Object;
.source "ResDIListExpandRecord.java"

# interfaces
.implements Lcom/kt/olleh/inapp/net/ResTags;


# instance fields
.field private mDi_id:Ljava/lang/String;

.field private mDi_title:Ljava/lang/String;

.field private mGift_flag:Ljava/lang/String;

.field private mPrice:Ljava/lang/String;

.field public mPrice_vat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mGift_flag:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mDi_title:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mDi_id:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mPrice:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mPrice_vat:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mGift_flag:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mDi_title:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mDi_id:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mPrice:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mPrice_vat:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public getDiID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mDi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDiTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mDi_title:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mGift_flag:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mPrice_vat:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceVat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mPrice_vat:Ljava/lang/String;

    return-object v0
.end method

.method public searchListTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 61
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 68
    const-string v3, "gift_flag"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->setGiftFlag(Ljava/lang/String;)V

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    const-string v3, "di_title"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->setDiTitle(Ljava/lang/String;)V

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_3
    const-string v3, "di_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 80
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->setDiID(Ljava/lang/String;)V

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    const-string v3, "price"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->setPrice(Ljava/lang/String;)V

    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_5
    const-string v3, "PRICE_VAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->setPriceVat(Ljava/lang/String;)V

    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public searchRecordTag(Lorg/w3c/dom/NodeList;)V
    .locals 3
    .parameter "list"

    .prologue
    .line 154
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 155
    .local v1, recordLen:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 159
    return-void

    .line 157
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->searchListTag(Lorg/w3c/dom/Node;)Z

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDiID(Ljava/lang/String;)V
    .locals 0
    .parameter "diid"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mDi_id:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setDiTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "dititle"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mDi_title:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setGiftFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "giftflag"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mGift_flag:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mPrice_vat:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setPriceVat(Ljava/lang/String;)V
    .locals 0
    .parameter "price_vat"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->mPrice_vat:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "gift_flag"

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->getGiftFlag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "di_title"

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->getDiTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "di_id"

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->getDiID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "price"

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/net/ResDIListExpandRecord;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
