.class public Lccc71/pmw/lib/pmw_backup_activity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private d:Lccc71/pmw/b/f;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private h:Landroid/app/ProgressDialog;

.field private i:Lccc71/pmw/b/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->b:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->c:Ljava/util/ArrayList;

    .line 31
    iput-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->d:Lccc71/pmw/b/f;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->e:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->f:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->g:Ljava/util/ArrayList;

    .line 35
    iput-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->a:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backup_activity;)V
    .locals 14
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 114
    const-string v1, "lastmod"

    invoke-static {p0, v1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_backup_activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v1, Lccc71/pmw/b/m;

    invoke-direct {v1, p0, v10}, Lccc71/pmw/b/m;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->i:Lccc71/pmw/b/m;

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    move v8, v0

    :goto_0
    if-lt v8, v13, :cond_0

    return-void

    :cond_0
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    :try_start_0
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_2
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_backup_activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " /data/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

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

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/shared_prefs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    invoke-virtual {v0}, Lccc71/pmw/b/h;->b()Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    if-nez v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->d:Lccc71/pmw/b/f;

    iget-boolean v0, v0, Lccc71/pmw/b/f;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_backup_activity;Lccc71/pmw/a/a;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 244
    iget-boolean v1, p1, Lccc71/pmw/a/a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->g:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->i:Lccc71/pmw/b/m;

    iget-object v1, p1, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lccc71/pmw/b/m;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->f:Ljava/util/ArrayList;

    iget-object v2, p1, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    iget-object v2, p1, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_backup_activity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lccc71/pmw/lib/pmw_backup_activity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_1

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_backup_activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    return-void

    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_backup_activity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v1, Lccc71/pmw/a/b;->b:Lccc71/pmw/a/b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    sget v1, Lccc71/pmw/lib/g;->fH:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    sget v1, Lccc71/pmw/lib/g;->fF:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_backup_activity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 168
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    sget v3, Lccc71/pmw/lib/g;->fF:I

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    sget v3, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {p0, v3}, Lccc71/pmw/lib/pmw_backup_activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    sget v3, Lccc71/pmw/lib/c;->e:I

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    add-int v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lccc71/pmw/lib/ct;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ct;-><init>(Lccc71/pmw/lib/pmw_backup_activity;)V

    new-instance v3, Lccc71/pmw/lib/cu;

    invoke-direct {v3, p0, v1, v0, v2}, Lccc71/pmw/lib/cu;-><init>(Lccc71/pmw/lib/pmw_backup_activity;ILandroid/os/Handler;I)V

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_backup_activity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_backup_activity;->requestWindowFeature(I)Z

    .line 48
    sget v0, Lccc71/pmw/lib/e;->be:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backup_activity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;)Lccc71/pmw/b/f;

    move-result-object v0

    iget-boolean v0, v0, Lccc71/pmw/b/f;->d:Z

    if-eqz v0, :cond_0

    .line 50
    sget v0, Lccc71/pmw/lib/d;->bA:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_backup_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    iput-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->i:Lccc71/pmw/b/m;

    .line 102
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iput-object v1, p0, Lccc71/pmw/lib/pmw_backup_activity;->h:Landroid/app/ProgressDialog;

    .line 109
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 111
    const-string v0, "process_monitor_widget"

    const-string v1, "bmw_backup_activity - onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    const-string v0, "process_monitor_widget"

    const-string v1, "bmw_backup_activity - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->d:Lccc71/pmw/b/f;

    if-nez v0, :cond_0

    .line 61
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;)Lccc71/pmw/b/f;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_backup_activity;->d:Lccc71/pmw/b/f;

    .line 65
    invoke-static {}, Lccc71/pmw/a/d;->a()Z

    .line 67
    new-instance v0, Lccc71/pmw/lib/cs;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/cs;-><init>(Lccc71/pmw/lib/pmw_backup_activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/cs;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 94
    :cond_0
    return-void
.end method
