.class final Lccc71/pmw/lib/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/dl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/dm;)Lccc71/pmw/lib/dl;
    .locals 1
    .parameter

    .prologue
    .line 1326
    iget-object v0, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1331
    iget-object v0, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1333
    sput-boolean v7, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    .line 1335
    if-ne v3, v7, :cond_0

    .line 1337
    iget-object v0, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1338
    iget-object v1, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v1}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v1

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    const-string v3, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Selected apk "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v5}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1343
    iget-object v4, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v4}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/pmw_backuplist;->f(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/b/m;

    invoke-static {v1}, Lccc71/pmw/b/m;->b(Ljava/lang/String;)V

    .line 1345
    new-instance v1, Lccc71/pmw/lib/dn;

    invoke-direct {v1, p0, v3}, Lccc71/pmw/lib/dn;-><init>(Lccc71/pmw/lib/dm;Ljava/io/File;)V

    .line 1355
    invoke-virtual {v1, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 1356
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1358
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 1359
    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1360
    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 1361
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 1363
    iget-object v0, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1365
    iget-object v0, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->g(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1366
    iget-object v0, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->h(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1468
    :goto_0
    return-void

    .line 1371
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1373
    :goto_1
    if-lt v1, v3, :cond_2

    .line 1380
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v1}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Landroid/app/ProgressDialog;)V

    .line 1381
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v1}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1382
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1383
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fG:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1384
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1385
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1386
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v1}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v1

    sget v6, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {v1, v6}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1387
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1388
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1389
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1391
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1392
    if-eqz v0, :cond_1

    .line 1394
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1395
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 1398
    :cond_1
    new-instance v0, Lccc71/pmw/lib/do;

    invoke-direct {v0, p0, v3, v5, v4}, Lccc71/pmw/lib/do;-><init>(Lccc71/pmw/lib/dm;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 1467
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/do;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_0

    .line 1375
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1376
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    iget-object v6, p0, Lccc71/pmw/lib/dm;->a:Lccc71/pmw/lib/dl;

    invoke-static {v6}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v6

    invoke-static {v6, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
