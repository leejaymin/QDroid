.class public Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;
.super Ljava/lang/Object;
.source "HostEditorActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CursorPreferenceHack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;
    }
.end annotation


# instance fields
.field protected final id:J

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final table:Ljava/lang/String;

.field final synthetic this$0:Lorg/connectbot/HostEditorActivity;

.field protected values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/connectbot/HostEditorActivity;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter "table"
    .parameter "id"

    .prologue
    .line 60
    iput-object p1, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->this$0:Lorg/connectbot/HostEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->values:Ljava/util/Map;

    .line 209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->listeners:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->table:Ljava/lang/String;

    .line 62
    iput-wide p3, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->id:J

    .line 64
    invoke-virtual {p0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->cacheValues()V

    .line 65
    return-void
.end method

.method static synthetic access$1(Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;)Lorg/connectbot/HostEditorActivity;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->this$0:Lorg/connectbot/HostEditorActivity;

    return-object v0
.end method


# virtual methods
.method protected final cacheValues()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->this$0:Lorg/connectbot/HostEditorActivity;

    iget-object v1, v1, Lorg/connectbot/HostEditorActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v1}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->table:Ljava/lang/String;

    const-string v3, "_id = ?"

    .line 73
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 72
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 75
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-lt v9, v1, :cond_1

    .line 83
    .end local v9           #i:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 101
    return-void

    .line 77
    .restart local v9       #i:I
    :cond_1
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, key:Ljava/lang/String;
    const-string v1, "hostkey"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, value:Ljava/lang/String;
    iget-object v1, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->edit()Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;

    invoke-direct {v0, p0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack$Editor;-><init>(Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->values:Ljava/util/Map;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 183
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 187
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 195
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 201
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, defValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "HostEditor Prefs do not support Set<String>"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 212
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 216
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$CursorPreferenceHack;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method
