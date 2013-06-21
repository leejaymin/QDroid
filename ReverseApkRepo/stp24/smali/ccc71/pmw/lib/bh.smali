.class final Lccc71/pmw/lib/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    .line 2703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;
    .locals 1
    .parameter

    .prologue
    .line 2703
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2708
    if-nez p1, :cond_1

    .line 2867
    :cond_0
    :goto_0
    return-void

    .line 2711
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 2712
    if-eqz v0, :cond_0

    .line 2715
    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2719
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2721
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2724
    :cond_2
    iget-object v2, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->g(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2726
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2728
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2730
    div-int/lit8 v0, v1, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 2732
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v0

    .line 2733
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2746
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2747
    iget-object v1, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Landroid/view/View;)V

    .line 2775
    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->q(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2777
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->q(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 2778
    iget-object v1, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    if-ltz v0, :cond_9

    iget-object v1, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 2780
    iget-object v1, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 2792
    :goto_3
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 2793
    if-eqz v0, :cond_b

    .line 2795
    new-instance v1, Lccc71/pmw/lib/bi;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/bi;-><init>(Lccc71/pmw/lib/bh;Landroid/content/pm/ApplicationInfo;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 2854
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/bi;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_0

    .line 2737
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 2742
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 2749
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0, v6}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Landroid/view/View;)V

    goto :goto_2

    .line 2753
    :cond_6
    iget-object v1, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 2754
    :goto_4
    if-lt v2, v4, :cond_7

    .line 2768
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2770
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2771
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0, p1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Landroid/view/View;)V

    .line 2772
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 2756
    :cond_7
    iget-object v1, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2757
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 2758
    div-int/lit8 v5, v5, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_8

    .line 2760
    iget-object v5, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v5

    .line 2761
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2754
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 2765
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    .line 2784
    :cond_9
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    iput-object v6, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_3

    .line 2789
    :cond_a
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    iput-object v6, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_3

    .line 2858
    :cond_b
    iget-object v0, p0, Lccc71/pmw/lib/bh;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/bj;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/bj;-><init>(Lccc71/pmw/lib/bh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
