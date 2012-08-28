.class public Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;
.super Ljava/lang/Object;
.source "HostEditorActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

.field private update:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    .line 114
    return-object p0
.end method

.method public commit()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 119
    iget-object v2, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    #getter for: Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->this$0:Lorg/connectbot/HostEditorActivity;
    invoke-static {v2}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->access$1(Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;)Lorg/connectbot/HostEditorActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v2}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    iget-object v2, v2, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->table:Ljava/lang/String;

    iget-object v3, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    const-string v4, "_id = ?"

    new-array v5, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    iget-wide v7, v7, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    iget-object v2, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    invoke-virtual {v2}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->cacheValues()V

    .line 127
    iget-object v2, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    iget-object v2, v2, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    return v9

    .line 127
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 128
    .local v1, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v3, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 140
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 144
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 148
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 152
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 157
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HostEditor Prefs do not support Set<String>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 164
    return-object p0
.end method
