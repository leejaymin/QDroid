.class public final Lccc71/utils/billing/p;
.super Lccc71/utils/billing/t;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Lccc71/utils/billing/ccc71_billing_svc;

.field public static c:Z

.field private static g:Ljava/lang/Object;

.field private static h:Lccc71/utils/billing/r;


# instance fields
.field public d:Ljava/util/Set;

.field private i:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/utils/billing/p;->g:Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    sput v0, Lccc71/utils/billing/p;->a:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lccc71/utils/billing/t;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccc71/utils/billing/p;->d:Ljava/util/Set;

    .line 33
    iput-object p1, p0, Lccc71/utils/billing/p;->i:Landroid/app/Activity;

    .line 35
    sget-object v1, Lccc71/utils/billing/p;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget v0, Lccc71/utils/billing/p;->a:I

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lccc71/utils/billing/ccc71_billing_svc;

    invoke-direct {v0}, Lccc71/utils/billing/ccc71_billing_svc;-><init>()V

    .line 40
    sput-object v0, Lccc71/utils/billing/p;->b:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-virtual {v0, p1}, Lccc71/utils/billing/ccc71_billing_svc;->a(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lccc71/utils/billing/r;

    invoke-direct {v0, p1}, Lccc71/utils/billing/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccc71/utils/billing/p;->h:Lccc71/utils/billing/r;

    .line 44
    invoke-static {p0}, Lccc71/utils/billing/f;->a(Lccc71/utils/billing/t;)V

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lccc71/utils/billing/q;

    invoke-direct {v2, p0}, Lccc71/utils/billing/q;-><init>(Lccc71/utils/billing/p;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    sget-object v0, Lccc71/utils/billing/p;->b:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-virtual {v0}, Lccc71/utils/billing/ccc71_billing_svc;->a()Z

    move-result v0

    sput-boolean v0, Lccc71/utils/billing/p;->c:Z

    .line 50
    :cond_0
    sget v0, Lccc71/utils/billing/p;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lccc71/utils/billing/p;->a:I

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lccc71/utils/billing/p;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget v0, Lccc71/utils/billing/p;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 59
    sput v0, Lccc71/utils/billing/p;->a:I

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lccc71/utils/billing/p;->h:Lccc71/utils/billing/r;

    invoke-virtual {v0}, Lccc71/utils/billing/r;->a()V

    .line 62
    sget-object v0, Lccc71/utils/billing/p;->b:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-virtual {v0}, Lccc71/utils/billing/ccc71_billing_svc;->c()V

    .line 63
    sget-object v0, Lccc71/utils/billing/p;->b:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-virtual {v0}, Lccc71/utils/billing/ccc71_billing_svc;->stopSelf()V

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lccc71/utils/billing/p;)V
    .locals 6
    .parameter

    .prologue
    .line 144
    sget-object v0, Lccc71/utils/billing/p;->h:Lccc71/utils/billing/r;

    invoke-virtual {v0}, Lccc71/utils/billing/r;->b()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "quantity"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    iget-object v1, p0, Lccc71/utils/billing/p;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public final a(Lccc71/utils/billing/d;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    sget-object v0, Lccc71/utils/billing/d;->a:Lccc71/utils/billing/d;

    if-ne p1, v0, :cond_1

    .line 82
    iget-object v0, p0, Lccc71/utils/billing/p;->d:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v0, Lccc71/utils/billing/d;->c:Lccc71/utils/billing/d;

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lccc71/utils/billing/p;->d:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lccc71/utils/billing/e;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    sget-object v0, Lccc71/utils/billing/e;->a:Lccc71/utils/billing/e;

    if-ne p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lccc71/utils/billing/p;->i:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    const-string v1, "db_initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 71
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lccc71/utils/billing/p;->i:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "db_initialized"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccc71/utils/billing/p;->b:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-virtual {v0}, Lccc71/utils/billing/ccc71_billing_svc;->b()Z

    .line 75
    :cond_0
    return-void
.end method
