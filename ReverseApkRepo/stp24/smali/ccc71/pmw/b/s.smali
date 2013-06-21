.class final Lccc71/pmw/b/s;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/b/q;

.field private final synthetic b:Z

.field private final synthetic c:Lccc71/pmw/b/p;


# direct methods
.method constructor <init>(Lccc71/pmw/b/q;ZLccc71/pmw/b/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/b/s;->a:Lccc71/pmw/b/q;

    iput-boolean p2, p0, Lccc71/pmw/b/s;->b:Z

    iput-object p3, p0, Lccc71/pmw/b/s;->c:Lccc71/pmw/b/p;

    .line 520
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 525
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 529
    iget-boolean v0, p0, Lccc71/pmw/b/s;->b:Z

    if-eqz v0, :cond_0

    .line 530
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 532
    :cond_0
    iget-object v0, p0, Lccc71/pmw/b/s;->c:Lccc71/pmw/b/p;

    iget-object v0, v0, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-static {v0}, Lccc71/pmw/b/q;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "kill -9 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/pmw/b/s;->c:Lccc71/pmw/b/p;

    iget-object v3, v3, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 536
    :cond_1
    return-void
.end method
