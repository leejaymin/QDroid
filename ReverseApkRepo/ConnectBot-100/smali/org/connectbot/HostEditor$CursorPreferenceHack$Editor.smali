.class public Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;
.super Ljava/lang/Object;
.source "HostEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostEditor$CursorPreferenceHack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/HostEditor$CursorPreferenceHack;

.field public update:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lorg/connectbot/HostEditor$CursorPreferenceHack;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    .line 74
    return-object p0
.end method

.method public commit()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commit() changes back to database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    iget-object v1, v1, Lorg/connectbot/HostEditor$CursorPreferenceHack;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    iget-object v2, v2, Lorg/connectbot/HostEditor$CursorPreferenceHack;->table:Ljava/lang/String;

    iget-object v3, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    const-string v4, "_id = ?"

    new-array v5, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    iget v7, v7, Lorg/connectbot/HostEditor$CursorPreferenceHack;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    invoke-virtual {v1}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->cacheValues()V

    .line 85
    iget-object v1, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    iget-object v1, v1, Lorg/connectbot/HostEditor$CursorPreferenceHack;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    return v8

    .line 85
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 86
    .local v0, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v2, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->this$1:Lorg/connectbot/HostEditor$CursorPreferenceHack;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 93
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 97
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 105
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Editor.putString(key=%s, value=%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .parameter "key"

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Editor.remove(key=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;->update:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 117
    return-object p0
.end method
