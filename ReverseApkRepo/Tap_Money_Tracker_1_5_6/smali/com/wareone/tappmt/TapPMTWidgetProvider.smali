.class public Lcom/wareone/tappmt/TapPMTWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "TapPMTWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final ZEROES:Ljava/lang/String; = "000000000000"


# instance fields
.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_nf:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/wareone/tappmt/TapPMTWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/TapPMTWidgetProvider;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 28
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 20
    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    .line 23
    .local v4, N:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-lt v14, v4, :cond_0

    .line 89
    return-void

    .line 25
    :cond_0
    aget v9, p3, v14

    .line 28
    .local v9, appWidgetId:I
    new-instance v15, Landroid/content/Intent;

    const-string v24, "com.wareone.tappmt.RECORD"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v15, it:Landroid/content/Intent;
    const/high16 v24, 0x1400

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    const-string v24, "android.intent.category.DEFAULT"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v24, "ACTION"

    const v25, 0x7f09005b

    move-object v0, v15

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v24, "MODE"

    const/16 v25, -0x1

    move-object v0, v15

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    sget-object v24, Lcom/wareone/tappmt/TapPMTWidgetProvider;->TAG:Ljava/lang/String;

    const-string v25, "put widget -->"

    invoke-static/range {v24 .. v25}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v24, "WIDGET"

    const-string v25, "WIDGET"

    move-object v0, v15

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object v2, v15

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 38
    .local v18, pendingIntent:Landroid/app/PendingIntent;
    new-instance v16, Landroid/content/Intent;

    const-string v24, "com.wareone.tappmt.BALANCE"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v16, it_balance:Landroid/content/Intent;
    const/high16 v24, 0x1400

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    const-string v24, "android.intent.category.DEFAULT"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v24, "ACTION"

    const v25, 0x7f09005b

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string v24, "MODE"

    const/16 v25, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    sget-object v24, Lcom/wareone/tappmt/TapPMTWidgetProvider;->TAG:Ljava/lang/String;

    const-string v25, "put widget -->"

    invoke-static/range {v24 .. v25}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v24, "WIDGET"

    const-string v25, "WIDGET"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v16

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 47
    .local v19, pi_balance:Landroid/app/PendingIntent;
    const-string v24, "TapPMTPrefs"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 48
    .local v20, settings:Landroid/content/SharedPreferences;
    const-string v24, "widget_account"

    const-wide/16 v25, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 49
    .local v5, acc_id:J
    sget-object v24, Lcom/wareone/tappmt/TapPMTWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "show me account-->"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v23, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const v25, 0x7f03003d

    invoke-direct/range {v23 .. v25}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 54
    .local v23, views:Landroid/widget/RemoteViews;
    new-instance v24, Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMTWidgetProvider;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMTWidgetProvider;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMTWidgetProvider;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v24, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v12

    .line 57
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    .line 58
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 59
    const-string v24, "open_amt"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object v0, v12

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .line 60
    .local v7, amount:D
    const-string v24, "acc_type"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object v0, v12

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 61
    const-wide/16 v24, 0x0

    sub-double v7, v24, v7

    .line 63
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMTWidgetProvider;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v24, v0

    const-string v25, "_id"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move-object v0, v12

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/wareone/tappmt/PmtDbAdapter;->getBalanceByAccount(J[Ljava/lang/String;)D

    move-result-wide v21

    .line 64
    .local v21, total:D
    sget-object v24, Lcom/wareone/tappmt/TapPMTWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "total-->"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    add-double v10, v7, v21

    .line 67
    .local v10, balance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMTWidgetProvider;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v24, v0

    const-string v25, "currency"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move-object v0, v12

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v13

    .line 68
    .local v13, digits:I
    const-string v17, "#,###,##0"

    .line 69
    .local v17, pattern:Ljava/lang/String;
    if-lez v13, :cond_2

    .line 70
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "000000000000"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 72
    :cond_2
    new-instance v24, Ljava/text/DecimalFormat;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMTWidgetProvider;->m_nf:Ljava/text/NumberFormat;

    .line 75
    const v24, 0x7f0c00a7

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 76
    const v24, 0x7f0c00aa

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 77
    const v24, 0x7f0c00a8

    const-string v25, "acc_name"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move-object v0, v12

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 78
    const v24, 0x7f0c00a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMTWidgetProvider;->m_nf:Ljava/text/NumberFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    move-object/from16 v0, p2

    move v1, v9

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 84
    .end local v7           #amount:D
    .end local v10           #balance:D
    .end local v13           #digits:I
    .end local v17           #pattern:Ljava/lang/String;
    .end local v21           #total:D
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMTWidgetProvider;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 23
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method
