.class public Lccc71/utils/billing/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lccc71/utils/billing/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    .line 72
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    invoke-virtual {v0, p0, p1}, Lccc71/utils/billing/t;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lccc71/utils/billing/d;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lccc71/utils/billing/g;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lccc71/utils/billing/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccc71/utils/billing/d;JLjava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method

.method public static a(Lccc71/utils/billing/e;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    invoke-virtual {v0, p0}, Lccc71/utils/billing/t;->a(Lccc71/utils/billing/e;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lccc71/utils/billing/t;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    const-class v0, Lccc71/utils/billing/f;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    .line 18
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 28
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    invoke-virtual {v0, p0}, Lccc71/utils/billing/t;->a(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic b()Lccc71/utils/billing/t;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lccc71/utils/billing/f;->a:Lccc71/utils/billing/t;

    return-object v0
.end method
