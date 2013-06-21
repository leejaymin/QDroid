.class public final Lcom/tapjoy/af;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/af;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/af;->c:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tapjoy/af;->a:I

    iget v0, p0, Lcom/tapjoy/af;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/tapjoy/af;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/AsyncTask;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tapjoy/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/af;->a:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tapjoy/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    aget-object v1, v0, v3

    check-cast v1, Landroid/os/AsyncTask;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/af;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    :cond_1
    return v3
.end method

.method public final varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tapjoy/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/af;->a:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    iget-object v1, p0, Lcom/tapjoy/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
