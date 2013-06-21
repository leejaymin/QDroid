.class public Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/AchievementsStore;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/scoreloop/client/android/core/util/Cryptifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->b:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/scoreloop/client/android/core/util/Cryptifier;

    const-string v1, "com.scoreloop.achievements.store_"

    invoke-direct {v0, p2, v1}, Lcom/scoreloop/client/android/core/util/Cryptifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->c:Lcom/scoreloop/client/android/core/util/Cryptifier;

    .line 33
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Award;)Lcom/scoreloop/client/android/core/model/Achievement;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    :try_start_0
    new-instance v0, Lcom/scoreloop/client/android/core/model/Achievement;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, v1, p0}, Lcom/scoreloop/client/android/core/model/Achievement;-><init>(Lcom/scoreloop/client/android/core/model/Award;Lorg/json/JSONObject;Lcom/scoreloop/client/android/core/model/AchievementsStore;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/scoreloop/client/android/core/model/Achievement;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.scoreloop.achievements.store_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/Award;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Award;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 91
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 95
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-static {v1}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    :try_start_0
    iget-object v6, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->c:Lcom/scoreloop/client/android/core/util/Cryptifier;

    const/4 v7, 0x0

    invoke-interface {v2, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Award;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Award;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    return-object v3
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Achievement;)V
    .locals 4
    .parameter

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 66
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->c:Lcom/scoreloop/client/android/core/util/Cryptifier;

    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->b(Lcom/scoreloop/client/android/core/model/Achievement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    invoke-static {v3, v0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    :goto_1
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->c()Ljava/lang/String;
    :try_end_0
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    const-string v1, "did_query_server"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    const-string v1, "did_query_server"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method final c()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 37
    iget-object v5, p0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a:Landroid/content/Context;

    invoke-virtual {v5, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 38
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
