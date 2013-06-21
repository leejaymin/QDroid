.class final Lccc71/pmw/a/af;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/a/ad;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lccc71/pmw/a/ad;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/a/af;->a:Lccc71/pmw/a/ad;

    iput-object p2, p0, Lccc71/pmw/a/af;->b:Ljava/lang/Object;

    iput-object p3, p0, Lccc71/pmw/a/af;->c:Landroid/content/Context;

    iput-object p4, p0, Lccc71/pmw/a/af;->d:Landroid/os/Handler;

    .line 77
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 82
    iget-object v0, p0, Lccc71/pmw/a/af;->a:Lccc71/pmw/a/ad;

    iget-object v1, p0, Lccc71/pmw/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lccc71/pmw/a/ad;->c()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 88
    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v3

    iget-object v4, p0, Lccc71/pmw/a/af;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/99pmw_script_param.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 92
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 95
    iget-object v0, p0, Lccc71/pmw/a/af;->c:Landroid/content/Context;

    const-string v2, "cp"

    invoke-static {v0, v2}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v2, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/a/af;->a:Lccc71/pmw/a/ad;

    invoke-static {v2}, Lccc71/pmw/a/ad;->a(Lccc71/pmw/a/ad;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "rm "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "chmod 777 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/a/af;->a:Lccc71/pmw/a/ad;

    invoke-static {v1}, Lccc71/pmw/a/ad;->a(Lccc71/pmw/a/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lccc71/pmw/a/af;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccc71/pmw/a/af;->a:Lccc71/pmw/a/ad;

    invoke-static {v1}, Lccc71/pmw/a/ad;->a(Lccc71/pmw/a/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lccc71/pmw/a/af;->d:Landroid/os/Handler;

    invoke-static {}, Lccc71/pmw/a/ad;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    :cond_1
    :goto_1
    monitor-exit v7

    .line 123
    return-object v8

    .line 118
    :cond_2
    iget-object v0, p0, Lccc71/pmw/a/af;->d:Landroid/os/Handler;

    invoke-static {}, Lccc71/pmw/a/ad;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/a/af;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
