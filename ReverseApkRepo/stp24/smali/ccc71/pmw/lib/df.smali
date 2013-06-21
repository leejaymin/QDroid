.class final Lccc71/pmw/lib/df;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:[Ljava/lang/String;

.field b:[Ljava/lang/String;

.field final synthetic c:Lccc71/pmw/lib/pmw_backuplist;

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic g:Ljava/util/ArrayList;

.field private final synthetic h:Lccc71/pmw/b/u;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;Ljava/util/ArrayList;Ljava/util/ArrayList;Lccc71/pmw/b/u;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    iput-object p2, p0, Lccc71/pmw/lib/df;->d:Ljava/util/ArrayList;

    iput-object p3, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    iput-object p4, p0, Lccc71/pmw/lib/df;->h:Lccc71/pmw/b/u;

    .line 602
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    .line 605
    invoke-static {p1}, Lccc71/pmw/lib/pmw_backuplist;->m(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/df;->b:[Ljava/lang/String;

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 13

    .prologue
    .line 610
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->c(Lccc71/pmw/lib/pmw_backuplist;)Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_backuplist;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Landroid/content/pm/PackageManager;)V

    .line 612
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    new-instance v7, Lccc71/pmw/b/m;

    iget-object v1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v2, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->c(Lccc71/pmw/lib/pmw_backuplist;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lccc71/pmw/b/m;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v7}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Lccc71/pmw/b/m;)V

    .line 614
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->b(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/df;->a:[Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->s(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/df;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/df;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 617
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/lib/df;->c()Z

    .line 619
    const/4 v0, 0x0

    .line 831
    :goto_0
    return-object v0

    .line 622
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/df;->a:[Ljava/lang/String;

    array-length v8, v0

    .line 623
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-lt v6, v8, :cond_3

    .line 746
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/df;->d([Ljava/lang/Object;)V

    .line 748
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    sget v1, Lccc71/pmw/lib/g;->eo:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 749
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    sget v1, Lccc71/pmw/lib/g;->eq:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 753
    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 754
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-lt v5, v6, :cond_16

    .line 799
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/df;->d([Ljava/lang/Object;)V

    .line 803
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-lt v1, v6, :cond_20

    .line 821
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/df;->d([Ljava/lang/Object;)V

    .line 825
    iget-object v0, p0, Lccc71/pmw/lib/df;->h:Lccc71/pmw/b/u;

    iget-object v1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v2, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccc71/pmw/b/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 829
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/df;->d([Ljava/lang/Object;)V

    .line 831
    const/4 v0, 0x0

    goto :goto_0

    .line 625
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->s(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 627
    invoke-virtual {p0}, Lccc71/pmw/lib/df;->c()Z

    .line 629
    const/4 v0, 0x0

    goto :goto_0

    .line 632
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/df;->a:[Ljava/lang/String;

    aget-object v4, v0, v6

    .line 633
    const-string v0, ".nomedia"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 635
    iget-object v0, p0, Lccc71/pmw/lib/df;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 623
    :cond_5
    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 639
    :cond_6
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 641
    iget-object v0, p0, Lccc71/pmw/lib/df;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 642
    invoke-static {v4}, Lccc71/pmw/b/m;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 646
    :cond_7
    invoke-static {v4}, Lccc71/pmw/b/m;->a(Ljava/lang/String;)Lccc71/pmw/b/e;

    move-result-object v1

    .line 648
    const/4 v3, 0x0

    .line 649
    const/4 v2, 0x0

    .line 651
    if-eqz v1, :cond_8

    .line 653
    iget-object v3, v1, Lccc71/pmw/b/e;->a:Ljava/lang/String;

    .line 654
    iget-object v2, v1, Lccc71/pmw/b/e;->c:Ljava/lang/String;

    .line 657
    :cond_8
    if-nez v3, :cond_9

    .line 659
    invoke-static {v4}, Lccc71/pmw/b/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    :cond_9
    const/4 v0, 0x0

    .line 663
    if-eqz v3, :cond_a

    if-nez v2, :cond_26

    .line 667
    :cond_a
    :try_start_0
    iget-object v3, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_backuplist;->c(Lccc71/pmw/lib/pmw_backuplist;)Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ".apk"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 673
    :goto_5
    if-eqz v5, :cond_b

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_c

    .line 676
    :cond_b
    iget-object v0, p0, Lccc71/pmw/lib/df;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 677
    invoke-static {v4}, Lccc71/pmw/b/m;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_0
    move-exception v3

    move-object v5, v0

    goto :goto_5

    .line 681
    :cond_c
    const/16 v0, 0x8

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 683
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ".apk"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 684
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ".apk"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 687
    :cond_d
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->c(Lccc71/pmw/lib/pmw_backuplist;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 691
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v11}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/info.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x80

    invoke-direct {v9, v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 692
    if-nez v0, :cond_10

    .line 693
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 696
    :goto_6
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 697
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v0

    move-object v0, v3

    .line 703
    :goto_7
    if-nez v0, :cond_25

    move-object v3, v4

    .line 708
    :goto_8
    if-nez v1, :cond_24

    .line 709
    new-instance v0, Lccc71/pmw/b/e;

    invoke-direct {v0}, Lccc71/pmw/b/e;-><init>()V

    .line 710
    :goto_9
    iput-object v3, v0, Lccc71/pmw/b/e;->a:Ljava/lang/String;

    .line 711
    iput-object v2, v0, Lccc71/pmw/b/e;->c:Ljava/lang/String;

    .line 713
    iget-object v1, p0, Lccc71/pmw/lib/df;->b:[Ljava/lang/String;

    aput-object v2, v1, v6

    .line 715
    new-instance v9, Lccc71/pmw/lib/dy;

    iget-object v1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lccc71/pmw/lib/dy;-><init>(Lccc71/pmw/lib/pmw_backuplist;B)V

    .line 717
    iput-object v4, v9, Lccc71/pmw/lib/dy;->c:Ljava/lang/String;

    .line 718
    iput-object v3, v9, Lccc71/pmw/lib/dy;->d:Ljava/lang/String;

    .line 719
    iput-object v5, v9, Lccc71/pmw/lib/dy;->a:Landroid/content/pm/PackageInfo;

    .line 720
    iput-object v0, v9, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    .line 721
    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v9, Lccc71/pmw/lib/dy;->n:I

    .line 722
    if-nez v2, :cond_11

    sget-object v0, Lccc71/pmw/a/d;->e:Ljava/lang/String;

    :goto_a
    iput-object v0, v9, Lccc71/pmw/lib/dy;->e:Ljava/lang/String;

    .line 723
    iget-object v0, v9, Lccc71/pmw/lib/dy;->e:Ljava/lang/String;

    sget-object v1, Lccc71/pmw/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v9, Lccc71/pmw/lib/dy;->e:Ljava/lang/String;

    sget-object v1, Lccc71/pmw/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, v9, Lccc71/pmw/lib/dy;->f:Z

    .line 724
    iget-object v0, v9, Lccc71/pmw/lib/dy;->e:Ljava/lang/String;

    sget-object v1, Lccc71/pmw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v9, Lccc71/pmw/lib/dy;->g:Z

    .line 725
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->k(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/lib/dz;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/dz;->c:Lccc71/pmw/lib/dz;

    if-ne v0, v1, :cond_e

    iget-boolean v0, v9, Lccc71/pmw/lib/dy;->f:Z

    if-eqz v0, :cond_13

    :cond_e
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->k(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/lib/dz;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/dz;->b:Lccc71/pmw/lib/dz;

    if-ne v0, v1, :cond_f

    iget-boolean v0, v9, Lccc71/pmw/lib/dy;->f:Z

    if-nez v0, :cond_13

    :cond_f
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, v9, Lccc71/pmw/lib/dy;->h:Z

    .line 727
    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 728
    const/4 v1, 0x0

    .line 729
    const/4 v0, 0x0

    move v2, v0

    :goto_d
    if-lt v2, v4, :cond_14

    move v0, v1

    .line 738
    :goto_e
    if-nez v0, :cond_5

    .line 740
    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 695
    :cond_10
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v0

    goto/16 :goto_6

    :catch_1
    move-exception v3

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    :goto_f
    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    goto/16 :goto_7

    :cond_11
    move-object v0, v2

    .line 722
    goto :goto_a

    .line 723
    :cond_12
    const/4 v0, 0x1

    goto :goto_b

    .line 725
    :cond_13
    const/4 v0, 0x1

    goto :goto_c

    .line 731
    :cond_14
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->k()Ljava/text/Collator;

    move-result-object v5

    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/dy;

    iget-object v0, v0, Lccc71/pmw/lib/dy;->d:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    .line 733
    const/4 v0, 0x1

    .line 734
    iget-object v1, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_e

    .line 729
    :cond_15
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 756
    :cond_16
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->s(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_backuplist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 758
    :cond_17
    invoke-virtual {p0}, Lccc71/pmw/lib/df;->c()Z

    .line 759
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 762
    :cond_18
    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/dy;

    .line 763
    iget-object v8, v0, Lccc71/pmw/lib/dy;->c:Ljava/lang/String;

    .line 765
    iget-object v1, v0, Lccc71/pmw/lib/dy;->a:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lccc71/pmw/lib/dy;->a:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lccc71/pmw/lib/dy;->a:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_10
    iput-object v1, v0, Lccc71/pmw/lib/dy;->j:Ljava/lang/String;

    .line 766
    iget-object v1, v0, Lccc71/pmw/lib/dy;->a:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lccc71/pmw/lib/dy;->a:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    move v4, v1

    .line 768
    :goto_11
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    if-eqz v1, :cond_1a

    .line 770
    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    iget-object v1, v1, Lccc71/pmw/b/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    iget-object v1, v1, Lccc71/pmw/b/e;->b:Ljava/lang/String;

    iget-object v9, v0, Lccc71/pmw/lib/dy;->j:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    iget v1, v1, Lccc71/pmw/b/e;->d:I

    if-eq v1, v4, :cond_1a

    .line 772
    :cond_19
    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    iget-object v9, v0, Lccc71/pmw/lib/dy;->j:Ljava/lang/String;

    iput-object v9, v1, Lccc71/pmw/b/e;->b:Ljava/lang/String;

    .line 773
    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    iput v4, v1, Lccc71/pmw/b/e;->d:I

    .line 775
    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    invoke-static {v8, v1}, Lccc71/pmw/b/m;->a(Ljava/lang/String;Lccc71/pmw/b/e;)V

    .line 783
    :cond_1a
    :try_start_5
    iget-object v1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->c(Lccc71/pmw/lib/pmw_backuplist;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 784
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 785
    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 787
    if-eqz v1, :cond_1f

    :goto_12
    iput-object v1, v0, Lccc71/pmw/lib/dy;->i:Ljava/lang/String;

    .line 788
    sub-int v1, v4, v8

    iput v1, v0, Lccc71/pmw/lib/dy;->k:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 754
    :goto_13
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    :cond_1b
    move-object v1, v2

    .line 765
    goto :goto_10

    :cond_1c
    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    iget-object v1, v1, Lccc71/pmw/b/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    iget-object v1, v1, Lccc71/pmw/b/e;->b:Ljava/lang/String;

    goto :goto_10

    :cond_1d
    move-object v1, v3

    goto :goto_10

    .line 766
    :cond_1e
    iget-object v1, v0, Lccc71/pmw/lib/dy;->b:Lccc71/pmw/b/e;

    iget v1, v1, Lccc71/pmw/b/e;->d:I

    move v4, v1

    goto :goto_11

    :cond_1f
    move-object v1, v2

    .line 787
    goto :goto_12

    .line 792
    :catch_2
    move-exception v1

    iput-object v2, v0, Lccc71/pmw/lib/dy;->i:Ljava/lang/String;

    .line 793
    const/4 v1, 0x1

    iput v1, v0, Lccc71/pmw/lib/dy;->k:I

    goto :goto_13

    .line 805
    :cond_20
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->s(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_backuplist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 807
    :cond_21
    invoke-virtual {p0}, Lccc71/pmw/lib/df;->c()Z

    .line 808
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 811
    :cond_22
    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/dy;

    .line 813
    iget-object v2, v0, Lccc71/pmw/lib/dy;->a:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_23

    .line 814
    iget-object v2, v0, Lccc71/pmw/lib/dy;->a:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v2}, Lccc71/pmw/b/m;->b(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lccc71/pmw/lib/dy;->l:Landroid/graphics/drawable/Drawable;

    .line 803
    :goto_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 816
    :cond_23
    iget-object v2, v0, Lccc71/pmw/lib/dy;->c:Ljava/lang/String;

    invoke-static {v2}, Lccc71/pmw/b/m;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lccc71/pmw/lib/dy;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_14

    :catch_3
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_f

    :catch_4
    move-exception v2

    move-object v2, v3

    goto/16 :goto_f

    :cond_24
    move-object v0, v1

    goto/16 :goto_9

    :cond_25
    move-object v3, v0

    goto/16 :goto_8

    :cond_26
    move-object v5, v0

    move-object v0, v3

    goto/16 :goto_7
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/df;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->x(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->y(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    sget v1, Lccc71/pmw/lib/d;->iw:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->y(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v3, 0x0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_backuplist;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->s(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    sget v1, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iget-object v1, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lccc71/pmw/lib/df;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_5

    move v5, v3

    :goto_2
    if-lt v5, v6, :cond_7

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    move v5, v3

    :goto_3
    if-ge v5, v6, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/lib/dy;

    iget-object v2, v1, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v2, v1, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    :goto_4
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lccc71/pmw/lib/dy;->d:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lccc71/pmw/lib/dy;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lccc71/pmw/lib/dy;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-boolean v3, v1, Lccc71/pmw/lib/dy;->f:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_backuplist;->v(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_5
    iget-boolean v2, v1, Lccc71/pmw/lib/dy;->h:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lccc71/pmw/lib/df;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_6

    if-ge v1, v7, :cond_6

    iget-object v1, p0, Lccc71/pmw/lib/df;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->removeViewAt(I)V

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lccc71/pmw/lib/dy;

    iget v1, v2, Lccc71/pmw/lib/dy;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-class v7, Landroid/widget/TableRow;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    check-cast v1, Landroid/widget/TableRow;

    :goto_6
    iput-object v1, v2, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_2

    :cond_8
    move-object v1, v4

    goto :goto_6

    :cond_9
    move-object v2, v4

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_backuplist;->w(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v2, v1, Lccc71/pmw/lib/dy;->g:Z

    goto :goto_5

    :pswitch_1
    iget-object v1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    sget v2, Lccc71/pmw/lib/g;->dA:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    sget v2, Lccc71/pmw/lib/g;->cX:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v3

    :goto_7
    if-lt v2, v6, :cond_c

    :goto_8
    if-ge v3, v6, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/lib/dy;

    iget-object v2, v1, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    if-eqz v2, :cond_b

    iget-object v2, v1, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    shr-int/lit8 v4, v2, 0x1

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_b

    iget-object v1, v1, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    iget-object v4, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_backuplist;->o(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->o(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    iget-object v1, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/lib/dy;

    iget-object v7, v1, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    if-eqz v7, :cond_d

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v9, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_backuplist;->r(Lccc71/pmw/lib/pmw_backuplist;)F

    move-result v9

    const/high16 v10, 0x4000

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lccc71/pmw/lib/dy;->i:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lccc71/pmw/lib/dy;->j:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v9, v1, Lccc71/pmw/lib/dy;->k:I

    if-nez v9, :cond_e

    const v9, -0xff0100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9
    iget-object v9, p0, Lccc71/pmw/lib/df;->c:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_backuplist;->t(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v1, Lccc71/pmw/lib/dy;->k:I

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v7}, Landroid/widget/TableRow;->getVisibility()I

    move-result v1

    if-ne v1, v12, :cond_d

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_7

    :cond_e
    iget v9, v1, Lccc71/pmw/lib/dy;->k:I

    if-gez v9, :cond_f

    const/high16 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_f
    const/16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/dy;

    iget-object v1, v0, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lccc71/pmw/lib/dy;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    iget-object v0, v0, Lccc71/pmw/lib/dy;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    :goto_a
    add-int/lit8 v3, v3, 0x1

    :pswitch_2
    if-lt v3, v6, :cond_10

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :pswitch_3
    iget-object v0, p0, Lccc71/pmw/lib/df;->h:Lccc71/pmw/b/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/df;->h:Lccc71/pmw/b/u;

    iget-object v0, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/df;->h:Lccc71/pmw/b/u;

    iget-object v0, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    array-length v5, v0

    move v1, v3

    :goto_b
    if-ge v1, v6, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/df;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/dy;

    iget-object v7, v0, Lccc71/pmw/lib/dy;->m:Landroid/widget/TableRow;

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/widget/TableRow;->getId()I

    move-result v0

    iget-object v2, p0, Lccc71/pmw/lib/df;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    iget-object v2, p0, Lccc71/pmw/lib/df;->a:[Ljava/lang/String;

    aget-object v8, v2, v0

    move v2, v3

    :goto_c
    if-lt v2, v5, :cond_14

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lccc71/pmw/lib/df;->h:Lccc71/pmw/b/u;

    iget-object v0, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lccc71/pmw/lib/df;->h:Lccc71/pmw/b/u;

    iget-object v0, v0, Lccc71/pmw/b/u;->e:[Ljava/lang/Long;

    array-length v0, v0

    if-ge v2, v0, :cond_15

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->i()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-class v9, Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    check-cast v0, Landroid/widget/TextView;

    :goto_d
    if-eqz v0, :cond_15

    iget-object v9, p0, Lccc71/pmw/lib/df;->h:Lccc71/pmw/b/u;

    iget-object v9, v9, Lccc71/pmw/b/u;->e:[Ljava/lang/Long;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    long-to-int v9, v9

    invoke-static {v9}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setId(I)V

    :cond_15
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_16
    move-object v0, v4

    goto :goto_d

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
