.class public final Lcom/mosaicture/view/aq;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/aq;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->g()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/mosaicture/view/aq;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->a(Lcom/mosaicture/view/TabSettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/mosaicture/view/aq;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->a(Lcom/mosaicture/view/TabSettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->e:Lcom/mosaicture/c/f;

    invoke-virtual {v0, v8, v1}, Lcom/mosaicture/c/f;->a(ZLjava/util/List;)V

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->e:Lcom/mosaicture/c/f;

    invoke-virtual {v0, v3, v2}, Lcom/mosaicture/c/f;->a(ZLjava/util/List;)V

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->e:Lcom/mosaicture/c/f;

    invoke-virtual {v0, v2}, Lcom/mosaicture/c/f;->a(Ljava/util/List;)V

    :cond_2
    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_2
    if-lt v2, v4, :cond_9

    :cond_3
    sput-boolean v3, Lcom/mosaicture/view/TabSettingsActivity;->d:Z

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/mosaicture/view/aq;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->a(Lcom/mosaicture/view/TabSettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/a;

    iget-object v5, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v0, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/b;

    if-eqz v0, :cond_6

    iget-boolean v6, v0, Lcom/mosaicture/view/a/b;->b:Z

    if-eqz v6, :cond_7

    iget-wide v6, v0, Lcom/mosaicture/view/a/b;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-wide v6, v0, Lcom/mosaicture/view/a/b;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v5, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mosaicture/d/a;

    iget-wide v6, v1, Lcom/mosaicture/d/a;->E:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mosaicture/g/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/a;

    iget-wide v0, v0, Lcom/mosaicture/d/a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    new-instance v5, Lcom/mosaicture/d/a;

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/mosaicture/d/a;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/mosaicture/d/a;->E:J

    iput v8, v5, Lcom/mosaicture/d/a;->c:I

    :try_start_0
    iget-wide v6, v5, Lcom/mosaicture/d/a;->E:J

    iget-object v0, p0, Lcom/mosaicture/view/aq;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/TabSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/mosaicture/g/k;->a(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mosaicture/d/a;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/mosaicture/e/a; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->e:Lcom/mosaicture/c/f;

    invoke-virtual {v0, v5}, Lcom/mosaicture/c/f;->a(Lcom/mosaicture/d/a;)V

    new-array v0, v8, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v5, p0, Lcom/mosaicture/view/aq;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-static {v5}, Lcom/mosaicture/view/TabSettingsActivity;->a(Lcom/mosaicture/view/TabSettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    add-int/lit8 v0, v1, 0x1

    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/mosaicture/view/aq;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object v0, p0, Lcom/mosaicture/view/aq;->a:Lcom/mosaicture/view/TabSettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/TabSettingsActivity;->removeDialog(I)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/mosaicture/view/aq;->a:Lcom/mosaicture/view/TabSettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/TabSettingsActivity;->showDialog(I)V

    return-void
.end method
