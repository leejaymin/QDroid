.class public Lcom/chillingo/crystal/serverdata/LeaderboardData;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->setUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Leaderboard:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/LeaderboardData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    return-void
.end method


# virtual methods
.method public currentUser()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/LeaderboardData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public random20()Lorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/LeaderboardData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "top20_random"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public top20Entries()Lorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/LeaderboardData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "top20"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public top20Friends()Lorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/LeaderboardData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "top20_friends"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
