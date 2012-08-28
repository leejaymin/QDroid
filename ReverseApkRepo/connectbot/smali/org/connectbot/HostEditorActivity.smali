.class public Lorg/connectbot/HostEditorActivity;
.super Landroid/preference/PreferenceActivity;
.source "HostEditorActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/HostEditorActivity$CharsetHolder;,
        Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;
    }
.end annotation


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private host:Lorg/connectbot/bean/HostBean;

.field protected hostBridge:Lorg/connectbot/service/TerminalBridge;

.field protected hostdb:Lorg/connectbot/util/HostDatabase;

.field private pref:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

.field private pubkeydb:Lorg/connectbot/util/PubkeyDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 229
    iput-object v0, p0, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 230
    iput-object v0, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/HostEditorActivity;)Lorg/connectbot/bean/HostBean;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->host:Lorg/connectbot/bean/HostBean;

    return-object v0
.end method

.method static synthetic access$1(Lorg/connectbot/HostEditorActivity;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lorg/connectbot/HostEditorActivity;->initCharsetPref(Landroid/preference/ListPreference;)V

    return-void
.end method

.method private initCharsetPref(Landroid/preference/ListPreference;)V
    .locals 1
    .parameter "charsetPref"

    .prologue
    .line 368
    invoke-static {}, Lorg/connectbot/HostEditorActivity$CharsetHolder;->getCharsetIds()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 369
    invoke-static {}, Lorg/connectbot/HostEditorActivity$CharsetHolder;->getCharsetNames()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method private updateSummaries()V
    .locals 13

    .prologue
    .line 335
    iget-object v7, p0, Lorg/connectbot/HostEditorActivity;->pref:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    iget-object v7, v7, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 365
    return-void

    .line 335
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 336
    .local v2, key:Ljava/lang/String;
    const-string v7, "postlogin"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 337
    invoke-virtual {p0, v2}, Lorg/connectbot/HostEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 338
    .local v4, pref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 339
    instance-of v7, v4, Landroid/preference/CheckBoxPreference;

    if-nez v7, :cond_0

    .line 340
    iget-object v7, p0, Lorg/connectbot/HostEditorActivity;->pref:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    const-string v9, ""

    invoke-virtual {v7, v2, v9}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, value:Ljava/lang/CharSequence;
    const-string v7, "pubkeyid"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 344
    :try_start_0
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 345
    .local v5, pubkeyId:I
    if-ltz v5, :cond_3

    .line 346
    iget-object v7, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    int-to-long v9, v5

    invoke-virtual {v7, v9, v10}, Lorg/connectbot/util/PubkeyDatabase;->getNickname(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v5           #pubkeyId:I
    :catch_0
    move-exception v7

    .line 362
    :cond_2
    :goto_1
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    .restart local v5       #pubkeyId:I
    :cond_3
    int-to-long v9, v5

    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-nez v7, :cond_4

    .line 348
    const v7, 0x7f08006a

    :try_start_1
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 349
    :cond_4
    int-to-long v9, v5

    const-wide/16 v11, -0x2

    cmp-long v7, v9, v11

    if-nez v7, :cond_0

    .line 350
    const v7, 0x7f080069

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 355
    .end local v5           #pubkeyId:I
    :cond_5
    instance-of v7, v4, Landroid/preference/ListPreference;

    if-eqz v7, :cond_2

    move-object v3, v4

    .line 356
    check-cast v3, Landroid/preference/ListPreference;

    .local v3, listPref:Landroid/preference/ListPreference;
    move-object v7, v6

    .line 357
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 358
    .local v1, entryIndex:I
    if-ltz v1, :cond_2

    .line 359
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v6, v7, v1

    goto :goto_1
.end method


# virtual methods
.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 224
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->pref:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Lorg/connectbot/HostEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.TITLE"

    const-wide/16 v9, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 247
    .local v2, hostId:J
    new-instance v7, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v7, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 248
    new-instance v7, Lorg/connectbot/util/PubkeyDatabase;

    invoke-direct {v7, p0}, Lorg/connectbot/util/PubkeyDatabase;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 250
    iget-object v7, p0, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v7, v2, v3}, Lorg/connectbot/util/HostDatabase;->findHostById(J)Lorg/connectbot/bean/HostBean;

    move-result-object v7

    iput-object v7, p0, Lorg/connectbot/HostEditorActivity;->host:Lorg/connectbot/bean/HostBean;

    .line 252
    new-instance v7, Lorg/connectbot/HostEditorActivity$1;

    invoke-direct {v7, p0}, Lorg/connectbot/HostEditorActivity$1;-><init>(Lorg/connectbot/HostEditorActivity;)V

    iput-object v7, p0, Lorg/connectbot/HostEditorActivity;->connection:Landroid/content/ServiceConnection;

    .line 264
    new-instance v7, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    const-string v8, "hosts"

    invoke-direct {v7, p0, v8, v2, v3}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;-><init>(Lorg/connectbot/HostEditorActivity;Ljava/lang/String;J)V

    iput-object v7, p0, Lorg/connectbot/HostEditorActivity;->pref:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    .line 265
    iget-object v7, p0, Lorg/connectbot/HostEditorActivity;->pref:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    invoke-virtual {v7, p0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 267
    const/high16 v7, 0x7f05

    invoke-virtual {p0, v7}, Lorg/connectbot/HostEditorActivity;->addPreferencesFromResource(I)V

    .line 272
    const-string v7, "pubkeyid"

    invoke-virtual {p0, v7}, Lorg/connectbot/HostEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 274
    .local v6, pubkeyPref:Landroid/preference/ListPreference;
    new-instance v5, Ljava/util/LinkedList;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 275
    .local v5, pubkeyNicks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    const-string v8, "nickname"

    invoke-virtual {v7, v8}, Lorg/connectbot/util/PubkeyDatabase;->allValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 278
    new-instance v4, Ljava/util/LinkedList;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v4, pubkeyIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Lorg/connectbot/util/PubkeyDatabase;->allValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 283
    const-string v7, "encoding"

    invoke-virtual {p0, v7}, Lorg/connectbot/HostEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 285
    .local v0, charsetPref:Landroid/preference/ListPreference;
    invoke-static {}, Lorg/connectbot/HostEditorActivity$CharsetHolder;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 286
    invoke-direct {p0, v0}, Lorg/connectbot/HostEditorActivity;->initCharsetPref(Landroid/preference/ListPreference;)V

    .line 300
    :goto_0
    invoke-direct {p0}, Lorg/connectbot/HostEditorActivity;->updateSummaries()V

    .line 301
    return-void

    .line 288
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    .line 289
    .local v1, currentCharsetPref:[Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 290
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 293
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lorg/connectbot/HostEditorActivity$2;

    invoke-direct {v8, p0, v0}, Lorg/connectbot/HostEditorActivity$2;-><init>(Lorg/connectbot/HostEditorActivity;Landroid/preference/ListPreference;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 374
    invoke-direct {p0}, Lorg/connectbot/HostEditorActivity;->updateSummaries()V

    .line 377
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    .line 379
    const-string v1, "encoding"

    sget-object v2, Lorg/connectbot/util/HostDatabase;->ENCODING_DEFAULT:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalBridge;->setCharset(Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 305
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/connectbot/HostEditorActivity;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/connectbot/HostEditorActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 309
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Lorg/connectbot/util/PubkeyDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/PubkeyDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 314
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 320
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/connectbot/HostEditorActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 322
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v0}, Lorg/connectbot/util/HostDatabase;->close()V

    .line 324
    iput-object v1, p0, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    invoke-virtual {v0}, Lorg/connectbot/util/PubkeyDatabase;->close()V

    .line 329
    iput-object v1, p0, Lorg/connectbot/HostEditorActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 331
    :cond_1
    return-void
.end method
