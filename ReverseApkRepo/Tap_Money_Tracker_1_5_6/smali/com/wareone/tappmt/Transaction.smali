.class public Lcom/wareone/tappmt/Transaction;
.super Landroid/app/Activity;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Transaction$ChoiceAdapter;,
        Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;
    }
.end annotation


# static fields
.field private static final NEW_CATEGORY_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Transaction"

.field private static final ZEROES:Ljava/lang/String; = "000000000000"

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

.field private static m_templates:Ljava/util/List;
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

.field private static m_trans_mode:I

.field private static m_values:Landroid/content/ContentValues;


# instance fields
.field private final TRANS_ACCOUNT:Ljava/lang/String;

.field private final TRANS_CATEGORY:Ljava/lang/String;

.field private final TRANS_CURRENCY:Ljava/lang/String;

.field private final TRANS_DATE:Ljava/lang/String;

.field private final TRANS_GROUP:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private m_action:I

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_dlg:Landroid/app/ProgressDialog;

.field private m_id:J

.field private m_nf:Ljava/text/NumberFormat;

.field private m_title:Ljava/lang/String;

.field private numClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/Transaction;->m_category:Ljava/util/List;

    .line 2364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/Transaction;->m_category_child:Ljava/util/List;

    .line 2365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/Transaction;->m_account:Ljava/util/List;

    .line 2366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    .line 2367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/Transaction;->m_templates:Ljava/util/List;

    .line 2368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/Transaction;->m_currency:Ljava/util/List;

    .line 2369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/Transaction;->m_payee:Ljava/util/List;

    .line 2371
    const/4 v0, 0x0

    sput v0, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    .line 2373
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2249
    new-instance v0, Lcom/wareone/tappmt/Transaction$1;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Transaction$1;-><init>(Lcom/wareone/tappmt/Transaction;)V

    iput-object v0, p0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    .line 2286
    new-instance v0, Lcom/wareone/tappmt/Transaction$2;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Transaction$2;-><init>(Lcom/wareone/tappmt/Transaction;)V

    iput-object v0, p0, Lcom/wareone/tappmt/Transaction;->handler:Landroid/os/Handler;

    .line 2355
    const-string v0, "date"

    iput-object v0, p0, Lcom/wareone/tappmt/Transaction;->TRANS_DATE:Ljava/lang/String;

    .line 2356
    const-string v0, "category"

    iput-object v0, p0, Lcom/wareone/tappmt/Transaction;->TRANS_CATEGORY:Ljava/lang/String;

    .line 2357
    const-string v0, "account"

    iput-object v0, p0, Lcom/wareone/tappmt/Transaction;->TRANS_ACCOUNT:Ljava/lang/String;

    .line 2358
    const-string v0, "group"

    iput-object v0, p0, Lcom/wareone/tappmt/Transaction;->TRANS_GROUP:Ljava/lang/String;

    .line 2359
    const-string v0, "currency"

    iput-object v0, p0, Lcom/wareone/tappmt/Transaction;->TRANS_CURRENCY:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private _addToPayee(Ljava/lang/String;)V
    .locals 3
    .parameter "payee_name"

    .prologue
    .line 1097
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1098
    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1099
    const v1, 0x7f09004c

    new-instance v2, Lcom/wareone/tappmt/Transaction$7;

    invoke-direct {v2, p0, p1}, Lcom/wareone/tappmt/Transaction$7;-><init>(Lcom/wareone/tappmt/Transaction;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1109
    const v1, 0x7f09004b

    new-instance v2, Lcom/wareone/tappmt/Transaction$8;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Transaction$8;-><init>(Lcom/wareone/tappmt/Transaction;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1118
    return-void
.end method

.method private _checkBudget()Z
    .locals 24

    .prologue
    .line 1121
    const-wide/16 v5, 0x0

    .line 1122
    .local v5, budget:D
    const-wide/16 v13, 0x0

    .line 1124
    .local v13, total:D
    const-string v20, "TapPMTPrefs"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/Transaction;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1125
    .local v11, settings:Landroid/content/SharedPreferences;
    const-string v20, "budget_alert"

    const/16 v21, 0x50

    move-object v0, v11

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1127
    .local v7, budget_alert:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v20, v0

    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "category"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v8

    .line 1128
    .local v8, c:Landroid/database/Cursor;
    const-string v20, "Transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "category "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "category"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1130
    const-string v20, "Transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "use budget --> "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "use_budget"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string v20, "use_budget"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v8

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1132
    const-string v20, "Transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "use budget --> "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "parent_budget"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const-string v20, "parent_budget"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v8

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "sub_of"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v8

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-nez v20, :cond_3

    .line 1135
    :cond_0
    const-string v20, "budget"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v8

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 1136
    const-string v20, "Transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "category budget"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v20, "_id"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v8

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/Transaction;->_getTotalBeglongCategory(J)D

    move-result-wide v13

    .line 1138
    const-string v20, "Transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "category total"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_1
    :goto_0
    const-wide/16 v20, 0x0

    cmpl-double v20, v5, v20

    if-lez v20, :cond_2

    .line 1148
    const-wide/high16 v20, 0x4059

    mul-double v20, v20, v13

    div-double v20, v20, v5

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-lez v20, :cond_2

    .line 1150
    const-string v20, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 1151
    .local v9, inflate:Landroid/view/LayoutInflater;
    const v20, 0x7f030009

    const/16 v21, 0x0

    move-object v0, v9

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 1154
    .local v19, view:Landroid/view/View;
    const v20, 0x7f0c0033

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1155
    .local v16, tv_category:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0900ac

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1156
    .local v10, msg:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "acc_name"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1157
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    const v20, 0x7f0c002c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1159
    .local v15, tv_balance:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0900ad

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1160
    invoke-static {v5, v6, v13, v14}, Lcom/wareone/tappmt/PmtDbAdapter;->sub(DD)D

    move-result-wide v3

    .line 1161
    .local v3, available:D
    const-string v20, "Transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "category available"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1163
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    const v20, 0x7f0c0034

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1165
    .local v18, tv_total:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0900ae

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1166
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1167
    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    const v20, 0x7f0c0035

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1169
    .local v17, tv_spent:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0900af

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1170
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1171
    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    new-instance v12, Landroid/widget/Toast;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1174
    .local v12, toast:Landroid/widget/Toast;
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1175
    const/16 v20, 0x1

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 1176
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1181
    .end local v3           #available:D
    .end local v9           #inflate:Landroid/view/LayoutInflater;
    .end local v10           #msg:Ljava/lang/String;
    .end local v12           #toast:Landroid/widget/Toast;
    .end local v15           #tv_balance:Landroid/widget/TextView;
    .end local v16           #tv_category:Landroid/widget/TextView;
    .end local v17           #tv_spent:Landroid/widget/TextView;
    .end local v18           #tv_total:Landroid/widget/TextView;
    .end local v19           #view:Landroid/view/View;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1183
    cmpl-double v20, v5, v13

    if-ltz v20, :cond_4

    const/16 v20, 0x1

    :goto_1
    return v20

    .line 1140
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v20, v0

    const-string v21, "sub_of"

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object v0, v8

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->getBudget(J)D

    move-result-wide v5

    .line 1141
    const-string v20, "Transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "category budget"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v20, "sub_of"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v8

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/Transaction;->_getTotalBeglongCategory(J)D

    move-result-wide v13

    .line 1143
    const-string v20, "Transaction"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "category total"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1183
    :cond_4
    const/16 v20, 0x0

    goto :goto_1
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
    .line 2220
    .local p1, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2222
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 2225
    return-object v1

    .line 2223
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _getReminder(J)V
    .locals 11
    .parameter "reminder_id"

    .prologue
    const-string v10, "currency"

    const-string v9, "category"

    const-string v8, "amount"

    const-string v7, "account"

    const-string v6, "0"

    .line 1283
    const-string v3, "Transaction"

    const-string v4, "_getReminder---------"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object v3, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getReminderById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 1286
    .local v0, c:Landroid/database/Cursor;
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1287
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1288
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v1, df:Ljava/text/SimpleDateFormat;
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "trans_date"

    sget-object v5, Lcom/wareone/tappmt/Transaction;->curDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "mode"

    const-string v5, "mode"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "payee"

    const-string v5, "payee"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "category"

    const-string v4, "category"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "account"

    const-string v4, "account"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "amount"

    const-string v4, "amount"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "group_name"

    const-string v5, "group_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "currency"

    const-string v4, "currency"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v3, "reminder_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, note:Ljava/lang/String;
    const-string v3, "times"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 1300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "times"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1302
    :cond_0
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "note"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "remote_id"

    const-string v5, "0"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    sget-object v3, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v4, "sync"

    const-string v5, "0"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_setExchangeRate()V

    .line 1310
    .end local v1           #df:Ljava/text/SimpleDateFormat;
    .end local v2           #note:Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1311
    return-void

    .line 1308
    :cond_1
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_restoreTransaction()V

    goto :goto_0
.end method

.method private _getTemplate(J)V
    .locals 10
    .parameter "template_id"

    .prologue
    const-string v9, "currency"

    const-string v8, "category"

    const-string v7, "amount"

    const-string v6, "account"

    const-string v5, "0"

    .line 1314
    const-string v2, "Transaction"

    const-string v3, "_getTemplate---------"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getTemplateById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 1317
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1318
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v1, df:Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "trans_date"

    sget-object v4, Lcom/wareone/tappmt/Transaction;->curDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "mode"

    const-string v4, "mode"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "payee"

    const-string v4, "payee"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "category"

    const-string v3, "category"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "account"

    const-string v3, "account"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "amount"

    const-string v3, "amount"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "group_name"

    const-string v4, "group_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "currency"

    const-string v3, "currency"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "note"

    const-string v4, "template_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "remote_id"

    const-string v4, "0"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "sync"

    const-string v4, "0"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_setExchangeRate()V

    .line 1337
    .end local v1           #df:Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1338
    return-void

    .line 1335
    :cond_0
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_restoreTransaction()V

    goto :goto_0
.end method

.method private _getTemplates()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "0"

    const-string v6, "mode"

    const-string v4, "_id"

    const-string v5, "template_name"

    .line 1341
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_templates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1345
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1346
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_templates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    const-string v2, "_id"

    const-string v2, "0"

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const-string v2, "template_name"

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const-string v2, "mode"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1351
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_templates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    const-string v2, "_id"

    const-string v2, "0"

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    const-string v2, "template_name"

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    const-string v2, "mode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1356
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_templates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    const-string v2, "_id"

    const-string v2, "0"

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    const-string v2, "template_name"

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    const-string v2, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getTemplates()Landroid/database/Cursor;

    move-result-object v0

    .line 1362
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1363
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1366
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1367
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_templates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    const-string v2, "template_name"

    const-string v2, "template_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    const-string v2, "mode"

    const-string v2, "mode"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 1364
    if-nez v2, :cond_0

    .line 1374
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1377
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1378
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_templates:Ljava/util/List;

    const-string v4, "template_name"

    invoke-direct {p0, v2, v5}, Lcom/wareone/tappmt/Transaction;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 1379
    new-instance v4, Lcom/wareone/tappmt/Transaction$9;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/Transaction$9;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1378
    invoke-virtual {v3, v2, v7, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1413
    const v3, 0x7f09004b

    new-instance v4, Lcom/wareone/tappmt/Transaction$10;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/Transaction$10;-><init>(Lcom/wareone/tappmt/Transaction;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1423
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1425
    return-void
.end method

.method private _getTotalBeglongCategory(J)D
    .locals 11
    .parameter "id"

    .prologue
    .line 1187
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    .line 1188
    .local v0, _range:[Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v5, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    sget-object v8, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v9, "trans_date"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 1191
    .local v4, d:Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1192
    .local v2, cal:Ljava/util/Calendar;
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1193
    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1194
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 1195
    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1196
    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    .end local v2           #cal:Ljava/util/Calendar;
    .end local v4           #d:Ljava/util/Date;
    :goto_0
    const-wide/16 v6, 0x0

    .line 1201
    .local v6, result:D
    iget-object v8, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v1

    .line 1202
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1203
    const-string v8, "use_budget"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1204
    iget-object v8, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v9, "_id"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v0}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 1205
    iget-object v8, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v9, "_id"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v3

    .line 1206
    .local v3, child:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1208
    :cond_0
    const-string v8, "use_budget"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1209
    iget-object v8, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v9, "_id"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v0}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 1212
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 1207
    if-nez v8, :cond_0

    .line 1214
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1217
    .end local v3           #child:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1219
    return-wide v6

    .line 1198
    .end local v1           #c:Landroid/database/Cursor;
    .end local v6           #result:D
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private _getTransaction()V
    .locals 5

    .prologue
    .line 1267
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-wide v3, p0, Lcom/wareone/tappmt/Transaction;->m_id:J

    invoke-virtual {v2, v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getTransactionById(J)Landroid/database/Cursor;

    move-result-object v0

    .line 1268
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1269
    if-eqz v0, :cond_1

    .line 1270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1271
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 1276
    .end local v1           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1278
    :cond_1
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "sync"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    return-void

    .line 1272
    .restart local v1       #i:I
    :cond_2
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private _initControls()V
    .locals 30

    .prologue
    .line 1497
    const-string v26, "Transaction"

    const-string v27, "_initControls---------"

    invoke-static/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const-string v25, ""

    .line 1501
    .local v25, value:Ljava/lang/String;
    const v26, 0x7f0c00ae

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1502
    .local v9, btn_icon:Landroid/widget/Button;
    if-eqz v9, :cond_0

    .line 1503
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v27, "src_id"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_3

    .line 1504
    const/16 v26, 0x8

    move-object v0, v9

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1510
    :cond_0
    :goto_0
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v26, "yyyy-MM-dd"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v19, df:Ljava/text/SimpleDateFormat;
    const v26, 0x7f0c0018

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1512
    .local v7, btn_date:Landroid/widget/Button;
    sget-object v26, Lcom/wareone/tappmt/Transaction;->curDate:Ljava/util/Calendar;

    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v28, "trans_date"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_4

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f090023

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1529
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v26, v0

    sget-object v27, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v28, "category"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v18

    .line 1530
    .local v18, c:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1531
    const-string v26, "acc_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1533
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1534
    const v26, 0x7f0c0021

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1535
    .local v5, btn_category:Landroid/widget/Button;
    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_account:Ljava/util/List;

    sget-object v27, Lcom/wareone/tappmt/Transaction;->m_account:Ljava/util/List;

    const-string v28, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/Transaction;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    sget-object v28, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

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

    .line 1538
    .restart local v25       #value:Ljava/lang/String;
    const v26, 0x7f0c0023

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1539
    .local v3, btn_account:Landroid/widget/Button;
    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    sget-object v27, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    const-string v28, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/Transaction;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    sget-object v28, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v29, "group_name"

    invoke-virtual/range {v28 .. v29}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v26, "group_name"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #value:Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 1542
    .restart local v25       #value:Ljava/lang/String;
    const v26, 0x7f0c0028

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1543
    .local v8, btn_group:Landroid/widget/Button;
    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1545
    const v26, 0x7f0c0026

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1547
    .local v6, btn_currency:Landroid/widget/Button;
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v27, "currency"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    const v26, 0x7f0c0025

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    .line 1554
    .local v21, edt_amount:Landroid/widget/EditText;
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v27, "amount"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1556
    const v26, 0x7f0c00bf

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    .line 1557
    .local v22, edt_note:Landroid/widget/EditText;
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v27, "note"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    const v26, 0x7f0c009a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/EditText;

    .line 1560
    .local v23, edt_payee:Landroid/widget/EditText;
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v27, "payee"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    if-eqz v9, :cond_2

    .line 1566
    new-instance v26, Lcom/wareone/tappmt/Transaction$13;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$13;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1565
    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1583
    :cond_2
    new-instance v26, Lcom/wareone/tappmt/Transaction$14;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$14;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1582
    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1623
    const v26, 0x7f0c00bb

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 1625
    .local v14, btn_prev_date:Landroid/widget/Button;
    new-instance v26, Lcom/wareone/tappmt/Transaction$15;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$15;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1624
    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1643
    const v26, 0x7f0c00bc

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1645
    .local v10, btn_next_date:Landroid/widget/Button;
    new-instance v26, Lcom/wareone/tappmt/Transaction$16;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$16;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1644
    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1665
    new-instance v26, Lcom/wareone/tappmt/Transaction$17;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$17;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1664
    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1737
    new-instance v26, Lcom/wareone/tappmt/Transaction$18;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$18;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1736
    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1776
    new-instance v26, Lcom/wareone/tappmt/Transaction$19;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$19;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1775
    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1804
    const v26, 0x7f0c00bd

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 1806
    .local v17, btn_sync:Landroid/widget/Button;
    new-instance v26, Lcom/wareone/tappmt/Transaction$20;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$20;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1805
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1825
    const v26, 0x7f0c00be

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 1827
    .local v15, btn_rate:Landroid/widget/Button;
    new-instance v26, Lcom/wareone/tappmt/Transaction$21;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$21;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1826
    move-object v0, v15

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1885
    new-instance v26, Lcom/wareone/tappmt/Transaction$22;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$22;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1884
    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1925
    const v26, 0x7f0c0099

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1927
    .local v13, btn_payee:Landroid/widget/Button;
    new-instance v26, Lcom/wareone/tappmt/Transaction$23;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$23;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1926
    move-object v0, v13

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1960
    const v26, 0x7f0c00ba

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1962
    .local v11, btn_note:Landroid/widget/Button;
    new-instance v26, Lcom/wareone/tappmt/Transaction$24;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$24;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1961
    move-object v0, v11

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1971
    new-instance v26, Lcom/wareone/tappmt/Transaction$25;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$25;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1970
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1978
    const v26, 0x7f0c0010

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 1980
    .local v16, btn_save:Landroid/widget/Button;
    new-instance v26, Lcom/wareone/tappmt/Transaction$26;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$26;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1979
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1995
    const v26, 0x7f0c0011

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1997
    .local v4, btn_cancel:Landroid/widget/Button;
    new-instance v26, Lcom/wareone/tappmt/Transaction$27;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Transaction$27;-><init>(Lcom/wareone/tappmt/Transaction;)V

    .line 1996
    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2004
    const v26, 0x7f0c00b5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 2005
    .local v12, btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2006
    const v26, 0x7f0c00af

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2007
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2008
    const v26, 0x7f0c00b0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2009
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2010
    const v26, 0x7f0c00b1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2011
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2012
    const v26, 0x7f0c00b2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2013
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2014
    const v26, 0x7f0c00b3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2015
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2016
    const v26, 0x7f0c00b4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2017
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2018
    const v26, 0x7f0c00b6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2019
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2020
    const v26, 0x7f0c00b7

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2021
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2022
    const v26, 0x7f0c00b8

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2023
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2024
    const v26, 0x7f0c002e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2025
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2026
    const v26, 0x7f0c00b9

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #btn_num:Landroid/widget/Button;
    check-cast v12, Landroid/widget/Button;

    .line 2027
    .restart local v12       #btn_num:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->numClick:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2029
    return-void

    .line 1506
    .end local v3           #btn_account:Landroid/widget/Button;
    .end local v4           #btn_cancel:Landroid/widget/Button;
    .end local v5           #btn_category:Landroid/widget/Button;
    .end local v6           #btn_currency:Landroid/widget/Button;
    .end local v7           #btn_date:Landroid/widget/Button;
    .end local v8           #btn_group:Landroid/widget/Button;
    .end local v10           #btn_next_date:Landroid/widget/Button;
    .end local v11           #btn_note:Landroid/widget/Button;
    .end local v12           #btn_num:Landroid/widget/Button;
    .end local v13           #btn_payee:Landroid/widget/Button;
    .end local v14           #btn_prev_date:Landroid/widget/Button;
    .end local v15           #btn_rate:Landroid/widget/Button;
    .end local v16           #btn_save:Landroid/widget/Button;
    .end local v17           #btn_sync:Landroid/widget/Button;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #df:Ljava/text/SimpleDateFormat;
    .end local v21           #edt_amount:Landroid/widget/EditText;
    .end local v22           #edt_note:Landroid/widget/EditText;
    .end local v23           #edt_payee:Landroid/widget/EditText;
    :cond_3
    const/16 v26, 0x0

    move-object v0, v9

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1518
    .restart local v7       #btn_date:Landroid/widget/Button;
    .restart local v19       #df:Ljava/text/SimpleDateFormat;
    :cond_4
    :try_start_0
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v27, "trans_date"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 1522
    .local v24, trans_date:Ljava/util/Date;
    :goto_2
    sget-object v26, Lcom/wareone/tappmt/Transaction;->curDate:Ljava/util/Calendar;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1526
    sget-object v26, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v27, "trans_date"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1519
    .end local v24           #trans_date:Ljava/util/Date;
    :catch_0
    move-exception v26

    move-object/from16 v20, v26

    .line 1520
    .local v20, e:Ljava/lang/Exception;
    new-instance v24, Ljava/util/Date;

    invoke-direct/range {v24 .. v24}, Ljava/util/Date;-><init>()V

    .restart local v24       #trans_date:Ljava/util/Date;
    goto :goto_2
.end method

.method private _loadAccounts()V
    .locals 5

    .prologue
    const-string v4, "acc_name"

    const-string v3, "_id"

    .line 2117
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v0

    .line 2118
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_account:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2119
    if-eqz v0, :cond_2

    .line 2121
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2123
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2124
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_account:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2125
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    const-string v2, "acc_name"

    const-string v2, "acc_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 2122
    if-nez v2, :cond_0

    .line 2130
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2133
    :cond_2
    return-void
.end method

.method private _loadCategories()V
    .locals 10

    .prologue
    const v6, 0x7f09001c

    const-string v9, "0"

    const-string v8, "acc_name"

    const-string v7, "_id"

    .line 2043
    const-string v4, "Transaction"

    const-string v5, "_loadCategories---------"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    sget-object v4, Lcom/wareone/tappmt/Transaction;->m_category:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2049
    sget-object v4, Lcom/wareone/tappmt/Transaction;->m_category_child:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2051
    const/4 v0, 0x0

    .line 2053
    .local v0, c:Landroid/database/Cursor;
    sget v4, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    packed-switch v4, :pswitch_data_0

    .line 2077
    :goto_0
    if-eqz v0, :cond_4

    .line 2079
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2081
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2082
    .local v3, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/wareone/tappmt/Transaction;->m_category:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2083
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 2087
    .local v1, c_child:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2088
    .local v2, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2089
    .restart local v3       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2090
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2094
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2095
    .restart local v3       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2097
    const-string v4, "_id"

    const-string v4, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    const-string v4, "acc_name"

    const-string v4, "acc_name"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 2093
    if-nez v4, :cond_1

    .line 2103
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2104
    sget-object v4, Lcom/wareone/tappmt/Transaction;->m_category_child:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2106
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 2080
    if-nez v4, :cond_0

    .line 2108
    .end local v1           #c_child:Landroid/database/Cursor;
    .end local v2           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2111
    :cond_4
    return-void

    .line 2055
    :pswitch_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2056
    .restart local v3       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/wareone/tappmt/Transaction;->m_category:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2057
    const-string v4, "_id"

    const-string v4, "0"

    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    const-string v4, "acc_name"

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    .restart local v2       #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v4, Lcom/wareone/tappmt/Transaction;->m_category_child:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 2062
    goto/16 :goto_0

    .line 2064
    .end local v2           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2065
    .restart local v3       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/wareone/tappmt/Transaction;->m_category:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2066
    const-string v4, "_id"

    const-string v4, "0"

    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    const-string v4, "acc_name"

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    .restart local v2       #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v4, Lcom/wareone/tappmt/Transaction;->m_category_child:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 2071
    goto/16 :goto_0

    .line 2073
    .end local v2           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 2053
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
    .line 2161
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencies()Landroid/database/Cursor;

    move-result-object v0

    .line 2162
    .local v0, c:Landroid/database/Cursor;
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_currency:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2163
    if-eqz v0, :cond_2

    .line 2165
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2167
    :cond_0
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_currency:Ljava/util/List;

    const-string v2, "currency_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2169
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 2166
    if-nez v1, :cond_0

    .line 2171
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2174
    :cond_2
    return-void
.end method

.method private _loadData()V
    .locals 2

    .prologue
    .line 2032
    const-string v0, "Transaction"

    const-string v1, "_loadData---------"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadCategories()V

    .line 2035
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadAccounts()V

    .line 2036
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadGroups()V

    .line 2037
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadCurreny()V

    .line 2038
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadPayee()V

    .line 2040
    return-void
.end method

.method private _loadGroups()V
    .locals 6

    .prologue
    const-string v5, "group_name"

    const-string v4, "_id"

    .line 2139
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getGroups()Landroid/database/Cursor;

    move-result-object v0

    .line 2140
    .local v0, c:Landroid/database/Cursor;
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2142
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2143
    const-string v2, "_id"

    const-string v2, "0"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    const-string v2, "group_name"

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    if-eqz v0, :cond_2

    .line 2146
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2148
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2149
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2150
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    const-string v2, "group_name"

    const-string v2, "group_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 2147
    if-nez v2, :cond_0

    .line 2155
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2157
    :cond_2
    return-void
.end method

.method private _loadPayee()V
    .locals 4

    .prologue
    .line 2178
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_payee:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2179
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_payee:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2183
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getPayees()Landroid/database/Cursor;

    move-result-object v0

    .line 2190
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 2192
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2194
    :cond_0
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_payee:Ljava/util/List;

    const-string v2, "payee_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2196
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 2193
    if-nez v1, :cond_0

    .line 2198
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2201
    :cond_2
    return-void
.end method

.method private _newGroup()V
    .locals 4

    .prologue
    .line 870
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 871
    .local v0, input:Landroid/widget/EditText;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 874
    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 875
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 876
    const v2, 0x7f09004c

    new-instance v3, Lcom/wareone/tappmt/Transaction$3;

    invoke-direct {v3, p0, v0}, Lcom/wareone/tappmt/Transaction$3;-><init>(Lcom/wareone/tappmt/Transaction;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 900
    const v2, 0x7f09004b

    new-instance v3, Lcom/wareone/tappmt/Transaction$4;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Transaction$4;-><init>(Lcom/wareone/tappmt/Transaction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 907
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 909
    return-void
.end method

.method private _newPayee()V
    .locals 4

    .prologue
    .line 913
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 914
    .local v0, input:Landroid/widget/EditText;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 917
    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 918
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 919
    const v2, 0x7f09004c

    new-instance v3, Lcom/wareone/tappmt/Transaction$5;

    invoke-direct {v3, p0, v0}, Lcom/wareone/tappmt/Transaction$5;-><init>(Lcom/wareone/tappmt/Transaction;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 942
    const v2, 0x7f09004b

    new-instance v3, Lcom/wareone/tappmt/Transaction$6;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Transaction$6;-><init>(Lcom/wareone/tappmt/Transaction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 949
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 950
    return-void
.end method

.method private _queryExchangeRate([Ljava/lang/String;)V
    .locals 7
    .parameter "currency"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2205
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Transaction;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2206
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 2207
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 2209
    :cond_0
    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/wareone/tappmt/Transaction;->m_dlg:Landroid/app/ProgressDialog;

    .line 2210
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/wareone/tappmt/CurrencyRunner;

    iget-object v3, p0, Lcom/wareone/tappmt/Transaction;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/wareone/tappmt/CurrencyRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2211
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2217
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 2214
    :cond_1
    const v2, 0x7f0900a9

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private _restoreTransaction()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const-string v13, "account"

    const-string v11, "0"

    const-string v10, "_id"

    .line 1224
    const-string v4, ""

    .line 1225
    .local v4, value:Ljava/lang/String;
    const-string v5, "TapPMTPrefs"

    invoke-virtual {p0, v5, v9}, Lcom/wareone/tappmt/Transaction;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1227
    .local v3, settings:Landroid/content/SharedPreferences;
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "_id"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1228
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "_id"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1229
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "source"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1230
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "src_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1233
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v1, df:Ljava/text/SimpleDateFormat;
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "trans_date"

    sget-object v7, Lcom/wareone/tappmt/Transaction;->curDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    sget-object v6, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v7, "category"

    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_category:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "_id"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    sget-object v6, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v5, "account"

    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_account:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "_id"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "currency"

    iget-object v7, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    sget-object v8, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v9, "account"

    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "_id"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1242
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_0
    iget-object v5, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getGroupById(J)Landroid/database/Cursor;

    move-result-object v0

    .line 1248
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1249
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "group_name"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1255
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "amount"

    const-string v7, "0"

    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "acc_amount"

    const-string v7, "0"

    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "ex_amount"

    const-string v7, "0"

    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "note"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "remote_id"

    const-string v7, "0"

    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v6, "sync"

    const-string v7, "0"

    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_setExchangeRate()V

    .line 1263
    return-void

    .line 1243
    .end local v0           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 1244
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "-1"

    goto :goto_0

    .line 1251
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_1
    sget-object v6, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v7, "group_name"

    sget-object v5, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "_id"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private _saveTransaction()V
    .locals 26

    .prologue
    .line 953
    const-string v21, "TapPMTPrefs"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/Transaction;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 954
    .local v20, settings:Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 956
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v9

    .line 958
    .local v9, digits:I
    new-instance v21, Ljava/lang/StringBuilder;

    sget v22, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "category"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "category"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 959
    new-instance v21, Ljava/lang/StringBuilder;

    sget v22, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "account"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "account"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 960
    new-instance v21, Ljava/lang/StringBuilder;

    sget v22, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "group"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "group_name"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 961
    new-instance v21, Ljava/lang/StringBuilder;

    sget v22, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "currency"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "currency"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 964
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 966
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 967
    .local v6, curTime:Ljava/util/Calendar;
    new-instance v21, Ljava/util/Date;

    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 968
    const-string v21, "GMT"

    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 969
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "modified"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 971
    const v21, 0x7f0c009a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 972
    .local v13, edt_payee:Landroid/widget/EditText;
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    .line 973
    .local v17, payee:Ljava/lang/String;
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "payee"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const v21, 0x7f0c00bf

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 976
    .local v12, edt_note:Landroid/widget/EditText;
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 977
    .local v14, note:Ljava/lang/String;
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "note"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "currency"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v9

    .line 980
    const v21, 0x7f0c0025

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 981
    .local v11, edt_amount:Landroid/widget/EditText;
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, amount:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move v2, v9

    invoke-static {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->round(DI)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 983
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "amount"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v21, "Transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "transaction amount --> "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v24, "amount"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "currency"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 987
    .local v8, currency:Ljava/lang/String;
    const-string v21, "Transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "transaction currency --> "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "ex_rate"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 990
    .local v18, rate:D
    const-string v21, "Transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "exchange rate of default currency--> "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v9

    .line 992
    const-wide/high16 v21, 0x4024

    move v0, v9

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 993
    .local v15, p:D
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    mul-double v21, v21, v18

    mul-double v21, v21, v15

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v4, v21, v15

    .line 994
    .local v4, amt:D
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "ex_amount"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v21, "Transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "amount of default currency --> "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "account"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v7

    .line 998
    .local v7, currOfAccount:Ljava/lang/String;
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "acc_rate"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 999
    const-string v21, "Transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "account currency --> "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v21, "Transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "exchange rate of account currency--> "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v9

    .line 1002
    const-wide/high16 v21, 0x4024

    move v0, v9

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 1003
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    mul-double v21, v21, v18

    mul-double v21, v21, v15

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v4, v21, v15

    .line 1004
    sget-object v21, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v22, "acc_amount"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v21, "Transaction"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "amount of account currency --> "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/Transaction;->m_action:I

    move/from16 v21, v0

    const v22, 0x7f09005b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    const-string v22, "transactions"

    sget-object v23, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    invoke-virtual/range {v21 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "account"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->addAccountFrequency(J)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    sget-object v22, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v23, "category"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->addAccountFrequency(J)V

    .line 1043
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/Transaction;->m_action:I

    move/from16 v21, v0

    const v22, 0x7f09005c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    const-string v22, "transactions"

    sget-object v23, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/Transaction;->m_id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 1047
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->updateWidget(Landroid/content/Context;)V

    .line 1049
    return-void
.end method

.method private _setExchangeRate()V
    .locals 12

    .prologue
    .line 1429
    const v7, 0x7f0c00bd

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1430
    .local v3, btn_sync:Landroid/widget/Button;
    const v7, 0x7f0c00be

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1432
    .local v2, btn_rate:Landroid/widget/Button;
    iget-object v7, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    sget-object v8, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v9, "account"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v11, "currency"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->isAccountCurrency(JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1433
    const-string v7, "Transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "account currency -->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    sget-object v10, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v11, "account"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v7, "Transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "exchange rate of account currency -->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v10, "acc_rate"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    sget-object v7, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v8, "acc_rate"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1437
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1451
    :goto_0
    const-string v7, "Transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "exchange rate of account currency -->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v10, "acc_rate"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v7, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    sget-object v8, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v9, "currency"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->isDefaultCurrency(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1455
    sget-object v7, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v8, "ex_rate"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1462
    :goto_1
    const-string v7, "Transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "exchange rate of default currency -->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v10, "ex_rate"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    return-void

    .line 1439
    :cond_0
    iget-object v7, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    sget-object v8, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v9, "account"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, currOfAccount:Ljava/lang/String;
    const-string v7, "Transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "account currency -->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v7, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v7, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v0

    .line 1445
    .local v0, acc_rate:D
    iget-object v7, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    sget-object v8, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v9, "currency"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v5

    .line 1446
    .local v5, rate:D
    sget-object v7, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v8, "acc_rate"

    div-double v9, v5, v0

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Lcom/wareone/tappmt/PmtDbAdapter;->round(DI)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1448
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1449
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1458
    .end local v0           #acc_rate:D
    .end local v4           #currOfAccount:Ljava/lang/String;
    .end local v5           #rate:D
    :cond_1
    iget-object v7, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    sget-object v8, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v9, "currency"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v5

    .line 1459
    .restart local v5       #rate:D
    sget-object v7, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v8, "ex_rate"

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1460
    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private _setNote()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 1466
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1467
    .local v0, input:Landroid/widget/EditText;
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v2, "note"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1468
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1471
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1472
    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1473
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1474
    const v2, 0x7f09004c

    new-instance v3, Lcom/wareone/tappmt/Transaction$11;

    invoke-direct {v3, p0, v0}, Lcom/wareone/tappmt/Transaction$11;-><init>(Lcom/wareone/tappmt/Transaction;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1485
    const v2, 0x7f09004b

    new-instance v3, Lcom/wareone/tappmt/Transaction$12;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Transaction$12;-><init>(Lcom/wareone/tappmt/Transaction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1492
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1494
    return-void
.end method

.method private _updateWidget()V
    .locals 22

    .prologue
    .line 1052
    const-string v18, "Transaction"

    const-string v19, "_updateWidget"

    invoke-static/range {v18 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v18, "TapPMTPrefs"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/Transaction;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1055
    .local v14, settings:Landroid/content/SharedPreferences;
    const-string v18, "show_account"

    const-wide/16 v19, 0x1

    move-object v0, v14

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1056
    .local v4, acc_id:J
    const-string v18, "Transaction"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "show me account-->"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v18, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v11

    .line 1059
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 1060
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1061
    const-string v18, "open_amt"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 1062
    .local v6, amount:D
    const-string v18, "acc_type"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1063
    const-wide/16 v18, 0x0

    sub-double v6, v18, v6

    .line 1065
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v18, v0

    const-string v19, "_id"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v11

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->getBalanceByAccount(J[Ljava/lang/String;)D

    move-result-wide v15

    .line 1066
    .local v15, total:D
    const-string v18, "Transaction"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "total-->"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    add-double v9, v6, v15

    .line 1069
    .local v9, balance:D
    const-string v18, "open_amt"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1070
    .local v12, digits:I
    const-string v13, "#,###,##0"

    .line 1071
    .local v13, pattern:Ljava/lang/String;
    if-lez v12, :cond_1

    .line 1072
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "000000000000"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1074
    :cond_1
    new-instance v18, Ljava/text/DecimalFormat;

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/Transaction;->m_nf:Ljava/text/NumberFormat;

    .line 1076
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 1077
    .local v8, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Transaction;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f03003d

    invoke-direct/range {v17 .. v19}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1078
    .local v17, views:Landroid/widget/RemoteViews;
    const v18, 0x7f0c00a8

    const-string v19, "acc_name"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v11

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1079
    const v18, 0x7f0c00a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Transaction;->m_nf:Ljava/text/NumberFormat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1084
    new-instance v18, Landroid/content/ComponentName;

    .line 1085
    const-class v19, Lcom/wareone/tappmt/TapPMTWidgetProvider;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1084
    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 1087
    .end local v6           #amount:D
    .end local v8           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v9           #balance:D
    .end local v12           #digits:I
    .end local v13           #pattern:Ljava/lang/String;
    .end local v15           #total:D
    .end local v17           #views:Landroid/widget/RemoteViews;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_3
    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Transaction;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction;->m_dlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1427
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_setExchangeRate()V

    return-void
.end method

.method static synthetic access$10(Lcom/wareone/tappmt/Transaction;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2376
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction;->m_title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 2031
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadData()V

    return-void
.end method

.method static synthetic access$12(Lcom/wareone/tappmt/Transaction;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1313
    invoke-direct {p0, p1, p2}, Lcom/wareone/tappmt/Transaction;->_getTemplate(J)V

    return-void
.end method

.method static synthetic access$13(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1222
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_restoreTransaction()V

    return-void
.end method

.method static synthetic access$14(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_initControls()V

    return-void
.end method

.method static synthetic access$15(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2228
    invoke-static {p0, p1, p2, p3, p4}, Lcom/wareone/tappmt/Transaction;->showDownloadDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 2361
    sget-object v0, Lcom/wareone/tappmt/Transaction;->curDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$17()Ljava/util/List;
    .locals 1

    .prologue
    .line 2362
    sget-object v0, Lcom/wareone/tappmt/Transaction;->m_category:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18(Lcom/wareone/tappmt/Transaction;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2219
    invoke-direct {p0, p1, p2}, Lcom/wareone/tappmt/Transaction;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19()Ljava/util/List;
    .locals 1

    .prologue
    .line 2364
    sget-object v0, Lcom/wareone/tappmt/Transaction;->m_category_child:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Transaction;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$20(Lcom/wareone/tappmt/Transaction;)Z
    .locals 1
    .parameter

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_checkBudget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$21()Ljava/util/List;
    .locals 1

    .prologue
    .line 2365
    sget-object v0, Lcom/wareone/tappmt/Transaction;->m_account:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22()Ljava/util/List;
    .locals 1

    .prologue
    .line 2366
    sget-object v0, Lcom/wareone/tappmt/Transaction;->m_group:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_newGroup()V

    return-void
.end method

.method static synthetic access$24(Lcom/wareone/tappmt/Transaction;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2203
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/Transaction;->_queryExchangeRate([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25()Ljava/util/List;
    .locals 1

    .prologue
    .line 2368
    sget-object v0, Lcom/wareone/tappmt/Transaction;->m_currency:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$26()Ljava/util/List;
    .locals 1

    .prologue
    .line 2369
    sget-object v0, Lcom/wareone/tappmt/Transaction;->m_payee:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_newPayee()V

    return-void
.end method

.method static synthetic access$28(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1465
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_setNote()V

    return-void
.end method

.method static synthetic access$29(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_saveTransaction()V

    return-void
.end method

.method static synthetic access$3()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 2373
    sget-object v0, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 2135
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadGroups()V

    return-void
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 2176
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadPayee()V

    return-void
.end method

.method static synthetic access$6()Ljava/util/List;
    .locals 1

    .prologue
    .line 2367
    sget-object v0, Lcom/wareone/tappmt/Transaction;->m_templates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(I)V
    .locals 0
    .parameter

    .prologue
    .line 2371
    sput p0, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    return-void
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 2371
    sget v0, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    return v0
.end method

.method static synthetic access$9(Lcom/wareone/tappmt/Transaction;)I
    .locals 1
    .parameter

    .prologue
    .line 2374
    iget v0, p0, Lcom/wareone/tappmt/Transaction;->m_action:I

    return v0
.end method

.method private static showDownloadDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "stringTitle"
    .parameter "stringMessage"
    .parameter "stringButtonYes"
    .parameter "stringButtonNo"

    .prologue
    .line 2233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2234
    .local v0, downloadDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2235
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2236
    new-instance v1, Lcom/wareone/tappmt/Transaction$28;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/Transaction$28;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2243
    new-instance v1, Lcom/wareone/tappmt/Transaction$29;

    invoke-direct {v1}, Lcom/wareone/tappmt/Transaction$29;-><init>()V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2247
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v5, "_id"

    const-string v4, "Transaction"

    .line 847
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 849
    const-string v2, "Transaction"

    const-string v2, "onActivityResult"

    invoke-static {v4, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    packed-switch p1, :pswitch_data_0

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 853
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 854
    if-eqz p3, :cond_1

    .line 855
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 856
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 857
    const-string v2, "Transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new id---> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const v2, 0x7f0c0021

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 859
    .local v0, btn:Landroid/widget/Button;
    const-string v2, "acc_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 860
    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "category"

    const-string v4, "_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .end local v0           #btn:Landroid/widget/Button;
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadCategories()V

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f09005b

    const-string v8, "REMINDER_ID"

    const-string v6, "SOURCE"

    const-string v4, " "

    const-string v5, "Transaction"

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 290
    const-string v1, "Transaction"

    const-string v1, "onCreate---------"

    invoke-static {v5, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    .local v0, extra:Landroid/os/Bundle;
    const-string v1, "MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    .line 294
    const-string v1, "SOURCE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    iput v7, p0, Lcom/wareone/tappmt/Transaction;->m_action:I

    .line 299
    :goto_0
    const-string v1, "_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/wareone/tappmt/Transaction;->m_id:J

    .line 301
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Transaction;->requestWindowFeature(I)Z

    .line 302
    sget v1, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    packed-switch v1, :pswitch_data_0

    .line 316
    :goto_1
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 317
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v2, "mode"

    sget v3, Lcom/wareone/tappmt/Transaction;->m_trans_mode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    sput-object v1, Lcom/wareone/tappmt/Transaction;->curDate:Ljava/util/Calendar;

    .line 322
    sget-object v1, Lcom/wareone/tappmt/Transaction;->curDate:Ljava/util/Calendar;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 324
    new-instance v1, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 325
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 327
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_loadData()V

    .line 329
    const-string v1, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget ----> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "WIDGET"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget v1, p0, Lcom/wareone/tappmt/Transaction;->m_action:I

    if-ne v1, v7, :cond_0

    .line 331
    const-string v1, "REMINDER_ID"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    const-string v1, "REMINDER_ID"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/wareone/tappmt/Transaction;->_getReminder(J)V

    .line 355
    :cond_0
    :goto_2
    iget v1, p0, Lcom/wareone/tappmt/Transaction;->m_action:I

    const v2, 0x7f09005c

    if-ne v1, v2, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_getTransaction()V

    .line 822
    :cond_1
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_initControls()V

    .line 824
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_checkBudget()Z

    .line 828
    return-void

    .line 297
    :cond_2
    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wareone/tappmt/Transaction;->m_action:I

    goto/16 :goto_0

    .line 304
    :pswitch_0
    const v1, 0x7f030040

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Transaction;->setContentView(I)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/wareone/tappmt/Transaction;->m_action:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wareone/tappmt/Transaction;->m_title:Ljava/lang/String;

    goto/16 :goto_1

    .line 308
    :pswitch_1
    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Transaction;->setContentView(I)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/wareone/tappmt/Transaction;->m_action:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wareone/tappmt/Transaction;->m_title:Ljava/lang/String;

    goto/16 :goto_1

    .line 312
    :pswitch_2
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Transaction;->setContentView(I)V

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/wareone/tappmt/Transaction;->m_action:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wareone/tappmt/Transaction;->m_title:Ljava/lang/String;

    goto/16 :goto_1

    .line 334
    :cond_3
    const-string v1, "TEMPLATE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    const-string v1, "TEMPLATE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/wareone/tappmt/Transaction;->_getTemplate(J)V

    .line 348
    :cond_4
    :goto_3
    const-string v1, "WIDGET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const-string v1, "Transaction"

    const-string v1, "getTemplates ---> "

    invoke-static {v5, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_getTemplates()V

    goto/16 :goto_2

    .line 337
    :cond_5
    const-string v1, "Transaction"

    const-string v1, "_restoreTransaction ---> "

    invoke-static {v5, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/wareone/tappmt/Transaction;->_restoreTransaction()V

    .line 339
    const-string v1, "SOURCE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v2, "source"

    const-string v3, "SOURCE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v2, "src_id"

    const-string v3, "SOURCE_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v2, "amount"

    const-string v3, "AMOUNT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v1, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v2, "payee"

    const-string v3, "PLACE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "amount ---> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/wareone/tappmt/Transaction;->m_values:Landroid/content/ContentValues;

    const-string v3, "amount"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 302
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 833
    const-string v0, "Transaction"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 835
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 836
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "Transaction"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 843
    return-void
.end method
