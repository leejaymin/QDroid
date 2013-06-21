.class final Limoblife/startupmanager/a;
.super Ljava/lang/Thread;


# instance fields
.field a:J

.field final synthetic b:Limoblife/startupmanager/BootBroadcastReceiver;

.field private final synthetic c:Landroid/app/ActivityManager;

.field private final synthetic d:Ljava/util/Hashtable;

.field private final synthetic e:J

.field private final synthetic f:Landroid/content/Context;


# direct methods
.method constructor <init>(Limoblife/startupmanager/BootBroadcastReceiver;Landroid/app/ActivityManager;Ljava/util/Hashtable;JLandroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Limoblife/startupmanager/a;->b:Limoblife/startupmanager/BootBroadcastReceiver;

    iput-object p2, p0, Limoblife/startupmanager/a;->c:Landroid/app/ActivityManager;

    iput-object p3, p0, Limoblife/startupmanager/a;->d:Ljava/util/Hashtable;

    iput-wide p4, p0, Limoblife/startupmanager/a;->e:J

    iput-object p6, p0, Limoblife/startupmanager/a;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Limoblife/startupmanager/a;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v0, p0, Limoblife/startupmanager/a;->c:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Limoblife/startupmanager/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Limoblife/startupmanager/a;->e:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Limoblife/startupmanager/a;->a:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_6

    move v1, v3

    :goto_3
    or-int/2addr v0, v1

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Limoblife/startupmanager/a;->f:Landroid/content/Context;

    const-class v2, Limoblife/startupmanager/BootList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bootList"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Limoblife/startupmanager/a;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move v1, v2

    :goto_4
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Limoblife/startupmanager/a;->d:Ljava/util/Hashtable;

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v6, v9, :cond_3

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_3

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Limoblife/startupmanager/a;->d:Ljava/util/Hashtable;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Limoblife/startupmanager/a;->c:Landroid/app/ActivityManager;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move v1, v2

    :goto_5
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    if-lt v1, v4, :cond_a

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Limoblife/startupmanager/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Limoblife/startupmanager/a;->e:J

    sub-long/2addr v0, v3

    iget-wide v3, p0, Limoblife/startupmanager/a;->a:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x21

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_7
    iget-object v0, p0, Limoblife/startupmanager/a;->c:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    goto :goto_6

    :cond_a
    iget-object v4, p0, Limoblife/startupmanager/a;->d:Ljava/util/Hashtable;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Limoblife/startupmanager/a;->c:Landroid/app/ActivityManager;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    iget-object v4, p0, Limoblife/startupmanager/a;->d:Ljava/util/Hashtable;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7
.end method
