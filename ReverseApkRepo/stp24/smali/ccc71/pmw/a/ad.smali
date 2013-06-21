.class public abstract Lccc71/pmw/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:Ljava/lang/Object;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput v0, Lccc71/pmw/a/ad;->b:I

    .line 21
    const/4 v0, 0x0

    sput v0, Lccc71/pmw/a/ad;->c:I

    .line 23
    const-string v0, "#!/system/bin/sh\n"

    sput-object v0, Lccc71/pmw/a/ad;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/a/ad;->d:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Lccc71/pmw/a/ad;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/a/ad;->e:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic a(Lccc71/pmw/a/ad;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lccc71/pmw/a/ad;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lccc71/pmw/a/ad;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lccc71/pmw/a/ad;->b:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lccc71/pmw/a/ad;->c:I

    return v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lccc71/pmw/a/af;

    invoke-direct {v0, p0, p2, p1, p3}, Lccc71/pmw/a/af;-><init>(Lccc71/pmw/a/ad;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 125
    invoke-virtual {v0, v1}, Lccc71/pmw/a/af;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 126
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    new-instance v0, Lccc71/pmw/a/ae;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/a/ae;-><init>(Lccc71/pmw/a/ad;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 72
    invoke-virtual {v0, v1}, Lccc71/pmw/a/ae;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 73
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lccc71/pmw/a/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 39
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 130
    sget-object v1, Lccc71/pmw/a/ad;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lccc71/pmw/a/ad;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 130
    :cond_0
    monitor-exit v1

    .line 139
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
