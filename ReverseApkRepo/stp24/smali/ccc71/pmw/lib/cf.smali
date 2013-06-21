.class final Lccc71/pmw/lib/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;

.field private final synthetic b:I

.field private final synthetic c:Lccc71/pmw/a/y;

.field private final synthetic d:I

.field private final synthetic e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;ILccc71/pmw/a/y;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cf;->a:Lccc71/pmw/lib/pmw_applist;

    iput p2, p0, Lccc71/pmw/lib/cf;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/cf;->c:Lccc71/pmw/a/y;

    iput p4, p0, Lccc71/pmw/lib/cf;->d:I

    iput-object p5, p0, Lccc71/pmw/lib/cf;->e:Ljava/util/ArrayList;

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;
    .locals 1
    .parameter

    .prologue
    .line 1530
    iget-object v0, p0, Lccc71/pmw/lib/cf;->a:Lccc71/pmw/lib/pmw_applist;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1535
    iget v0, p0, Lccc71/pmw/lib/cf;->b:I

    if-ne v0, v4, :cond_0

    .line 1537
    new-instance v0, Lccc71/pmw/lib/cg;

    iget-object v1, p0, Lccc71/pmw/lib/cf;->c:Lccc71/pmw/a/y;

    invoke-direct {v0, p0, v1}, Lccc71/pmw/lib/cg;-><init>(Lccc71/pmw/lib/cf;Lccc71/pmw/a/y;)V

    .line 1564
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 1565
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1663
    :goto_0
    return-void

    .line 1569
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/cf;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Landroid/app/ProgressDialog;)V

    .line 1570
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/cf;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1571
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1572
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fN:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1573
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/cf;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1574
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1575
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->e:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1576
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/cf;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " location= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/cf;->c:Lccc71/pmw/a/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p0, Lccc71/pmw/lib/cf;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/cf;->c:Lccc71/pmw/a/y;

    sget-object v2, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/cf;->c:Lccc71/pmw/a/y;

    sget-object v2, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    if-ne v0, v2, :cond_3

    :cond_1
    iget v0, p0, Lccc71/pmw/lib/cf;->b:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1578
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1579
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1581
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1582
    if-eqz v0, :cond_2

    .line 1584
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1585
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 1588
    :cond_2
    new-instance v0, Lccc71/pmw/lib/ch;

    iget v1, p0, Lccc71/pmw/lib/cf;->d:I

    iget-object v2, p0, Lccc71/pmw/lib/cf;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lccc71/pmw/lib/cf;->c:Lccc71/pmw/a/y;

    invoke-direct {v0, p0, v1, v2, v3}, Lccc71/pmw/lib/ch;-><init>(Lccc71/pmw/lib/cf;ILjava/util/ArrayList;Lccc71/pmw/a/y;)V

    .line 1660
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 1661
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1577
    :cond_3
    iget v0, p0, Lccc71/pmw/lib/cf;->b:I

    mul-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method
