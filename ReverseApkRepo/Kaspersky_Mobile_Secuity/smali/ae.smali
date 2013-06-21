.class final Lae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Hashtable;

.field private synthetic b:Lac;


# direct methods
.method constructor <init>(Lac;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lae;->b:Lac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-direct {p0}, Lae;->b()V

    .line 91
    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lae;->c()Ljava/io/File;

    move-result-object v0

    .line 96
    invoke-static {v0}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lae;->a:Ljava/util/Hashtable;

    .line 97
    iget-object v0, p0, Lae;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lae;->a:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Ljava/io/File;
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lae;->b:Lac;

    invoke-static {v0}, Lac;->a(Lac;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/io/File;

    const-string v2, "wfapnbak"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;I)Lae;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lae;->a:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-object p0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lae;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lae;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object p0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()V
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lae;->c()Ljava/io/File;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lae;->a:Ljava/util/Hashtable;

    invoke-static {v0, v1}, LS;->a(Ljava/io/File;Ljava/io/Serializable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    monitor-enter p0

    const/4 v1, 0x0

    .line 138
    :try_start_0
    iget-object v0, p0, Lae;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz v0, :cond_0

    .line 143
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 149
    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lae;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-nez v0, :cond_0

    .line 132
    :goto_0
    monitor-exit p0

    return-object p2

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method
