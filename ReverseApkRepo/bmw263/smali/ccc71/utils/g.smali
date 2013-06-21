.class public final Lccc71/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Lccc71/utils/billing/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lccc71/utils/g;->a:Z

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/utils/g;->b:Z

    .line 17
    sput-boolean v1, Lccc71/utils/g;->c:Z

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    .line 12
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    invoke-static {}, Lccc71/utils/billing/p;->a()V

    .line 25
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    sget-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 60
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/app/Activity;)V

    .line 62
    :cond_0
    sget-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    if-eqz v0, :cond_1

    sget-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    iget-boolean v0, v0, Lccc71/utils/billing/p;->e:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    sget-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 69
    invoke-static {p0}, Lccc71/utils/g;->b(Landroid/app/Activity;)V

    .line 74
    :cond_0
    :try_start_0
    sget-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    iget-object v0, v0, Lccc71/utils/billing/p;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "ccc71_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to import in-app information "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    sget-boolean v0, Lccc71/utils/g;->a:Z

    if-eqz v0, :cond_0

    .line 31
    sget-boolean v0, Lccc71/utils/g;->b:Z

    .line 36
    :goto_0
    return v0

    .line 34
    :cond_0
    sget v0, Lccc71/utils/f;->a:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lccc71/utils/g;->b:Z

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/utils/g;->a:Z

    .line 36
    sget-boolean v0, Lccc71/utils/g;->b:Z

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lccc71/utils/h;

    invoke-direct {v0}, Lccc71/utils/h;-><init>()V

    .line 102
    new-instance v1, Lccc71/utils/billing/p;

    invoke-direct {v1, p0, v0}, Lccc71/utils/billing/p;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    sput-object v1, Lccc71/utils/g;->d:Lccc71/utils/billing/p;

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lccc71/utils/billing/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccc71/utils/billing/p;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    sput-object v0, Lccc71/utils/g;->d:Lccc71/utils/billing/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    sget-boolean v0, Lccc71/utils/g;->c:Z

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
