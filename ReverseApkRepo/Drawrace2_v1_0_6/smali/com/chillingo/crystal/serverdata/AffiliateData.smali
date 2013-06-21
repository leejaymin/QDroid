.class public Lcom/chillingo/crystal/serverdata/AffiliateData;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Affiliate:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AffiliateData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/AffiliateData;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public marketUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/AffiliateData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/AffiliateData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
