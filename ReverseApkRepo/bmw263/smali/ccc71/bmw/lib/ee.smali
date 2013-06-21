.class final Lccc71/bmw/lib/ee;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_use_times;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_use_times;Landroid/os/Handler;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ee;->a:Lccc71/bmw/lib/bmw_use_times;

    iput-object p2, p0, Lccc71/bmw/lib/ee;->b:Landroid/os/Handler;

    iput p3, p0, Lccc71/bmw/lib/ee;->c:I

    iput p4, p0, Lccc71/bmw/lib/ee;->d:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/ee;)Lccc71/bmw/lib/bmw_use_times;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lccc71/bmw/lib/ee;->a:Lccc71/bmw/lib/bmw_use_times;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 75
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 77
    const/high16 v3, -0x8000

    .line 78
    sget-boolean v1, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lccc71/bmw/lib/bmw_watcher;->x:Z

    if-eqz v1, :cond_3

    .line 80
    :cond_0
    const-string v1, "battery_widget_monitor"

    const-string v2, "Calculating minimum mA from estimated values"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ee;->a:Lccc71/bmw/lib/bmw_use_times;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v2

    .line 84
    mul-int/lit16 v1, v1, 0xe10

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v1, v2

    int-to-float v7, v1

    .line 85
    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 86
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 88
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-static {v11, v10}, Lccc71/bmw/lib/bi;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 94
    const/4 v4, -0x1

    .line 95
    const/4 v6, -0x1

    .line 96
    const/4 v5, 0x0

    move v2, v3

    :goto_0
    if-lt v5, v9, :cond_1

    .line 153
    :goto_1
    const/high16 v1, -0x8000

    if-ne v2, v1, :cond_5

    const/16 v1, -0xa

    .line 154
    :goto_2
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Minimum mA in Standby = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ee;->b:Landroid/os/Handler;

    new-instance v3, Lccc71/bmw/lib/ef;

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/lib/ee;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/lib/ee;->d:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v1, v5}, Lccc71/bmw/lib/ef;-><init>(Lccc71/bmw/lib/ee;III)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void

    .line 98
    :cond_1
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    .line 100
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    int-to-long v13, v1

    .line 102
    if-eq v3, v4, :cond_8

    .line 104
    if-nez v12, :cond_2

    const-wide/16 v15, 0x0

    cmp-long v1, v13, v15

    if-nez v1, :cond_2

    .line 106
    const/4 v1, -0x1

    if-eq v4, v1, :cond_7

    .line 108
    sub-int v1, v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v7

    sub-int v4, v5, v6

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 109
    const/4 v4, -0x1

    if-ge v1, v4, :cond_7

    if-le v1, v2, :cond_7

    :goto_3
    move v2, v5

    move/from16 v17, v3

    move v3, v1

    move/from16 v1, v17

    .line 96
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    move v6, v2

    move v2, v3

    goto :goto_0

    .line 120
    :cond_2
    const/4 v1, -0x1

    .line 121
    const/4 v3, -0x1

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_4

    .line 129
    :cond_3
    const-string v1, "battery_widget_monitor"

    const-string v2, "Calculating minimum mA from raw values"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v1, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 131
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static {v8, v7}, Lccc71/bmw/lib/bi;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 139
    const/4 v1, 0x0

    move v4, v1

    :goto_5
    if-lt v4, v6, :cond_4

    move v2, v3

    goto/16 :goto_1

    .line 141
    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 142
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    .line 143
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    int-to-float v1, v1

    .line 145
    if-gez v2, :cond_6

    if-nez v9, :cond_6

    const/4 v9, 0x0

    cmpl-float v1, v1, v9

    if-nez v1, :cond_6

    .line 147
    const/4 v1, -0x1

    if-ge v2, v1, :cond_6

    if-le v2, v3, :cond_6

    move v1, v2

    .line 139
    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto :goto_5

    :cond_5
    move v1, v2

    .line 153
    goto/16 :goto_2

    :cond_6
    move v1, v3

    goto :goto_6

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v4

    move v3, v2

    move v2, v6

    goto :goto_4
.end method
