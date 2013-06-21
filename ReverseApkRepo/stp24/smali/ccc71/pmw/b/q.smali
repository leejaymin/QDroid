.class public final Lccc71/pmw/b/q;
.super Lccc71/utils/af;
.source "SourceFile"


# static fields
.field private static f:Landroid/content/pm/PackageManager;

.field private static g:Ljava/util/ArrayList;

.field private static h:Ljava/util/ArrayList;

.field private static i:Ljava/util/regex/Pattern;


# instance fields
.field public a:I

.field public b:I

.field private d:Landroid/content/Context;

.field private e:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lccc71/pmw/b/q;->f:Landroid/content/pm/PackageManager;

    .line 40
    sput-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    .line 41
    sput-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    .line 43
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/q;->i:Ljava/util/regex/Pattern;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Lccc71/pmw/b/o;

    invoke-direct {v0}, Lccc71/pmw/b/o;-><init>()V

    invoke-direct {p0, v0}, Lccc71/utils/af;-><init>(Ljava/util/Comparator;)V

    .line 35
    iput-object v1, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    .line 36
    iput-object v1, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    .line 53
    iput-object p1, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    .line 54
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aK(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    .line 57
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loaded known app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    sget-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aJ(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    .line 62
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loaded excluded app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lccc71/pmw/b/p;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 863
    new-instance v0, Lccc71/pmw/b/p;

    invoke-direct {v0}, Lccc71/pmw/b/p;-><init>()V

    .line 865
    iput-object p1, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 866
    invoke-static {p0, v0}, Lccc71/pmw/b/q;->a(Landroid/content/Context;Lccc71/pmw/b/p;)V

    .line 868
    return-object v0
.end method

.method private a(Lccc71/pmw/b/p;ZZ)Lccc71/pmw/b/p;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x17

    .line 592
    iget v0, p1, Lccc71/pmw/b/p;->a:I

    invoke-virtual {p0, v0}, Lccc71/pmw/b/q;->b(I)Lccc71/pmw/b/p;

    move-result-object v0

    .line 593
    iget-boolean v1, p1, Lccc71/pmw/b/p;->i:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 595
    iget-object v1, p1, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    iput-object v1, v0, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object p1, v0

    .line 663
    :cond_0
    :goto_0
    return-object p1

    .line 601
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 602
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 605
    const/16 v1, 0x20

    invoke-static {v2, v1}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 606
    iget-object v2, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 608
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 610
    :cond_2
    array-length v2, v1

    if-lt v2, v5, :cond_0

    .line 612
    const/16 v2, 0xd

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v4, 0xe

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    sget v4, Lccc71/pmw/b/z;->a:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iput-wide v2, p1, Lccc71/pmw/b/p;->o:J

    .line 614
    if-eqz p2, :cond_3

    .line 616
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    iget v4, p1, Lccc71/pmw/b/p;->a:I

    invoke-virtual {v2, v3, v4}, Lccc71/utils/android/y;->a(Landroid/content/Context;I)I

    move-result v2

    .line 617
    if-eqz v2, :cond_3

    .line 618
    iput v2, p1, Lccc71/pmw/b/p;->q:I

    .line 627
    :goto_1
    if-eqz v0, :cond_4

    .line 629
    iget-wide v1, p1, Lccc71/pmw/b/p;->o:J

    iget-wide v3, v0, Lccc71/pmw/b/p;->o:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lccc71/pmw/b/p;->p:J

    .line 630
    iget-wide v1, p1, Lccc71/pmw/b/p;->o:J

    iput-wide v1, v0, Lccc71/pmw/b/p;->o:J

    .line 632
    iget v1, p1, Lccc71/pmw/b/p;->q:I

    iput v1, v0, Lccc71/pmw/b/p;->q:I

    .line 633
    iget-object v1, p1, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    iput-object v1, v0, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object p1, v0

    .line 635
    goto/16 :goto_0

    .line 624
    :cond_3
    const/16 v2, 0x17

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iput v2, p1, Lccc71/pmw/b/p;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 655
    :catch_0
    move-exception v0

    .line 657
    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 658
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") information:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 639
    :cond_4
    :try_start_1
    iget-boolean v0, p1, Lccc71/pmw/b/p;->i:Z

    if-eqz v0, :cond_5

    .line 640
    iget-object v0, p1, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v0, p1, Lccc71/pmw/b/p;->n:J

    .line 644
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lccc71/pmw/b/p;->p:J

    .line 645
    iget-object v0, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    iput-object v0, p1, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    .line 646
    invoke-virtual {p0, p1}, Lccc71/pmw/b/q;->add(Ljava/lang/Object;)Z

    .line 648
    if-eqz p3, :cond_0

    .line 650
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lccc71/pmw/b/q;->a(Landroid/content/Context;Lccc71/pmw/b/p;)V

    goto/16 :goto_0

    .line 642
    :cond_5
    const/16 v0, 0x15

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget v2, Lccc71/pmw/b/z;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lccc71/pmw/b/p;->n:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 660
    :cond_6
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get process <unknown> ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") information:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aK(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    .line 69
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aJ(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;Lccc71/pmw/b/p;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 885
    sget-object v2, Lccc71/pmw/b/q;->f:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    .line 886
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sput-object v2, Lccc71/pmw/b/q;->f:Landroid/content/pm/PackageManager;

    .line 888
    :cond_0
    iget-object v2, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v2}, Lccc71/pmw/b/q;->f(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 889
    const-string v2, ""

    .line 890
    if-nez v3, :cond_4

    .line 892
    iget-object v4, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 893
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 895
    iget-object v2, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 896
    iget-object v3, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    .line 897
    iget-object v3, p1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    invoke-static {v3}, Lccc71/pmw/b/q;->f(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 900
    :cond_1
    if-nez v3, :cond_2

    iget-object v4, p1, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 902
    iget-object v3, p1, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    iget-object v4, p1, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    .line 903
    invoke-static {v4}, Lccc71/pmw/b/q;->f(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 905
    iput-object v4, p1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    .line 911
    :cond_2
    :goto_0
    if-eqz v3, :cond_6

    .line 913
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_5

    :goto_1
    iput-boolean v0, p1, Lccc71/pmw/b/p;->h:Z

    .line 915
    iget-object v0, p1, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lccc71/pmw/b/q;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    .line 918
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p1, Lccc71/pmw/b/p;->f:Ljava/lang/String;

    .line 920
    sget-object v0, Lccc71/pmw/b/q;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    .line 929
    :cond_3
    :goto_2
    return-void

    .line 909
    :cond_4
    iget-object v4, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    iput-object v4, p1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move v0, v1

    .line 913
    goto :goto_1

    .line 925
    :cond_6
    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    iput-object v1, p1, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    .line 926
    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    iput-object v1, p1, Lccc71/pmw/b/p;->f:Ljava/lang/String;

    .line 927
    iput-boolean v0, p1, Lccc71/pmw/b/p;->g:Z

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 825
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const/4 v0, 0x1

    .line 827
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 846
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const/4 v0, 0x1

    .line 851
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 856
    sget-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    const/4 v0, 0x1

    .line 858
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lccc71/pmw/b/p;
    .locals 3
    .parameter

    .prologue
    .line 112
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    new-instance v0, Lccc71/pmw/b/p;

    invoke-direct {v0}, Lccc71/pmw/b/p;-><init>()V

    :goto_0
    return-object v0

    .line 116
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 117
    iget-object v2, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static f(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .parameter

    .prologue
    .line 875
    :try_start_0
    sget-object v0, Lccc71/pmw/b/q;->f:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 879
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Lccc71/pmw/b/p;)Z
    .locals 1
    .parameter

    .prologue
    .line 815
    iget-boolean v0, p0, Lccc71/pmw/b/p;->g:Z

    return v0
.end method

.method public static g(Lccc71/pmw/b/p;)Z
    .locals 1
    .parameter

    .prologue
    .line 820
    iget-boolean v0, p0, Lccc71/pmw/b/p;->h:Z

    return v0
.end method

.method private static h(Lccc71/pmw/b/p;)V
    .locals 4
    .parameter

    .prologue
    .line 710
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/oom_adj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 711
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 714
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/b/p;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lccc71/pmw/b/q;->b:I

    if-eqz v0, :cond_0

    .line 161
    iget v0, p0, Lccc71/pmw/b/q;->a:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lccc71/pmw/b/q;->b:I

    div-int/2addr v0, v1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lccc71/pmw/b/p;
    .locals 1
    .parameter

    .prologue
    .line 127
    sget-object v0, Lccc71/pmw/b/q;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccc71/pmw/b/q;->b(I)Lccc71/pmw/b/p;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lccc71/pmw/b/q;->e(Ljava/lang/String;)Lccc71/pmw/b/p;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lccc71/pmw/b/q;->e()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/o;

    iget v0, v0, Lccc71/pmw/b/o;->c:I

    if-eq v0, p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lccc71/pmw/b/q;->e()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/o;

    iput p1, v0, Lccc71/pmw/b/o;->c:I

    .line 79
    :cond_0
    invoke-super {p0}, Lccc71/utils/af;->f()V

    .line 80
    return-void
.end method

.method public final a(ILccc71/pmw/b/z;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lccc71/pmw/b/q;->e()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/o;

    iget v0, v0, Lccc71/pmw/b/o;->c:I

    if-eq v0, p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lccc71/pmw/b/q;->e()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/o;

    iput p1, v0, Lccc71/pmw/b/o;->c:I

    .line 89
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/b/q;->e()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/o;

    iput-object p2, v0, Lccc71/pmw/b/o;->a:Lccc71/pmw/b/z;

    .line 90
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lccc71/pmw/b/q;->e()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/o;

    invoke-virtual {p2}, Lccc71/pmw/b/z;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lccc71/pmw/b/o;->b:J

    .line 92
    :cond_1
    invoke-super {p0}, Lccc71/utils/af;->f()V

    .line 93
    return-void
.end method

.method public final a(ZZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 273
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    invoke-virtual {p0}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 289
    if-eqz v2, :cond_1

    array-length v0, v2

    if-eqz v0, :cond_1

    .line 291
    array-length v3, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 292
    :goto_1
    if-lt v0, v3, :cond_3

    .line 337
    :cond_1
    :goto_2
    return-void

    .line 277
    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 278
    iget-object v0, v0, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-static {v0}, Lccc71/pmw/b/q;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 294
    :cond_3
    aget-object v1, v2, v0

    .line 296
    sget-object v4, Lccc71/pmw/b/q;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 297
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 299
    new-instance v4, Lccc71/pmw/b/p;

    invoke-direct {v4}, Lccc71/pmw/b/p;-><init>()V

    .line 300
    iput-object v1, v4, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lccc71/pmw/b/p;->a:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 305
    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/proc/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/cmdline"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-direct {v5, v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 306
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 309
    if-eqz v1, :cond_5

    .line 311
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 312
    iget-object v1, v4, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 314
    const/4 v1, 0x0

    iput-object v1, v4, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 323
    :cond_4
    :goto_3
    invoke-direct {p0, v4, p1, p2}, Lccc71/pmw/b/q;->a(Lccc71/pmw/b/p;ZZ)Lccc71/pmw/b/p;

    .line 292
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    :cond_6
    iget-object v1, v4, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 319
    const/4 v5, -0x1

    if-eq v1, v5, :cond_4

    .line 320
    iget-object v5, v4, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lccc71/pmw/b/p;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method public final declared-synchronized a(ZZZ)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x17

    const/4 v1, 0x0

    .line 341
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 343
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    .line 346
    :cond_0
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 347
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 349
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    invoke-virtual {p0}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 349
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v2, v1

    .line 364
    :goto_1
    if-lt v2, v6, :cond_5

    .line 383
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 384
    :goto_2
    if-lt v2, v4, :cond_7

    .line 400
    if-eqz p3, :cond_2

    .line 404
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 406
    if-eqz v2, :cond_2

    array-length v0, v2

    if-eqz v0, :cond_2

    .line 408
    array-length v4, v2

    .line 409
    :goto_3
    if-lt v1, v4, :cond_9

    .line 465
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 466
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Found "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccc71/pmw/b/q;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " processes in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v3, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " milliseconds!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 467
    monitor-exit p0

    return-void

    .line 353
    :cond_3
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 354
    iget-object v6, v0, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-static {v6}, Lccc71/pmw/b/q;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v0, v0, Lccc71/pmw/b/p;->g:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 356
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 341
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 366
    :cond_5
    :try_start_5
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 367
    if-eqz v0, :cond_6

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eqz v7, :cond_6

    .line 369
    new-instance v7, Lccc71/pmw/b/p;

    invoke-direct {v7}, Lccc71/pmw/b/p;-><init>()V

    .line 370
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v8, v7, Lccc71/pmw/b/p;->a:I

    .line 371
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    .line 372
    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v8, v7, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 373
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v8, v7, Lccc71/pmw/b/p;->j:I

    .line 374
    const/4 v8, 0x0

    iput-boolean v8, v7, Lccc71/pmw/b/p;->i:Z

    .line 375
    iput-object v0, v7, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 377
    invoke-direct {p0, v7, p1, p2}, Lccc71/pmw/b/q;->a(Lccc71/pmw/b/p;ZZ)Lccc71/pmw/b/p;

    .line 364
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 386
    :cond_7
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 387
    if-eqz v0, :cond_8

    iget v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eqz v6, :cond_8

    .line 389
    new-instance v6, Lccc71/pmw/b/p;

    invoke-direct {v6}, Lccc71/pmw/b/p;-><init>()V

    .line 390
    iget v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iput v7, v6, Lccc71/pmw/b/p;->a:I

    .line 391
    iget v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    .line 392
    iget-object v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v7, v6, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 393
    const/4 v7, 0x1

    iput-boolean v7, v6, Lccc71/pmw/b/p;->i:Z

    .line 394
    iput-object v0, v6, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 396
    invoke-direct {p0, v6, p1, p2}, Lccc71/pmw/b/q;->a(Lccc71/pmw/b/p;ZZ)Lccc71/pmw/b/p;

    .line 384
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 411
    :cond_9
    aget-object v0, v2, v1

    .line 412
    sget-object v5, Lccc71/pmw/b/q;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 413
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 417
    new-instance v6, Lccc71/pmw/b/p;

    invoke-direct {v6}, Lccc71/pmw/b/p;-><init>()V

    .line 418
    iput-object v0, v6, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    .line 419
    iput v5, v6, Lccc71/pmw/b/p;->a:I

    .line 420
    const/4 v7, 0x1

    iput-boolean v7, v6, Lccc71/pmw/b/p;->g:Z

    .line 422
    invoke-virtual {p0, v5}, Lccc71/pmw/b/q;->b(I)Lccc71/pmw/b/p;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    .line 423
    if-nez v5, :cond_d

    .line 427
    :try_start_6
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/proc/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/cmdline"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v5, 0x64

    invoke-direct {v0, v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 431
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 432
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 433
    if-eqz v5, :cond_b

    .line 435
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 436
    iget-object v0, v6, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 438
    const/4 v0, 0x0

    iput-object v0, v6, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 447
    :cond_a
    :goto_4
    invoke-direct {p0, v6, p1, p2}, Lccc71/pmw/b/q;->a(Lccc71/pmw/b/p;ZZ)Lccc71/pmw/b/p;

    .line 409
    :cond_b
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 442
    :cond_c
    iget-object v0, v6, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 443
    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    .line 444
    iget-object v5, v6, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lccc71/pmw/b/p;->c:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 451
    :catch_0
    move-exception v0

    .line 453
    :try_start_7
    const-string v5, "process_monitor_widget"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error loading kernel process pid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 456
    :cond_d
    iget-boolean v0, v5, Lccc71/pmw/b/p;->g:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_b

    .line 458
    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/proc/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/stat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x64

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/16 v0, 0x20

    invoke-static {v6, v0}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    if-lt v6, v11, :cond_b

    const/16 v6, 0xd

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v8, 0xe

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    sget v8, Lccc71/pmw/b/z;->a:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    if-eqz p1, :cond_e

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v8

    iget-object v9, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    iget v10, v5, Lccc71/pmw/b/p;->a:I

    invoke-virtual {v8, v9, v10}, Lccc71/utils/android/y;->a(Landroid/content/Context;I)I

    move-result v8

    if-eqz v8, :cond_e

    iput v8, v5, Lccc71/pmw/b/p;->q:I

    :goto_6
    iget-wide v8, v5, Lccc71/pmw/b/p;->o:J

    sub-long v8, v6, v8

    iput-wide v8, v5, Lccc71/pmw/b/p;->p:J

    iput-wide v6, v5, Lccc71/pmw/b/p;->o:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :try_start_9
    iget-object v6, v5, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    if-eqz v6, :cond_f

    const-string v6, "process_monitor_widget"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to get kernel process "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") information:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_5

    :cond_e
    const/16 v8, 0x17

    :try_start_a
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, v5, Lccc71/pmw/b/p;->q:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_6

    :cond_f
    :try_start_b
    const-string v6, "process_monitor_widget"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to get kernel process <unknown> ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") information:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_5
.end method

.method public final a(Lccc71/pmw/b/p;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 471
    if-eqz p1, :cond_3

    .line 473
    iget-boolean v0, p1, Lccc71/pmw/b/p;->g:Z

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "kill -9 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying to kill kernel process "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v2, Lccc71/pmw/b/r;

    invoke-direct {v2, p0, v0}, Lccc71/pmw/b/r;-><init>(Lccc71/pmw/b/q;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 490
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    move v0, v1

    .line 548
    :goto_1
    return v0

    .line 494
    :cond_0
    iget-object v0, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 495
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 496
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 497
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 499
    :goto_2
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    .line 502
    :cond_1
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    invoke-static {v0}, Lccc71/utils/android/o;->a(Landroid/app/ActivityManager;)Lccc71/utils/android/o;

    move-result-object v0

    .line 504
    invoke-virtual {v0, v1}, Lccc71/utils/android/o;->a(Ljava/lang/String;)Z

    move-result v0

    .line 505
    if-eqz v0, :cond_2

    .line 507
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Killed process "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    monitor-enter p0

    .line 511
    :try_start_0
    invoke-virtual {p0, p1}, Lccc71/pmw/b/q;->remove(Ljava/lang/Object;)Z

    .line 509
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :goto_3
    new-instance v1, Lccc71/pmw/b/s;

    invoke-direct {v1, p0, v0, p1}, Lccc71/pmw/b/s;-><init>(Lccc71/pmw/b/q;ZLccc71/pmw/b/p;)V

    .line 538
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 539
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 516
    :cond_2
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t kill process "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 546
    :cond_3
    const-string v0, "process_monitor_widget"

    const-string v2, "Couldn\'t kill unknown process "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto/16 :goto_2
.end method

.method public final b(I)Lccc71/pmw/b/p;
    .locals 3
    .parameter

    .prologue
    .line 97
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    monitor-exit p0

    .line 107
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 101
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 102
    iget v2, v0, Lccc71/pmw/b/p;->a:I

    if-ne v2, p1, :cond_0

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lccc71/pmw/b/p;)Lccc71/pmw/b/p;
    .locals 6
    .parameter

    .prologue
    .line 668
    if-eqz p1, :cond_2

    .line 672
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 673
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 676
    const/16 v0, 0x20

    invoke-static {v1, v0}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 678
    array-length v1, v0

    const/16 v2, 0x16

    if-le v1, v2, :cond_0

    .line 680
    const/16 v1, 0xd

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/16 v3, 0xe

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    sget v3, Lccc71/pmw/b/z;->a:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    .line 682
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v3

    iget-object v4, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    iget v5, p1, Lccc71/pmw/b/p;->a:I

    invoke-virtual {v3, v4, v5}, Lccc71/utils/android/y;->a(Landroid/content/Context;I)I

    move-result v3

    .line 683
    if-eqz v3, :cond_1

    .line 684
    iput v3, p1, Lccc71/pmw/b/p;->q:I

    .line 688
    :goto_0
    iget-wide v3, p1, Lccc71/pmw/b/p;->o:J

    sub-long v3, v1, v3

    iput-wide v3, p1, Lccc71/pmw/b/p;->p:J

    .line 689
    iput-wide v1, p1, Lccc71/pmw/b/p;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :cond_0
    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/statm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/16 v0, 0x20

    invoke-static {v1, v0}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p1, Lccc71/pmw/b/p;->r:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p1, Lccc71/pmw/b/p;->s:I

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p1, Lccc71/pmw/b/p;->t:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p1, Lccc71/pmw/b/p;->u:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 698
    :goto_2
    invoke-static {p1}, Lccc71/pmw/b/q;->h(Lccc71/pmw/b/p;)V

    .line 703
    :goto_3
    return-object p1

    .line 686
    :cond_1
    const/16 v3, 0x17

    :try_start_2
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p1, Lccc71/pmw/b/p;->q:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    goto :goto_1

    .line 703
    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    .line 697
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    .line 173
    :cond_0
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 174
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    .line 176
    if-eqz v5, :cond_1

    .line 178
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v2, v1

    .line 179
    :goto_0
    if-lt v2, v7, :cond_3

    .line 197
    :cond_1
    if-eqz v6, :cond_2

    .line 199
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 200
    :goto_1
    if-lt v1, v2, :cond_5

    .line 215
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/pmw/b/q;->a:I

    .line 216
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lccc71/pmw/b/q;->b:I

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lccc71/pmw/b/q;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lccc71/pmw/b/q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_3
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 182
    if-eqz v0, :cond_4

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eqz v8, :cond_4

    .line 184
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v8}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 187
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 202
    :cond_5
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 203
    if-eqz v0, :cond_7

    iget v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eqz v5, :cond_7

    .line 205
    iget v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 206
    iget v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_6
    iget v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-static {v5}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 209
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 832
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 834
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding self to excluded list:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    sget-object v1, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 839
    sget-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    sget-object v1, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 842
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 222
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 224
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    .line 227
    :cond_0
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 228
    iget-object v0, p0, Lccc71/pmw/b/q;->e:Landroid/app/ActivityManager;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 230
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v2, v1

    .line 231
    :goto_0
    if-lt v2, v6, :cond_1

    .line 246
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 247
    :goto_1
    if-lt v1, v2, :cond_3

    .line 263
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 264
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Listed "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccc71/pmw/b/q;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " processes in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v3, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " milliseconds!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 233
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 234
    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eqz v7, :cond_2

    .line 236
    new-instance v7, Lccc71/pmw/b/p;

    invoke-direct {v7}, Lccc71/pmw/b/p;-><init>()V

    .line 237
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v8, v7, Lccc71/pmw/b/p;->a:I

    .line 238
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    .line 239
    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v8, v7, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 240
    iput-object v0, v7, Lccc71/pmw/b/p;->l:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 242
    invoke-virtual {p0, v7}, Lccc71/pmw/b/q;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    invoke-virtual {p0, v7}, Lccc71/pmw/b/q;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 249
    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 250
    iget v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eqz v4, :cond_4

    .line 252
    new-instance v4, Lccc71/pmw/b/p;

    invoke-direct {v4}, Lccc71/pmw/b/p;-><init>()V

    .line 253
    iget v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iput v6, v4, Lccc71/pmw/b/p;->a:I

    .line 254
    iget v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    .line 255
    iget-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v6, v4, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 256
    iput-object v0, v4, Lccc71/pmw/b/p;->m:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 258
    invoke-virtual {p0, v4}, Lccc71/pmw/b/q;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 259
    invoke-virtual {p0, v4}, Lccc71/pmw/b/q;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public final c(Lccc71/pmw/b/p;)V
    .locals 2
    .parameter

    .prologue
    .line 752
    if-eqz p1, :cond_2

    .line 754
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    sget-object v1, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 760
    :cond_0
    sget-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    sget-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    sget-object v1, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 771
    :cond_1
    :goto_0
    return-void

    .line 769
    :cond_2
    const-string v0, "process_monitor_widget"

    const-string v1, "Trying to exclude null process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lccc71/pmw/b/p;

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 155
    :goto_0
    return v0

    .line 144
    :cond_0
    check-cast p1, Lccc71/pmw/b/p;

    .line 145
    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    monitor-exit p0

    move v0, v1

    .line 155
    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 150
    iget v0, v0, Lccc71/pmw/b/p;->a:I

    iget v3, p1, Lccc71/pmw/b/p;->a:I

    if-ne v0, v3, :cond_1

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 723
    invoke-virtual {p0}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    return-void

    .line 725
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    invoke-static {v0}, Lccc71/pmw/b/q;->h(Lccc71/pmw/b/p;)V

    goto :goto_0
.end method

.method public final d(Lccc71/pmw/b/p;)V
    .locals 2
    .parameter

    .prologue
    .line 775
    if-eqz p1, :cond_1

    .line 777
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    sget-object v1, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    const-string v0, "process_monitor_widget"

    const-string v1, "Trying to add null process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final e(Lccc71/pmw/b/p;)V
    .locals 3
    .parameter

    .prologue
    .line 792
    if-eqz p1, :cond_2

    .line 794
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding to known app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    sget-object v0, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    sget-object v1, Lccc71/pmw/b/q;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 800
    :cond_0
    sget-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing from excluded app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    sget-object v0, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    iget-object v1, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lccc71/pmw/b/q;->d:Landroid/content/Context;

    sget-object v1, Lccc71/pmw/b/q;->h:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 811
    :cond_1
    :goto_0
    return-void

    .line 809
    :cond_2
    const-string v0, "process_monitor_widget"

    const-string v1, "Trying to include null process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
