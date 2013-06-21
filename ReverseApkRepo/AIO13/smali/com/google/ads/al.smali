.class final Lcom/google/ads/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/c;

.field final synthetic b:Lcom/google/ads/AdRequest;

.field final synthetic c:Lcom/google/ads/e;


# direct methods
.method constructor <init>(Lcom/google/ads/e;Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/al;->c:Lcom/google/ads/e;

    iput-object p2, p0, Lcom/google/ads/al;->a:Lcom/google/ads/c;

    iput-object p3, p0, Lcom/google/ads/al;->b:Lcom/google/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/al;->c:Lcom/google/ads/e;

    iget-object v1, p0, Lcom/google/ads/al;->a:Lcom/google/ads/c;

    iget-object v2, p0, Lcom/google/ads/al;->b:Lcom/google/ads/AdRequest;

    invoke-static {v0, v1, v2}, Lcom/google/ads/e;->a(Lcom/google/ads/e;Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    iget-object v0, p0, Lcom/google/ads/al;->c:Lcom/google/ads/e;

    invoke-static {v0}, Lcom/google/ads/e;->a(Lcom/google/ads/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/al;->c:Lcom/google/ads/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/ads/e;->a(Lcom/google/ads/e;Ljava/lang/Thread;)Ljava/lang/Thread;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
