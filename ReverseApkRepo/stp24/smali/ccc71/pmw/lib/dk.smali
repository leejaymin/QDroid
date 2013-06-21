.class final Lccc71/pmw/lib/dk;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dk;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 1263
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1265
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-nez v1, :cond_1

    .line 1266
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Ljava/lang/String;)V

    .line 1270
    :goto_0
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v1

    monitor-enter v1

    .line 1272
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 1273
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v0, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1275
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v0

    .line 1276
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v2

    .line 1278
    if-ne v0, v2, :cond_0

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    :try_start_1
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1286
    :try_start_2
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1288
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1289
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lccc71/pmw/lib/g;->cO:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1290
    sget v2, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1291
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1308
    :goto_2
    :try_start_3
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->e(Lccc71/pmw/lib/pmw_backuplist;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1270
    :cond_0
    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 1268
    :cond_1
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->e()Z

    move-result v1

    iget-boolean v2, v0, Lccc71/pmw/a/a;->b:Z

    or-int/2addr v1, v2

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Z)V

    goto/16 :goto_0

    .line 1289
    :cond_2
    :try_start_5
    sget v0, Lccc71/pmw/lib/g;->cN:I

    goto :goto_1

    .line 1296
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1297
    sget v2, Lccc71/pmw/lib/g;->ex:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1298
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1299
    sget v2, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1300
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 1312
    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "process_monitor_widget"

    const-string v2, "Failed to close progress dialog"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
