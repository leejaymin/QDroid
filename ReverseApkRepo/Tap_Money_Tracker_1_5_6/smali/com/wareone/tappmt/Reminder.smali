.class public Lcom/wareone/tappmt/Reminder;
.super Landroid/app/Activity;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Reminder$ReminderAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_adapter:Lcom/wareone/tappmt/Reminder$ReminderAdapter;

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_id:J

.field private m_reminder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_remote_id:J

.field private m_repeat:[Ljava/lang/String;

.field private m_week_day:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/wareone/tappmt/Reminder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Reminder;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Reminder;->m_reminder:Ljava/util/List;

    .line 402
    iput-wide v1, p0, Lcom/wareone/tappmt/Reminder;->m_id:J

    iput-wide v1, p0, Lcom/wareone/tappmt/Reminder;->m_remote_id:J

    .line 40
    return-void
.end method

.method private _delete()V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    const v1, 0x7f09004e

    .line 299
    new-instance v2, Lcom/wareone/tappmt/Reminder$5;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reminder$5;-><init>(Lcom/wareone/tappmt/Reminder;)V

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    const v1, 0x7f09004f

    .line 311
    new-instance v2, Lcom/wareone/tappmt/Reminder$6;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reminder$6;-><init>(Lcom/wareone/tappmt/Reminder;)V

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 320
    return-void
.end method

.method private _execTransaction()V
    .locals 5

    .prologue
    .line 323
    iget-object v2, p0, Lcom/wareone/tappmt/Reminder;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-wide v3, p0, Lcom/wareone/tappmt/Reminder;->m_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getReminderById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 324
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wareone/tappmt/Transaction;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v1, it:Landroid/content/Intent;
    const-string v2, "ACTION"

    const v3, 0x7f09005b

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v2, "MODE"

    const-string v3, "mode"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v2, "REMINDER_ID"

    iget-wide v3, p0, Lcom/wareone/tappmt/Reminder;->m_id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Reminder;->startActivity(Landroid/content/Intent;)V

    .line 331
    iget-object v2, p0, Lcom/wareone/tappmt/Reminder;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-wide v3, p0, Lcom/wareone/tappmt/Reminder;->m_id:J

    invoke-virtual {v2, v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->setNextTimeOfReminder(J)V

    .line 333
    .end local v1           #it:Landroid/content/Intent;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    return-void
.end method

.method private _loadData()V
    .locals 14

    .prologue
    .line 338
    sget-object v8, Lcom/wareone/tappmt/Reminder;->TAG:Ljava/lang/String;

    const-string v9, "_loadData"

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v8, p0, Lcom/wareone/tappmt/Reminder;->m_reminder:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 342
    iget-object v8, p0, Lcom/wareone/tappmt/Reminder;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v8}, Lcom/wareone/tappmt/PmtDbAdapter;->getReminders()Landroid/database/Cursor;

    move-result-object v0

    .line 343
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 344
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 346
    :cond_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 348
    .local v5, df:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 349
    .local v1, cal:Ljava/util/Calendar;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v3, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/wareone/tappmt/Reminder;->m_reminder:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    array-length v8, v8

    if-lt v7, v8, :cond_3

    .line 354
    const-string v8, "begin_date"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 355
    .local v4, date_str:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_1
    const-string v2, ""

    .line 358
    .local v2, caption:Ljava/lang/String;
    const-string v8, "cycle"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 381
    :goto_2
    const-string v8, "cycle"

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 345
    if-nez v8, :cond_0

    .line 386
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #caption:Ljava/lang/String;
    .end local v3           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #date_str:Ljava/lang/String;
    .end local v5           #df:Ljava/text/SimpleDateFormat;
    .end local v7           #i:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_2
    return-void

    .line 352
    .restart local v1       #cal:Ljava/util/Calendar;
    .restart local v3       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #df:Ljava/text/SimpleDateFormat;
    .restart local v7       #i:I
    :cond_3
    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v7

    sget-object v9, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 355
    .restart local v4       #date_str:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v6, v8

    .local v6, e:Ljava/lang/Exception;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1

    .line 360
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #caption:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090034

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    goto :goto_2

    .line 363
    :pswitch_1
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090035

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/wareone/tappmt/Reminder;->m_week_day:[Ljava/lang/String;

    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    goto :goto_2

    .line 366
    :pswitch_2
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090036

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/wareone/tappmt/Reminder;->m_week_day:[Ljava/lang/String;

    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 367
    goto :goto_2

    .line 369
    :pswitch_3
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090037

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 370
    goto/16 :goto_2

    .line 372
    :pswitch_4
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 373
    goto/16 :goto_2

    .line 375
    :pswitch_5
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09003a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 376
    goto/16 :goto_2

    .line 378
    :pswitch_6
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09003a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Reminder;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder;->m_reminder:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/wareone/tappmt/Reminder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Reminder;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    iput-wide p1, p0, Lcom/wareone/tappmt/Reminder;->m_id:J

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Reminder;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    iput-wide p1, p0, Lcom/wareone/tappmt/Reminder;->m_remote_id:J

    return-void
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Reminder;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/wareone/tappmt/Reminder;->_delete()V

    return-void
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Reminder;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/wareone/tappmt/Reminder;->_execTransaction()V

    return-void
.end method

.method static synthetic access$6(Lcom/wareone/tappmt/Reminder;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/wareone/tappmt/Reminder;)J
    .locals 2
    .parameter

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/wareone/tappmt/Reminder;->m_id:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/wareone/tappmt/Reminder;)J
    .locals 2
    .parameter

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/wareone/tappmt/Reminder;->m_remote_id:J

    return-wide v0
.end method


# virtual methods
.method protected _refresh()V
    .locals 2

    .prologue
    .line 391
    sget-object v0, Lcom/wareone/tappmt/Reminder;->TAG:Ljava/lang/String;

    const-string v1, "refresh List"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/wareone/tappmt/Reminder;->_loadData()V

    .line 394
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder;->m_adapter:Lcom/wareone/tappmt/Reminder$ReminderAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Reminder$ReminderAdapter;->notifyDataSetChanged()V

    .line 395
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v2, 0x7f030031

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Reminder;->setContentView(I)V

    .line 136
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wareone/tappmt/Reminder;->m_repeat:[Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wareone/tappmt/Reminder;->m_week_day:[Ljava/lang/String;

    .line 139
    new-instance v2, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Reminder;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 140
    iget-object v2, p0, Lcom/wareone/tappmt/Reminder;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 141
    invoke-direct {p0}, Lcom/wareone/tappmt/Reminder;->_loadData()V

    .line 143
    const v2, 0x7f0c0090

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Reminder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 144
    .local v1, lv_reminder:Landroid/widget/ListView;
    new-instance v2, Lcom/wareone/tappmt/Reminder$ReminderAdapter;

    iget-object v3, p0, Lcom/wareone/tappmt/Reminder;->m_reminder:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/wareone/tappmt/Reminder$ReminderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Reminder;->m_adapter:Lcom/wareone/tappmt/Reminder$ReminderAdapter;

    .line 145
    iget-object v2, p0, Lcom/wareone/tappmt/Reminder;->m_adapter:Lcom/wareone/tappmt/Reminder$ReminderAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    new-instance v2, Lcom/wareone/tappmt/Reminder$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reminder$1;-><init>(Lcom/wareone/tappmt/Reminder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    new-instance v2, Lcom/wareone/tappmt/Reminder$2;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reminder$2;-><init>(Lcom/wareone/tappmt/Reminder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    new-instance v2, Lcom/wareone/tappmt/Reminder$3;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reminder$3;-><init>(Lcom/wareone/tappmt/Reminder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 201
    const v2, 0x7f0c0091

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Reminder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 203
    .local v0, btn_addNew:Landroid/widget/Button;
    new-instance v2, Lcom/wareone/tappmt/Reminder$4;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reminder$4;-><init>(Lcom/wareone/tappmt/Reminder;)V

    .line 202
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v2, 0x7f0900bf

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 243
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 256
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 248
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reminder;->_refresh()V

    .line 249
    return-void
.end method
