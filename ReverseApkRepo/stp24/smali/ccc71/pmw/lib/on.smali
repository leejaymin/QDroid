.class final Lccc71/pmw/lib/on;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;ZLandroid/widget/TableLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    iput-boolean p2, p0, Lccc71/pmw/lib/on;->b:Z

    iput-object p3, p0, Lccc71/pmw/lib/on;->c:Landroid/widget/TableLayout;

    .line 737
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1
    iget-boolean v0, p0, Lccc71/pmw/lib/on;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    const-string v1, "sysctl"

    invoke-static {v0, v1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " -a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    invoke-virtual {v0}, Lccc71/pmw/b/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " -a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    invoke-virtual {v0}, Lccc71/pmw/b/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->u(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v3

    :goto_1
    if-lt v7, v8, :cond_1

    :cond_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " += +"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    aget-object v1, v0, v3

    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    aget-object v5, v0, v3

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lccc71/pmw/lib/pb;

    iget-object v10, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v9, v10, v3}, Lccc71/pmw/lib/pb;-><init>(Lccc71/pmw/lib/pmw_sysctl;B)V

    aget-object v10, v0, v3

    iput-object v10, v9, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    aget-object v10, v0, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lccc71/pmw/lib/pb;->b:Ljava/lang/String;

    aget-object v1, v0, v6

    iput-object v1, v9, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    aget-object v0, v0, v6

    iput-object v0, v9, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    iget-object v1, v9, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    iget-object v10, v9, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-static {v0, v1, v10}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->u(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sysctl;->u(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v5, v3

    :goto_3
    if-lt v5, v10, :cond_5

    move v1, v3

    :goto_4
    if-nez v1, :cond_2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/lib/pb;

    iget-object v1, v1, Lccc71/pmw/lib/pb;->b:Ljava/lang/String;

    iget-object v11, v9, Lccc71/pmw/lib/pb;->b:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_7
    move-object v4, v0

    goto/16 :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/on;->c:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->u(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->h(Lccc71/pmw/lib/pmw_sysctl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->j(Lccc71/pmw/lib/pmw_sysctl;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sysctl;->c(Lccc71/pmw/lib/pmw_sysctl;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sysctl;->u(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_sysctl;->v(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v3, v0}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lccc71/pmw/lib/pmw_sysctl;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/on;->c:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lccc71/pmw/lib/on;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v2, Lccc71/pmw/lib/c;->aS:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lccc71/pmw/lib/on;->c:Landroid/widget/TableLayout;

    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
