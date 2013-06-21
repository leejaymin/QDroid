.class final Lcom/thinkyeah/smartlock/q;
.super Landroid/os/HandlerThread;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/n;

.field private final b:Ljava/util/ArrayList;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/thinkyeah/smartlock/n;)V
    .locals 1

    iput-object p1, p0, Lcom/thinkyeah/smartlock/q;->a:Lcom/thinkyeah/smartlock/n;

    const-string v0, "AppIconLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/q;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/q;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/q;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/q;->c:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/q;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/thinkyeah/smartlock/q;->a:Lcom/thinkyeah/smartlock/n;

    iget-object v3, p0, Lcom/thinkyeah/smartlock/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v2, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, v2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/q;->a:Lcom/thinkyeah/smartlock/n;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/n;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v6

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/o;

    iget-object v1, v2, Lcom/thinkyeah/smartlock/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thinkyeah/smartlock/p;

    if-eqz v1, :cond_0

    iget v5, v1, Lcom/thinkyeah/smartlock/p;->a:I

    if-nez v5, :cond_0

    iput v6, v1, Lcom/thinkyeah/smartlock/p;->a:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/o;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/q;->a:Lcom/thinkyeah/smartlock/n;

    iget-object v2, v2, Lcom/thinkyeah/smartlock/n;->d:Landroid/content/Context;

    iget-object v3, v0, Lcom/thinkyeah/smartlock/o;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/thinkyeah/smartlock/o;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v7}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/q;->a:Lcom/thinkyeah/smartlock/n;

    invoke-static {v3, v0, v2}, Lcom/thinkyeah/smartlock/n;->a(Lcom/thinkyeah/smartlock/n;Lcom/thinkyeah/smartlock/o;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/thinkyeah/smartlock/q;->a:Lcom/thinkyeah/smartlock/n;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/o;

    invoke-static {v3, v0, v7}, Lcom/thinkyeah/smartlock/n;->a(Lcom/thinkyeah/smartlock/n;Lcom/thinkyeah/smartlock/o;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
