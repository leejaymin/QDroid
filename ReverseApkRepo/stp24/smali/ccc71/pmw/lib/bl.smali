.class final Lccc71/pmw/lib/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bk;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bk;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bl;->a:Lccc71/pmw/lib/bk;

    iput p2, p0, Lccc71/pmw/lib/bl;->b:I

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;
    .locals 1
    .parameter

    .prologue
    .line 1333
    iget-object v0, p0, Lccc71/pmw/lib/bl;->a:Lccc71/pmw/lib/bk;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1338
    iget v0, p0, Lccc71/pmw/lib/bl;->b:I

    if-ne v0, v6, :cond_0

    .line 1340
    new-instance v0, Lccc71/pmw/lib/bm;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bm;-><init>(Lccc71/pmw/lib/bl;)V

    .line 1350
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 1351
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1426
    :goto_0
    return-void

    .line 1355
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1356
    :goto_1
    iget v0, p0, Lccc71/pmw/lib/bl;->b:I

    if-lt v1, v0, :cond_2

    .line 1364
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1366
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lccc71/pmw/lib/bl;->a:Lccc71/pmw/lib/bk;

    invoke-static {v4}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Landroid/app/ProgressDialog;)V

    .line 1367
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v4, p0, Lccc71/pmw/lib/bl;->a:Lccc71/pmw/lib/bk;

    invoke-static {v4}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1368
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1369
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v4, Lccc71/pmw/lib/g;->fI:I

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1370
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v4, p0, Lccc71/pmw/lib/bl;->a:Lccc71/pmw/lib/bk;

    invoke-static {v4}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v4

    sget v5, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {v4, v5}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1371
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1372
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v4, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1373
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget v4, p0, Lccc71/pmw/lib/bl;->b:I

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1374
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1375
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1377
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1378
    if-eqz v0, :cond_1

    .line 1380
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1381
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 1384
    :cond_1
    new-instance v0, Lccc71/pmw/lib/bn;

    iget v2, p0, Lccc71/pmw/lib/bl;->b:I

    invoke-direct {v0, p0, v1, v3, v2}, Lccc71/pmw/lib/bn;-><init>(Lccc71/pmw/lib/bl;ILjava/util/ArrayList;I)V

    .line 1423
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 1424
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1358
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/bl;->a:Lccc71/pmw/lib/bk;

    invoke-static {v0}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 1359
    if-ltz v0, :cond_3

    iget-object v4, p0, Lccc71/pmw/lib/bl;->a:Lccc71/pmw/lib/bk;

    invoke-static {v4}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1361
    iget-object v4, p0, Lccc71/pmw/lib/bl;->a:Lccc71/pmw/lib/bk;

    invoke-static {v4}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
