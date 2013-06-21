.class public Lcom/chillingo/crystal/serverdata/PurchaseNonceData;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PurchaseNonce:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNonce()J
    .locals 4

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "nonce"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
