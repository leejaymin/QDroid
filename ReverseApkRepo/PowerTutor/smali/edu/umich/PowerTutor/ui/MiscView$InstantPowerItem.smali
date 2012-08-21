.class Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstantPowerItem"
.end annotation


# static fields
.field private static final POLY_WEIGHT:D = 0.1


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public setupView()V
    .locals 22

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->txt:Landroid/widget/TextView;

    if-nez v14, :cond_0

    .line 330
    :goto_0
    return-void

    .line 292
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v14}, Ledu/umich/PowerTutor/ui/MiscView;->access$1(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, count:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v14}, Ledu/umich/PowerTutor/ui/MiscView;->access$1(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v14

    .line 296
    const/16 v15, 0x12c

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    move-object/from16 v17, v0

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static/range {v17 .. v17}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v17

    .line 295
    invoke-interface/range {v14 .. v17}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v6

    .line 297
    .local v6, history:[I
    const-wide/16 v12, 0x0

    .line 298
    .local v12, weightedAvgPower:D
    array-length v14, v6

    add-int/lit8 v7, v14, -0x1

    .local v7, i:I
    :goto_1
    if-gez v7, :cond_1

    .line 305
    if-lez v4, :cond_4

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v14}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v14

    invoke-virtual {v14}, Ledu/umich/PowerTutor/util/BatteryStats;->getCharge()D

    move-result-wide v2

    .line 307
    .local v2, charge:D
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v14}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v14

    invoke-virtual {v14}, Ledu/umich/PowerTutor/util/BatteryStats;->getVoltage()D

    move-result-wide v10

    .line 308
    .local v10, volt:D
    const-wide/16 v14, 0x0

    cmpl-double v14, v2, v14

    if-lez v14, :cond_3

    const-wide/16 v14, 0x0

    cmpl-double v14, v10, v14

    if-lez v14, :cond_3

    .line 309
    const-wide/high16 v14, 0x3ff0

    const-wide v16, 0x3feccccccccccccdL

    int-to-double v0, v4

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    .line 310
    mul-double v14, v2, v10

    div-double/2addr v14, v12

    double-to-long v8, v14

    .line 311
    .local v8, time:J
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->txt:Landroid/widget/TextView;

    const-string v15, "%1$.0f mW\ntime: %2$d:%3$02d:%4$02d"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 312
    const-wide v18, 0x408f400000000000L

    mul-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 313
    const-wide/16 v18, 0x3c

    div-long v18, v8, v18

    const-wide/16 v20, 0x3c

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-wide/16 v18, 0x3c

    div-long v18, v8, v18

    const-wide/16 v20, 0x3c

    rem-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-wide/16 v18, 0x3c

    rem-long v18, v8, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    .line 311
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v2           #charge:D
    .end local v4           #count:I
    .end local v6           #history:[I
    .end local v7           #i:I
    .end local v8           #time:J
    .end local v10           #volt:D
    .end local v12           #weightedAvgPower:D
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->txt:Landroid/widget/TextView;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->title:Landroid/widget/TextView;

    const-string v15, "Current Power"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->summary:Landroid/widget/TextView;

    const-string v15, "Weighted average of power consumption over the last five minutes"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 299
    .restart local v4       #count:I
    .restart local v6       #history:[I
    .restart local v7       #i:I
    .restart local v12       #weightedAvgPower:D
    :cond_1
    :try_start_1
    aget v14, v6, v7

    if-eqz v14, :cond_2

    .line 300
    add-int/lit8 v4, v4, 0x1

    .line 301
    const-wide v14, 0x3feccccccccccccdL

    mul-double/2addr v12, v14

    .line 302
    const-wide v14, 0x3fb999999999999aL

    aget v16, v6, v7

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide v16, 0x408f400000000000L

    div-double v14, v14, v16

    add-double/2addr v12, v14

    .line 298
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 315
    .restart local v2       #charge:D
    .restart local v10       #volt:D
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->txt:Landroid/widget/TextView;

    const-string v15, "%1$.0f mW"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-wide v18, 0x408f400000000000L

    mul-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 320
    .end local v2           #charge:D
    .end local v6           #history:[I
    .end local v7           #i:I
    .end local v10           #volt:D
    .end local v12           #weightedAvgPower:D
    :catch_0
    move-exception v5

    .line 321
    .local v5, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->txt:Landroid/widget/TextView;

    const-string v15, "Error"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 318
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v6       #history:[I
    .restart local v7       #i:I
    .restart local v12       #weightedAvgPower:D
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->txt:Landroid/widget/TextView;

    const-string v15, "No data"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 323
    .end local v4           #count:I
    .end local v6           #history:[I
    .end local v7           #i:I
    .end local v12           #weightedAvgPower:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;->txt:Landroid/widget/TextView;

    const-string v15, "No data"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
