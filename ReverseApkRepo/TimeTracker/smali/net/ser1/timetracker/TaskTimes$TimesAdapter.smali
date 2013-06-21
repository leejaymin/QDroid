.class Lnet/ser1/timetracker/TaskTimes$TimesAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskTimes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ser1/timetracker/TaskTimes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;
    }
.end annotation


# instance fields
.field private dbHelper:Lnet/ser1/timetracker/DBHelper;

.field private savedContext:Landroid/content/Context;

.field final synthetic this$0:Lnet/ser1/timetracker/TaskTimes;

.field private times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ser1/timetracker/TimeRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/ser1/timetracker/TaskTimes;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 224
    iput-object p1, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;

    .line 219
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 220
    iput-object p2, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->savedContext:Landroid/content/Context;

    .line 221
    new-instance v0, Lnet/ser1/timetracker/DBHelper;

    invoke-direct {v0, p2}, Lnet/ser1/timetracker/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    .line 222
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v0}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$0(Lnet/ser1/timetracker/TaskTimes$TimesAdapter;Lnet/ser1/timetracker/TimeRange;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->assignTimeToTaskAt(Lnet/ser1/timetracker/TimeRange;I)V

    return-void
.end method

.method static synthetic access$1(Lnet/ser1/timetracker/TaskTimes$TimesAdapter;)Lnet/ser1/timetracker/TaskTimes;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;

    return-object v0
.end method

.method private addSeparators()V
    .locals 13

    .prologue
    .line 476
    const/4 v1, -0x1

    .local v1, dayOfYear:I
    const/4 v6, -0x1

    .line 477
    .local v6, year:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 478
    .local v0, curDay:Ljava/util/Calendar;
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 479
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 491
    return-void

    .line 480
    :cond_0
    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/ser1/timetracker/TimeRange;

    .line 481
    .local v4, tr:Lnet/ser1/timetracker/TimeRange;
    invoke-virtual {v4}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 482
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 483
    .local v2, doy:I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 484
    .local v5, y:I
    if-ne v2, v1, :cond_1

    if-eq v5, v6, :cond_2

    .line 485
    :cond_1
    move v1, v2

    .line 486
    move v6, v5

    .line 487
    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v8, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v4}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->startOfDay(J)J

    move-result-wide v9

    const-wide/16 v11, -0x63

    invoke-direct {v8, v9, v10, v11, v12}, Lnet/ser1/timetracker/TimeRange;-><init>(JJ)V

    invoke-virtual {v7, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 488
    add-int/lit8 v3, v3, 0x1

    .line 479
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private assignTimeToTaskAt(Lnet/ser1/timetracker/TimeRange;I)V
    .locals 11
    .parameter "range"
    .parameter "which"

    .prologue
    .line 344
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->getTaskNames()Landroid/database/Cursor;

    move-result-object v0

    .line 345
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    :goto_0
    if-gtz p2, :cond_4

    .line 351
    :cond_0
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 352
    .local v2, newTaskId:I
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    .line 353
    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v7}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 355
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "start = ? AND task_id = ?"

    .line 357
    .local v5, whereClause:Ljava/lang/String;
    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " AND end ISNULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 359
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 360
    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 361
    iget-object v8, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;

    invoke-virtual {v8}, Lnet/ser1/timetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "task_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 371
    .local v6, whereValues:[Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "task_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v7, "ranges"

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 375
    .local v3, pos:I
    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 376
    if-eqz v3, :cond_2

    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    const/4 v8, 0x1

    sub-int v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v7

    const-wide/16 v9, -0x63

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 377
    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v3, v7, :cond_1

    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v7

    const-wide/16 v9, -0x63

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 378
    :cond_1
    iget-object v7, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    const/4 v8, 0x1

    sub-int v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 380
    :cond_2
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 382
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #pos:I
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v5           #whereClause:Ljava/lang/String;
    .end local v6           #whereValues:[Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 383
    return-void

    .line 347
    .end local v2           #newTaskId:I
    .restart local p1
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 348
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_0

    .line 364
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #newTaskId:I
    .restart local v5       #whereClause:Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " AND end = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 365
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 366
    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 367
    iget-object v8, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;

    invoke-virtual {v8}, Lnet/ser1/timetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "task_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 368
    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 365
    .restart local v6       #whereValues:[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private insert(Ljava/util/ArrayList;Lnet/ser1/timetracker/TimeRange;)V
    .locals 11
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ser1/timetracker/TimeRange;",
            ">;",
            "Lnet/ser1/timetracker/TimeRange;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnet/ser1/timetracker/TimeRange;>;"
    const-wide/16 v9, -0x63

    const/4 v8, 0x6

    const/4 v7, 0x1

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, insertPoint:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 446
    :cond_0
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 447
    if-lez v1, :cond_4

    .line 448
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 449
    .local v0, c:Ljava/util/Calendar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 450
    sub-int v5, v1, v7

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/ser1/timetracker/TimeRange;

    .line 451
    .local v3, prev:Lnet/ser1/timetracker/TimeRange;
    invoke-virtual {v3}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 452
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 453
    .local v4, pyear:I
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 454
    .local v2, pday:I
    invoke-virtual {p2}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 455
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 456
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 457
    :cond_1
    iget-object v5, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v6, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {p2}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->startOfDay(J)J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v9, v10}, Lnet/ser1/timetracker/TimeRange;-><init>(JJ)V

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 462
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #pday:I
    .end local v3           #prev:Lnet/ser1/timetracker/TimeRange;
    .end local v4           #pyear:I
    :cond_2
    :goto_1
    return-void

    .line 442
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v5, p2}, Lnet/ser1/timetracker/TimeRange;->compareTo(Lnet/ser1/timetracker/TimeRange;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_4
    iget-object v5, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v6, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {p2}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->startOfDay(J)J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v9, v10}, Lnet/ser1/timetracker/TimeRange;-><init>(JJ)V

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private startOfDay(J)J
    .locals 6
    .parameter "start"

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xd

    const/16 v3, 0xc

    const/16 v2, 0xb

    .line 465
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 466
    .local v0, cal:Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 467
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 468
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 469
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 470
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 471
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 472
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public addTimeRange(JJ)V
    .locals 6
    .parameter "sd"
    .parameter "ed"

    .prologue
    const-string v5, "task_id"

    const-string v4, "end"

    .line 427
    iget-object v2, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v2}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 428
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "task_id"

    iget-object v2, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;

    invoke-virtual {v2}, Lnet/ser1/timetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "task_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v2, "start"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    const-string v2, "end"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 432
    const-string v2, "ranges"

    const-string v3, "end"

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 433
    iget-object v2, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v3, Lnet/ser1/timetracker/TimeRange;

    invoke-direct {v3, p1, p2, p3, p4}, Lnet/ser1/timetracker/TimeRange;-><init>(JJ)V

    invoke-direct {p0, v2, v3}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->insert(Ljava/util/ArrayList;Lnet/ser1/timetracker/TimeRange;)V

    .line 434
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 435
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v0}, Lnet/ser1/timetracker/DBHelper;->close()V

    .line 238
    return-void
