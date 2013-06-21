.class final Lcom/inisoft/mediaplayer/ho;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/hn;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/hn;Z)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    iput-boolean p2, p0, Lcom/inisoft/mediaplayer/ho;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;I)V

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;I)V

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->c(Lcom/inisoft/mediaplayer/hn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->d(Lcom/inisoft/mediaplayer/hn;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->p()Lcom/inisoft/mediaplayer/ck;

    move-result-object v0

    sget-object v2, Lcom/inisoft/mediaplayer/ck;->c:Lcom/inisoft/mediaplayer/ck;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->p()Lcom/inisoft/mediaplayer/ck;

    move-result-object v0

    sget-object v2, Lcom/inisoft/mediaplayer/ck;->d:Lcom/inisoft/mediaplayer/ck;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/ho;->b:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hn;->e(Lcom/inisoft/mediaplayer/hn;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->d(Lcom/inisoft/mediaplayer/hn;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inisoft/mediaplayer/hn;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v2, v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ho;->a:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->e(Lcom/inisoft/mediaplayer/hn;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
