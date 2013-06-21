.class public Lcom/wareone/tappmt/TemplateEditor;
.super Landroid/app/Activity;
.source "TemplateEditor.java"


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

.field private m_id:J

.field private m_title:Ljava/lang/String;

.field private m_trans_mode:[Ljava/lang/String;

.field private m_values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/wareone/tappmt/TemplateEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_category:Ljava/util/List;

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_category_child:Ljava/util/List;

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_account:Ljava/util/List;

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_group:Ljava/util/List;

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_currency:Ljava/util/List;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_payee:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 607
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    .line 34
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
    .line 590
    .local p1, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 595
    return-object v1

    .line 593
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _getTemplate()V
    .locals 5

    .prologue
    .line 356
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-wide v3, p0, Lcom/wareone/tappmt/TemplateEditor;->m_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getTemplateById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 358
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 359
    if-eqz v0, :cond_1

    .line 360
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 366
    .end local v1           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_1
    return-void

    .line 362
    .restart local v1       #i:I
    :cond_2
    sget-object v2, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Template "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

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

    .line 363
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private _initControls()V
    .locals 21

    .prologue
    .line 372
    const-string v16, ""

    .line 374
    .local v16, value:Ljava/lang/String;
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init begin date"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 377
    .local v8, df:Ljava/text/SimpleDateFormat;
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init transaction mode"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const v17, 0x7f0c001f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 379
    .local v12, spn_mode:Landroid/widget/Spinner;
    const v17, 0x7f0c0020

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 380
    .local v15, tv_category:Landroid/widget/TextView;
    const v17, 0x7f0c0022

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 382
    .local v14, tv_account:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "mode"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 383
    .local v13, trans_mode:I
    packed-switch v13, :pswitch_data_0

    .line 401
    :goto_0
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "load category"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->_loadCategories(I)V

    .line 404
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init category"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "category"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v7

    .line 406
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 407
    const-string v17, "acc_name"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 408
    const v17, 0x7f0c0021

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 409
    .local v4, btn_category:Landroid/widget/Button;
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "set category value --> "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 412
    .end local v4           #btn_category:Landroid/widget/Button;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 414
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init account"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->m_account:Ljava/util/List;

    sget-object v18, Lcom/wareone/tappmt/TemplateEditor;->m_account:Ljava/util/List;

    const-string v19, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TemplateEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    const-string v20, "account"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v17, "acc_name"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 416
    .restart local v16       #value:Ljava/lang/String;
    const v17, 0x7f0c0023

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 417
    .local v3, btn_account:Landroid/widget/Button;
    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init group"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->m_group:Ljava/util/List;

    sget-object v18, Lcom/wareone/tappmt/TemplateEditor;->m_group:Ljava/util/List;

    const-string v19, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TemplateEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    const-string v20, "group_name"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #btn_account:Landroid/widget/Button;
    check-cast v3, Ljava/util/Map;

    const-string v17, "group_name"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 421
    .restart local v16       #value:Ljava/lang/String;
    const v17, 0x7f0c0028

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 422
    .local v6, btn_group:Landroid/widget/Button;
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 424
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init currency"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const v17, 0x7f0c0026

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 426
    .local v5, btn_currency:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "currency"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init payee"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const v17, 0x7f0c009a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 430
    .local v11, edt_payee:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "payee"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init reminder name"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const v17, 0x7f0c00ad

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 434
    .local v10, edt_name:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "template_name"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    sget-object v17, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    const-string v18, "init amount"

    invoke-static/range {v17 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const v17, 0x7f0c0025

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 438
    .local v9, edt_amount:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "amount"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 442
    return-void

    .line 385
    .end local v5           #btn_currency:Landroid/widget/Button;
    .end local v6           #btn_group:Landroid/widget/Button;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #edt_amount:Landroid/widget/EditText;
    .end local v10           #edt_name:Landroid/widget/EditText;
    .end local v11           #edt_payee:Landroid/widget/EditText;
    :pswitch_0
    const/16 v17, 0x0

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 386
    const v17, 0x7f0900f6

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 387
    const v17, 0x7f0900f7

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 390
    :pswitch_1
    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 391
    const v17, 0x7f0900f6

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 392
    const v17, 0x7f0900f7

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 395
    :pswitch_2
    const/16 v17, 0x2

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 396
    const v17, 0x7f090059

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 397
    const v17, 0x7f09005a

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 383
    nop

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

    .line 516
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v0

    .line 517
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/wareone/tappmt/TemplateEditor;->m_account:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 518
    if-eqz v0, :cond_2

    .line 520
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 523
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/TemplateEditor;->m_account:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v2, "acc_name"

    const-string v2, "acc_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 521
    if-nez v2, :cond_0

    .line 529
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_2
    return-void
.end method

.method private _loadCategories(I)V
    .locals 9
    .parameter "trans_mode"

    .prologue
    const-string v8, "acc_name"

    const-string v7, "_id"

    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, c:Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    .line 473
    :goto_0
    sget-object v4, Lcom/wareone/tappmt/TemplateEditor;->m_category:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 474
    sget-object v4, Lcom/wareone/tappmt/TemplateEditor;->m_category_child:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 475
    if-eqz v0, :cond_4

    .line 477
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 479
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 480
    .local v3, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/wareone/tappmt/TemplateEditor;->m_category:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 485
    .local v1, c_child:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v2, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 487
    .restart local v3       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 492
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 493
    .restart local v3       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 491
    if-nez v4, :cond_1

    .line 501
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 502
    sget-object v4, Lcom/wareone/tappmt/TemplateEditor;->m_category_child:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 478
    if-nez v4, :cond_0

    .line 506
    .end local v1           #c_child:Landroid/database/Cursor;
    .end local v2           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 510
    :cond_4
    return-void

    .line 463
    :pswitch_0
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 464
    goto/16 :goto_0

    .line 466
    :pswitch_1
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 467
    goto/16 :goto_0

    .line 469
    :pswitch_2
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 461
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
    .line 557
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencies()Landroid/database/Cursor;

    move-result-object v0

    .line 558
    .local v0, c:Landroid/database/Cursor;
    sget-object v1, Lcom/wareone/tappmt/TemplateEditor;->m_currency:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 559
    if-eqz v0, :cond_2

    .line 561
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    :cond_0
    sget-object v1, Lcom/wareone/tappmt/TemplateEditor;->m_currency:Ljava/util/List;

    const-string v2, "currency_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 562
    if-nez v1, :cond_0

    .line 567
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_2
    return-void
.end method

.method private _loadData()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/wareone/tappmt/TemplateEditor;->_loadCategories(I)V

    .line 447
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_loadAccounts()V

    .line 448
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_loadGroups()V

    .line 449
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_loadCurreny()V

    .line 450
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_loadPayee()V

    .line 452
    return-void
.end method

.method private _loadGroups()V
    .locals 5

    .prologue
    const-string v4, "group_name"

    const-string v3, "_id"

    .line 538
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getGroups()Landroid/database/Cursor;

    move-result-object v0

    .line 539
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/wareone/tappmt/TemplateEditor;->m_group:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 540
    if-eqz v0, :cond_2

    .line 542
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/TemplateEditor;->m_group:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v2, "group_name"

    const-string v2, "group_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 543
    if-nez v2, :cond_0

    .line 551
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_2
    return-void
.end method

.method private _loadPayee()V
    .locals 3

    .prologue
    .line 574
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getPayees()Landroid/database/Cursor;

    move-result-object v0

    .line 575
    .local v0, c:Landroid/database/Cursor;
    sget-object v1, Lcom/wareone/tappmt/TemplateEditor;->m_payee:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 576
    if-eqz v0, :cond_2

    .line 578
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    :cond_0
    sget-object v1, Lcom/wareone/tappmt/TemplateEditor;->m_payee:Ljava/util/List;

    const-string v2, "payee_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 579
    if-nez v1, :cond_0

    .line 584
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_2
    return-void
.end method

.method private _restoreTemplate()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-string v8, ""

    const-string v7, "_id"

    const-string v5, "0"

    .line 338
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 340
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, df:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "template_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "category"

    sget-object v1, Lcom/wareone/tappmt/TemplateEditor;->m_category:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "_id"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "account"

    sget-object v1, Lcom/wareone/tappmt/TemplateEditor;->m_account:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "_id"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "payee"

    const-string v3, ""

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "group_name"

    sget-object v1, Lcom/wareone/tappmt/TemplateEditor;->m_group:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v4, "_id"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "currency"

    iget-object v3, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "amount"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "remote_id"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "sync"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v2, "modified"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private _saveTemplate()V
    .locals 9

    .prologue
    const-string v8, "templates"

    .line 317
    const v4, 0x7f0c00ad

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 318
    .local v2, edt_name:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v5, "template_name"

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const v4, 0x7f0c009a

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 320
    .local v3, edt_payee:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v5, "payee"

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const v4, 0x7f0c0025

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 323
    .local v1, edt_amount:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, amount:Ljava/lang/String;
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    const-string v5, "amount"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_action:I

    const v5, 0x7f09005b

    if-ne v4, v5, :cond_0

    .line 327
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "templates"

    iget-object v5, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v4, v8, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 329
    :cond_0
    iget v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_action:I

    const v5, 0x7f09005c

    if-ne v4, v5, :cond_1

    .line 330
    iget-object v4, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "templates"

    iget-object v5, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    iget-wide v6, p0, Lcom/wareone/tappmt/TemplateEditor;->m_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v8, v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 334
    :cond_1
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/wareone/tappmt/TemplateEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/TemplateEditor;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$10()Ljava/util/List;
    .locals 1

    .prologue
    .line 603
    sget-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_currency:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/wareone/tappmt/TemplateEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_saveTemplate()V

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/TemplateEditor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/TemplateEditor;->_loadCategories(I)V

    return-void
.end method

.method static synthetic access$3()Ljava/util/List;
    .locals 1

    .prologue
    .line 599
    sget-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_category:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/TemplateEditor;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/TemplateEditor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 589
    invoke-direct {p0, p1, p2}, Lcom/wareone/tappmt/TemplateEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6()Ljava/util/List;
    .locals 1

    .prologue
    .line 600
    sget-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_category_child:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Ljava/util/List;
    .locals 1

    .prologue
    .line 601
    sget-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_account:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8()Ljava/util/List;
    .locals 1

    .prologue
    .line 602
    sget-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_group:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9()Ljava/util/List;
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lcom/wareone/tappmt/TemplateEditor;->m_payee:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v10, 0x7f03003f

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/wareone/tappmt/TemplateEditor;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 45
    .local v7, extra:Landroid/os/Bundle;
    const-string v10, "ACTION"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_action:I

    .line 46
    const-string v10, "_id"

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_id:J

    .line 48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TemplateEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/wareone/tappmt/TemplateEditor;->m_action:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/wareone/tappmt/TemplateEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_title:Ljava/lang/String;

    .line 49
    iget-object v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_title:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/wareone/tappmt/TemplateEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_trans_mode:[Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    sput-object v10, Lcom/wareone/tappmt/TemplateEditor;->curDate:Ljava/util/Calendar;

    .line 54
    sget-object v10, Lcom/wareone/tappmt/TemplateEditor;->curDate:Ljava/util/Calendar;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 56
    new-instance v10, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 57
    iget-object v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v10}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 59
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_loadData()V

    .line 61
    iget v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_action:I

    const v11, 0x7f09005b

    if-ne v10, v11, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_restoreTemplate()V

    .line 64
    :cond_0
    iget v10, p0, Lcom/wareone/tappmt/TemplateEditor;->m_action:I

    const v11, 0x7f09005c

    if-ne v10, v11, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_getTemplate()V

    .line 69
    :cond_1
    const v10, 0x7f0c001f

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 70
    .local v8, spn_mode:Landroid/widget/Spinner;
    new-instance v9, Landroid/widget/ArrayAdapter;

    .line 71
    const v10, 0x1090008

    iget-object v11, p0, Lcom/wareone/tappmt/TemplateEditor;->m_trans_mode:[Ljava/lang/String;

    .line 70
    invoke-direct {v9, p0, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 72
    .local v9, tm_adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v10, 0x1090009

    invoke-virtual {v9, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 73
    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 74
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 75
    new-instance v10, Lcom/wareone/tappmt/TemplateEditor$1;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/TemplateEditor$1;-><init>(Lcom/wareone/tappmt/TemplateEditor;)V

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 129
    const v10, 0x7f0c0021

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 131
    .local v2, btn_category:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/TemplateEditor$2;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/TemplateEditor$2;-><init>(Lcom/wareone/tappmt/TemplateEditor;)V

    .line 130
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v10, 0x7f0c0023

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 180
    .local v0, btn_account:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/TemplateEditor$3;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/TemplateEditor$3;-><init>(Lcom/wareone/tappmt/TemplateEditor;)V

    .line 179
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v10, 0x7f0c0028

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 209
    .local v4, btn_group:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/TemplateEditor$4;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/TemplateEditor$4;-><init>(Lcom/wareone/tappmt/TemplateEditor;)V

    .line 208
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v10, 0x7f0c0099

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 235
    .local v5, btn_payee:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/TemplateEditor$5;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/TemplateEditor$5;-><init>(Lcom/wareone/tappmt/TemplateEditor;)V

    .line 234
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v10, 0x7f0c0026

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 258
    .local v3, btn_currency:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/TemplateEditor$6;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/TemplateEditor$6;-><init>(Lcom/wareone/tappmt/TemplateEditor;)V

    .line 257
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v10, 0x7f0c0010

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 283
    .local v6, btn_save:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/TemplateEditor$7;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/TemplateEditor$7;-><init>(Lcom/wareone/tappmt/TemplateEditor;)V

    .line 282
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v10, 0x7f0c0011

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 298
    .local v1, btn_cancel:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/TemplateEditor$8;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/TemplateEditor$8;-><init>(Lcom/wareone/tappmt/TemplateEditor;)V

    .line 297
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-direct {p0}, Lcom/wareone/tappmt/TemplateEditor;->_initControls()V

    .line 306
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 313
    return-void
.end method
