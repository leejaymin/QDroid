.class final Lccc71/pmw/a/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/a/h;

.field private final synthetic b:Lccc71/pmw/a/a;


# direct methods
.method constructor <init>(Lccc71/pmw/a/h;Lccc71/pmw/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/a/i;->a:Lccc71/pmw/a/h;

    iput-object p2, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    .line 1840
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1845
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/pmw/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v1, v1, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1848
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v4, v4, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/lib"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1850
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 1856
    :goto_0
    const/16 v1, 0x14

    .line 1858
    const-string v4, "process_monitor_widget"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Waiting for app "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v7, v7, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to be installed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    move-object v1, v2

    .line 1863
    :goto_1
    :try_start_0
    invoke-static {}, Lccc71/pmw/a/d;->h()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v7, v7, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1864
    const-string v6, "process_monitor_widget"

    const-string v7, "App installed, restoring settings..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    .line 1870
    :goto_2
    if-nez v6, :cond_0

    add-int/lit8 v1, v4, -0x1

    if-gtz v4, :cond_e

    .line 1872
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1874
    if-eqz v6, :cond_4

    .line 1876
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iput-boolean v3, v0, Lccc71/pmw/a/a;->a:Z

    .line 1877
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v0, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v4, Lccc71/pmw/a/b;->c:Lccc71/pmw/a/b;

    if-ne v0, v4, :cond_3

    .line 1879
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v7, v7, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " restored successfully"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    .line 1886
    :goto_3
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v0, :cond_1

    .line 1890
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "chown"

    invoke-static {v0, v4}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " -R "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " /data/data/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v6, v6, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " -R system.system /data/data/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v4, v4, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/lib\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    :cond_1
    :goto_4
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 1952
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1953
    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1954
    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v4, v4, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1971
    :goto_5
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1972
    return-void

    :cond_2
    move v0, v5

    .line 1850
    goto/16 :goto_0

    .line 1868
    :catch_0
    move-exception v6

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    move-object v6, v1

    goto/16 :goto_2

    .line 1883
    :cond_3
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v7, v7, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " settings restored successfully"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_3

    .line 1898
    :cond_4
    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v4, v4, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1900
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v6, v6, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1903
    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iput-boolean v3, v4, Lccc71/pmw/a/a;->a:Z

    .line 1904
    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iput-boolean v3, v4, Lccc71/pmw/a/a;->b:Z

    .line 1905
    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v4, v4, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v6, Lccc71/pmw/a/b;->c:Lccc71/pmw/a/b;

    if-ne v4, v6, :cond_6

    .line 1909
    if-eqz v0, :cond_5

    .line 1910
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v6, v6, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " restored, reboot and restore settings"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 1912
    :cond_5
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v6, v6, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " restored, might require a reboot"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 1918
    :cond_6
    if-eqz v0, :cond_7

    .line 1920
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iput-boolean v5, v0, Lccc71/pmw/a/a;->a:Z

    .line 1921
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v6, v6, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " settings failed to restore, reboot and try again"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 1924
    :cond_7
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v6, v6, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " restored, might require a reboot"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 1929
    :cond_8
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iput-boolean v5, v0, Lccc71/pmw/a/a;->a:Z

    .line 1930
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v0, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v4, Lccc71/pmw/a/b;->c:Lccc71/pmw/a/b;

    if-ne v0, v4, :cond_9

    .line 1932
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v4

    sget v6, Lccc71/pmw/lib/g;->eG:I

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 1936
    :cond_9
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v4

    sget v6, Lccc71/pmw/lib/g;->eI:I

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 1942
    :cond_a
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iput-boolean v5, v0, Lccc71/pmw/a/a;->a:Z

    .line 1943
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v0, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v4, Lccc71/pmw/a/b;->c:Lccc71/pmw/a/b;

    if-ne v0, v4, :cond_b

    .line 1944
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v4

    sget v6, Lccc71/pmw/lib/g;->eG:I

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 1946
    :cond_b
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v4

    sget v6, Lccc71/pmw/lib/g;->eH:I

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    goto/16 :goto_4

    .line 1958
    :cond_c
    iget-object v0, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-boolean v0, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v0, :cond_d

    .line 1960
    const-string v0, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Restored app app to "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v6, v6, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :goto_6
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v4, v4, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1968
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 1964
    :cond_d
    const-string v0, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to restore of app to "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lccc71/pmw/a/i;->b:Lccc71/pmw/a/a;

    iget-object v6, v6, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    move v4, v1

    move-object v1, v6

    goto/16 :goto_1
.end method
