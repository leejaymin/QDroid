.class final Lccc71/pmw/lib/bd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bd;->a:Lccc71/pmw/lib/pmw_applist;

    .line 2500
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2504
    iget-object v0, p0, Lccc71/pmw/lib/bd;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/bd;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->o(Lccc71/pmw/lib/pmw_applist;)Lccc71/pmw/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->g()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/bd;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_applist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2587
    :cond_0
    :goto_0
    return-void

    .line 2511
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 2513
    iget-object v2, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v3, Lccc71/pmw/a/b;->a:Lccc71/pmw/a/b;

    if-ne v2, v3, :cond_2

    .line 2515
    iget-object v2, p0, Lccc71/pmw/lib/bd;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->o(Lccc71/pmw/lib/pmw_applist;)Lccc71/pmw/b/m;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lccc71/pmw/b/m;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 2520
    :cond_2
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->g()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2522
    iget-boolean v2, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v2, :cond_3

    .line 2524
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->f()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2525
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->i()Z

    move-result v2

    iget-boolean v3, v0, Lccc71/pmw/a/a;->b:Z

    or-int/2addr v2, v3

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->a(Z)V

    .line 2533
    :goto_1
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Message with name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and appinfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Total = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v0, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2536
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2538
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v0

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2541
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2542
    :goto_3
    if-lt v1, v3, :cond_5

    .line 2550
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2552
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 2554
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2556
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2557
    sget v1, Lccc71/pmw/lib/g;->cO:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2558
    sget v1, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2559
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2560
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2581
    :goto_4
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->r(Lccc71/pmw/lib/pmw_applist;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2530
    :cond_3
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2535
    :cond_4
    iget-object v0, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_2

    .line 2544
    :cond_5
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 2564
    :cond_7
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2565
    sget v1, Lccc71/pmw/lib/g;->cN:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2566
    sget v1, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2567
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2568
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .line 2573
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2574
    sget v1, Lccc71/pmw/lib/g;->ex:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2575
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2576
    sget v1, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2577
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2578
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
