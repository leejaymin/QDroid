.class public final Lcom/google/ads/util/ac;
.super Lcom/google/ads/util/aa;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/ads/util/z;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/util/z;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 112
    iput-object p1, p0, Lcom/google/ads/util/ac;->d:Lcom/google/ads/util/z;

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;B)V

    .line 110
    iput-boolean v0, p0, Lcom/google/ads/util/ac;->e:Z

    .line 115
    iput-boolean v0, p0, Lcom/google/ads/util/ac;->e:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    iput-object p1, p0, Lcom/google/ads/util/ac;->d:Lcom/google/ads/util/z;

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;B)V

    .line 110
    iput-boolean v0, p0, Lcom/google/ads/util/ac;->e:Z

    .line 121
    iput-boolean v0, p0, Lcom/google/ads/util/ac;->e:Z

    .line 122
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/util/ac;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State changed - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/util/ac;->d:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/util/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' <-- \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/util/ac;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/google/ads/util/ac;->a:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/util/ac;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/ads/util/aa;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/ads/util/ac;->e:Z

    if-eqz v0, :cond_0

    const-string v0, " (*)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
