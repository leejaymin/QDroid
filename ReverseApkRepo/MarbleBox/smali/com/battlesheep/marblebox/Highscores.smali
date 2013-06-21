.class public final Lcom/battlesheep/marblebox/Highscores;
.super Ljava/lang/Object;
.source "Highscores.java"


# static fields
.field public static final KEY_HISCORES:Ljava/lang/String; = "KEY_HISCORES"

.field public static final KEY_HISCORE_LEVEL:Ljava/lang/String; = "HS_HISCORE_LEVEL"

.field public static final KEY_HISCORE_SCORE:Ljava/lang/String; = "HS_HISCORE_SCORE"

.field public static final NUM_SCORES:I = 0xa

.field private static smAppContext:Landroid/content/Context;

.field private static smRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/battlesheep/marblebox/HighscoreRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addScore(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 5
    .parameter "name"
    .parameter "level"
    .parameter "score"

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-static {p2, p3}, Lcom/battlesheep/marblebox/Highscores;->checkEligible(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    .line 138
    :goto_0
    return v2

    .line 102
    :cond_0
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    new-instance v3, Lcom/battlesheep/marblebox/HighscoreRecord;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/battlesheep/marblebox/HighscoreRecord;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    sget-object v3, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/battlesheep/marblebox/HighscoreRecord;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/battlesheep/marblebox/HighscoreRecord;

    .line 105
    .local v1, tempArray:[Lcom/battlesheep/marblebox/HighscoreRecord;
    new-instance v2, Lcom/battlesheep/marblebox/Highscores$1;

    invoke-direct {v2}, Lcom/battlesheep/marblebox/Highscores$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 126
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 131
    :goto_2
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    .line 136
    invoke-static {}, Lcom/battlesheep/marblebox/Highscores;->persist()V

    move v2, v4

    .line 138
    goto :goto_0

    .line 128
    :cond_1
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_2
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    sget-object v3, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static checkEligible(J)Z
    .locals 3
    .parameter "score"

    .prologue
    const/4 v2, 0x1

    .line 78
    sget-object v0, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    sget-object v1, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/battlesheep/marblebox/HighscoreRecord;

    iget-wide v0, v0, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private static deserialize(Ljava/lang/String;)V
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 184
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, ja:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 188
    return-void

    .line 186
    :cond_0
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/battlesheep/marblebox/HighscoreRecord;->deserialize(Lorg/json/JSONObject;)Lcom/battlesheep/marblebox/HighscoreRecord;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/battlesheep/marblebox/HighscoreRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "applicationContext"

    .prologue
    .line 48
    sput-object p0, Lcom/battlesheep/marblebox/Highscores;->smAppContext:Landroid/content/Context;

    .line 51
    sget-object v3, Lcom/battlesheep/marblebox/Highscores;->smAppContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    .local v2, storage:Landroid/content/SharedPreferences;
    const-string v3, "KEY_HISCORES"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, json:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    invoke-static {v1}, Lcom/battlesheep/marblebox/Highscores;->deserialize(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static persist()V
    .locals 5

    .prologue
    const-string v4, "KEY_HISCORES"

    .line 146
    sget-object v3, Lcom/battlesheep/marblebox/Highscores;->smAppContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 147
    .local v2, storage:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 149
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "KEY_HISCORES"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    :try_start_0
    const-string v3, "KEY_HISCORES"

    invoke-static {}, Lcom/battlesheep/marblebox/Highscores;->serialize()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void

    .line 153
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 155
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static resetScores()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-static {}, Lcom/battlesheep/marblebox/Highscores;->persist()V

    .line 87
    return-void
.end method

.method private static serialize()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 168
    .local v0, ja:Lorg/json/JSONArray;
    sget-object v2, Lcom/battlesheep/marblebox/Highscores;->smRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 168
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/battlesheep/marblebox/HighscoreRecord;

    .line 169
    .local v1, record:Lcom/battlesheep/marblebox/HighscoreRecord;
    invoke-virtual {v1}, Lcom/battlesheep/marblebox/HighscoreRecord;->serialize()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method
