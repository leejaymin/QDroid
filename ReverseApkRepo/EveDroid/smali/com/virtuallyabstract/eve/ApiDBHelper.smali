.class public Lcom/virtuallyabstract/eve/ApiDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ApiDBHelper.java"


# static fields
.field private static final CHARS_CREATE:Ljava/lang/String; = "create table chars (name text primary key, id integer, userid integer, apikey text)"

.field private static final DBNAME:Ljava/lang/String; = "EVEMON"

.field private static final DBVER:I = 0x1

.field private static final GROUPS_CREATE:Ljava/lang/String; = "create table groups (id integer primary key, name text)"

.field private static final SKILLS_CREATE:Ljava/lang/String; = "create table skills (id integer primary key, groupid integer, name text, descript text, rank integer, reqskills text, priattr text, secattr text)"


# instance fields
.field private CHARACTERS:Ljava/lang/String;

.field private dbMain:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 24
    const-string v0, "EVEMON"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    const-string v0, "http://api.eve-online.com/account/Characters.xml.aspx?userID=#USERID#&apiKey=#APIKEY#"

    iput-object v0, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->CHARACTERS:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public addCharacter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "id"
    .parameter "userid"
    .parameter "apiKey"

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from chars where name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, testsql:Ljava/lang/String;
    iget-object v2, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert into chars values(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', -1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, sql:Ljava/lang/String;
    iget-object v2, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 48
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 31
    return-void
.end method

.method public getCharList()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v2, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select name from chars"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 112
    .local v1, ctemp:Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, arrayTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 115
    .restart local p0
    :cond_0
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCharacter(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v8, ""

    .line 88
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 89
    .local v1, info:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 91
    iget-object v2, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select * from chars where name=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    .local v0, ctemp:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 95
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 96
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 104
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    return-object v1

    .line 100
    :cond_0
    const-string v2, ""

    aput-object v8, v1, v5

    .line 101
    const-string v2, ""

    aput-object v8, v1, v6

    .line 102
    const-string v2, ""

    aput-object v8, v1, v7

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 35
    const-string v0, "create table skills (id integer primary key, groupid integer, name text, descript text, rank integer, reqskills text, priattr text, secattr text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "create table groups (id integer primary key, name text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "create table chars (name text primary key, id integer, userid integer, apikey text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVer"
    .parameter "newVer"

    .prologue
    .line 53
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/ApiDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->dbMain:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    return-void
.end method

.method public populateCharList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "userid"
    .parameter "apiKey"

    .prologue
    .line 57
    iget-object v6, p0, Lcom/virtuallyabstract/eve/ApiDBHelper;->CHARACTERS:Ljava/lang/String;

    const-string v7, "#USERID#"

    invoke-virtual {v6, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, target:Ljava/lang/String;
    const-string v6, "#APIKEY#"

    invoke-virtual {v4, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 60
    new-instance v5, Lcom/virtuallyabstract/eve/XMLHandler;

    invoke-direct {v5}, Lcom/virtuallyabstract/eve/XMLHandler;-><init>()V

    .line 61
    .local v5, xml:Lcom/virtuallyabstract/eve/XMLHandler;
    invoke-virtual {v5, v4}, Lcom/virtuallyabstract/eve/XMLHandler;->parse(Ljava/lang/String;)V

    .line 62
    const-string v6, "row"

    invoke-virtual {v5, v6}, Lcom/virtuallyabstract/eve/XMLHandler;->getAttributesArray(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 63
    .local v0, chars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_1

    .line 65
    const-string v6, "CHARS"

    const-string v7, "NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "characterID"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, id:Ljava/lang/String;
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/virtuallyabstract/eve/ApiDBHelper;->addCharacter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
