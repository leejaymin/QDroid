.class public Lcom/chillingo/crystal/serverdata/AchievementData;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Achievement:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AchievementData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/AchievementData;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public achievements()Lorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AchievementData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AchievementData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "achievements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
