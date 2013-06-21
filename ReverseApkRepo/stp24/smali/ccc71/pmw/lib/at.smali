.class final Lccc71/pmw/lib/at;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/as;

.field private final synthetic b:Landroid/content/pm/ApplicationInfo;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/as;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/at;->a:Lccc71/pmw/lib/as;

    iput-object p2, p0, Lccc71/pmw/lib/at;->b:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lccc71/pmw/lib/at;->c:Landroid/os/Handler;

    .line 1987
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/at;)Lccc71/pmw/lib/as;
    .locals 1
    .parameter

    .prologue
    .line 1987
    iget-object v0, p0, Lccc71/pmw/lib/at;->a:Lccc71/pmw/lib/as;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1994
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1996
    iget-object v0, p0, Lccc71/pmw/lib/at;->a:Lccc71/pmw/lib/as;

    invoke-static {v0}, Lccc71/pmw/lib/as;->a(Lccc71/pmw/lib/as;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_applist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1998
    const/16 v1, 0xa

    .line 1999
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gtz v1, :cond_0

    .line 2036
    return-void

    .line 2001
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2002
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v2

    .line 2003
    :goto_1
    if-lt v4, v6, :cond_1

    move v1, v3

    .line 2033
    :goto_2
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 2005
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2006
    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v8, p0, Lccc71/pmw/lib/at;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2008
    iget-object v3, p0, Lccc71/pmw/lib/at;->c:Landroid/os/Handler;

    new-instance v4, Lccc71/pmw/lib/au;

    invoke-direct {v4, p0, v1}, Lccc71/pmw/lib/au;-><init>(Lccc71/pmw/lib/at;Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    .line 2029
    goto :goto_2

    .line 2003
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1
.end method
