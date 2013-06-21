.class final Lccc71/pmw/lib/ea;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_booter_service;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_booter_service;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ea;->a:Lccc71/pmw/lib/pmw_booter_service;

    iput-object p2, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_booter_service;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_booter_service;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Lccc71/pmw/a/at;

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-direct {v7, v0}, Lccc71/pmw/a/at;-><init>(Landroid/content/Context;)V

    new-instance v8, Lccc71/pmw/a/ah;

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    new-instance v9, Lccc71/pmw/a/ar;

    invoke-direct {v9}, Lccc71/pmw/a/ar;-><init>()V

    new-instance v10, Lccc71/pmw/a/as;

    invoke-direct {v10}, Lccc71/pmw/a/as;-><init>()V

    new-instance v11, Lccc71/pmw/a/c;

    invoke-direct {v11}, Lccc71/pmw/a/c;-><init>()V

    new-instance v12, Lccc71/pmw/a/aq;

    invoke-direct {v12}, Lccc71/pmw/a/aq;-><init>()V

    new-instance v13, Lccc71/pmw/a/ag;

    invoke-direct {v13}, Lccc71/pmw/a/ag;-><init>()V

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder_service;->a(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;)Lccc71/pmw/a/ac;

    move-result-object v14

    invoke-virtual {v8}, Lccc71/pmw/a/ah;->A()V

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->O(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lccc71/pmw/a/ah;->b(Z)V

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->R(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "echo applied > "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    iget-object v0, v14, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget v0, v14, Lccc71/pmw/a/ac;->b:I

    if-eqz v0, :cond_e

    iget v0, v14, Lccc71/pmw/a/ac;->c:I

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-nez v0, :cond_3

    iget-object v0, v14, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    invoke-static {v0}, Lccc71/pmw/a/ah;->a(Ljava/lang/String;)V

    iget v0, v14, Lccc71/pmw/a/ac;->b:I

    invoke-static {v0}, Lccc71/pmw/a/ah;->c(I)V

    iget v0, v14, Lccc71/pmw/a/ac;->c:I

    invoke-static {v0}, Lccc71/pmw/a/ah;->b(I)V

    iget-object v0, v14, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    const-string v1, "ondemand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->C(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->D(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->E(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/ah;->a(III)V

    :cond_3
    :goto_2
    iget-object v0, v14, Lccc71/pmw/a/ac;->d:[[I

    if-eqz v0, :cond_4

    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v14, Lccc71/pmw/a/ac;->d:[[I

    invoke-virtual {v8, v0}, Lccc71/pmw/a/ah;->a([[I)[[I

    :cond_4
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :goto_3
    invoke-static {}, Lccc71/pmw/lib/pmw_booter_service;->a()V

    :cond_5
    :goto_4
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->Q(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lccc71/pmw/a/at;->a(Landroid/os/Handler;)V

    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->T(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, v14, Lccc71/pmw/a/ac;->g:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, v14, Lccc71/pmw/a/ac;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_7

    iget-object v0, v14, Lccc71/pmw/a/ac;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lccc71/pmw/a/ar;->a(Ljava/lang/Object;Landroid/os/Handler;)V

    :cond_7
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->U(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lccc71/pmw/a/c;->a(Landroid/os/Handler;)V

    :cond_8
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->V(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lccc71/pmw/a/ag;->a(Landroid/os/Handler;)V

    :cond_9
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->S(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget v0, v14, Lccc71/pmw/a/ac;->e:I

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_b

    iget-boolean v0, v10, Lccc71/pmw/a/as;->b:Z

    if-nez v0, :cond_a

    const/16 v0, 0x3c

    :goto_7
    invoke-virtual {v10}, Lccc71/pmw/a/as;->g()Z

    move-result v1

    if-nez v1, :cond_a

    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_16

    :cond_a
    iget v0, v14, Lccc71/pmw/a/ac;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lccc71/pmw/a/as;->a(Ljava/lang/Object;Landroid/os/Handler;)V

    :cond_b
    iget-object v0, v14, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_d

    iget-boolean v0, v12, Lccc71/pmw/a/aq;->b:Z

    if-nez v0, :cond_c

    const/16 v0, 0x3c

    :goto_9
    invoke-virtual {v12}, Lccc71/pmw/a/aq;->f()Z

    move-result v1

    if-nez v1, :cond_c

    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_18

    :cond_c
    iget-object v0, v14, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lccc71/pmw/a/aq;->a(Ljava/lang/Object;Landroid/os/Handler;)V

    :cond_d
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    :goto_a
    const-string v0, "process_monitor_widget"

    const-string v1, "Booter terminated!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_booter_service;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    iget-object v0, v14, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    const-string v1, "interactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->C(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->H(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lccc71/pmw/a/ah;->a(II)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, v14, Lccc71/pmw/a/ac;->a:Ljava/lang/String;

    const-string v1, "conservative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->C(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->F(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->G(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/ah;->b(III)V

    goto/16 :goto_2

    :cond_11
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ea;->d([Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ah;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ea;->d([Ljava/lang/Object;)V

    :cond_13
    invoke-static {}, Lccc71/pmw/lib/pmw_booter_service;->a()V

    goto/16 :goto_4

    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_16
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    move v0, v1

    goto/16 :goto_7

    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_18
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    move v0, v1

    goto/16 :goto_9

    :cond_19
    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_scheduler;->b(Landroid/content/Context;)V

    invoke-static {}, Lccc71/pmw/b/h;->c()V

    goto/16 :goto_a
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    iget-object v1, p0, Lccc71/pmw/lib/ea;->b:Landroid/content/Context;

    sget v2, Lccc71/pmw/lib/g;->dL:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
