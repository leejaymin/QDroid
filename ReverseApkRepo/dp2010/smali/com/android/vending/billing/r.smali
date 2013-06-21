.class public Lcom/android/vending/billing/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/android/vending/billing/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/android/vending/billing/r;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;

    invoke-virtual {v0, p0, p1}, Lcom/android/vending/billing/p;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Lcom/android/vending/billing/g;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/vending/billing/s;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/billing/s;-><init>(Lcom/android/vending/billing/g;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Lcom/android/vending/billing/h;)V
    .locals 1

    sget-object v0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;

    invoke-virtual {v0, p0}, Lcom/android/vending/billing/p;->a(Lcom/android/vending/billing/h;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lcom/android/vending/billing/p;)V
    .locals 2

    const-class v0, Lcom/android/vending/billing/r;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;

    invoke-virtual {v0, p0, p1}, Lcom/android/vending/billing/p;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/android/vending/billing/p;
    .locals 1

    sget-object v0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/p;

    return-object v0
.end method
