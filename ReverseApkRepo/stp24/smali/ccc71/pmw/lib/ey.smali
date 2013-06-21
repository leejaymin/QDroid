.class final Lccc71/pmw/lib/ey;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Landroid/content/pm/PackageManager;

.field b:Lccc71/pmw/b/m;

.field final synthetic c:Lccc71/pmw/lib/pmw_easy_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    .line 321
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    .line 323
    invoke-virtual {p1}, Lccc71/pmw/lib/pmw_easy_apps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/ey;->a:Landroid/content/pm/PackageManager;

    .line 324
    new-instance v0, Lccc71/pmw/b/m;

    iget-object v1, p0, Lccc71/pmw/lib/ey;->a:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p1, v1}, Lccc71/pmw/b/m;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Lccc71/pmw/lib/pmw_easy_apps;->a(Lccc71/pmw/lib/pmw_easy_apps;Lccc71/pmw/b/m;)V

    iput-object v0, p0, Lccc71/pmw/lib/ey;->b:Lccc71/pmw/b/m;

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 15

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 329
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->r(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->s(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->t(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->u(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->a(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->o(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 338
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->b(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->e(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->d(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 342
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->h(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->g(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->i(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v0, p0, Lccc71/pmw/lib/ey;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 347
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 349
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    move v10, v8

    .line 350
    :goto_0
    if-lt v10, v13, :cond_1

    .line 428
    new-array v0, v9, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ey;->d([Ljava/lang/Object;)V

    .line 430
    const-wide/16 v3, 0x0

    .line 431
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 432
    if-eqz v6, :cond_0

    .line 434
    array-length v10, v6

    move v5, v8

    .line 435
    :goto_1
    if-lt v5, v10, :cond_8

    .line 519
    :cond_0
    invoke-static {v3, v4}, Lccc71/pmw/lib/pmw_easy_apps;->a(J)V

    .line 520
    new-array v0, v9, [Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ey;->d([Ljava/lang/Object;)V

    .line 522
    return-object v7

    .line 352
    :cond_1
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 356
    invoke-static {v4}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 357
    if-eqz v2, :cond_4

    .line 359
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->r(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_2
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/ey;->a:Landroid/content/pm/PackageManager;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 372
    iget-object v0, p0, Lccc71/pmw/lib/ey;->b:Lccc71/pmw/b/m;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lccc71/pmw/b/m;->a(Ljava/lang/String;)Lccc71/pmw/b/e;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_12

    iget v1, v0, Lccc71/pmw/b/e;->d:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_12

    .line 375
    iget v0, v0, Lccc71/pmw/b/e;->d:I

    .line 378
    :goto_3
    if-nez v0, :cond_2

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".apk"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 383
    iget-object v5, p0, Lccc71/pmw/lib/ey;->a:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 385
    :goto_4
    if-eqz v1, :cond_2

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 386
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 388
    :cond_2
    if-eqz v0, :cond_7

    .line 390
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v0, v1, :cond_6

    .line 392
    if-eqz v2, :cond_5

    .line 394
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->a(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_3
    :goto_5
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_0

    .line 363
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->t(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 398
    :cond_5
    :try_start_1
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->o(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->d(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 421
    :catch_0
    move-exception v0

    goto :goto_5

    .line 402
    :cond_6
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_easy_apps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 406
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    const-string v1, "lastmod"

    invoke-static {v0, v1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " /data/data/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/shared_prefs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/shared_prefs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_easy_apps;->v(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto/16 :goto_5

    .line 417
    :cond_7
    if-nez v2, :cond_3

    .line 418
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->d(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 437
    :cond_8
    aget-object v11, v6, v5

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 443
    iget-object v1, p0, Lccc71/pmw/lib/ey;->b:Lccc71/pmw/b/m;

    invoke-static {v11}, Lccc71/pmw/b/m;->a(Ljava/lang/String;)Lccc71/pmw/b/e;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_a

    .line 450
    iget v0, v1, Lccc71/pmw/b/e;->d:I

    .line 463
    :goto_6
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 465
    cmp-long v13, v1, v3

    if-lez v13, :cond_10

    .line 471
    :goto_7
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/info.txt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x80

    invoke-direct {v4, v3, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 472
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 473
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 474
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v3

    .line 481
    :goto_8
    if-eqz v4, :cond_b

    sget-object v3, Lccc71/pmw/a/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v9

    .line 483
    :goto_9
    if-eqz v3, :cond_c

    .line 484
    iget-object v13, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v13}, Lccc71/pmw/lib/pmw_easy_apps;->s(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :goto_a
    :try_start_4
    iget-object v13, p0, Lccc71/pmw/lib/ey;->a:Landroid/content/pm/PackageManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 491
    iget v13, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v13, v0, :cond_9

    .line 493
    if-eqz v3, :cond_d

    .line 495
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->h(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 435
    :cond_9
    :goto_b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-wide v3, v1

    goto/16 :goto_1

    .line 456
    :cond_a
    iget-object v1, p0, Lccc71/pmw/lib/ey;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_f

    .line 458
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto/16 :goto_6

    .line 476
    :catch_1
    move-exception v3

    move-object v3, v7

    .line 478
    :goto_c
    const-string v4, "process_monitor_widget"

    const-string v13, "Failed to read package label!"

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    goto :goto_8

    :cond_b
    move v3, v8

    .line 481
    goto :goto_9

    .line 486
    :cond_c
    iget-object v13, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v13}, Lccc71/pmw/lib/pmw_easy_apps;->u(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 499
    :cond_d
    :try_start_5
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->g(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->i(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    .line 506
    :catch_2
    move-exception v0

    if-eqz v3, :cond_e

    .line 508
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->h(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 512
    :cond_e
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->g(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->i(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 476
    :catch_3
    move-exception v4

    goto :goto_c

    :cond_f
    move-wide v1, v3

    goto :goto_b

    :cond_10
    move-wide v1, v3

    goto/16 :goto_7

    :cond_11
    move-object v1, v7

    goto/16 :goto_4

    :cond_12
    move v0, v8

    goto/16 :goto_3
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/ey;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->w(Lccc71/pmw/lib/pmw_easy_apps;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lccc71/pmw/lib/ey;->c:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->x(Lccc71/pmw/lib/pmw_easy_apps;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
