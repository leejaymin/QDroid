.class public Lcom/wareone/tappmt/ShowMe;
.super Landroid/app/Activity;
.source "ShowMe.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_mp:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/wareone/tappmt/ShowMe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/ShowMe;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v23, 0x7f03003a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ShowMe;->setContentView(I)V

    .line 23
    new-instance v23, Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ShowMe;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 26
    const-string v23, "TapPMTPrefs"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/ShowMe;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 27
    .local v18, settings:Landroid/content/SharedPreferences;
    const-string v23, "show_account"

    const-wide/16 v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 28
    .local v4, acc_id:J
    sget-object v23, Lcom/wareone/tappmt/ShowMe;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "show me account-->"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v23, "digits"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 30
    .local v13, digits:I
    sget-object v23, Lcom/wareone/tappmt/ShowMe;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "digits of decimal -->"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v23, Landroid/media/MediaPlayer;

    invoke-direct/range {v23 .. v23}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    .line 33
    const/high16 v23, 0x7f06

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide v1, v4

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getBalanceByAccount(J[Ljava/lang/String;)D

    move-result-wide v19

    .line 36
    .local v19, total:D
    sget-object v23, Lcom/wareone/tappmt/ShowMe;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "total -->"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v12

    .line 38
    .local v12, currencyOfDefault:Ljava/lang/String;
    sget-object v23, Lcom/wareone/tappmt/ShowMe;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "default currency -->"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v6, "acc_name"

    .line 41
    .local v6, acc_name:Ljava/lang/String;
    const-string v11, "currency"

    .line 42
    .local v11, currency:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 43
    .local v7, amount:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v23, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v10

    .line 44
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 45
    const-string v23, "acc_name"

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 46
    const-string v23, "currency"

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 47
    const-string v23, "open_amt"

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .line 48
    sget-object v23, Lcom/wareone/tappmt/ShowMe;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "open amount-->"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v23

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-eqz v23, :cond_1

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v16

    .line 53
    .local v16, rate:D
    sget-object v23, Lcom/wareone/tappmt/ShowMe;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "exchange rate-->"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v23, Lcom/wareone/tappmt/ShowMe;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "exchange open amount-->"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-double v25, v7, v16

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-wide/high16 v23, 0x4024

    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 56
    .local v14, p:D
    div-double v23, v19, v16

    mul-double v23, v23, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v19, v23, v14

    .line 60
    .end local v14           #p:D
    .end local v16           #rate:D
    :cond_1
    const v23, 0x7f0c0022

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ShowMe;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 61
    .local v21, tv_account:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/ShowMe;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090098

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v6, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v23, 0x7f0c0024

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ShowMe;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 63
    .local v22, tv_amount:Landroid/widget/TextView;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-double v24, v19, v7

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v23, 0x7f0c0088

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/ShowMe;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 68
    .local v9, btn:Landroid/widget/Button;
    new-instance v23, Lcom/wareone/tappmt/ShowMe$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/ShowMe$1;-><init>(Lcom/wareone/tappmt/ShowMe;)V

    .line 67
    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 78
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaPlayer;->stop()V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaPlayer;->prepare()V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    const/high16 v24, 0x4120

    const/high16 v25, 0x4120

    invoke-virtual/range {v23 .. v25}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaPlayer;->prepare()V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    const/high16 v24, 0x4120

    const/high16 v25, 0x4120

    invoke-virtual/range {v23 .. v25}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/ShowMe;->m_mp:Landroid/media/MediaPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v23

    goto :goto_0

    .line 84
    :catch_1
    move-exception v23

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wareone/tappmt/ShowMe;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method
