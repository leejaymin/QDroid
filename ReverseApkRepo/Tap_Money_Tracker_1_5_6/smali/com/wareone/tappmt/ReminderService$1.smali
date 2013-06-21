.class Lcom/wareone/tappmt/ReminderService$1;
.super Ljava/lang/Object;
.source "ReminderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/ReminderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/ReminderService;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 72
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    const-string v35, "task thread start"

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    const-string v35, "TapPMTPrefs"

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lcom/wareone/tappmt/ReminderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 75
    .local v29, settings:Landroid/content/SharedPreferences;
    const-string v34, "before_days"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 76
    .local v26, pre_days:I
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "pre_days --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v34, "reminder_time"

    const-string v35, "00:00"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 78
    .local v30, timeAlert:Ljava/lang/String;
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "alert time --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v34, "yyyy-MM-dd"

    move-object v0, v15

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v15, df:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    .line 82
    .local v12, cal_today:Ljava/util/Calendar;
    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    move-object v0, v12

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 83
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v34

    move-object v0, v15

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    .line 84
    .local v32, today:Ljava/lang/String;
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "today --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v34, "HH:mm"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    .local v16, df_time:Ljava/text/SimpleDateFormat;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v34

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    .line 87
    .local v31, timeNow:Ljava/lang/String;
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Now Time --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "now time --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "alert time --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v36

    sub-long v18, v34, v36

    .line 97
    .local v18, diff_time:J
    :goto_0
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "different time --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-wide/16 v34, 0x0

    cmp-long v34, v18, v34

    if-ltz v34, :cond_3

    .line 101
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    const-string v35, "get reminders"

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/wareone/tappmt/PmtDbAdapter;->getNotifyReminders()Landroid/database/Cursor;

    move-result-object v11

    .line 103
    .local v11, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "get reminder count ---> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v34

    if-eqz v34, :cond_9

    .line 106
    :cond_0
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "reminder "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "reminder_name"

    move-object v0, v11

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object v0, v11

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v34, "next_date"

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move-object v0, v11

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 108
    .local v22, next_day:Ljava/lang/String;
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "next date --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v5, _values:Landroid/content/ContentValues;
    :try_start_1
    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    move-object v0, v15

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    sub-long v34, v34, v36

    const-wide/32 v36, 0x5265c00

    div-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 114
    .local v17, diff:I
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "diff_days --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v34, "auto_rec"

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move-object v0, v11

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_7

    .line 116
    if-gtz v17, :cond_2

    .line 117
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 118
    const-string v34, "trans_date"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v34, "mode"

    const-string v35, "mode"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v34, "payee"

    const-string v35, "payee"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v34, "category"

    const-string v35, "category"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v34, "account"

    const-string v35, "account"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v34, "amount"

    const-string v35, "amount"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    const-string v36, ","

    const-string v37, ""

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v34, "group_name"

    const-string v35, "group_name"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v34, "currency"

    const-string v35, "currency"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v34, "reminder_name"

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move-object v0, v11

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 128
    .local v23, note:Ljava/lang/String;
    const-string v34, "times"

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move-object v0, v11

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    if-lez v34, :cond_1

    .line 129
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, " ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "count"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "times"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 131
    :cond_1
    const-string v34, "note"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v34, "remote_id"

    const-string v35, "0"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v34, "sync"

    const-string v35, "0"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "account"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    const-string v37, "currency"

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v34 .. v37}, Lcom/wareone/tappmt/PmtDbAdapter;->isAccountCurrency(JLjava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 136
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "account currency -->"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v36, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v36 .. v36}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v36

    const-string v37, "account"

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    invoke-virtual/range {v36 .. v38}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v34, "acc_rate"

    const-string v35, "1"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "exchange rate of account currency -->"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "acc_rate"

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "currency"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->isDefaultCurrency(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 148
    const-string v34, "ex_rate"

    const-string v35, "1"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_2
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "exchange rate of default currency -->"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "ex_rate"

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v34, "ex_rate"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    .line 159
    .local v27, rate:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v35, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v35 .. v35}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v20

    .line 160
    .local v20, digits:I
    const-wide/high16 v34, 0x4024

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    .line 161
    .local v24, p:D
    const-string v34, "amount"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    mul-double v34, v34, v27

    mul-double v34, v34, v24

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v9, v34, v24

    .line 162
    .local v9, amt:D
    const-string v34, "ex_amount"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "amount of default currency --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "account"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, currOfAccount:Ljava/lang/String;
    const-string v34, "acc_rate"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v20

    .line 170
    const-wide/high16 v34, 0x4024

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    .line 171
    const-string v34, "amount"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    mul-double v34, v34, v27

    mul-double v34, v34, v24

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v9, v34, v24

    .line 172
    const-string v34, "acc_amount"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "amount of account currency --> "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "currency"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->isDefaultCurrency(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 177
    const-string v34, "ex_rate"

    const-string v35, "1"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_3
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    const-string v35, "auto record reminder"

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "transactions"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 186
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 187
    const-string v34, "notify_date"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    const-string v35, "update notify date"

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "reminders"

    const-string v36, "_id"

    move-object v0, v11

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object v0, v11

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v5

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 190
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    const-string v35, "update next time of reminder"

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "_id"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/wareone/tappmt/PmtDbAdapter;->setNextTimeOfReminder(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .end local v9           #amt:D
    .end local v14           #currOfAccount:Ljava/lang/String;
    .end local v17           #diff:I
    .end local v20           #digits:I
    .end local v23           #note:Ljava/lang/String;
    .end local v24           #p:D
    .end local v27           #rate:D
    :cond_2
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    .line 105
    if-nez v34, :cond_0

    .line 221
    .end local v5           #_values:Landroid/content/ContentValues;
    .end local v22           #next_day:Ljava/lang/String;
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 226
    .end local v11           #c:Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->objHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$3(Lcom/wareone/tappmt/ReminderService;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v35, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->mTask:Ljava/lang/Runnable;
    invoke-static/range {v35 .. v35}, Lcom/wareone/tappmt/ReminderService;->access$4(Lcom/wareone/tappmt/ReminderService;)Ljava/lang/Runnable;

    move-result-object v35

    const-wide/32 v36, 0x493e0

    invoke-virtual/range {v34 .. v37}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    return-void

    .line 94
    .end local v18           #diff_time:J
    :catch_0
    move-exception v34

    move-object/from16 v21, v34

    .line 95
    .local v21, e:Ljava/lang/Exception;
    const-wide/16 v18, 0x0

    .restart local v18       #diff_time:J
    goto/16 :goto_0

    .line 139
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v5       #_values:Landroid/content/ContentValues;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v17       #diff:I
    .restart local v22       #next_day:Ljava/lang/String;
    .restart local v23       #note:Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "account"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v14

    .line 140
    .restart local v14       #currOfAccount:Ljava/lang/String;
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "account currency -->"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v6

    .line 142
    .local v6, acc_rate:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "currency"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v27

    .line 143
    .restart local v27       #rate:D
    const-string v34, "acc_rate"

    div-double v35, v27, v6

    const/16 v37, 0x4

    invoke-static/range {v35 .. v37}, Lcom/wareone/tappmt/PmtDbAdapter;->round(DI)D

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 212
    .end local v6           #acc_rate:D
    .end local v14           #currOfAccount:Ljava/lang/String;
    .end local v17           #diff:I
    .end local v23           #note:Ljava/lang/String;
    .end local v27           #rate:D
    :catch_1
    move-exception v34

    goto/16 :goto_4

    .line 150
    .restart local v17       #diff:I
    .restart local v23       #note:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "currency"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v27

    .line 151
    .restart local v27       #rate:D
    const-string v34, "ex_rate"

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_2

    .line 179
    .restart local v9       #amt:D
    .restart local v14       #currOfAccount:Ljava/lang/String;
    .restart local v20       #digits:I
    .restart local v24       #p:D
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "currency"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v27

    .line 180
    const-string v34, "ex_rate"

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_3

    .line 194
    .end local v9           #amt:D
    .end local v14           #currOfAccount:Ljava/lang/String;
    .end local v20           #digits:I
    .end local v23           #note:Ljava/lang/String;
    .end local v24           #p:D
    .end local v27           #rate:D
    :cond_7
    move/from16 v0, v17

    move/from16 v1, v26

    if-gt v0, v1, :cond_2

    .line 195
    const-string v34, "reminder_name"

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move-object v0, v11

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, alert_name:Ljava/lang/String;
    const-string v34, "times"

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move-object v0, v11

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    if-lez v34, :cond_8

    .line 197
    const-string v34, "count"

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    move-object v0, v11

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    add-int/lit8 v13, v34, 0x1

    .line 198
    .local v13, count:I
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, " ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "times"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    move-object v0, v11

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 202
    .end local v13           #count:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f090097

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v8, v35, v36

    const/16 v36, 0x1

    aput-object v22, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 203
    .local v33, txt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    const v35, 0x1080077

    const-string v36, "_id"

    move-object v0, v11

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object v0, v11

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    move-wide/from16 v3, v36

    #calls: Lcom/wareone/tappmt/ReminderService;->showNotification(ILjava/lang/CharSequence;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/wareone/tappmt/ReminderService;->access$2(Lcom/wareone/tappmt/ReminderService;ILjava/lang/CharSequence;J)V

    .line 204
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 205
    const-string v34, "notify_date"

    move-object v0, v5

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    const-string v35, "update notify date"

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderService$1;->this$0:Lcom/wareone/tappmt/ReminderService;

    move-object/from16 v34, v0

    #getter for: Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static/range {v34 .. v34}, Lcom/wareone/tappmt/ReminderService;->access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v34

    const-string v35, "reminders"

    const-string v36, "_id"

    move-object v0, v11

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object v0, v11

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v5

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 219
    .end local v5           #_values:Landroid/content/ContentValues;
    .end local v8           #alert_name:Ljava/lang/String;
    .end local v17           #diff:I
    .end local v22           #next_day:Ljava/lang/String;
    .end local v33           #txt:Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/wareone/tappmt/ReminderService;->access$0()Ljava/lang/String;

    move-result-object v34

    const-string v35, "no reminder "

    invoke-static/range {v34 .. v35}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method
