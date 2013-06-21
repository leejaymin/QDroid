.class public Lorg/connectbot/HostEditor;
.super Landroid/preference/PreferenceActivity;
.source "HostEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/HostEditor$CursorPreferenceHack;
    }
.end annotation


# instance fields
.field public pref:Lorg/connectbot/HostEditor$CursorPreferenceHack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 4
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSharedPreferences(name=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lorg/connectbot/HostEditor;->pref:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    new-instance v0, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, db:Lorg/connectbot/util/HostDatabase;
    invoke-virtual {p0}, Lorg/connectbot/HostEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 186
    .local v1, id:I
    new-instance v2, Lorg/connectbot/HostEditor$CursorPreferenceHack;

    invoke-virtual {v0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "hosts"

    invoke-direct {v2, p0, v3, v4, v1}, Lorg/connectbot/HostEditor$CursorPreferenceHack;-><init>(Lorg/connectbot/HostEditor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/connectbot/HostEditor;->pref:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    .line 187
    iget-object v2, p0, Lorg/connectbot/HostEditor;->pref:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    invoke-virtual {v2, p0}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 189
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lorg/connectbot/HostEditor;->addPreferencesFromResource(I)V

    .line 191
    invoke-virtual {p0}, Lorg/connectbot/HostEditor;->updateSummaries()V

    .line 194
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/connectbot/HostEditor;->updateSummaries()V

    .line 211
    return-void
.end method

.method public updateSummaries()V
    .locals 5

    .prologue
    .line 198
    iget-object v2, p0, Lorg/connectbot/HostEditor;->pref:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    iget-object v2, v2, Lorg/connectbot/HostEditor$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    return-void

    .line 198
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/connectbot/HostEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 200
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 201
    instance-of v3, v1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_0

    .line 202
    iget-object v3, p0, Lorg/connectbot/HostEditor;->pref:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
