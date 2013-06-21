.class Lnet/ser1/timetracker/Tasks$TaskAdapter;
.super Landroid/widget/BaseAdapter;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ser1/timetracker/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskAdapter"
.end annotation


# instance fields
.field private currentRangeEnd:J

.field private currentRangeStart:J

.field private dbHelper:Lnet/ser1/timetracker/DBHelper;

.field private savedContext:Landroid/content/Context;

.field protected tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ser1/timetracker/Task;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/ser1/timetracker/Tasks;


# direct methods
.method public constructor <init>(Lnet/ser1/timetracker/Tasks;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 827
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->this$0:Lnet/ser1/timetracker/Tasks;

    .line 822
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 823
    iput-object p2, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->savedContext:Landroid/content/Context;

    .line 824
    new-instance v0, Lnet/ser1/timetracker/DBHelper;

    invoke-direct {v0, p2}, Lnet/ser1/timetracker/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    .line 825
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v0}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$0(Lnet/ser1/timetracker/Tasks$TaskAdapter;)J
    .locals 2
    .parameter

    .prologue
    .line 819
    iget-wide v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J

    return-wide v0
.end method

.method static synthetic access$1(Lnet/ser1/timetracker/Tasks$TaskAdapter;)J
    .locals 2
    .parameter

    .prologue
    .line 820
    iget-wide v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    return-wide v0
.end method

