.class public Lnet/ser1/timetracker/DBBackup;
.super Landroid/os/AsyncTask;
.source "DBBackup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIMARY:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static final SETMAX:I = 0x2


# instance fields
.field private callback:Lnet/ser1/timetracker/Tasks;

.field private cancel:Z

.field private message:Ljava/lang/String;

.field private operation:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private result:Lnet/ser1/timetracker/Tasks$Result;


# direct methods
.method public constructor <init>(Lnet/ser1/timetracker/Tasks;Landroid/app/ProgressDialog;I)V
    .locals 2
    .parameter "callback"
    .parameter "progress"
    .parameter "operation"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-boolean v1, p0, Lnet/ser1/timetracker/DBBackup;->cancel:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/ser1/timetracker/DBBackup;->message:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lnet/ser1/timetracker/DBBackup;->callback:Lnet/ser1/timetracker/Tasks;

    .line 39
    iput-object p2, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    .line 40
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 41
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 42
    iput p3, p0, Lnet/ser1/timetracker/DBBackup;->operation:I

    .line 43
    return-void
.end method

.method private copyTask(Landroid/database/sqlite/SQLiteDatabase;Lnet/ser1/timetracker/Task;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "sourceDb"
    .parameter "t"
    .parameter "destDb"

    .prologue
    .line 163
    iget-boolean v3, p0, Lnet/ser1/timetracker/DBBackup;->cancel:Z

    if-eqz v3, :cond_0

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {p2}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v3, "tasks"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 167
    .local v0, id:J
    invoke-virtual {p2}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v3

    long-to-int v4, v0

    invoke-direct {p0, p1, v3, p3, v4}, Lnet/ser1/timetracker/DBBackup;->copyTimes(Landroid/database/sqlite/SQLiteDatabase;ILandroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0
.end method

.method private copyTimes(Landroid/database/sqlite/SQLiteDatabase;ILandroid/database/sqlite/SQLiteDatabase;I)V
    .locals 23
    .parameter "sourceDb"
    .parameter "sourceId"
    .parameter "destDb"
    .parameter "destId"

    .prologue
    .line 123
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/DBBackup;->publishProgress([Ljava/lang/Object;)V

    .line 124
    const-string v6, "ranges"

    sget-object v7, Lnet/ser1/timetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    .line 125
    const-string v8, "task_id = ?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    .line 124
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 126
    .local v18, source:Landroid/database/Cursor;
    const-string v6, "ranges"

    sget-object v7, Lnet/ser1/timetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    .line 127
    const-string v8, "task_id = ?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p3

    .line 126
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 128
    .local v13, dest:Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v14, destTimes:Ljava/util/List;,"Ljava/util/List<Lnet/ser1/timetracker/TimeRange;>;"
    const-wide/high16 v5, 0x4059

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v8

    add-int/2addr v7, v8

    int-to-double v7, v7

    div-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .line 130
    .local v21, step:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/ser1/timetracker/DBBackup;->cancel:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/DBBackup;->publishProgress([Ljava/lang/Object;)V

    .line 134
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 135
    new-instance v5, Lnet/ser1/timetracker/TimeRange;

    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lnet/ser1/timetracker/TimeRange;-><init>(JJ)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 131
    if-nez v5, :cond_0

    .line 139
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 140
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 141
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v22, values:Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/ser1/timetracker/DBBackup;->cancel:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 144
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/DBBackup;->publishProgress([Ljava/lang/Object;)V

    .line 145
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 146
    .local v19, start:J
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 147
    .local v15, end:J
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 148
    new-instance v17, Lnet/ser1/timetracker/TimeRange;

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    move-wide v3, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/ser1/timetracker/TimeRange;-><init>(JJ)V

    .line 149
    .local v17, s:Lnet/ser1/timetracker/TimeRange;
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 150
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 151
    const-string v5, "task_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v5, "start"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v5, "end"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v5, "ranges"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 157
    .end local v17           #s:Lnet/ser1/timetracker/TimeRange;
    :cond_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 142
    if-nez v5, :cond_5

    .line 159
    .end local v15           #end:J
    .end local v19           #start:J
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private readTasks(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .parameter "readCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/ser1/timetracker/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, tasks:Ljava/util/List;,"Ljava/util/List<Lnet/ser1/timetracker/Task;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    :cond_0
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 176
    .local v2, tid:I
    new-instance v0, Lnet/ser1/timetracker/Task;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lnet/ser1/timetracker/Task;-><init>(Ljava/lang/String;I)V

    .line 177
    .local v0, t:Lnet/ser1/timetracker/Task;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 174
    if-nez v3, :cond_0

    .line 180
    .end local v0           #t:Lnet/ser1/timetracker/Task;
    .end local v2           #tid:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 181
    return-object v1
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/DBBackup;->doInBackground([Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 22
    .parameter "ss"

    .prologue
    .line 47
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .line 48
    .local v5, source:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x1

    aget-object v14, p1, v6

    .line 51
    .local v14, dest:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "tasks"

    sget-object v7, Lnet/ser1/timetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "rowid"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 52
    .local v17, readCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lnet/ser1/timetracker/DBBackup;->readTasks(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v20

    .line 55
    .local v20, tasks:Ljava/util/List;,"Ljava/util/List<Lnet/ser1/timetracker/Task;>;"
    const-string v7, "tasks"

    sget-object v8, Lnet/ser1/timetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "rowid"

    move-object v6, v14

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lnet/ser1/timetracker/DBBackup;->readTasks(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v21

    .line 58
    .local v21, toReorder:Ljava/util/List;,"Ljava/util/List<Lnet/ser1/timetracker/Task;>;"
    const-wide/high16 v6, 0x4059

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 v18, v0

    .line 64
    .local v18, step:I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 80
    sget-object v6, Lnet/ser1/timetracker/Tasks$Result;->SUCCESS:Lnet/ser1/timetracker/Tasks$Result;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/ser1/timetracker/DBBackup;->result:Lnet/ser1/timetracker/Tasks$Result;

    .line 81
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/ser1/timetracker/DBBackup;->message:Ljava/lang/String;

    .line 82
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 64
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/ser1/timetracker/Task;

    .line 65
    .local v19, t:Lnet/ser1/timetracker/Task;
    const/4 v15, 0x0

    .line 66
    .local v15, matchedTask:Z
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/DBBackup;->publishProgress([Ljava/lang/Object;)V

    .line 67
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 76
    :goto_2
    if-nez v15, :cond_0

    .line 77
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v19

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lnet/ser1/timetracker/DBBackup;->copyTask(Landroid/database/sqlite/SQLiteDatabase;Lnet/ser1/timetracker/Task;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/ser1/timetracker/Task;

    .line 68
    .local v16, o:Lnet/ser1/timetracker/Task;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/ser1/timetracker/DBBackup;->cancel:Z

    move v8, v0

    if-eqz v8, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 70
    invoke-virtual/range {v19 .. v19}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v7

    move-object v3, v14

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/ser1/timetracker/DBBackup;->copyTimes(Landroid/database/sqlite/SQLiteDatabase;ILandroid/database/sqlite/SQLiteDatabase;I)V

    .line 71
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    const/4 v15, 0x1

    .line 73
    goto :goto_2
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ser1/timetracker/DBBackup;->cancel:Z

    .line 119
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 120
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/DBBackup;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->callback:Lnet/ser1/timetracker/Tasks;

    iget-object v1, p0, Lnet/ser1/timetracker/DBBackup;->result:Lnet/ser1/timetracker/Tasks$Result;

    iget-object v2, p0, Lnet/ser1/timetracker/DBBackup;->message:Ljava/lang/String;

    iget v3, p0, Lnet/ser1/timetracker/DBBackup;->operation:I

    invoke-virtual {v0, v1, v2, v3}, Lnet/ser1/timetracker/Tasks;->finishedCopy(Lnet/ser1/timetracker/Tasks$Result;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "vs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 95
    :pswitch_0
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 102
    :pswitch_1
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lnet/ser1/timetracker/DBBackup;->progressDialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/DBBackup;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
