.class public abstract Lcom/scoreloop/client/android/core/util/PreferencesStore;
.super Lcom/scoreloop/client/android/core/util/BaseStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/scoreloop/client/android/core/util/JSONSerializable;",
        ">",
        "Lcom/scoreloop/client/android/core/util/BaseStore",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/util/BaseStore;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/PreferencesStore;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/PreferencesStore;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 58
    :try_start_0
    invoke-interface {p1}, Lcom/scoreloop/client/android/core/util/JSONSerializable;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/PreferencesStore;->e()Lcom/scoreloop/client/android/core/util/Cryptifier;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/PreferencesStore;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/PreferencesStore;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/PreferencesStore;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/PreferencesStore;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/PreferencesStore;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/PreferencesStore;->e()Lcom/scoreloop/client/android/core/util/Cryptifier;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/PreferencesStore;->c()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    .line 36
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/scoreloop/client/android/core/util/JSONSerializable;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 39
    :catch_1
    move-exception v0

    goto :goto_1
.end method
