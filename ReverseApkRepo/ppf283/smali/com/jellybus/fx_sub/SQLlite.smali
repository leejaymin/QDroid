.class public Lcom/jellybus/fx_sub/SQLlite;
.super Ljava/lang/Object;
.source "SQLlite.java"


# instance fields
.field private DBNAME:Ljava/lang/String;

.field private final Favorites_DB:Ljava/lang/String;

.field private final Favorites_NAME:Ljava/lang/String;

.field private final History_DB:Ljava/lang/String;

.field private final History_NAME:Ljava/lang/String;

.field public TNAME:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public db:Landroid/database/sqlite/SQLiteDatabase;

.field private isFavorites:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "favorite.db"

    iput-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->Favorites_DB:Ljava/lang/String;

    .line 14
    const-string v0, "history.db"

    iput-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->History_DB:Ljava/lang/String;

    .line 16
    const-string v0, "FAV"

    iput-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->Favorites_NAME:Ljava/lang/String;

    .line 17
    const-string v0, "HIS"

    iput-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->History_NAME:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/jellybus/fx_sub/SQLlite;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public closeDb()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    :cond_0
    return-void
.end method

.method public createT()Z
    .locals 4

    .prologue
    .line 55
    const-string v1, "create table FAV(_ID integer primary key autoincrement, FilterNumber)"

    .line 56
    .local v1, sql:Ljava/lang/String;
    const-string v2, "create table HIS(_ID integer primary key autoincrement, FilterNumber, DDATE date)"

    .line 59
    .local v2, sql2:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v3, 0x1

    .line 66
    :goto_0
    return v3

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, se:Landroid/database/SQLException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteD(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where FilterNumber=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 110
    .local v0, bindArgs:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0           #bindArgs:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dropT()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "drop table FAV"

    .line 71
    .local v0, sql:Ljava/lang/String;
    const-string v1, "drop table HIS"

    .line 73
    .local v1, sql2:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public insertD(I)V
    .locals 4
    .parameter "filterNumber"

    .prologue
    .line 83
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/SQLlite;->isFavorites:Z

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(FilterNumber) values(?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, sql:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 90
    .local v0, bindArgs:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #bindArgs:[Ljava/lang/Object;
    :goto_1
    return-void

    .line 86
    .end local v1           #sql:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(FilterNumber, DDATE) values(?, date(\'now\'))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #sql:Ljava/lang/String;
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public openDb()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/SQLlite;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/jellybus/fx_sub/SQLlite;->DBNAME:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v1, 0x1

    .line 44
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, se:Landroid/database/SQLException;
    goto :goto_0
.end method

.method public setMenu(Z)V
    .locals 1
    .parameter "isFavorite"

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    const-string v0, "favorite.db"

    iput-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->DBNAME:Ljava/lang/String;

    .line 28
    const-string v0, "FAV"

    iput-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/SQLlite;->isFavorites:Z

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "history.db"

    iput-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->DBNAME:Ljava/lang/String;

    .line 32
    const-string v0, "HIS"

    iput-object v0, p0, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/SQLlite;->isFavorites:Z

    goto :goto_0
.end method

.method public updateD(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "addr"
    .parameter "id"

    .prologue
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set FilterNumber=?, where _id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x3

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 100
    .local v0, bindArgs:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0           #bindArgs:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v2

    goto :goto_0
.end method
