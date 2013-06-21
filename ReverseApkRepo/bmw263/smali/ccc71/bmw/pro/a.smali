.class final Lccc71/bmw/pro/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/pro/bmw_exporter;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/content/Intent;

.field private final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lccc71/bmw/pro/bmw_exporter;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/pro/a;->a:Lccc71/bmw/pro/bmw_exporter;

    iput-object p2, p0, Lccc71/bmw/pro/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lccc71/bmw/pro/a;->c:Landroid/content/Intent;

    iput-object p4, p0, Lccc71/bmw/pro/a;->d:Landroid/os/Handler;

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 36
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 38
    iget-object v0, p0, Lccc71/bmw/pro/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/bmw/pro/bmw_settings;->o(Landroid/content/Context;)I

    move-result v0

    .line 40
    iget-object v1, p0, Lccc71/bmw/pro/a;->c:Landroid/content/Intent;

    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    iget-object v1, p0, Lccc71/bmw/pro/a;->c:Landroid/content/Intent;

    const-string v2, "duration"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 42
    iget-object v2, p0, Lccc71/bmw/pro/a;->c:Landroid/content/Intent;

    const-string v3, "schedule"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 43
    iget-object v3, p0, Lccc71/bmw/pro/a;->c:Landroid/content/Intent;

    const-string v4, "count"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 45
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received export request to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v5, v1

    invoke-static {v5, v6}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " every "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {v5, v6}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v3, Lccc71/bmw/lib/bi;

    iget-object v4, p0, Lccc71/bmw/pro/a;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    .line 49
    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 50
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lccc71/bmw/lib/bi;->b(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 52
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 56
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Preparing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " out of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " data records"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-lt v2, v0, :cond_8

    .line 60
    div-int v13, v2, v0

    .line 62
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v12, :cond_6

    .line 98
    :cond_0
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exporting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v1, v0, v9

    .line 101
    if-nez v8, :cond_19

    .line 105
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 106
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ccc71.pmw.pro"

    const-string v4, "ccc71.pmw.pro.pmw_analyzer"

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    new-array v4, v9, [I

    .line 108
    if-gez v1, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v2, v0, Lccc71/bmw/data/b;->c:I

    .line 111
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_a

    .line 116
    :cond_1
    if-gez v1, :cond_b

    const/4 v0, 0x0

    :goto_2
    move v2, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_c

    .line 120
    const-string v0, "level"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 121
    new-array v4, v9, [I

    .line 122
    if-gez v1, :cond_2

    .line 124
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v2, v0, Lccc71/bmw/data/b;->b:I

    .line 125
    const/4 v0, 0x0

    :goto_4
    if-gt v0, v1, :cond_d

    .line 130
    :cond_2
    if-gez v1, :cond_e

    const/4 v0, 0x0

    :goto_5
    move v2, v0

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_f

    .line 134
    const-string v0, "current"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 135
    new-array v4, v9, [I

    .line 136
    if-gez v1, :cond_3

    .line 138
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->e:F

    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 139
    const/4 v0, 0x0

    :goto_7
    if-gt v0, v1, :cond_10

    .line 144
    :cond_3
    if-gez v1, :cond_11

    const/4 v0, 0x0

    :goto_8
    move v2, v0

    :goto_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_12

    .line 148
    const-string v0, "temp"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 149
    new-array v4, v9, [I

    .line 150
    if-gez v1, :cond_4

    .line 152
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-byte v2, v0, Lccc71/bmw/data/b;->g:B

    .line 153
    const/4 v0, 0x0

    :goto_a
    if-gt v0, v1, :cond_13

    .line 158
    :cond_4
    if-gez v1, :cond_14

    const/4 v0, 0x0

    :goto_b
    move v2, v0

    :goto_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_15

    .line 162
    const-string v0, "plugged"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 163
    new-array v4, v9, [I

    .line 164
    if-gez v1, :cond_5

    .line 166
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-short v2, v0, Lccc71/bmw/data/b;->f:S

    .line 167
    const/4 v0, 0x0

    :goto_d
    if-gt v0, v1, :cond_16

    .line 172
    :cond_5
    if-gez v1, :cond_17

    const/4 v0, 0x0

    :goto_e
    move v2, v0

    :goto_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_18

    .line 176
    const-string v0, "screen"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lccc71/bmw/pro/a;->d:Landroid/os/Handler;

    new-instance v1, Lccc71/bmw/pro/b;

    iget-object v2, p0, Lccc71/bmw/pro/a;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v2}, Lccc71/bmw/pro/b;-><init>(Lccc71/bmw/pro/a;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    :goto_10
    return-void

    .line 64
    :cond_6
    new-instance v0, Lccc71/bmw/data/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 65
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-lt v2, v13, :cond_7

    .line 76
    iget v1, v0, Lccc71/bmw/data/b;->b:I

    div-int/2addr v1, v13

    iput v1, v0, Lccc71/bmw/data/b;->b:I

    .line 77
    iget v1, v0, Lccc71/bmw/data/b;->c:I

    div-int/2addr v1, v13

    iput v1, v0, Lccc71/bmw/data/b;->c:I

    .line 78
    iget v1, v0, Lccc71/bmw/data/b;->d:I

    div-int/2addr v1, v13

    iput v1, v0, Lccc71/bmw/data/b;->d:I

    .line 79
    iget v1, v0, Lccc71/bmw/data/b;->e:F

    int-to-float v2, v13

    div-float/2addr v1, v2

    iput v1, v0, Lccc71/bmw/data/b;->e:F

    .line 80
    iget-byte v1, v0, Lccc71/bmw/data/b;->g:B

    div-int/2addr v1, v13

    int-to-byte v1, v1

    iput-byte v1, v0, Lccc71/bmw/data/b;->g:B

    .line 81
    iget-short v1, v0, Lccc71/bmw/data/b;->f:S

    div-int/2addr v1, v13

    int-to-short v1, v1

    iput-short v1, v0, Lccc71/bmw/data/b;->f:S

    .line 83
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int v0, v7, v13

    move v7, v0

    goto/16 :goto_0

    .line 67
    :cond_7
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    .line 68
    iget v3, v0, Lccc71/bmw/data/b;->b:I

    iget v4, v1, Lccc71/bmw/data/b;->b:I

    add-int/2addr v3, v4

    iput v3, v0, Lccc71/bmw/data/b;->b:I

    .line 69
    iget v3, v0, Lccc71/bmw/data/b;->c:I

    iget v4, v1, Lccc71/bmw/data/b;->c:I

    add-int/2addr v3, v4

    iput v3, v0, Lccc71/bmw/data/b;->c:I

    .line 70
    iget v3, v0, Lccc71/bmw/data/b;->d:I

    iget v4, v1, Lccc71/bmw/data/b;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Lccc71/bmw/data/b;->d:I

    .line 71
    iget v3, v0, Lccc71/bmw/data/b;->e:F

    iget v4, v1, Lccc71/bmw/data/b;->e:F

    add-float/2addr v3, v4

    iput v3, v0, Lccc71/bmw/data/b;->e:F

    .line 72
    iget-byte v3, v0, Lccc71/bmw/data/b;->g:B

    iget-byte v4, v1, Lccc71/bmw/data/b;->g:B

    add-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v0, Lccc71/bmw/data/b;->g:B

    .line 73
    iget-short v3, v0, Lccc71/bmw/data/b;->f:S

    iget-short v1, v1, Lccc71/bmw/data/b;->f:S

    add-int/2addr v1, v3

    int-to-short v1, v1

    iput-short v1, v0, Lccc71/bmw/data/b;->f:S

    .line 65
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    .line 88
    :cond_8
    div-int v3, v0, v2

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v12, :cond_0

    .line 92
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    .line 93
    const/4 v2, 0x0

    :goto_13
    if-lt v2, v3, :cond_9

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 94
    :cond_9
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 113
    :cond_a
    neg-int v5, v0

    aput v2, v4, v5

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    :cond_b
    move v0, v1

    .line 116
    goto/16 :goto_2

    .line 118
    :cond_c
    sub-int v5, v2, v1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->c:I

    aput v0, v4, v5

    .line 116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    .line 127
    :cond_d
    neg-int v5, v0

    aput v2, v4, v5

    .line 125
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    :cond_e
    move v0, v1

    .line 130
    goto/16 :goto_5

    .line 132
    :cond_f
    sub-int v5, v2, v1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->b:I

    aput v0, v4, v5

    .line 130
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    .line 141
    :cond_10
    neg-int v5, v0

    aput v2, v4, v5

    .line 139
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_7

    :cond_11
    move v0, v1

    .line 144
    goto/16 :goto_8

    .line 146
    :cond_12
    sub-int v5, v2, v1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->e:F

    const/high16 v6, 0x4120

    mul-float/2addr v0, v6

    float-to-int v0, v0

    aput v0, v4, v5

    .line 144
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_9

    .line 155
    :cond_13
    neg-int v5, v0

    aput v2, v4, v5

    .line 153
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    :cond_14
    move v0, v1

    .line 158
    goto/16 :goto_b

    .line 160
    :cond_15
    sub-int v5, v2, v1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-byte v0, v0, Lccc71/bmw/data/b;->g:B

    aput v0, v4, v5

    .line 158
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_c

    .line 169
    :cond_16
    neg-int v5, v0

    aput v2, v4, v5

    .line 167
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_d

    :cond_17
    move v0, v1

    .line 172
    goto/16 :goto_e

    .line 174
    :cond_18
    sub-int v5, v2, v1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-short v0, v0, Lccc71/bmw/data/b;->f:S

    aput v0, v4, v5

    .line 172
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_f

    .line 201
    :cond_19
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v8, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0x2000

    invoke-direct {v3, v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 203
    const-string v0, "% -256 :"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 204
    if-gez v1, :cond_1a

    .line 206
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v2, v0, Lccc71/bmw/data/b;->c:I

    .line 207
    const/4 v0, 0x0

    :goto_14
    if-gt v0, v1, :cond_20

    .line 212
    :cond_1a
    if-gez v1, :cond_21

    const/4 v0, 0x0

    :goto_15
    move v2, v0

    :goto_16
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_22

    .line 216
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 218
    const-string v0, "mA -257 :"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 219
    if-gez v1, :cond_1b

    .line 221
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v2, v0, Lccc71/bmw/data/b;->b:I

    .line 222
    const/4 v0, 0x0

    :goto_17
    if-gt v0, v1, :cond_23

    .line 227
    :cond_1b
    if-gez v1, :cond_24

    const/4 v0, 0x0

    :goto_18
    move v2, v0

    :goto_19
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_25

    .line 231
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 233
    const-string v0, "Temperature -258 :"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 234
    if-gez v1, :cond_1c

    .line 236
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->e:F

    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 237
    const/4 v0, 0x0

    :goto_1a
    if-gt v0, v1, :cond_26

    .line 242
    :cond_1c
    if-gez v1, :cond_27

    const/4 v0, 0x0

    :goto_1b
    move v2, v0

    :goto_1c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_28

    .line 246
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 248
    const-string v0, "Plugged -135 :"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 249
    if-gez v1, :cond_1d

    .line 251
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-byte v2, v0, Lccc71/bmw/data/b;->g:B

    .line 252
    const/4 v0, 0x0

    :goto_1d
    if-gt v0, v1, :cond_29

    .line 257
    :cond_1d
    if-gez v1, :cond_2a

    const/4 v0, 0x0

    :goto_1e
    move v2, v0

    :goto_1f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2b

    .line 261
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 263
    const-string v0, "Screen -136 :"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 264
    if-gez v1, :cond_1e

    .line 266
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-short v2, v0, Lccc71/bmw/data/b;->f:S

    .line 267
    const/4 v0, 0x0

    :goto_20
    if-gt v0, v1, :cond_2c

    .line 272
    :cond_1e
    if-gez v1, :cond_1f

    const/4 v1, 0x0

    :cond_1f
    :goto_21
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2d

    .line 276
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    .line 281
    :catch_0
    move-exception v0

    .line 283
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to export data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 209
    :cond_20
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 207
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_14

    :cond_21
    move v0, v1

    .line 212
    goto/16 :goto_15

    .line 214
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->c:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_16

    .line 224
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_17

    :cond_24
    move v0, v1

    .line 227
    goto/16 :goto_18

    .line 229
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->b:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_19

    .line 239
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 237
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1a

    :cond_27
    move v0, v1

    .line 242
    goto/16 :goto_1b

    .line 244
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->e:F

    const/high16 v5, 0x4120

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 242
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1c

    .line 254
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 252
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1d

    :cond_2a
    move v0, v1

    .line 257
    goto/16 :goto_1e

    .line 259
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-byte v0, v0, Lccc71/bmw/data/b;->g:B

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 257
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1f

    .line 269
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 267
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_20

    .line 274
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-short v0, v0, Lccc71/bmw/data/b;->f:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21
.end method
