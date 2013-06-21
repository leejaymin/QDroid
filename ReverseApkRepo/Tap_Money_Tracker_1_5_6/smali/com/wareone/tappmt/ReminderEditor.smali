.class public Lcom/wareone/tappmt/ReminderEditor;
.super Landroid/app/Activity;
.source "ReminderEditor.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static curDate:Ljava/util/Calendar;

.field private static m_account:Ljava/util/List;
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

.field private static m_category:Ljava/util/List;
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

.field private static m_category_child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static m_currency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_group:Ljava/util/List;
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

.field private static m_payee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_action:I

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_due:[Ljava/lang/String;

.field private m_id:J

.field private m_repeat:[Ljava/lang/String;

.field private m_title:Ljava/lang/String;

.field private m_trans_mode:[Ljava/lang/String;

.field private m_values:Landroid/content/ContentValues;

.field private m_week_day:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/wareone/tappmt/ReminderEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_category:Ljava/util/List;

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_category_child:Ljava/util/List;

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_account:Ljava/util/List;

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_group:Ljava/util/List;

    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_currency:Ljava/util/List;

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_payee:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 867
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    .line 36
    return-void
.end method

.method private _getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 855
    return-object v1

    .line 853
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _getReminder()V
    .locals 6

    .prologue
    .line 570
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-wide v3, p0, Lcom/wareone/tappmt/ReminderEditor;->m_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getReminderById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 572
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 573
    if-eqz v0, :cond_1

    .line 574
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 580
    .end local v1           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_1
    sget-object v2, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "amount----> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v5, "amount"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void

    .line 576
    .restart local v1       #i:I
    :cond_2
    sget-object v2, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reminder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private _initControls()V
    .locals 30

    .prologue
    .line 587
    const-string v25, ""

    .line 589
    .local v25, value:Ljava/lang/String;
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init begin date"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v26, "yyyy-MM-dd"

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 591
    .local v12, df:Ljava/text/SimpleDateFormat;
    const v26, 0x7f0c0018

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 594
    .local v6, btn_date:Landroid/widget/Button;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "begin_date"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 598
    .local v21, trans_date:Ljava/util/Date;
    :goto_0
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 599
    new-instance v26, Ljava/lang/StringBuilder;

    sget-object v27, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    move-object v0, v12

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_week_day:[Ljava/lang/String;

    move-object/from16 v27, v0

    sget-object v28, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    const/16 v29, 0x7

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 601
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init due date"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const v26, 0x7f0c001a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 603
    .local v7, btn_due:Landroid/widget/Button;
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "due date is "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v28, v0

    const-string v29, "due_date"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "due_date"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 606
    .local v13, due_date:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 607
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "due date is null"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_due:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :goto_1
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init repeat cycle"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const v26, 0x7f0c0096

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    .line 625
    .local v20, spn_repeat:Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "cycle"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 627
    const v26, 0x7f0c001d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 628
    .local v10, ckb_active:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "status"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_3

    const/16 v26, 0x1

    :goto_2
    move-object v0, v10

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 630
    const v26, 0x7f0c0097

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 631
    .local v11, ckb_autorec:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "auto_rec"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_4

    const/16 v26, 0x1

    :goto_3
    move-object v0, v11

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 633
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init transaction mode"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const v26, 0x7f0c001f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    .line 635
    .local v19, spn_mode:Landroid/widget/Spinner;
    const v26, 0x7f0c0020

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 636
    .local v24, tv_category:Landroid/widget/TextView;
    const v26, 0x7f0c0022

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 638
    .local v23, tv_account:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "mode"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 639
    .local v22, trans_mode:I
    packed-switch v22, :pswitch_data_0

    .line 657
    :goto_4
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "load category"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->_loadCategories(I)V

    .line 660
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init category"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v27, v0

    const-string v28, "category"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v9

    .line 662
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 663
    const-string v26, "acc_name"

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 664
    const v26, 0x7f0c0021

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 665
    .local v4, btn_category:Landroid/widget/Button;
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "set category value --> "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 668
    .end local v4           #btn_category:Landroid/widget/Button;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 670
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init account"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->m_account:Ljava/util/List;

    sget-object v27, Lcom/wareone/tappmt/ReminderEditor;->m_account:Ljava/util/List;

    const-string v28, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/ReminderEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v28, v0

    const-string v29, "account"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v26, "acc_name"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #value:Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 672
    .restart local v25       #value:Ljava/lang/String;
    const v26, 0x7f0c0023

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 673
    .local v3, btn_account:Landroid/widget/Button;
    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 675
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init group"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->m_group:Ljava/util/List;

    sget-object v27, Lcom/wareone/tappmt/ReminderEditor;->m_group:Ljava/util/List;

    const-string v28, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/ReminderEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v28, v0

    const-string v29, "group_name"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #btn_account:Landroid/widget/Button;
    check-cast v3, Ljava/util/Map;

    const-string v26, "group_name"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #value:Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 677
    .restart local v25       #value:Ljava/lang/String;
    const v26, 0x7f0c0028

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 678
    .local v8, btn_group:Landroid/widget/Button;
    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 680
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init currency"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const v26, 0x7f0c0026

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 682
    .local v5, btn_currency:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "currency"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 684
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init payee"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const v26, 0x7f0c009a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 686
    .local v17, edt_payee:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "payee"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 688
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init reminder name"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const v26, 0x7f0c0093

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 690
    .local v16, edt_name:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "reminder_name"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 692
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init reminder times"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const v26, 0x7f0c0095

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 694
    .local v18, edt_times:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "times"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 696
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "init amount"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const v26, 0x7f0c0025

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 698
    .local v15, edt_amount:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "amount"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, ","

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 702
    return-void

    .line 595
    .end local v5           #btn_currency:Landroid/widget/Button;
    .end local v7           #btn_due:Landroid/widget/Button;
    .end local v8           #btn_group:Landroid/widget/Button;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #ckb_active:Landroid/widget/CheckBox;
    .end local v11           #ckb_autorec:Landroid/widget/CheckBox;
    .end local v13           #due_date:Ljava/lang/String;
    .end local v15           #edt_amount:Landroid/widget/EditText;
    .end local v16           #edt_name:Landroid/widget/EditText;
    .end local v17           #edt_payee:Landroid/widget/EditText;
    .end local v18           #edt_times:Landroid/widget/EditText;
    .end local v19           #spn_mode:Landroid/widget/Spinner;
    .end local v20           #spn_repeat:Landroid/widget/Spinner;
    .end local v21           #trans_date:Ljava/util/Date;
    .end local v22           #trans_mode:I
    .end local v23           #tv_account:Landroid/widget/TextView;
    .end local v24           #tv_category:Landroid/widget/TextView;
    :catch_0
    move-exception v26

    move-object/from16 v14, v26

    .line 596
    .local v14, e:Ljava/lang/Exception;
    new-instance v21, Ljava/util/Date;

    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    .restart local v21       #trans_date:Ljava/util/Date;
    goto/16 :goto_0

    .line 609
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v7       #btn_due:Landroid/widget/Button;
    .restart local v13       #due_date:Ljava/lang/String;
    :cond_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_2

    .line 610
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "due date is blank"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_due:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 614
    :cond_2
    :try_start_1
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    const-string v27, "due date be set"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    const-string v27, "due_date"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    .line 619
    :goto_5
    sget-object v26, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 620
    new-instance v26, Ljava/lang/StringBuilder;

    sget-object v27, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    move-object v0, v12

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_week_day:[Ljava/lang/String;

    move-object/from16 v27, v0

    sget-object v28, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    const/16 v29, 0x7

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 616
    :catch_1
    move-exception v26

    move-object/from16 v14, v26

    .line 617
    .restart local v14       #e:Ljava/lang/Exception;
    new-instance v21, Ljava/util/Date;

    .end local v21           #trans_date:Ljava/util/Date;
    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    .restart local v21       #trans_date:Ljava/util/Date;
    goto :goto_5

    .line 628
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v10       #ckb_active:Landroid/widget/CheckBox;
    .restart local v20       #spn_repeat:Landroid/widget/Spinner;
    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 631
    .restart local v11       #ckb_autorec:Landroid/widget/CheckBox;
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 641
    .restart local v19       #spn_mode:Landroid/widget/Spinner;
    .restart local v22       #trans_mode:I
    .restart local v23       #tv_account:Landroid/widget/TextView;
    .restart local v24       #tv_category:Landroid/widget/TextView;
    :pswitch_0
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 642
    const v26, 0x7f0900f6

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 643
    const v26, 0x7f0900f7

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 646
    :pswitch_1
    const/16 v26, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 647
    const v26, 0x7f0900f6

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 648
    const v26, 0x7f0900f7

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 651
    :pswitch_2
    const/16 v26, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 652
    const v26, 0x7f090059

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 653
    const v26, 0x7f09005a

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 639
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private _loadAccounts()V
    .locals 5

    .prologue
    const-string v4, "acc_name"

    const-string v3, "_id"

    .line 776
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v0

    .line 777
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/wareone/tappmt/ReminderEditor;->m_account:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 778
    if-eqz v0, :cond_2

    .line 780
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 783
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/ReminderEditor;->m_account:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v2, "acc_name"

    const-string v2, "acc_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 781
    if-nez v2, :cond_0

    .line 789
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 792
    :cond_2
    return-void
.end method

.method private _loadCategories(I)V
    .locals 9
    .parameter "trans_mode"

    .prologue
    const-string v8, "acc_name"

    const-string v7, "_id"

    .line 719
    const/4 v0, 0x0

    .line 721
    .local v0, c:Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    .line 733
    :goto_0
    sget-object v4, Lcom/wareone/tappmt/ReminderEditor;->m_category:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 734
    sget-object v4, Lcom/wareone/tappmt/ReminderEditor;->m_category_child:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 735
    if-eqz v0, :cond_4

    .line 737
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 739
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 740
    .local v3, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/wareone/tappmt/ReminderEditor;->m_category:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v4, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 745
    .local v1, c_child:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v2, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 747
    .restart local v3       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 752
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 753
    .restart local v3       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 751
    if-nez v4, :cond_1

    .line 761
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 762
    sget-object v4, Lcom/wareone/tappmt/ReminderEditor;->m_category_child:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 738
    if-nez v4, :cond_0

    .line 766
    .end local v1           #c_child:Landroid/database/Cursor;
    .end local v2           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 770
    :cond_4
    return-void

    .line 723
    :pswitch_0
    iget-object v4, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 724
    goto/16 :goto_0

    .line 726
    :pswitch_1
    iget-object v4, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 727
    goto/16 :goto_0

    .line 729
    :pswitch_2
    iget-object v4, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private _loadCurreny()V
    .locals 3

    .prologue
    .line 817
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencies()Landroid/database/Cursor;

    move-result-object v0

    .line 818
    .local v0, c:Landroid/database/Cursor;
    sget-object v1, Lcom/wareone/tappmt/ReminderEditor;->m_currency:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 819
    if-eqz v0, :cond_2

    .line 821
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    :cond_0
    sget-object v1, Lcom/wareone/tappmt/ReminderEditor;->m_currency:Ljava/util/List;

    const-string v2, "currency_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 822
    if-nez v1, :cond_0

    .line 827
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_2
    return-void
.end method

.method private _loadData()V
    .locals 1

    .prologue
    .line 706
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/wareone/tappmt/ReminderEditor;->_loadCategories(I)V

    .line 707
    invoke-direct {p0}, Lcom/wareone/tappmt/ReminderEditor;->_loadAccounts()V

    .line 708
    invoke-direct {p0}, Lcom/wareone/tappmt/ReminderEditor;->_loadGroups()V

    .line 709
    invoke-direct {p0}, Lcom/wareone/tappmt/ReminderEditor;->_loadCurreny()V

    .line 710
    invoke-direct {p0}, Lcom/wareone/tappmt/ReminderEditor;->_loadPayee()V

    .line 712
    return-void
.end method

.method private _loadGroups()V
    .locals 5

    .prologue
    const-string v4, "group_name"

    const-string v3, "_id"

    .line 798
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getGroups()Landroid/database/Cursor;

    move-result-object v0

    .line 799
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/wareone/tappmt/ReminderEditor;->m_group:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 800
    if-eqz v0, :cond_2

    .line 802
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 804
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 805
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/ReminderEditor;->m_group:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v2, "group_name"

    const-string v2, "group_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 803
    if-nez v2, :cond_0

    .line 811
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 813
    :cond_2
    return-void
.end method

.method private _loadPayee()V
    .locals 3

    .prologue
    .line 834
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getPayees()Landroid/database/Cursor;

    move-result-object v0

    .line 835
    .local v0, c:Landroid/database/Cursor;
    sget-object v1, Lcom/wareone/tappmt/ReminderEditor;->m_payee:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 836
    if-eqz v0, :cond_2

    .line 838
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    :cond_0
    sget-object v1, Lcom/wareone/tappmt/ReminderEditor;->m_payee:Ljava/util/List;

    const-string v2, "payee_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 839
    if-nez v1, :cond_0

    .line 844
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 847
    :cond_2
    return-void
.end method

.method private _restoreReminder()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "_id"

    const-string v6, ""

    const-string v5, "0"

    .line 542
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 544
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, df:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "reminder_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "begin_date"

    sget-object v3, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "due_date"

    const-string v3, ""

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "next_date"

    sget-object v3, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "notify_date"

    const-string v3, ""

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "cycle"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "previous_days"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "times"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "count"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "auto_rec"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "status"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "category"

    sget-object v1, Lcom/wareone/tappmt/ReminderEditor;->m_category:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "_id"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "account"

    sget-object v1, Lcom/wareone/tappmt/ReminderEditor;->m_account:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "_id"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "payee"

    const-string v3, ""

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "group_name"

    sget-object v1, Lcom/wareone/tappmt/ReminderEditor;->m_group:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "_id"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "currency"

    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "amount"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "remote_id"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "sync"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "modified"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method private _saveReminder()V
    .locals 21

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "notify_date"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const v16, 0x7f0c0093

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 468
    .local v11, edt_name:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "reminder_name"

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const v16, 0x7f0c009a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 470
    .local v12, edt_payee:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "payee"

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "count"

    const-string v18, "0"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const v16, 0x7f0c0095

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 474
    .local v13, edt_times:Landroid/widget/EditText;
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    .line 475
    .local v15, times:Ljava/lang/String;
    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_3

    .line 476
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "times"

    const-string v18, "0"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_0
    const v16, 0x7f0c001d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 519
    .local v6, ckb_active:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "status"

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 521
    const v16, 0x7f0c0097

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 522
    .local v7, ckb_autorec:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "auto_rec"

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 524
    new-instance v14, Ljava/text/DecimalFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "currency"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/wareone/tappmt/PmtDbAdapter;->getPaterntByCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 525
    .local v14, nf:Ljava/text/NumberFormat;
    const v16, 0x7f0c0025

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 526
    .local v10, edt_amount:Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, amount:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "amount"

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-object v0, v14

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_action:I

    move/from16 v16, v0

    const v17, 0x7f09005b

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "next_date"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "begin_date"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v16, v0

    const-string v17, "reminders"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 533
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_action:I

    move/from16 v16, v0

    const v17, 0x7f09005c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v16, v0

    const-string v17, "reminders"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_id:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v16 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 538
    :cond_2
    return-void

    .line 478
    .end local v5           #amount:Ljava/lang/String;
    .end local v6           #ckb_active:Landroid/widget/CheckBox;
    .end local v7           #ckb_autorec:Landroid/widget/CheckBox;
    .end local v10           #edt_amount:Landroid/widget/EditText;
    .end local v14           #nf:Ljava/text/NumberFormat;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "times"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v16, "yyyy-MM-dd"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 480
    .local v9, df:Ljava/text/SimpleDateFormat;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 481
    .local v4, _repeat:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "cycle"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 482
    .local v3, _cycle:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 484
    .local v8, curDate:Ljava/util/Calendar;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "begin_date"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 485
    packed-switch v3, :pswitch_data_0

    .line 508
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "due_date"

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    :catch_0
    move-exception v16

    goto/16 :goto_0

    .line 490
    :pswitch_1
    const/16 v16, 0x3

    const/16 v17, 0x1

    sub-int v17, v4, v17

    mul-int/lit8 v17, v17, 0x1

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 493
    :pswitch_2
    const/16 v16, 0x3

    const/16 v17, 0x1

    sub-int v17, v4, v17

    mul-int/lit8 v17, v17, 0x2

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 496
    :pswitch_3
    const/16 v16, 0x2

    const/16 v17, 0x1

    sub-int v17, v4, v17

    mul-int/lit8 v17, v17, 0x1

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 499
    :pswitch_4
    const/16 v16, 0x2

    const/16 v17, 0x1

    sub-int v17, v4, v17

    mul-int/lit8 v17, v17, 0x2

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 502
    :pswitch_5
    const/16 v16, 0x2

    const/16 v17, 0x1

    sub-int v17, v4, v17

    mul-int/lit8 v17, v17, 0x3

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 505
    :pswitch_6
    const/16 v16, 0x1

    const/16 v17, 0x1

    sub-int v17, v4, v17

    mul-int/lit8 v17, v17, 0x1

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 485
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

.method static synthetic access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 858
    sget-object v0, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$10()Ljava/util/List;
    .locals 1

    .prologue
    .line 861
    sget-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_account:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11()Ljava/util/List;
    .locals 1

    .prologue
    .line 862
    sget-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_group:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12()Ljava/util/List;
    .locals 1

    .prologue
    .line 864
    sget-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_payee:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13()Ljava/util/List;
    .locals 1

    .prologue
    .line 863
    sget-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_currency:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14(Lcom/wareone/tappmt/ReminderEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/wareone/tappmt/ReminderEditor;->_saveReminder()V

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/ReminderEditor;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 870
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor;->m_week_day:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/ReminderEditor;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 871
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor;->m_due:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/wareone/tappmt/ReminderEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/ReminderEditor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/ReminderEditor;->_loadCategories(I)V

    return-void
.end method

.method static synthetic access$6()Ljava/util/List;
    .locals 1

    .prologue
    .line 859
    sget-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_category:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/wareone/tappmt/ReminderEditor;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 866
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/wareone/tappmt/ReminderEditor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 849
    invoke-direct {p0, p1, p2}, Lcom/wareone/tappmt/ReminderEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9()Ljava/util/List;
    .locals 1

    .prologue
    .line 860
    sget-object v0, Lcom/wareone/tappmt/ReminderEditor;->m_category_child:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v18, 0x7f030032

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->setContentView(I)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 47
    .local v14, extra:Landroid/os/Bundle;
    const-string v18, "ACTION"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wareone/tappmt/ReminderEditor;->m_action:I

    .line 48
    const-string v18, "_id"

    const-wide/16 v19, 0x0

    move-object v0, v14

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/wareone/tappmt/ReminderEditor;->m_id:J

    .line 50
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_action:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090076

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ReminderEditor;->m_title:Ljava/lang/String;

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070005

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ReminderEditor;->m_trans_mode:[Ljava/lang/String;

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070010

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ReminderEditor;->m_repeat:[Ljava/lang/String;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070011

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ReminderEditor;->m_week_day:[Ljava/lang/String;

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070012

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ReminderEditor;->m_due:[Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    sput-object v18, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    .line 59
    sget-object v18, Lcom/wareone/tappmt/ReminderEditor;->curDate:Ljava/util/Calendar;

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 61
    new-instance v18, Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->_loadData()V

    .line 66
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_action:I

    move/from16 v18, v0

    const v19, 0x7f09005b

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->_restoreReminder()V

    .line 69
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_action:I

    move/from16 v18, v0

    const v19, 0x7f09005c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->_getReminder()V

    .line 73
    :cond_1
    const v18, 0x7f0c0018

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 75
    .local v9, btn_date:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$1;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 74
    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v18, 0x7f0c001a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 126
    .local v10, btn_due:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$2;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 125
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v18, 0x7f0c0096

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Spinner;

    .line 194
    .local v15, spn:Landroid/widget/Spinner;
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 195
    const v18, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_repeat:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 194
    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 196
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 197
    invoke-virtual {v15, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "cycle"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 199
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$3;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 217
    const v18, 0x7f0c001f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    .line 218
    .local v16, spn_mode:Landroid/widget/Spinner;
    new-instance v17, Landroid/widget/ArrayAdapter;

    .line 219
    const v18, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ReminderEditor;->m_trans_mode:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 218
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 220
    .local v17, tm_adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 221
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 222
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 223
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$4;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    const v18, 0x7f0c0021

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 279
    .local v7, btn_category:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$5;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 278
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v18, 0x7f0c0023

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 328
    .local v5, btn_account:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$6;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 327
    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    const v18, 0x7f0c0028

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 357
    .local v11, btn_group:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$7;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 356
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v18, 0x7f0c0099

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 383
    .local v12, btn_payee:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$8;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 382
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    const v18, 0x7f0c0026

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 406
    .local v8, btn_currency:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$9;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 405
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const v18, 0x7f0c0010

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 431
    .local v13, btn_save:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$10;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 430
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    const v18, 0x7f0c0011

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 446
    .local v6, btn_cancel:Landroid/widget/Button;
    new-instance v18, Lcom/wareone/tappmt/ReminderEditor$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ReminderEditor$11;-><init>(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 445
    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/ReminderEditor;->_initControls()V

    .line 454
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 460
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 461
    return-void
.end method
