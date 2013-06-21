.class final Lccc71/pmw/lib/fk;
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
    iput-object p1, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/fk;)Lccc71/pmw/lib/pmw_easy_apps;
    .locals 1
    .parameter

    .prologue
    .line 765
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 770
    sput-boolean v8, Lccc71/pmw/lib/pmw_applist;->b:Z

    .line 771
    sput-boolean v8, Lccc71/pmw/lib/pmw_applist;->c:Z

    .line 772
    sput-boolean v8, Lccc71/pmw/lib/pmw_backuplist;->a:Z

    .line 774
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->a(Landroid/app/ProgressDialog;)V

    .line 775
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 776
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 777
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fF:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 778
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    sget v2, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_easy_apps;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 779
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 780
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->e:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 781
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 782
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 784
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->f(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    move v1, v8

    .line 786
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 787
    if-eqz v1, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->d(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    move v3, v9

    .line 788
    :goto_2
    if-lt v3, v2, :cond_3

    .line 792
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->a(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v9

    .line 793
    :goto_3
    if-lt v1, v3, :cond_5

    .line 798
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 799
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->e(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v9

    .line 800
    :goto_4
    if-lt v1, v5, :cond_6

    .line 805
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->b(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 806
    :goto_5
    if-lt v9, v6, :cond_7

    .line 812
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    add-int v1, v2, v5

    add-int/2addr v1, v3

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 814
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 815
    if-eqz v0, :cond_0

    .line 817
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 818
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 821
    :cond_0
    new-instance v0, Lccc71/pmw/lib/fl;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lccc71/pmw/lib/fl;-><init>(Lccc71/pmw/lib/fk;IILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 869
    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 870
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 871
    return-void

    :cond_1
    move v1, v9

    .line 784
    goto :goto_0

    .line 787
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->o(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    .line 790
    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->d(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    :goto_6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 790
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->o(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_6

    .line 795
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->a(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 802
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->e(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 803
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    .line 808
    :cond_7
    iget-object v0, p0, Lccc71/pmw/lib/fk;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->b(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 809
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5
.end method
