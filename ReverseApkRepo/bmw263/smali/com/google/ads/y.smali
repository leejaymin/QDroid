.class public final Lcom/google/ads/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/ads/z;

    invoke-direct {v0}, Lcom/google/ads/z;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/y;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-static {p1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lcom/google/ads/y;->b:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Lcom/google/ads/y;->c:Ljava/lang/String;

    .line 257
    iput-object p3, p0, Lcom/google/ads/y;->d:Ljava/util/List;

    .line 258
    iput-object p4, p0, Lcom/google/ads/y;->e:Ljava/lang/Integer;

    .line 259
    iput-object p5, p0, Lcom/google/ads/y;->f:Ljava/lang/Integer;

    .line 260
    iput-object p6, p0, Lcom/google/ads/y;->g:Ljava/util/List;

    .line 261
    iput-object p7, p0, Lcom/google/ads/y;->h:Ljava/util/List;

    .line 262
    iput-object p8, p0, Lcom/google/ads/y;->i:Ljava/util/List;

    .line 263
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/google/ads/j;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v0, "allocation_id"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    const-string v0, "adapters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 185
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 186
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 187
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 194
    if-eqz v4, :cond_2

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 196
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 197
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 202
    :cond_2
    new-instance v1, Lcom/google/ads/j;

    invoke-direct {v1, v3, v2, v5, v0}, Lcom/google/ads/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/google/ads/y;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 97
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v1, "qdata"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "ad_type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ad_type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    :goto_0
    const-string v3, "ad_networks"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 106
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/google/ads/y;->a(Lorg/json/JSONObject;)Lcom/google/ads/j;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object v2, v0

    .line 99
    goto :goto_0

    .line 108
    :cond_1
    const-string v4, "settings"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_4

    .line 115
    const-string v4, "refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    const-string v4, "refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 118
    :goto_2
    const-string v6, "ad_network_timeout_millis"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    const-string v0, "ad_network_timeout_millis"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 123
    :cond_2
    const-string v6, "imp_urls"

    invoke-static {v5, v6}, Lcom/google/ads/y;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 124
    const-string v7, "click_urls"

    invoke-static {v5, v7}, Lcom/google/ads/y;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 125
    const-string v8, "nofill_urls"

    invoke-static {v5, v8}, Lcom/google/ads/y;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v5, v0

    .line 127
    :goto_3
    new-instance v0, Lcom/google/ads/y;

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

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

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_1

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 238
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 243
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/ads/y;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/ads/y;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/ads/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ads/y;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/ads/y;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/ads/y;->d:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/ads/y;->g:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/ads/y;->h:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/ads/y;->i:Ljava/util/List;

    return-object v0
.end method

.method public final j()Lcom/google/ads/internal/u;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/google/ads/y;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 226
    :goto_0
    return-object v0

    .line 215
    :cond_0
    const-string v0, "interstitial"

    iget-object v2, p0, Lcom/google/ads/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/u;

    goto :goto_0

    .line 221
    :cond_1
    sget-object v0, Lcom/google/ads/y;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/ads/y;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/g;

    .line 222
    if-eqz v0, :cond_2

    .line 223
    invoke-static {v0}, Lcom/google/ads/internal/u;->a(Lcom/google/ads/g;)Lcom/google/ads/internal/u;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 226
    goto :goto_0
.end method
