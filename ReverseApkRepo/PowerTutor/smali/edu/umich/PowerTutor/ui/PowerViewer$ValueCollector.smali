.class public Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;
.super Ljava/lang/Object;
.source "PowerViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/PowerViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueCollector"
.end annotation


# instance fields
.field private chartView:Landroid/view/View;

.field private componentId:I

.field private lastTime:J

.field private readHistory:Z

.field private renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private series:Lorg/achartengine/model/XYSeries;

.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

.field values:[I


# direct methods
.method public constructor <init>(Ledu/umich/PowerTutor/ui/PowerViewer;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter "series"
    .parameter "renderer"
    .parameter "chartView"
    .parameter "componentId"

    .prologue
    .line 631
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->series:Lorg/achartengine/model/XYSeries;

    .line 633
    iput-object p3, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 634
    iput-object p4, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->chartView:Landroid/view/View;

    .line 635
    iput p5, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->componentId:I

    .line 636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->lastTime:J

    .line 637
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->layout()V

    .line 638
    return-void
.end method


# virtual methods
.method public layout()V
    .locals 7

    .prologue
    .line 641
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$11(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "viewNumValues_s"

    const-string v4, "60"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 642
    .local v1, numVals:I
    new-array v2, v1, [I

    iput-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->values:[I

    .line 644
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->clearXTextLabels()V

    .line 645
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 646
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v3, v1, -0x1

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 647
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    add-int/lit8 v3, v1, -0x1

    int-to-double v3, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 648
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 649
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 653
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->reset()V

    .line 654
    return-void

    .line 650
    :cond_0
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    mul-int v3, v1, v0

    div-int/lit8 v3, v3, 0xa

    int-to-double v3, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    mul-int v6, v1, v0

    div-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->series:Lorg/achartengine/model/XYSeries;

    invoke-virtual {v0}, Lorg/achartengine/model/XYSeries;->clear()V

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->readHistory:Z

    .line 660
    return-void
.end method

.method public run()V
    .locals 21

    .prologue
    .line 665
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v9}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$11(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "viewNumValues_s"

    const-string v11, "60"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 666
    .local v6, numVals:I
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v9}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 667
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->readHistory:Z

    if-eqz v9, :cond_2

    .line 668
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v9}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v9

    .line 669
    move-object/from16 v0, p0

    iget v10, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->componentId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->uid:I
    invoke-static {v11}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$12(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v11

    .line 668
    invoke-interface {v9, v6, v10, v11}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->values:[I

    .line 670
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->readHistory:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->series:Lorg/achartengine/model/XYSeries;

    invoke-virtual {v9}, Lorg/achartengine/model/XYSeries;->clear()V

    .line 686
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-lt v5, v6, :cond_4

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 691
    .local v2, curTime:J
    move-object/from16 v0, p0

    iget-wide v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->lastTime:J

    const-wide/16 v11, 0x3e8

    .line 692
    const-wide/16 v13, 0x1

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->lastTime:J

    move-wide/from16 v17, v0

    sub-long v17, v2, v17

    .line 693
    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    add-long v15, v15, v17

    .line 692
    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    mul-long/2addr v11, v13

    .line 691
    add-long v7, v9, v11

    .line 694
    .local v7, tryTime:J
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;
    invoke-static {v9}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$13(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 695
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;
    invoke-static {v9}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$13(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/os/Handler;

    move-result-object v9

    sub-long v10, v7, v2

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 698
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->chartView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 699
    return-void

    .line 672
    .end local v2           #curTime:J
    .end local v5           #i:I
    .end local v7           #tryTime:J
    :cond_2
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_2
    if-gtz v5, :cond_3

    .line 675
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->values:[I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v11}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->componentId:I

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->uid:I
    invoke-static {v14}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$12(Ledu/umich/PowerTutor/ui/PowerViewer;)I

    move-result v14

    .line 675
    invoke-interface {v11, v12, v13, v14}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentHistory(III)[I

    move-result-object v11

    .line 676
    const/4 v12, 0x0

    aget v11, v11, v12

    .line 675
    aput v11, v9, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 678
    .end local v5           #i:I
    :catch_0
    move-exception v4

    .line 679
    .local v4, e:Landroid/os/RemoteException;
    const-string v9, "PowerViewer"

    const-string v10, "Failed to get data from service"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v6, :cond_0

    .line 681
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->values:[I

    const/4 v10, 0x0

    aput v10, v9, v5

    .line 680
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 673
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->values:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->values:[I

    add-int/lit8 v11, v5, -0x1

    aget v10, v10, v11

    aput v10, v9, v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 672
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 687
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->series:Lorg/achartengine/model/XYSeries;

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->values:[I

    aget v12, v12, v5

    int-to-double v12, v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 686
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method
