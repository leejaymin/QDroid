.class public Lad;
.super Ljava/lang/Object;


# static fields
.field private static final 癤욱븳援:Ljava/util/Map;


# instance fields
.field private final ㅼ꽑嫄:Ljava/util/List;

.field private final 弱밧:Ljava/lang/Integer;

.field private final 洹:Ljava/util/List;

.field private final 궗:Ljava/lang/String;

.field private final 대쫫:Ljava/util/List;

.field private final 먯꽌:Ljava/lang/String;

.field private final 몃Ъ:Ljava/util/List;

.field private final 쇰뒗:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lae;

    invoke-direct {v0}, Lae;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lad;->癤욱븳援:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lct;->癤욱븳援(Ljava/lang/String;)V

    iput-object p1, p0, Lad;->궗:Ljava/lang/String;

    iput-object p2, p0, Lad;->먯꽌:Ljava/lang/String;

    iput-object p3, p0, Lad;->ㅼ꽑嫄:Ljava/util/List;

    iput-object p4, p0, Lad;->弱밧:Ljava/lang/Integer;

    iput-object p5, p0, Lad;->쇰뒗:Ljava/lang/Integer;

    iput-object p6, p0, Lad;->대쫫:Ljava/util/List;

    iput-object p7, p0, Lad;->洹:Ljava/util/List;

    iput-object p8, p0, Lad;->몃Ъ:Ljava/util/List;

    return-void
.end method

.method public static 癤욱븳援(Ljava/lang/String;)Lad;
    .locals 9

    const/4 v0, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "qdata"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ad_type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "ad_networks"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lad;->癤욱븳援(Lorg/json/JSONObject;)Lo;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v4, "settings"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v4, "refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    const-string v6, "ad_network_timeout_millis"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "ad_network_timeout_millis"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    const-string v6, "imp_urls"

    invoke-static {v5, v6}, Lad;->癤욱븳援(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v7, "click_urls"

    invoke-static {v5, v7}, Lad;->癤욱븳援(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "nofill_urls"

    invoke-static {v5, v8}, Lad;->癤욱븳援(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v5, v0

    :goto_3
    new-instance v0, Lad;

    invoke-direct/range {v0 .. v8}, Lad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_3
    move-object v4, v0

    goto :goto_2

    :cond_4
    move-object v8, v0

    move-object v6, v0

    move-object v7, v0

    move-object v5, v0

    move-object v4, v0

    goto :goto_3
.end method

.method private static 癤욱븳援(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static 癤욱븳援(Lorg/json/JSONObject;)Lo;
    .locals 8

    const/4 v1, 0x0

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "allocation_id"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "adapters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v4, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    new-instance v1, Lo;

    invoke-direct {v1, v3, v2, v5, v0}, Lo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    return-object v1
.end method


# virtual methods
.method public ㅼ꽑嫄()Z
    .locals 1

    iget-object v0, p0, Lad;->弱밧:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 弱밧()I
    .locals 1

    iget-object v0, p0, Lad;->弱밧:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public 洹()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lad;->洹:Ljava/util/List;

    return-object v0
.end method

.method public 癤욱븳援()Z
    .locals 1

    iget-object v0, p0, Lad;->쇰뒗:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 궗()I
    .locals 1

    iget-object v0, p0, Lad;->쇰뒗:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public 대쫫()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lad;->대쫫:Ljava/util/List;

    return-object v0
.end method

.method public 먯껜蹂대떎()Lbm;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lad;->먯꽌:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "interstitial"

    iget-object v2, p0, Lad;->먯꽌:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbm;->癤욱븳援:Lbm;

    goto :goto_0

    :cond_1
    sget-object v0, Lad;->癤욱븳援:Ljava/util/Map;

    iget-object v2, p0, Lad;->먯꽌:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lbm;->癤욱븳援(Ll;)Lbm;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public 먯꽌()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lad;->궗:Ljava/lang/String;

    return-object v0
.end method

.method public 몃Ъ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lad;->몃Ъ:Ljava/util/List;

    return-object v0
.end method

.method public 쇰뒗()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lad;->ㅼ꽑嫄:Ljava/util/List;

    return-object v0
.end method
