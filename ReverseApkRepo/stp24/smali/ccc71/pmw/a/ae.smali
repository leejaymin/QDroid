.class final Lccc71/pmw/a/ae;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/a/ad;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lccc71/pmw/a/ad;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/a/ae;->a:Lccc71/pmw/a/ad;

    iput-object p2, p0, Lccc71/pmw/a/ae;->b:Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 48
    invoke-static {}, Lccc71/pmw/a/ad;->c()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 50
    :try_start_0
    const-string v0, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "rm "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/a/ae;->a:Lccc71/pmw/a/ad;

    invoke-static {v1}, Lccc71/pmw/a/ad;->a(Lccc71/pmw/a/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 56
    iget-object v0, p0, Lccc71/pmw/a/ae;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccc71/pmw/a/ae;->a:Lccc71/pmw/a/ad;

    invoke-static {v1}, Lccc71/pmw/a/ad;->a(Lccc71/pmw/a/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lccc71/pmw/a/ae;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    :cond_0
    :goto_0
    monitor-exit v7

    .line 70
    return-object v8

    .line 65
    :cond_1
    iget-object v0, p0, Lccc71/pmw/a/ae;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/a/ae;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