.method static synthetic access$2(Lnet/ser1/timetracker/Tasks$TaskAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks()V

    return-void
.end method

.method private loadTasks()V
    .locals 2

    .prologue
    .line 845
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    iput-wide v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J

    .line 846
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks(Ljava/lang/String;Z)V

    .line 847
    return-void
.end method

.method private loadTasks(Ljava/lang/String;Z)V
    .locals 12
    .parameter "whereClause"
    .parameter "loadCurrent"

    .prologue
    .line 897
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 899
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v1}, Lnet/ser1/timetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 900
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "tasks"

    sget-object v2, Lnet/ser1/timetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 902
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 903
    .local v10, t:Lnet/ser1/timetracker/Task;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 905
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 906
    .local v11, tid:I
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 907
    .local v4, tids:[Ljava/lang/String;
    new-instance v10, Lnet/ser1/timetracker/Task;

    .end local v10           #t:Lnet/ser1/timetracker/Task;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v11}, Lnet/ser1/timetracker/Task;-><init>(Ljava/lang/String;I)V

    .line 908
    .restart local v10       #t:Lnet/ser1/timetracker/Task;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT SUM(end) - SUM(start) AS total FROM ranges WHERE task_id = ? AND end NOTNULL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 909
    .local v9, r:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lnet/ser1/timetracker/Task;->setCollapsed(J)V

    .line 912
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 913
    if-eqz p2, :cond_3

    .line 914
    const-string v1, "ranges"

    sget-object v2, Lnet/ser1/timetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    .line 915
    const-string v3, "task_id = ? AND end ISNULL"

    .line 916
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 914
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 917
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 918
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lnet/ser1/timetracker/Task;->setStartTime(J)V

    .line 920
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 922
    :cond_3
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 904
    if-nez v1, :cond_0

    .line 925
    .end local v4           #tids:[Ljava/lang/String;
    .end local v9           #r:Landroid/database/Cursor;
    .end local v11           #tid:I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 926
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 927
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->this$0:Lnet/ser1/timetracker/Tasks;

    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->findCurrentlyActive()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #setter for: Lnet/ser1/timetracker/Tasks;->running:Z
    invoke-static {v1, v2}, Lnet/ser1/timetracker/Tasks;->access$3(Lnet/ser1/timetracker/Tasks;Z)V

    .line 928
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 929
    return-void
.end method

.method private makeWhereClause(Ljava/util/Calendar;Ljava/util/Calendar;)[Ljava/lang/String;
    .locals 12
    .parameter "start"
    .parameter "end"

    .prologue
    .line 867
    const-string v3, "AND start < %d AND start >= %d"

    .line 868
    .local v3, query:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 869
    .local v4, today:Ljava/util/Calendar;
    iget-object v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lnet/ser1/timetracker/Tasks;->access$2(Lnet/ser1/timetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "start_day"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 870
    const/16 v5, 0xb

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 871
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 873
    array-length v6, v5

    const/4 v7, 0x0

    .line 871
    :goto_0
    if-lt v7, v6, :cond_0

    .line 878
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 879
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J

    .line 880
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    .line 881
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 882
    invoke-virtual {v4, p2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    move v2, v5

    .line 883
    .local v2, loadCurrentTask:Z
    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 884
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    move-object v7, v3

    :goto_2
    aput-object v7, v5, v6

    return-object v5

    .line 873
    .end local v2           #loadCurrentTask:Z
    :cond_0
    aget v1, v5, v7

    .line 874
    .local v1, field:I
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/util/Calendar;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    array-length v9, v8

    const/4 v10, 0x0

    :goto_3
    if-lt v10, v9, :cond_1

    .line 871
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 874
    :cond_1
    aget-object v0, v8, v10

    .line 875
    .local v0, d:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v11

    invoke-virtual {v0, v1, v11}, Ljava/util/Calendar;->set(II)V

    .line 874
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 882
    .end local v0           #d:Ljava/util/Calendar;
    .end local v1           #field:I
    :cond_2
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

    .line 884
    .restart local v2       #loadCurrentTask:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 871
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected addTask(Ljava/lang/String;)V
    .locals 8
    .parameter "taskName"

    .prologue
    const-string v7, "name"

    .line 985
    iget-object v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v5}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 986
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 987
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v5, "tasks"

    const-string v6, "name"

    invoke-virtual {v0, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 989
    .local v1, id:J
    new-instance v3, Lnet/ser1/timetracker/Task;

    long-to-int v5, v1

    invoke-direct {v3, p1, v5}, Lnet/ser1/timetracker/Task;-><init>(Ljava/lang/String;I)V

    .line 990
    .local v3, t:Lnet/ser1/timetracker/Task;
    iget-object v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 992
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 993
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v0}, Lnet/ser1/timetracker/DBHelper;->close()V

    .line 831
    return-void
.end method

.method public deleteTask(Lnet/ser1/timetracker/Task;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 1023
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1024
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v2}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1025
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1026
    .local v1, id:[Ljava/lang/String;
    const-string v2, "tasks"

    const-string v3, "ROWID = ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1027
    const-string v2, "ranges"

    const-string v3, "task_id = ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 1029
    return-void
.end method

.method public findCurrentlyActive()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lnet/ser1/timetracker/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 955
    new-instance v0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;

    invoke-direct {v0, p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;-><init>(Lnet/ser1/timetracker/Tasks$TaskAdapter;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getCurrentRange()Landroid/database/Cursor;
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const-string v10, "start_day"

    .line 936
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v3, v7

    .line 937
    .local v3, res:[Ljava/lang/String;
    iget-wide v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_0

    .line 938
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 939
    .local v4, start:Ljava/util/Calendar;
    iget-object v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lnet/ser1/timetracker/Tasks;->access$2(Lnet/ser1/timetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "start_day"

    invoke-interface {v5, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 940
    iget-wide v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 941
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 942
    .local v1, end:Ljava/util/Calendar;
    iget-object v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lnet/ser1/timetracker/Tasks;->access$2(Lnet/ser1/timetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "start_day"

    invoke-interface {v5, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 943
    iget-wide v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeEnd:J

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 944
    invoke-direct {p0, v4, v1}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->makeWhereClause(Ljava/util/Calendar;Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v3

    .line 946
    .end local v1           #end:Ljava/util/Calendar;
    .end local v4           #start:Ljava/util/Calendar;
    :cond_0
    iget-object v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v5}, Lnet/ser1/timetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 947
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT t.name, r.start, r.end  FROM tasks t, ranges r  WHERE r.task_id = t.ROWID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 950
    const-string v6, " ORDER BY t.name, r.start ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 947
    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 951
    .local v2, r:Landroid/database/Cursor;
    return-object v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1036
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1040
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getTask(I)Lnet/ser1/timetracker/Task;
    .locals 3
    .parameter "id"

    .prologue
    .line 834
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 838
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 834
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/ser1/timetracker/Task;

    .line 835
    .local v0, t:Lnet/ser1/timetracker/Task;
    invoke-virtual {v0}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    move-object v1, v0

    .line 836
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1044
    const/4 v2, 0x0

    .line 1045
    .local v2, view:Lnet/ser1/timetracker/Tasks$TaskView;
    if-nez p2, :cond_1

    .line 1046
    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1047
    .local v1, item:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1048
    new-instance v2, Lnet/ser1/timetracker/Tasks$TaskView;

    .end local v2           #view:Lnet/ser1/timetracker/Tasks$TaskView;
    iget-object v4, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->this$0:Lnet/ser1/timetracker/Tasks;

    iget-object v5, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->savedContext:Landroid/content/Context;

    move-object v0, v1

    check-cast v0, Lnet/ser1/timetracker/Task;

    move-object v3, v0

    invoke-direct {v2, v4, v5, v3}, Lnet/ser1/timetracker/Tasks$TaskView;-><init>(Lnet/ser1/timetracker/Tasks;Landroid/content/Context;Lnet/ser1/timetracker/Task;)V

    .line 1057
    .restart local v2       #view:Lnet/ser1/timetracker/Tasks$TaskView;
    :cond_0
    :goto_0
    return-object v2

    .line 1051
    .end local v1           #item:Ljava/lang/Object;
    :cond_1
    move-object v0, p2

    check-cast v0, Lnet/ser1/timetracker/Tasks$TaskView;

    move-object v2, v0

    .line 1052
    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1053
    .restart local v1       #item:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1054
    move-object v0, v1

    check-cast v0, Lnet/ser1/timetracker/Task;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lnet/ser1/timetracker/Tasks$TaskView;->setTask(Lnet/ser1/timetracker/Task;)V

    goto :goto_0
.end method

.method protected loadTasks(Ljava/util/Calendar;)V
    .locals 1
    .parameter "day"

    .prologue
    .line 850
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, p1, v0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 851
    return-void
.end method

.method protected loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 854
    invoke-direct {p0, p1, p2}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->makeWhereClause(Ljava/util/Calendar;Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, res:[Ljava/lang/String;
    aget-object v1, v0, v3

    aget-object v2, v0, v4

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-direct {p0, v1, v2}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks(Ljava/lang/String;Z)V

    .line 856
    return-void

    :cond_0
    move v2, v4

    .line 855
    goto :goto_0
.end method

.method protected updateTask(Lnet/ser1/timetracker/Task;)V
    .locals 14
    .parameter "t"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v13, "ranges"

    const-string v12, "end"

    .line 996
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v6}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 997
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 998
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, id:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v8

    .line 1001
    .local v4, vals:[Ljava/lang/String;
    const-string v6, "tasks"

    const-string v7, "ROWID = ?"

    invoke-virtual {v0, v6, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1003
    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getStartTime()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    .line 1004
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 1005
    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getStartTime()J

    move-result-wide v2

    .line 1006
    .local v2, startTime:J
    const-string v6, "start"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    .end local v4           #vals:[Ljava/lang/String;
    aput-object v1, v4, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    .line 1008
    .restart local v4       #vals:[Ljava/lang/String;
    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getEndTime()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    .line 1009
    const-string v6, "end"

    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1012
    :cond_0
    const-string v6, "ranges"

    const-string v6, "task_id = ? AND start = ?"

    invoke-virtual {v0, v13, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 1013
    const-string v6, "task_id"

    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1014
    const-string v6, "ranges"

    const-string v6, "end"

    invoke-virtual {v0, v13, v12, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1018
    .end local v2           #startTime:J
    :cond_1
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1019
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 1020
    return-void
.end method
