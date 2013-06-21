.class public final Lccc71/bmw/data/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lccc71/bmw/data/a/c;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lccc71/bmw/data/a/b;->a:Landroid/content/Context;

    .line 47
    new-instance v0, Lccc71/bmw/data/a/c;

    iget-object v1, p0, Lccc71/bmw/data/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/bmw/data/a/b;->b:Lccc71/bmw/data/a/c;

    .line 48
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lccc71/bmw/data/a/a;
    .locals 4
    .parameter

    .prologue
    .line 229
    new-instance v0, Lccc71/bmw/data/a/a;

    invoke-direct {v0}, Lccc71/bmw/data/a/a;-><init>()V

    .line 231
    const-string v1, "id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->a:I

    .line 232
    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    .line 233
    const-string v1, "original_mAh"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->c:I

    .line 234
    const-string v1, "min_percent"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->d:I

    .line 235
    const-string v1, "max_percent"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->e:I

    .line 236
    const-string v1, "min_voltage"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->f:I

    .line 237
    const-string v1, "max_voltage"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->g:I

    .line 238
    const-string v1, "min_voltage_ref"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->h:I

    .line 239
    const-string v1, "max_voltage_ref"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->i:I

    .line 240
    const-string v1, "measured_mAh"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->j:I

    .line 241
    const-string v1, "in_use_mAh"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->k:I

    .line 242
    const-string v1, "aging"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->l:I

    .line 243
    const-string v1, "precision"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->m:I

    .line 244
    new-instance v1, Lccc71/bmw/data/a;

    const-string v2, "estimate_data"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccc71/bmw/data/a;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    .line 246
    new-instance v1, Ljava/util/Date;

    const-string v2, "use_start"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lccc71/bmw/data/a/a;->q:Ljava/util/Date;

    .line 247
    new-instance v1, Ljava/util/Date;

    const-string v2, "last_use_start"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lccc71/bmw/data/a/a;->o:Ljava/util/Date;

    .line 248
    new-instance v1, Ljava/util/Date;

    const-string v2, "last_use_end"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lccc71/bmw/data/a/a;->p:Ljava/util/Date;

    .line 250
    return-object v0
.end method

.method private static c(Lccc71/bmw/data/a/a;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 201
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 203
    const-string v1, "name"

    iget-object v2, p0, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "original_mAh"

    iget v2, p0, Lccc71/bmw/data/a/a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v1, "measured_mAh"

    iget v2, p0, Lccc71/bmw/data/a/a;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v1, "in_use_mAh"

    iget v2, p0, Lccc71/bmw/data/a/a;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v1, "min_percent"

    iget v2, p0, Lccc71/bmw/data/a/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v1, "max_percent"

    iget v2, p0, Lccc71/bmw/data/a/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v1, "min_voltage"

    iget v2, p0, Lccc71/bmw/data/a/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v1, "max_voltage"

    iget v2, p0, Lccc71/bmw/data/a/a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v1, "precision"

    iget v2, p0, Lccc71/bmw/data/a/a;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v1, "min_voltage_ref"

    iget v2, p0, Lccc71/bmw/data/a/a;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v1, "max_voltage_ref"

    iget v2, p0, Lccc71/bmw/data/a/a;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v1, "aging"

    iget v2, p0, Lccc71/bmw/data/a/a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    iget-object v1, p0, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "estimate_data"

    iget-object v2, p0, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    invoke-virtual {v2}, Lccc71/bmw/data/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v1, p0, Lccc71/bmw/data/a/a;->q:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 218
    const-string v1, "use_start"

    iget-object v2, p0, Lccc71/bmw/data/a/a;->q:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    :cond_1
    iget-object v1, p0, Lccc71/bmw/data/a/a;->o:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 220
    const-string v1, "last_use_start"

    iget-object v2, p0, Lccc71/bmw/data/a/a;->o:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    :cond_2
    iget-object v1, p0, Lccc71/bmw/data/a/a;->p:Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 222
    const-string v1, "last_use_end"

    iget-object v2, p0, Lccc71/bmw/data/a/a;->p:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Lccc71/bmw/data/a/a;)Lccc71/bmw/data/a/a;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-static {p1}, Lccc71/bmw/data/a/b;->c(Lccc71/bmw/data/a/a;)Landroid/content/ContentValues;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "batteries"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 83
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "New ROW ID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "SELECT ROWID from batteries order by ROWID DESC limit 1"

    .line 85
    iget-object v2, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v0, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New ID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lccc71/bmw/data/a/b;->d(I)Lccc71/bmw/data/a/a;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-string v1, "battery_widget_monitor"

    const-string v2, "Cannot determine new row ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lccc71/bmw/data/a/b;->b:Lccc71/bmw/data/a/c;

    invoke-virtual {v0}, Lccc71/bmw/data/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lccc71/bmw/data/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    const-string v1, "currentBattery"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 75
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 58
    iget-object v0, p0, Lccc71/bmw/data/a/b;->b:Lccc71/bmw/data/a/c;

    invoke-virtual {v0}, Lccc71/bmw/data/a/c;->close()V

    .line 59
    return-void
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "batteries"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public final b(Lccc71/bmw/data/a/a;)V
    .locals 5
    .parameter

    .prologue
    .line 194
    invoke-static {p1}, Lccc71/bmw/data/a/b;->c(Lccc71/bmw/data/a/a;)Landroid/content/ContentValues;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "batteries"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lccc71/bmw/data/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    const-string v1, "currentBattery"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final c(I)[Lccc71/bmw/data/a/a;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "batteries"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id != \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "name"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 168
    new-array v0, v3, [Lccc71/bmw/data/a/a;

    move v1, v8

    .line 169
    :goto_0
    if-lt v1, v3, :cond_0

    .line 177
    :goto_1
    return-object v0

    .line 171
    :cond_0
    invoke-static {v2}, Lccc71/bmw/data/a/b;->a(Landroid/database/Cursor;)Lccc71/bmw/data/a/a;

    move-result-object v4

    aput-object v4, v0, v1

    .line 172
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    new-array v0, v8, [Lccc71/bmw/data/a/a;

    goto :goto_1
.end method

.method public final d()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "batteries"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v2, v8

    const-string v7, "id"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v3, v2, [I

    move v0, v8

    :goto_0
    if-lt v0, v2, :cond_0

    .line 137
    array-length v0, v3

    return v0

    .line 136
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d(I)Lccc71/bmw/data/a/a;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "batteries"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "id"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-static {v0}, Lccc71/bmw/data/a/b;->a(Landroid/database/Cursor;)Lccc71/bmw/data/a/a;

    move-result-object v2

    .line 189
    :cond_0
    return-object v2
.end method

.method public final e()[Lccc71/bmw/data/a/a;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lccc71/bmw/data/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "batteries"

    const-string v7, "name"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_1

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 148
    new-array v0, v3, [Lccc71/bmw/data/a/a;

    move v1, v8

    .line 149
    :goto_0
    if-lt v1, v3, :cond_0

    .line 157
    :goto_1
    return-object v0

    .line 151
    :cond_0
    invoke-static {v2}, Lccc71/bmw/data/a/b;->a(Landroid/database/Cursor;)Lccc71/bmw/data/a/a;

    move-result-object v4

    aput-object v4, v0, v1

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    new-array v0, v8, [Lccc71/bmw/data/a/a;

    goto :goto_1
.end method
