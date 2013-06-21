.class public final Lcom/rubycell/moregame/a/a/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/a/a/e;


# direct methods
.method protected constructor <init>(Lcom/rubycell/moregame/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/e;->a(Lcom/rubycell/moregame/a/a/e;)Lcom/rubycell/moregame/a/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/e;->a(Lcom/rubycell/moregame/a/a/e;)Lcom/rubycell/moregame/a/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v1}, Lcom/rubycell/moregame/a/a/e;->a(Lcom/rubycell/moregame/a/a/e;)Lcom/rubycell/moregame/a/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    if-lez v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/e;->a(Lcom/rubycell/moregame/a/a/e;)Lcom/rubycell/moregame/a/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/e;->a(Lcom/rubycell/moregame/a/a/e;)Lcom/rubycell/moregame/a/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/moregame/a/a/g;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/g;->a(Lcom/rubycell/moregame/a/a/g;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/moregame/a/a/e;->a(Lcom/rubycell/moregame/a/a/e;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v1, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v1}, Lcom/rubycell/moregame/a/a/e;->b(Lcom/rubycell/moregame/a/a/e;)Lcom/rubycell/moregame/a/a/j;

    move-result-object v1

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/g;->a(Lcom/rubycell/moregame/a/a/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/rubycell/moregame/a/a/j;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v1}, Lcom/rubycell/moregame/a/a/e;->c(Lcom/rubycell/moregame/a/a/e;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/g;->b(Lcom/rubycell/moregame/a/a/g;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/g;->a(Lcom/rubycell/moregame/a/a/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/rubycell/moregame/a/a/f;

    iget-object v3, p0, Lcom/rubycell/moregame/a/a/i;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/g;->b(Lcom/rubycell/moregame/a/a/g;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lcom/rubycell/moregame/a/a/f;-><init>(Lcom/rubycell/moregame/a/a/e;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/g;->b(Lcom/rubycell/moregame/a/a/g;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
.end method
