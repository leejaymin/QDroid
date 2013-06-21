.class public Lcom/scoreloop/client/android/core/addon/RSSItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/util/Date;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->a:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public static resetPersistentReadFlags(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "com.scoreloop.feed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 43
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/scoreloop/client/android/core/addon/RSSItem;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->b:Ljava/lang/String;

    .line 183
    return-void
.end method

.method final a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->h:Ljava/util/Date;

    .line 218
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->e:Z

    .line 222
    return-void
.end method

.method final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getIdentifier()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 177
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->c:Ljava/lang/String;

    .line 206
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->d:Ljava/lang/String;

    .line 210
    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->f:Ljava/lang/String;

    .line 214
    return-void
.end method

.method final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->i:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 67
    const/4 v0, 0x1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/scoreloop/client/android/core/addon/RSSItem;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "identifier of RSSItem must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrlString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDate()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->h:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hasPersistentReadFlag()Z
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->a:Landroid/content/Context;

    const-string v1, "com.scoreloop.feed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->g:Ljava/lang/Boolean;

    .line 161
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSticky()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->e:Z

    return v0
.end method

.method public setHasPersistentReadFlag(Z)V
    .locals 3
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->hasPersistentReadFlag()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->a:Landroid/content/Context;

    const-string v1, "com.scoreloop.feed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSItem;->g:Ljava/lang/Boolean;

    goto :goto_0
.end method
