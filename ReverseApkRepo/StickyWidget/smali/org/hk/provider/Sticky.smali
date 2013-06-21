.class public Lorg/hk/provider/Sticky;
.super Ljava/lang/Object;
.source "Sticky.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hk/provider/Sticky$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table sticky( _id integer primary key autoincrement,widget_id integer not null,content text not null, back_ground_color integer , text_color integer, size integer);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "Sticky.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "sticky"

.field private static final DATABASE_VERSION:I = 0x3

.field public static final _BACK_GROUND_COLOR:Ljava/lang/String; = "back_ground_color"

.field public static _COLUMNS:[Ljava/lang/String; = null

.field public static final _CONTENT:Ljava/lang/String; = "content"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static final _SIZE:Ljava/lang/String; = "size"

.field public static final _TEXT_COLOR:Ljava/lang/String; = "text_color"

.field public static final _WIDGET_ID:Ljava/lang/String; = "widget_id"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lorg/hk/provider/Sticky$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "widget_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 30
    const-string v2, "back_ground_color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text_color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "size"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lorg/hk/provider/Sticky;->_COLUMNS:[Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/hk/provider/Sticky;->mCtx:Landroid/content/Context;

    .line 80
    return-void
.end method


# virtual methods
.method public alterDb()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE sticky ADD COLUMN back_ground_color integer;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE sticky ADD COLUMN text_color integer;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE sticky ADD COLUMN size integer;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE sticky SET back_ground_color = 0;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE sticky SET text_color = 0;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE sticky SET size = 0;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDbHelper:Lorg/hk/provider/Sticky$DatabaseHelper;

    invoke-virtual {v0}, Lorg/hk/provider/Sticky$DatabaseHelper;->close()V

    .line 90
    return-void
.end method

.method public delete(I)Z
    .locals 4
    .parameter "widgeID"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sticky"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "widget_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAll()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sticky"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchAll()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 182
    const-string v1, "sticky"

    sget-object v2, Lorg/hk/provider/Sticky;->_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method public findAll()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/hk/bean/StickyBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    const/4 v11, 0x0

    .line 135
    .local v11, sList:Ljava/util/List;,"Ljava/util/List<Lorg/hk/bean/StickyBean;>;"
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sticky"

    sget-object v2, Lorg/hk/provider/Sticky;->_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 137
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #sList:Ljava/util/List;,"Ljava/util/List<Lorg/hk/bean/StickyBean;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .restart local v11       #sList:Ljava/util/List;,"Ljava/util/List<Lorg/hk/bean/StickyBean;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    if-eqz v8, :cond_0

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v3

    .line 159
    :goto_0
    return-object v0

    .line 145
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v9, v0, :cond_4

    .line 156
    .end local v9           #i:I
    :cond_2
    if-eqz v8, :cond_3

    .line 157
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v11

    .line 159
    goto :goto_0

    .line 146
    .restart local v9       #i:I
    :cond_4
    new-instance v10, Lorg/hk/bean/StickyBean;

    invoke-direct {v10}, Lorg/hk/bean/StickyBean;-><init>()V

    .line 147
    .local v10, s:Lorg/hk/bean/StickyBean;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lorg/hk/bean/StickyBean;->widgetId:I

    .line 148
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lorg/hk/bean/StickyBean;->content:Ljava/lang/String;

    .line 149
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lorg/hk/bean/StickyBean;->backGroundColor:I

    .line 150
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lorg/hk/bean/StickyBean;->textColor:I

    .line 151
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lorg/hk/bean/StickyBean;->size:I

    .line 152
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 145
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public findByWidgetId(I)Lorg/hk/bean/StickyBean;
    .locals 11
    .parameter "widgetId"

    .prologue
    const/4 v4, 0x0

    .line 114
    const/4 v10, 0x0

    .line 115
    .local v10, sBean:Lorg/hk/bean/StickyBean;
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sticky"

    sget-object v2, Lorg/hk/provider/Sticky;->_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "widget_id = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "_id DESC"

    const-string v8, "1"

    move-object v5, v4

    move-object v6, v4

    .line 115
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 117
    .local v9, mCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v10, Lorg/hk/bean/StickyBean;

    .end local v10           #sBean:Lorg/hk/bean/StickyBean;
    invoke-direct {v10}, Lorg/hk/bean/StickyBean;-><init>()V

    .line 119
    .restart local v10       #sBean:Lorg/hk/bean/StickyBean;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lorg/hk/bean/StickyBean;->widgetId:I

    .line 121
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lorg/hk/bean/StickyBean;->content:Ljava/lang/String;

    .line 122
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lorg/hk/bean/StickyBean;->backGroundColor:I

    .line 123
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lorg/hk/bean/StickyBean;->textColor:I

    .line 124
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lorg/hk/bean/StickyBean;->size:I

    .line 126
    :cond_0
    if-eqz v9, :cond_1

    .line 127
    invoke-interface {v9}, Landroid/database/Cursor;->deactivate()V

    .line 128
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_1
    return-object v10
.end method

.method public open()Lorg/hk/provider/Sticky;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lorg/hk/provider/Sticky$DatabaseHelper;

    iget-object v1, p0, Lorg/hk/provider/Sticky;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/hk/provider/Sticky$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/hk/provider/Sticky;->mDbHelper:Lorg/hk/provider/Sticky$DatabaseHelper;

    .line 84
    iget-object v0, p0, Lorg/hk/provider/Sticky;->mDbHelper:Lorg/hk/provider/Sticky$DatabaseHelper;

    invoke-virtual {v0}, Lorg/hk/provider/Sticky$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    return-object p0
.end method

.method public save(Lorg/hk/bean/StickyBean;)J
    .locals 6
    .parameter "sBean"

    .prologue
    const/4 v4, 0x0

    const-string v5, "sticky"

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "widget_id"

    iget v2, p1, Lorg/hk/bean/StickyBean;->widgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "content"

    iget-object v2, p1, Lorg/hk/bean/StickyBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "back_ground_color"

    iget v2, p1, Lorg/hk/bean/StickyBean;->backGroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "text_color"

    iget v2, p1, Lorg/hk/bean/StickyBean;->textColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v1, "size"

    iget v2, p1, Lorg/hk/bean/StickyBean;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    iget v1, p1, Lorg/hk/bean/StickyBean;->widgetId:I

    invoke-virtual {p0, v1}, Lorg/hk/provider/Sticky;->findByWidgetId(I)Lorg/hk/bean/StickyBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sticky"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "widget_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget v3, p1, Lorg/hk/bean/StickyBean;->widgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v1, v5, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 105
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lorg/hk/provider/Sticky;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sticky"

    invoke-virtual {v1, v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_0
.end method
