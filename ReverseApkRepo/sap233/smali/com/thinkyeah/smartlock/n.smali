.class public final Lcom/thinkyeah/smartlock/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;

.field final b:Ljava/util/concurrent/ConcurrentHashMap;

.field final c:Landroid/os/Handler;

.field final d:Landroid/content/Context;

.field private final e:I

.field private f:Lcom/thinkyeah/smartlock/q;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/n;->c:Landroid/os/Handler;

    const v0, 0x7f020014

    iput v0, p0, Lcom/thinkyeah/smartlock/n;->e:I

    iput-object p1, p0, Lcom/thinkyeah/smartlock/n;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/n;Lcom/thinkyeah/smartlock/o;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->h:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/thinkyeah/smartlock/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thinkyeah/smartlock/p;-><init>(B)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/thinkyeah/smartlock/p;->a:I

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/thinkyeah/smartlock/p;->b:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/thinkyeah/smartlock/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;Lcom/thinkyeah/smartlock/o;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/thinkyeah/smartlock/p;

    invoke-direct {v0, v3}, Lcom/thinkyeah/smartlock/p;-><init>(B)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget v1, p0, Lcom/thinkyeah/smartlock/n;->e:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v3, v0, Lcom/thinkyeah/smartlock/p;->a:I

    move v0, v3

    :goto_1
    return v0

    :cond_1
    iget v1, v0, Lcom/thinkyeah/smartlock/p;->a:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, v0, Lcom/thinkyeah/smartlock/p;->b:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_2

    iget v0, p0, Lcom/thinkyeah/smartlock/n;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/thinkyeah/smartlock/p;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/thinkyeah/smartlock/p;->b:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->g:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/thinkyeah/smartlock/n;->g:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->h:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->f:Lcom/thinkyeah/smartlock/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->f:Lcom/thinkyeah/smartlock/q;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/q;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/n;->f:Lcom/thinkyeah/smartlock/q;

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/thinkyeah/smartlock/n;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/thinkyeah/smartlock/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/thinkyeah/smartlock/o;-><init>(Lcom/thinkyeah/smartlock/n;B)V

    iput-object p2, v0, Lcom/thinkyeah/smartlock/o;->a:Ljava/lang/String;

    iput-object p3, v0, Lcom/thinkyeah/smartlock/o;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/thinkyeah/smartlock/n;->a(Landroid/widget/ImageView;Lcom/thinkyeah/smartlock/o;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/n;->e()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->h:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->h:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/n;->e()V

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->g:Z

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->f:Lcom/thinkyeah/smartlock/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thinkyeah/smartlock/q;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/n;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/q;-><init>(Lcom/thinkyeah/smartlock/n;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/n;->f:Lcom/thinkyeah/smartlock/q;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->f:Lcom/thinkyeah/smartlock/q;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/q;->start()V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->f:Lcom/thinkyeah/smartlock/q;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/q;->a()V

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/n;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/n;->e()V

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thinkyeah/smartlock/o;

    invoke-direct {p0, v0, v1}, Lcom/thinkyeah/smartlock/n;->a(Landroid/widget/ImageView;Lcom/thinkyeah/smartlock/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
