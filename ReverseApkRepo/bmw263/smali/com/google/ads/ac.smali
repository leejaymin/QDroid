.class final Lcom/google/ads/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/y;

.field final synthetic b:Lcom/google/ads/d;

.field final synthetic c:Lcom/google/ads/ab;


# direct methods
.method constructor <init>(Lcom/google/ads/ab;Lcom/google/ads/y;Lcom/google/ads/d;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/ads/ac;->c:Lcom/google/ads/ab;

    iput-object p2, p0, Lcom/google/ads/ac;->a:Lcom/google/ads/y;

    iput-object p3, p0, Lcom/google/ads/ac;->b:Lcom/google/ads/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/ads/ac;->c:Lcom/google/ads/ab;

    iget-object v1, p0, Lcom/google/ads/ac;->a:Lcom/google/ads/y;

    iget-object v2, p0, Lcom/google/ads/ac;->b:Lcom/google/ads/d;

    invoke-static {v0, v1, v2}, Lcom/google/ads/ab;->a(Lcom/google/ads/ab;Lcom/google/ads/y;Lcom/google/ads/d;)V

    .line 140
    iget-object v0, p0, Lcom/google/ads/ac;->c:Lcom/google/ads/ab;

    invoke-static {v0}, Lcom/google/ads/ab;->a(Lcom/google/ads/ab;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ac;->c:Lcom/google/ads/ab;

    invoke-static {v0}, Lcom/google/ads/ab;->b(Lcom/google/ads/ab;)Ljava/lang/Thread;

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
