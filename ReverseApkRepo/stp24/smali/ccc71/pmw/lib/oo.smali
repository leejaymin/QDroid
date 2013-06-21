.class final Lccc71/pmw/lib/oo;
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
    iput-object p1, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    iput-boolean p2, p0, Lccc71/pmw/lib/oo;->b:Z

    iput-object p3, p0, Lccc71/pmw/lib/oo;->c:Landroid/widget/TableLayout;

    .line 860
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 13

    .prologue
    .line 865
    iget-boolean v0, p0, Lccc71/pmw/lib/oo;->b:Z

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/b;->v:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 868
    array-length v8, v7

    .line 870
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    const-string v1, "sysctl"

    invoke-static {v0, v1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " -a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 872
    invoke-virtual {v0}, Lccc71/pmw/b/h;->b()Ljava/util/ArrayList;

    move-result-object v5

    .line 874
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->u(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 875
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 877
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 878
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-lt v4, v6, :cond_1

    .line 943
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 880
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 881
    const/4 v0, 0x0

    goto :goto_1

    .line 883
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " += +"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 885
    array-length v0, v9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 887
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-lt v3, v8, :cond_4

    .line 878
    :cond_3
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 889
    :cond_4
    aget-object v0, v7, v3

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 890
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 892
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 898
    :try_start_0
    new-instance v10, Lccc71/pmw/lib/pb;

    iget-object v1, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2}, Lccc71/pmw/lib/pb;-><init>(Lccc71/pmw/lib/pmw_sysctl;B)V

    .line 899
    const/4 v1, 0x0

    aget-object v1, v9, v1

    iput-object v1, v10, Lccc71/pmw/lib/pb;->b:Ljava/lang/String;

    iput-object v1, v10, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    .line 900
    const/4 v1, 0x1

    aget-object v1, v9, v1

    iput-object v1, v10, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    iput-object v1, v10, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    .line 901
    iget-object v1, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    iget-object v2, v10, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    iget-object v11, v10, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-static {v1, v2, v11}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    .line 902
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, v10, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    const/4 v1, 0x1

    :try_start_1
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lccc71/pmw/lib/pb;->f:I

    .line 906
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lccc71/pmw/lib/pb;->g:I

    .line 907
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lccc71/pmw/lib/pb;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 912
    :goto_4
    const/4 v1, 0x5

    :try_start_2
    aget-object v1, v0, v1

    iput-object v1, v10, Lccc71/pmw/lib/pb;->i:Ljava/lang/String;

    .line 913
    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, v10, Lccc71/pmw/lib/pb;->j:Ljava/lang/String;

    .line 917
    const/4 v1, 0x0

    .line 918
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 919
    const/4 v0, 0x0

    move v2, v0

    :goto_5
    if-lt v2, v11, :cond_5

    move v0, v1

    .line 929
    :goto_6
    if-nez v0, :cond_3

    .line 930
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 934
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load entry "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 921
    :cond_5
    :try_start_3
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pb;

    .line 922
    iget-object v0, v0, Lccc71/pmw/lib/pb;->b:Ljava/lang/String;

    iget-object v12, v10, Lccc71/pmw/lib/pb;->b:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    .line 924
    const/4 v0, 0x1

    .line 925
    iget-object v1, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 919
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 887
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto :goto_4
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/oo;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/oo;->c:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->h(Lccc71/pmw/lib/pmw_sysctl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->j(Lccc71/pmw/lib/pmw_sysctl;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->n(Lccc71/pmw/lib/pmw_sysctl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pb;

    if-eqz v0, :cond_4

    iget-object v4, v0, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, v0, Lccc71/pmw/lib/pb;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_sysctl;->c(Lccc71/pmw/lib/pmw_sysctl;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lccc71/pmw/lib/oo;->c:Landroid/widget/TableLayout;

    invoke-virtual {v5, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v6, v0, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lccc71/pmw/lib/pmw_sysctl;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, v0, Lccc71/pmw/lib/pb;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_sysctl;->c(Lccc71/pmw/lib/pmw_sysctl;)F

    move-result v5

    const/high16 v6, 0x4080

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lccc71/pmw/lib/oo;->c:Landroid/widget/TableLayout;

    invoke-virtual {v5, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    iget-object v7, v0, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget v6, Lccc71/pmw/lib/c;->n:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v6, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_sysctl;->w(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v0, Lccc71/pmw/lib/pb;->f:I

    if-nez v5, :cond_7

    iget v5, v0, Lccc71/pmw/lib/pb;->g:I

    if-ne v5, v9, :cond_7

    new-instance v5, Landroid/widget/CheckBox;

    iget-object v6, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    sget-boolean v7, Lccc71/pmw/b/h;->c:Z

    if-eqz v7, :cond_5

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_1
    iget-object v7, v0, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget v7, Lccc71/pmw/lib/g;->dE:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v6, v7, v9

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->x(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_3
    iget-object v0, p0, Lccc71/pmw/lib/oo;->c:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v4, Lccc71/pmw/lib/c;->aS:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Lccc71/pmw/lib/oo;->c:Landroid/widget/TableLayout;

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    sget v7, Lccc71/pmw/lib/g;->dI:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_7
    iget-object v5, v0, Lccc71/pmw/lib/pb;->e:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lccc71/pmw/lib/pb;->h:I

    if-nez v5, :cond_9

    new-instance v5, Landroid/widget/EditText;

    iget-object v6, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->y(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->z(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_8

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_3

    :cond_9
    iget-object v5, v0, Lccc71/pmw/lib/pb;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/widget/SeekBar;

    iget-object v7, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iget v7, v0, Lccc71/pmw/lib/pb;->g:I

    iget v8, v0, Lccc71/pmw/lib/pb;->f:I

    sub-int/2addr v7, v8

    iget v8, v0, Lccc71/pmw/lib/pb;->h:I

    div-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    iget v7, v0, Lccc71/pmw/lib/pb;->f:I

    sub-int v7, v5, v7

    iget v8, v0, Lccc71/pmw/lib/pb;->h:I

    div-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v2

    aput-object v7, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_sysctl;->A(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-boolean v8, Lccc71/pmw/b/h;->c:Z

    if-eqz v8, :cond_a

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_4
    iget-object v6, p0, Lccc71/pmw/lib/oo;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v7, v0, v5}, Lccc71/pmw/lib/pmw_sysctl;->a(Landroid/widget/TextView;Lccc71/pmw/lib/pb;I)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
