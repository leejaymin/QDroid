.class public Lcom/wareone/tappmt/Balance;
.super Landroid/app/Activity;
.source "Balance.java"


# static fields
.field private static final GET_PASSOWRD_REQUEST:I = 0x63

.field private static final TAG:Ljava/lang/String; = null

.field private static final ZEROES:Ljava/lang/String; = "000000000000"


# instance fields
.field private m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

.field private m_childData:Ljava/util/List;
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

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_groupData:Ljava/util/List;
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

.field private m_nf:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/wareone/tappmt/Balance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Balance;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Balance;->m_groupData:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Balance;->m_childData:Ljava/util/List;

    .line 24
    return-void
.end method

.method private _loadData()V
    .locals 31

    .prologue
    .line 115
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v11, childAsset:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v12, childLiability:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-wide/16 v6, 0x0

    .local v6, asset_amt:D
    const-wide/16 v16, 0x0

    .line 118
    .local v16, liability_amt:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v15

    .line 121
    .local v15, currencyOfDefault:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_groupData:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_childData:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_childData:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_childData:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v10

    .line 129
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 130
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v27, v0

    const-string v28, "currency"

    move-object v0, v10

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move-object v0, v10

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/wareone/tappmt/PmtDbAdapter;->getPaterntByCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 133
    .local v18, pattern:Ljava/lang/String;
    new-instance v3, Ljava/text/DecimalFormat;

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, acc_nf:Ljava/text/DecimalFormat;
    sget-object v27, Lcom/wareone/tappmt/Balance;->TAG:Ljava/lang/String;

    const-string v28, "acc_name"

    move-object v0, v10

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move-object v0, v10

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v27, v0

    const-string v28, "_id"

    move-object v0, v10

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move-object v0, v10

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/wareone/tappmt/PmtDbAdapter;->getBalanceByAccount(J[Ljava/lang/String;)D

    move-result-wide v23

    .line 137
    .local v23, total:D
    sget-object v27, Lcom/wareone/tappmt/Balance;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "total-->"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v27, "open_amt"

    move-object v0, v10

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object v0, v10

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 139
    .local v4, amount:D
    const-string v27, "acc_type"

    move-object v0, v10

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object v0, v10

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 140
    const-wide/16 v27, 0x0

    sub-double v4, v27, v4

    .line 143
    :cond_1
    const-wide/high16 v19, 0x3ff0

    .line 144
    .local v19, rate:D
    mul-double v27, v4, v19

    add-double v21, v27, v23

    .line 145
    .local v21, sum:D
    add-double v8, v4, v23

    .line 146
    .local v8, balance:D
    const-string v26, ""

    .line 147
    .local v26, txt_amount:Ljava/lang/String;
    sget-object v27, Lcom/wareone/tappmt/Balance;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "open amount-->"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v27, v0

    const-string v28, "_id"

    move-object v0, v10

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move-object v0, v10

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v27

    move-object v0, v15

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_2

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v27, v0

    const-string v28, "currency"

    move-object v0, v10

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move-object v0, v10

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v19

    .line 151
    sget-object v27, Lcom/wareone/tappmt/Balance;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "exchange rate-->"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v27, Lcom/wareone/tappmt/Balance;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "exchange open amount-->"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-double v29, v4, v19

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    mul-double v21, v8, v19

    .line 156
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, " ("

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_nf:Ljava/text/NumberFormat;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 163
    :cond_2
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v13, curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v27, "acc_type"

    move-object v0, v10

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object v0, v10

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 167
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-double v6, v6, v21

    .line 174
    :goto_0
    const-string v27, "acc_name"

    const-string v28, "acc_name"

    move-object v0, v10

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move-object v0, v10

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object v0, v13

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v27, "open_amt"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "currency"

    move-object v0, v10

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object v0, v13

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v27

    .line 131
    if-nez v27, :cond_0

    .line 180
    .end local v3           #acc_nf:Ljava/text/DecimalFormat;
    .end local v4           #amount:D
    .end local v8           #balance:D
    .end local v13           #curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #pattern:Ljava/lang/String;
    .end local v19           #rate:D
    .end local v21           #sum:D
    .end local v23           #total:D
    .end local v26           #txt_amount:Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_4
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v14, curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_groupData:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v27, "acc_name"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Balance;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f09001d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v27, "open_amt"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_nf:Ljava/text/NumberFormat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v14, Ljava/util/HashMap;

    .end local v14           #curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 188
    .restart local v14       #curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_groupData:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v27, "acc_name"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Balance;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f09001e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v27, "open_amt"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_nf:Ljava/text/NumberFormat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const v27, 0x7f0c002c

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Balance;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 193
    .local v25, txt:Landroid/widget/TextView;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Balance;->m_nf:Ljava/text/NumberFormat;

    move-object/from16 v28, v0

    add-double v29, v6, v16

    invoke-virtual/range {v28 .. v30}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void

    .line 171
    .end local v14           #curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25           #txt:Landroid/widget/TextView;
    .restart local v3       #acc_nf:Ljava/text/DecimalFormat;
    .restart local v4       #amount:D
    .restart local v8       #balance:D
    .restart local v13       #curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18       #pattern:Ljava/lang/String;
    .restart local v19       #rate:D
    .restart local v21       #sum:D
    .restart local v23       #total:D
    .restart local v26       #txt_amount:Ljava/lang/String;
    :cond_5
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-double v16, v16, v21

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    sget-object v1, Lcom/wareone/tappmt/Balance;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 87
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/wareone/tappmt/Balance;->_loadData()V

    .line 89
    iget-object v1, p0, Lcom/wareone/tappmt/Balance;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->notifyDataSetChanged()V

    .line 90
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Balance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 91
    .local v0, lv_balance:Landroid/widget/ExpandableListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0

    .line 95
    .end local v0           #lv_balance:Landroid/widget/ExpandableListView;
    :cond_0
    invoke-virtual {p0}, Lcom/wareone/tappmt/Balance;->finish()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/wareone/tappmt/Balance;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 35
    .local v10, extra:Landroid/os/Bundle;
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Balance;->setContentView(I)V

    .line 36
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Balance;->setTitle(I)V

    .line 39
    new-instance v0, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 40
    iget-object v0, p0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 42
    iget-object v0, p0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v1, p0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getPaterntByCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 43
    .local v13, pattern:Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wareone/tappmt/Balance;->m_nf:Ljava/text/NumberFormat;

    .line 45
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Balance;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ExpandableListView;

    .line 48
    .local v12, lv_balance:Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    .line 50
    iget-object v2, p0, Lcom/wareone/tappmt/Balance;->m_groupData:Ljava/util/List;

    .line 51
    const v3, 0x7f030020

    .line 52
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "acc_name"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "open_amt"

    aput-object v5, v4, v1

    .line 53
    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 54
    iget-object v6, p0, Lcom/wareone/tappmt/Balance;->m_childData:Ljava/util/List;

    .line 55
    const v7, 0x7f03001f

    .line 56
    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "acc_name"

    aput-object v9, v8, v1

    const/4 v1, 0x1

    const-string v9, "open_amt"

    aput-object v9, v8, v1

    .line 57
    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 48
    iput-object v0, p0, Lcom/wareone/tappmt/Balance;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    .line 59
    iget-object v0, p0, Lcom/wareone/tappmt/Balance;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    invoke-virtual {v12, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 60
    invoke-virtual {p0, v12}, Lcom/wareone/tappmt/Balance;->registerForContextMenu(Landroid/view/View;)V

    .line 62
    const-string v0, "TapPMTPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wareone/tappmt/Balance;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 63
    .local v14, settings:Landroid/content/SharedPreferences;
    if-eqz v10, :cond_0

    .line 64
    sget-object v0, Lcom/wareone/tappmt/Balance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget --> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "WIDGET"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "WIDGET"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SECURITY_ENABLED"

    const/4 v1, 0x0

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lcom/wareone/tappmt/Password;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v11, it:Landroid/content/Intent;
    const-string v0, "WIDGET"

    const-string v1, "WIDGET"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/16 v0, 0x63

    invoke-virtual {p0, v11, v0}, Lcom/wareone/tappmt/Balance;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    .end local v11           #it:Landroid/content/Intent;
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/wareone/tappmt/Balance;->_loadData()V

    .line 73
    iget-object v0, p0, Lcom/wareone/tappmt/Balance;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->notifyDataSetChanged()V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 75
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0

    .line 53
    :array_0
    .array-data 0x4
        0x6ct 0x0t 0xct 0x7ft
        0x6ft 0x0t 0xct 0x7ft
    .end array-data

    .line 57
    :array_1
    .array-data 0x4
        0x6ct 0x0t 0xct 0x7ft
        0x6ft 0x0t 0xct 0x7ft
    .end array-data
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wareone/tappmt/Balance;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    return-void
.end method
