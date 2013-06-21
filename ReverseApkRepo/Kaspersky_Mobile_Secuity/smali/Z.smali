.class public final LZ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LZ;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashSet;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, LZ;->b:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, LZ;->b()V

    .line 35
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)LZ;
    .locals 2
    .parameter

    .prologue
    .line 24
    const-class v1, LZ;

    monitor-enter v1

    :try_start_0
    sget-object v0, LZ;->a:LZ;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, LZ;

    invoke-direct {v0, p0}, LZ;-><init>(Landroid/content/Context;)V

    sput-object v0, LZ;->a:LZ;

    .line 28
    :cond_0
    sget-object v0, LZ;->a:LZ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(JLcom/kaspersky/components/urlchecker/UrlCategory;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 142
    const-wide/16 v0, 0x1

    invoke-virtual {p2}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getValue()I

    move-result v2

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LZ;->c()Ljava/io/File;

    move-result-object v0

    .line 120
    invoke-static {v0}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, LZ;->c:Ljava/util/HashSet;

    .line 122
    iget-object v0, p0, LZ;->c:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LZ;->c:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Ljava/io/File;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, LZ;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/io/File;

    const-string v2, "wfcat.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a(J)Lcom/kaspersky/components/urlchecker/UrlCategory;
    .locals 4
    .parameter

    .prologue
    .line 104
    iget-object v1, p0, LZ;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, LZ;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 110
    invoke-static {p1, p2, v0}, LZ;->a(JLcom/kaspersky/components/urlchecker/UrlCategory;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    return-object v0

    .line 113
    :cond_1
    monitor-exit v1

    .line 114
    sget-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->NONE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/kaspersky/components/urlchecker/UrlCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-object v1, p0, LZ;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, LZ;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, LZ;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, LZ;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
