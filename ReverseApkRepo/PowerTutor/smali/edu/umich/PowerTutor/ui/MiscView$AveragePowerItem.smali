.class Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AveragePowerItem"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public setupView()V
    .locals 21

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->txt:Landroid/widget/TextView;

    if-nez v13, :cond_0

    .line 371
    :goto_0
    return-void

    .line 340
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v13}, Ledu/umich/PowerTutor/ui/MiscView;->access$1(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 342
    const-wide/16 v7, 0x0

    .line 343
    .local v7, power:D
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v13}, Ledu/umich/PowerTutor/ui/MiscView;->access$1(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v14}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v14

    const/4 v15, 0x3

    invoke-interface {v13, v14, v15}, Ledu/umich/PowerTutor/service/ICounterService;->getMeans(II)[J

    move-result-object v4

    .line 344
    .local v4, means:[J
    if-eqz v4, :cond_1

    array-length v14, v4

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v14, :cond_2

    .line 348
    :cond_1
    const-wide/16 v13, 0x0

    cmpl-double v13, v7, v13

    if-lez v13, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v13}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v13

    invoke-virtual {v13}, Ledu/umich/PowerTutor/util/BatteryStats;->getCharge()D

    move-result-wide v1

    .line 350
    .local v1, charge:D
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v13}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v13

    invoke-virtual {v13}, Ledu/umich/PowerTutor/util/BatteryStats;->getVoltage()D

    move-result-wide v11

    .line 351
    .local v11, volt:D
    const-wide/16 v13, 0x0

    cmpl-double v13, v1, v13

    if-lez v13, :cond_3

    const-wide/16 v13, 0x0

    cmpl-double v13, v11, v13

    if-lez v13, :cond_3

    .line 352
    mul-double v13, v1, v11

    div-double/2addr v13, v7

    double-to-long v9, v13

    .line 353
    .local v9, time:J
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->txt:Landroid/widget/TextView;

    const-string v14, "%1$.0f mW\ntime: %2$d:%3$02d:%4$02d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 354
    const-wide v17, 0x408f400000000000L

    mul-double v17, v17, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 355
    const-wide/16 v17, 0x3c

    div-long v17, v9, v17

    const-wide/16 v19, 0x3c

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-wide/16 v17, 0x3c

    div-long v17, v9, v17

    const-wide/16 v19, 0x3c

    rem-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-wide/16 v17, 0x3c

    rem-long v17, v9, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    .line 353
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v1           #charge:D
    .end local v4           #means:[J
    .end local v7           #power:D
    .end local v9           #time:J
    .end local v11           #volt:D
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->txt:Landroid/widget/TextView;

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->title:Landroid/widget/TextView;

    const-string v14, "Average Power"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->summary:Landroid/widget/TextView;

    const-string v14, "Average power consumption since profiler started"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 344
    .restart local v4       #means:[J
    .restart local v7       #power:D
    :cond_2
    :try_start_1
    aget-wide v5, v4, v13

    .line 345
    .local v5, p:J
    long-to-double v15, v5

    const-wide v17, 0x408f400000000000L

    div-double v15, v15, v17

    add-double/2addr v7, v15

    .line 344
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 357
    .end local v5           #p:J
    .restart local v1       #charge:D
    .restart local v11       #volt:D
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->txt:Landroid/widget/TextView;

    const-string v14, "%1$.0f mW"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide v17, 0x408f400000000000L

    mul-double v17, v17, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 362
    .end local v1           #charge:D
    .end local v4           #means:[J
    .end local v11           #volt:D
    :catch_0
    move-exception v3

    .line 363
    .local v3, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->txt:Landroid/widget/TextView;

    const-string v14, "Error"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 360
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v4       #means:[J
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->txt:Landroid/widget/TextView;

    const-string v14, "No data"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 365
    .end local v4           #means:[J
    .end local v7           #power:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;->txt:Landroid/widget/TextView;

    const-string v14, "No data"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
