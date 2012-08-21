.class Ledu/umich/PowerTutor/ui/PowerPie$1;
.super Ljava/lang/Object;
.source "PowerPie.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/PowerPie;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerPie;

.field private final synthetic val$chartView:Lorg/achartengine/GraphicalView;

.field private final synthetic val$renderer:Lorg/achartengine/renderer/DefaultRenderer;

.field private final synthetic val$series:Lorg/achartengine/model/CategorySeries;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerPie;Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;Lorg/achartengine/GraphicalView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerPie$1;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    iput-object p2, p0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$series:Lorg/achartengine/model/CategorySeries;

    iput-object p3, p0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$renderer:Lorg/achartengine/renderer/DefaultRenderer;

    iput-object p4, p0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$chartView:Lorg/achartengine/GraphicalView;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 112
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v12}, Ledu/umich/PowerTutor/ui/PowerPie;->access$1(Ledu/umich/PowerTutor/ui/PowerPie;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->uid:I
    invoke-static {v13}, Ledu/umich/PowerTutor/ui/PowerPie;->access$6(Ledu/umich/PowerTutor/ui/PowerPie;)I

    move-result v13

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Ledu/umich/PowerTutor/ui/PowerPie;->access$7(Ledu/umich/PowerTutor/ui/PowerPie;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "pieWindowType"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 112
    invoke-interface {v12, v13, v14}, Ledu/umich/PowerTutor/service/ICounterService;->getTotals(II)[J

    move-result-object v9

    .line 114
    .local v9, totals:[J
    const-wide/16 v7, 0x0

    .line 115
    .local v7, sumTotal:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v12, v9

    if-lt v2, v12, :cond_2

    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, index:I
    long-to-double v12, v7

    const-wide v14, 0x3e7ad7f29abcaf48L

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$series:Lorg/achartengine/model/CategorySeries;

    const/4 v13, 0x0

    const-string v14, "No data"

    const-wide/high16 v15, 0x3ff0

    invoke-virtual/range {v12 .. v16}, Lorg/achartengine/model/CategorySeries;->set(ILjava/lang/String;D)V

    .line 157
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$chartView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v12}, Lorg/achartengine/GraphicalView;->invalidate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v7           #sumTotal:J
    .end local v9           #totals:[J
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->handler:Landroid/os/Handler;
    invoke-static {v12}, Ledu/umich/PowerTutor/ui/PowerPie;->access$10(Ledu/umich/PowerTutor/ui/PowerPie;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->handler:Landroid/os/Handler;
    invoke-static {v12}, Ledu/umich/PowerTutor/ui/PowerPie;->access$10(Ledu/umich/PowerTutor/ui/PowerPie;)Landroid/os/Handler;

    move-result-object v12

    const-wide/16 v13, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    :cond_1
    return-void

    .line 116
    .restart local v2       #i:I
    .restart local v7       #sumTotal:J
    .restart local v9       #totals:[J
    :cond_2
    :try_start_1
    aget-wide v12, v9, v2

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    aput-wide v12, v9, v2

    .line 117
    aget-wide v12, v9, v2

    add-long/2addr v7, v12

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .restart local v3       #index:I
    :cond_3
    const/4 v2, 0x0

    :goto_2
    array-length v12, v9

    if-ge v2, v12, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->noUidMask:I
    invoke-static {v12}, Ledu/umich/PowerTutor/ui/PowerPie;->access$8(Ledu/umich/PowerTutor/ui/PowerPie;)I

    move-result v12

    const/4 v13, 0x1

    shl-int/2addr v13, v2

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    .line 122
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    :cond_4
    aget-wide v12, v9, v2

    long-to-double v10, v12

    .line 128
    .local v10, val:D
    const-wide v12, 0x426d1a94a2000000L

    cmpl-double v12, v10, v12

    if-lez v12, :cond_5

    .line 129
    const-string v5, "G"

    .line 130
    .local v5, prefix:Ljava/lang/String;
    const-wide v12, 0x426d1a94a2000000L

    div-double/2addr v10, v12

    .line 144
    :goto_4
    const-string v12, "%1$s %2$.1f %3$sJ"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->componentNames:[Ljava/lang/String;
    invoke-static {v15}, Ledu/umich/PowerTutor/ui/PowerPie;->access$9(Ledu/umich/PowerTutor/ui/PowerPie;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v2

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    .line 144
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$series:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v12}, Lorg/achartengine/model/CategorySeries;->getItemCount()I

    move-result v12

    if-ne v12, v3, :cond_9

    .line 147
    new-instance v6, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct {v6}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 148
    .local v6, r:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    sget-object v12, Ledu/umich/PowerTutor/ui/PowerPie;->COLORS:[I

    aget v12, v12, v2

    invoke-virtual {v6, v12}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$renderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v12, v6}, Lorg/achartengine/renderer/DefaultRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$series:Lorg/achartengine/model/CategorySeries;

    aget-wide v13, v9, v2

    long-to-double v13, v13

    invoke-virtual {v12, v4, v13, v14}, Lorg/achartengine/model/CategorySeries;->add(Ljava/lang/String;D)V

    .line 155
    .end local v6           #r:Lorg/achartengine/renderer/SimpleSeriesRenderer;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 131
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    :cond_5
    const-wide v12, 0x41cdcd6500000000L

    cmpl-double v12, v10, v12

    if-lez v12, :cond_6

    .line 132
    const-string v5, "M"

    .line 133
    .restart local v5       #prefix:Ljava/lang/String;
    const-wide v12, 0x41cdcd6500000000L

    div-double/2addr v10, v12

    goto :goto_4

    .line 134
    .end local v5           #prefix:Ljava/lang/String;
    :cond_6
    const-wide v12, 0x412e848000000000L

    cmpl-double v12, v10, v12

    if-lez v12, :cond_7

    .line 135
    const-string v5, "k"

    .line 136
    .restart local v5       #prefix:Ljava/lang/String;
    const-wide v12, 0x412e848000000000L

    div-double/2addr v10, v12

    goto :goto_4

    .line 137
    .end local v5           #prefix:Ljava/lang/String;
    :cond_7
    const-wide v12, 0x408f400000000000L

    cmpl-double v12, v10, v12

    if-lez v12, :cond_8

    .line 138
    const-string v5, ""

    .line 139
    .restart local v5       #prefix:Ljava/lang/String;
    const-wide v12, 0x408f400000000000L

    div-double/2addr v10, v12

    goto :goto_4

    .line 141
    .end local v5           #prefix:Ljava/lang/String;
    :cond_8
    const-string v5, "m"

    .restart local v5       #prefix:Ljava/lang/String;
    goto/16 :goto_4

    .line 153
    .restart local v4       #label:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/ui/PowerPie$1;->val$series:Lorg/achartengine/model/CategorySeries;

    aget-wide v13, v9, v2

    long-to-double v13, v13

    invoke-virtual {v12, v3, v4, v13, v14}, Lorg/achartengine/model/CategorySeries;->set(ILjava/lang/String;D)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 158
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    .end local v7           #sumTotal:J
    .end local v9           #totals:[J
    .end local v10           #val:D
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Landroid/os/RemoteException;
    const-string v12, "PowerPie"

    const-string v13, "Failed to contact power tutor profiling service"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
