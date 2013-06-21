.class public Lorg/connectbot/HostEditor$CursorPreferenceHack;
.super Ljava/lang/Object;
.source "HostEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CursorPreferenceHack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;
    }
.end annotation


# instance fields
.field protected final db:Landroid/database/sqlite/SQLiteDatabase;

.field protected final id:I

.field public listeners:Ljava/util/List;
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

.field final synthetic this$0:Lorg/connectbot/HostEditor;

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
.method public constructor <init>(Lorg/connectbot/HostEditor;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "db"
    .parameter "table"
    .parameter "id"

    .prologue
    .line 43
    iput-object p1, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->this$0:Lorg/connectbot/HostEditor;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->values:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->listeners:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    iput-object p3, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->table:Ljava/lang/String;

    .line 39
    iput p4, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->id:I

    .line 41
    invoke-virtual {p0}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->cacheValues()V

    return-void
.end method


# virtual methods
.method protected cacheValues()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->table:Ljava/lang/String;

    const-string v3, "_id = ?"

    .line 50
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 49
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 51
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lt v9, v0, :cond_0

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 61
    return-void

    .line 54
    :cond_0
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, key:Ljava/lang/String;
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, value:Ljava/lang/String;
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->edit()Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "edit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;

    invoke-direct {v0, p0}, Lorg/connectbot/HostEditor$CursorPreferenceHack$Editor;-><init>(Lorg/connectbot/HostEditor$CursorPreferenceHack;)V

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
    .line 129
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->values:Ljava/util/Map;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 133
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 137
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 141
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 145
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/connectbot/HostEditor$CursorPreferenceHack;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(key=%s, defValue=%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    .line 152
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 158
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 162
    iget-object v0, p0, Lorg/connectbot/HostEditor$CursorPreferenceHack;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method
