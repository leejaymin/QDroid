.class final Lccc71/pmw/lib/ez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_easy_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ez;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;
    .locals 1
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lccc71/pmw/lib/ez;->a:Lccc71/pmw/lib/pmw_easy_apps;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 548
    sput-boolean v4, Lccc71/pmw/lib/pmw_applist;->b:Z

    .line 549
    sput-boolean v4, Lccc71/pmw/lib/pmw_applist;->c:Z

    .line 550
    sput-boolean v4, Lccc71/pmw/lib/pmw_backuplist;->a:Z

    .line 552
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/ez;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->a(Landroid/app/ProgressDialog;)V

    .line 553
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ez;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 554
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 555
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fO:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 556
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 557
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->ao:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 558
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ez;->a:Lccc71/pmw/lib/pmw_easy_apps;

    sget v2, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_easy_apps;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 559
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 560
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 562
    iget-object v0, p0, Lccc71/pmw/lib/ez;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->g(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 563
    iget-object v0, p0, Lccc71/pmw/lib/ez;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->h(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 565
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    add-int v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 567
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 568
    if-eqz v0, :cond_0

    .line 570
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 571
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 574
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->a(Ljava/lang/String;)V

    .line 576
    new-instance v0, Lccc71/pmw/lib/fa;

    invoke-direct {v0, p0, v1, v2}, Lccc71/pmw/lib/fa;-><init>(Lccc71/pmw/lib/ez;II)V

    .line 608
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 609
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 610
    return-void
.end method
