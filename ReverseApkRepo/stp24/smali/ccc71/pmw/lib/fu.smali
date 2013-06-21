.class final Lccc71/pmw/lib/fu;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_event_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_event_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    .line 163
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .parameter

    .prologue
    .line 1
    new-instance v9, Lccc71/pmw/b/m;

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_event_apps;->h(Lccc71/pmw/lib/pmw_event_apps;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lccc71/pmw/b/m;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v10, Lccc71/pmw/b/c;

    invoke-direct {v10}, Lccc71/pmw/b/c;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->h(Lccc71/pmw/lib/pmw_event_apps;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-lt v8, v12, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lccc71/pmw/lib/fu;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v13, Lccc71/pmw/lib/fv;

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    const/4 v2, 0x0

    invoke-direct {v13, v1, v2}, Lccc71/pmw/lib/fv;-><init>(Lccc71/pmw/lib/pmw_event_apps;B)V

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, v13, Lccc71/pmw/lib/fv;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v13, Lccc71/pmw/lib/fv;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v13, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v13, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    iget-object v1, v13, Lccc71/pmw/lib/fv;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v1}, Lccc71/pmw/b/m;->c(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lccc71/pmw/lib/fv;->c:Ljava/lang/String;

    iget-object v1, v13, Lccc71/pmw/lib/fv;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v1}, Lccc71/pmw/b/m;->b(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v13, Lccc71/pmw/lib/fv;->d:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    iget-object v2, v13, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v13, Lccc71/pmw/lib/fv;->e:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v4, :cond_4

    move v1, v3

    :goto_3
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    iget-object v2, v13, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v13, Lccc71/pmw/lib/fv;->e:Z

    iget-object v1, v13, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    iget-object v2, v13, Lccc71/pmw/lib/fv;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lccc71/pmw/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, v10, Lccc71/pmw/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-lt v4, v14, :cond_6

    iget-object v1, v13, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lccc71/pmw/lib/pmw_event_apps;->e()Ljava/text/Collator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/lib/fv;

    iget-object v1, v1, Lccc71/pmw/lib/fv;->c:Ljava/lang/String;

    iget-object v6, v13, Lccc71/pmw/lib/fv;->c:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lccc71/pmw/lib/fu;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    iget-object v1, v10, Lccc71/pmw/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lccc71/pmw/b/d;

    iget-object v1, v3, Lccc71/pmw/b/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v1, 0x0

    move v7, v1

    :goto_6
    if-lt v7, v15, :cond_8

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lccc71/pmw/lib/fu;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_9
    iget-object v1, v3, Lccc71/pmw/b/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v5, 0x0

    iget-object v2, v13, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v2, 0x0

    move v6, v2

    :goto_7
    move/from16 v0, v16

    if-lt v6, v0, :cond_b

    move-object v2, v5

    :goto_8
    if-nez v2, :cond_f

    new-instance v2, Lccc71/pmw/lib/fw;

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lccc71/pmw/lib/fw;-><init>(Lccc71/pmw/lib/pmw_event_apps;B)V

    iget-object v5, v3, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    iput-object v5, v2, Lccc71/pmw/lib/fw;->d:Ljava/lang/String;

    iput-object v1, v2, Lccc71/pmw/lib/fw;->c:Ljava/lang/String;

    iget-object v1, v13, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    iput v1, v2, Lccc71/pmw/lib/fw;->b:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->i(Lccc71/pmw/lib/pmw_event_apps;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v1, 0x0

    :goto_9
    if-lt v1, v5, :cond_d

    :cond_a
    :goto_a
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_6

    :cond_b
    iget-object v2, v13, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/pmw/lib/fw;

    iget-object v2, v2, Lccc71/pmw/lib/fw;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v13, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/pmw/lib/fw;

    goto :goto_8

    :cond_c
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_event_apps;->i(Lccc71/pmw/lib/pmw_event_apps;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v0, v2, Lccc71/pmw/lib/fw;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iput v1, v2, Lccc71/pmw/lib/fw;->b:I

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    iget-object v1, v2, Lccc71/pmw/lib/fw;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v3, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lccc71/pmw/lib/fw;->d:Ljava/lang/String;

    goto :goto_a

    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [Lccc71/pmw/lib/fv;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/fu;->d([Ljava/lang/Object;)V

    goto/16 :goto_5
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lccc71/pmw/lib/fv;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/fu;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_event_apps;->j(Lccc71/pmw/lib/pmw_event_apps;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_event_apps;->k(Lccc71/pmw/lib/pmw_event_apps;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 17
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lccc71/pmw/lib/fv;

    invoke-super/range {p0 .. p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lccc71/pmw/lib/fu;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    aget-object v4, p1, v1

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    sget v2, Lccc71/pmw/lib/d;->gp:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_event_apps;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v4, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found empty app!? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lccc71/pmw/lib/fv;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v5, v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v6, v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    const/4 v1, 0x3

    iput v1, v6, Landroid/widget/TableRow$LayoutParams;->span:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v7

    const/high16 v1, 0x40c0

    add-float/2addr v1, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_event_apps;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v8, v1

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v8, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_event_apps;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_event_apps;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    sget v11, Lccc71/pmw/lib/g;->dN:I

    invoke-virtual {v3, v11}, Lccc71/pmw/lib/pmw_event_apps;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v2, v4, Lccc71/pmw/lib/fv;->a:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v12

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    if-lt v3, v2, :cond_6

    :cond_4
    new-instance v2, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-direct {v2, v13}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    iput-object v2, v4, Lccc71/pmw/lib/fv;->f:Landroid/widget/TableRow;

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v14, v4, Lccc71/pmw/lib/fv;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v14, v8, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v13, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-direct {v8, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x4

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v13, 0x4000

    add-float/2addr v7, v13

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v7, v4, Lccc71/pmw/lib/fv;->c:Ljava/lang/String;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x10

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v12, :cond_8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-boolean v4, v4, Lccc71/pmw/lib/fv;->e:Z

    if-eqz v4, :cond_5

    const/high16 v4, -0x1

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v2, v8, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_event_apps;->g(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_event_apps;->l(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v2, v3, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/fu;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v3, Lccc71/pmw/lib/c;->aS:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/pmw/lib/fv;

    invoke-static {}, Lccc71/pmw/lib/pmw_event_apps;->e()Ljava/text/Collator;

    move-result-object v13

    iget-object v2, v2, Lccc71/pmw/lib/fv;->c:Ljava/lang/String;

    iget-object v14, v4, Lccc71/pmw/lib/fv;->c:Ljava/lang/String;

    invoke-virtual {v13, v2, v14}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_4

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method
