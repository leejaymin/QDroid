.class final Lcom/mosaicture/zoom/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/zoom/c;


# direct methods
.method constructor <init>(Lcom/mosaicture/zoom/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v0}, Lcom/mosaicture/zoom/c;->a(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/g/t;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/mosaicture/g/t;->a(J)V

    iget-object v0, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v0}, Lcom/mosaicture/zoom/c;->b(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/g/t;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/mosaicture/g/t;->a(J)V

    iget-object v0, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v0}, Lcom/mosaicture/zoom/c;->a(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/g/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/g/t;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v0}, Lcom/mosaicture/zoom/c;->b(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/g/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/g/t;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v3}, Lcom/mosaicture/zoom/c;->c(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/zoom/p;

    move-result-object v3

    iget-object v4, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v4}, Lcom/mosaicture/zoom/c;->a(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/g/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mosaicture/g/t;->a()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mosaicture/zoom/p;->c(F)V

    iget-object v3, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v3}, Lcom/mosaicture/zoom/c;->c(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/zoom/p;

    move-result-object v3

    iget-object v4, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v4}, Lcom/mosaicture/zoom/c;->b(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/g/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mosaicture/g/t;->a()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mosaicture/zoom/p;->d(F)V

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v0}, Lcom/mosaicture/zoom/c;->d(Lcom/mosaicture/zoom/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v5}, Lcom/mosaicture/zoom/c;->e(Lcom/mosaicture/zoom/c;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x14

    sub-long v1, v3, v1

    sub-long v1, v6, v1

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/zoom/d;->a:Lcom/mosaicture/zoom/c;

    invoke-static {v0}, Lcom/mosaicture/zoom/c;->c(Lcom/mosaicture/zoom/c;)Lcom/mosaicture/zoom/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/zoom/p;->notifyObservers()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