.end method

.method public deleteTimeRange(Lnet/ser1/timetracker/TimeRange;)V
    .locals 14
    .parameter "range"

    .prologue
    const-wide/16 v11, -0x63

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v13, "task_id"

    .line 241
    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v4}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 243
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "start = ? AND task_id = ?"

    .line 245
    .local v2, whereClause:Ljava/lang/String;
    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " AND end ISNULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    new-array v3, v10, [Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 249
    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;

    invoke-virtual {v4}, Lnet/ser1/timetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "task_id"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 259
    .local v3, whereValues:[Ljava/lang/String;
    :goto_0
    const-string v4, "ranges"

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 261
    .local v1, pos:I
    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    .line 262
    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 266
    if-eqz v1, :cond_1

    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    sub-int v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v4}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v4

    cmp-long v4, v4, v11

    if-nez v4, :cond_1

    .line 267
    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v4}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v4

    cmp-long v4, v4, v11

    if-nez v4, :cond_1

    .line 268
    :cond_0
    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    sub-int v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 271
    :cond_1
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 272
    return-void

    .line 252
    .end local v1           #pos:I
    .end local v3           #whereValues:[Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " AND end = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 255
    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;

    invoke-virtual {v4}, Lnet/ser1/timetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "task_id"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 256
    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 253
    .restart local v3       #whereValues:[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 336
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 340
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getTaskNames()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v1}, Lnet/ser1/timetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 527
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "tasks"

    sget-object v2, Lnet/ser1/timetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    .line 528
    const-string v7, "name"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 527
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 529
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 303
    .local v2, item:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v5, p2

    .line 328
    .end local v2           #item:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 306
    .restart local v2       #item:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lnet/ser1/timetracker/TimeRange;

    move-object v3, v0

    .line 307
    .local v3, range:Lnet/ser1/timetracker/TimeRange;
    invoke-virtual {v3}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v5

    const-wide/16 v7, -0x63

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 309
    if-eqz p2, :cond_1

    instance-of v5, p2, Landroid/widget/TextView;

    if-nez v5, :cond_2

    .line 310
    :cond_1
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->savedContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 311
    .local v1, headerText:Landroid/widget/TextView;
    invoke-static {}, Lnet/ser1/timetracker/TaskTimes;->access$0()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 312
    const/16 v5, -0x100

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 314
    invoke-static {}, Lnet/ser1/timetracker/TaskTimes;->access$2()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :goto_1
    invoke-static {}, Lnet/ser1/timetracker/TaskTimes;->access$2()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, v1

    .line 319
    goto :goto_0

    .line 316
    .end local v1           #headerText:Landroid/widget/TextView;
    :cond_2
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .restart local v1       #headerText:Landroid/widget/TextView;
    goto :goto_1

    .line 322
    .end local v1           #headerText:Landroid/widget/TextView;
    :cond_3
    if-eqz p2, :cond_4

    instance-of v5, p2, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;

    if-nez v5, :cond_5

    .line 323
    :cond_4
    new-instance v4, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;

    iget-object v6, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->savedContext:Landroid/content/Context;

    move-object v0, v2

    check-cast v0, Lnet/ser1/timetracker/TimeRange;

    move-object v5, v0

    invoke-direct {v4, p0, v6, v5}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;-><init>(Lnet/ser1/timetracker/TaskTimes$TimesAdapter;Landroid/content/Context;Lnet/ser1/timetracker/TimeRange;)V

    .line 327
    .local v4, timeView:Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;
    :goto_2
    check-cast v2, Lnet/ser1/timetracker/TimeRange;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->setTimeRange(Lnet/ser1/timetracker/TimeRange;)V

    move-object v5, v4

    .line 328
    goto :goto_0

    .line 325
    .end local v4           #timeView:Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;
    .restart local v2       #item:Ljava/lang/Object;
    :cond_5
    move-object v0, p2

    check-cast v0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;

    move-object v4, v0

    .restart local v4       #timeView:Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;
    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 233
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {p0}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v0

    const-wide/16 v2, -0x63

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadTimes(I)V
    .locals 4
    .parameter "selectedTaskId"

    .prologue
    .line 275
    const-string v0, "task_id = ?"

    .line 276
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 275
    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->loadTimes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected loadTimes(IJJ)V
    .locals 4
    .parameter "selectedTaskId"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 280
    const-string v0, "task_id = ? AND start < ? AND start > ?"

    .line 281
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 282
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 283
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 280
    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->loadTimes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method protected loadTimes(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "where"
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 287
    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v1}, Lnet/ser1/timetracker/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 288
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ranges"

    sget-object v2, Lnet/ser1/timetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    .line 289
    const-string v7, "start,end"

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    .line 288
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 290
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    new-instance v2, Lnet/ser1/timetracker/TimeRange;

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 293
    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v5, -0x1

    :goto_0
    invoke-direct {v2, v3, v4, v5, v6}, Lnet/ser1/timetracker/TimeRange;-><init>(JJ)V

    .line 292
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 291
    if-nez v1, :cond_0

    .line 296
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 297
    invoke-direct {p0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->addSeparators()V

    .line 298
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 299
    return-void

    .line 293
    :cond_2
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_0
.end method

.method public updateTimeRange(JJILnet/ser1/timetracker/TimeRange;)V
    .locals 8
    .parameter "sd"
    .parameter "ed"
    .parameter "newTaskId"
    .parameter "old"

    .prologue
    .line 494
    iget-object v5, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->dbHelper:Lnet/ser1/timetracker/DBHelper;

    invoke-virtual {v5}, Lnet/ser1/timetracker/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 495
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 496
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "start"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    iget-object v5, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;

    invoke-virtual {v5}, Lnet/ser1/timetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "task_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 498
    .local v0, currentTaskId:I
    const-string v3, "start=? AND task_id=?"

    .line 500
    .local v3, whereClause:Ljava/lang/String;
    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-eqz v5, :cond_0

    .line 501
    const-string v5, "end"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " AND end=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p6}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 504
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 505
    invoke-virtual {p6}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 513
    .local v4, whereValues:[Ljava/lang/String;
    :goto_0
    const-string v5, "ranges"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 516
    if-eq p5, v0, :cond_1

    .line 517
    iget-object v5, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v5, p6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 522
    :goto_1
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->notifyDataSetChanged()V

    .line 523
    return-void

    .line 508
    .end local v4           #whereValues:[Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " AND end ISNULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 509
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p6}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 510
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 509
    .restart local v4       #whereValues:[Ljava/lang/String;
    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p6, p1, p2}, Lnet/ser1/timetracker/TimeRange;->setStart(J)V

    .line 520
    invoke-virtual {p6, p3, p4}, Lnet/ser1/timetracker/TimeRange;->setEnd(J)V

    goto :goto_1
.end method
