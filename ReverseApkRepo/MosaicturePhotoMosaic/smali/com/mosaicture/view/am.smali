.class public final Lcom/mosaicture/view/am;
.super Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 14

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mosaicture/view/TabSettingsActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data not like ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "%Mosaicture%"

    aput-object v9, v4, v5

    const-string v5, "date_added DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "_data"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->a(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->a(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->b(Ljava/util/ArrayList;)V

    new-instance v9, Lcom/mosaicture/view/a/a;

    invoke-direct {v9}, Lcom/mosaicture/view/a/a;-><init>()V

    move v2, v7

    :goto_0
    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->e()I

    move-result v0

    if-lt v2, v0, :cond_1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/mosaicture/view/an;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/an;-><init>(Lcom/mosaicture/view/am;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    :goto_1
    return-object v8

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v11, v0

    new-instance v13, Lcom/mosaicture/view/a/b;

    invoke-direct {v13}, Lcom/mosaicture/view/a/b;-><init>()V

    iput-wide v11, v13, Lcom/mosaicture/view/a/b;->a:J

    if-eqz v10, :cond_6

    const-string v0, ""

    if-eq v10, v0, :cond_6

    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v9, Lcom/mosaicture/view/a/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/mosaicture/view/a/a;

    invoke-direct {v0}, Lcom/mosaicture/view/a/a;-><init>()V

    iget-object v1, v9, Lcom/mosaicture/view/a/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/mosaicture/view/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_3
    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/a;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/mosaicture/d/a;->c:I

    if-ne v0, v6, :cond_3

    move v0, v6

    :goto_4
    iput-boolean v0, v13, Lcom/mosaicture/view/a/b;->b:Z

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget-object v0, v1, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/a;

    move-object v1, v0

    goto :goto_3

    :cond_3
    move v0, v7

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/mosaicture/view/BaseApp;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/mosaicture/view/a/b;->b:Z

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/mosaicture/view/a/b;->b:Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_6
    move-object v0, v8

    goto/16 :goto_2
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/mosaicture/view/am;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->a(Z)V

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->a:Lcom/mosaicture/view/aj;

    invoke-virtual {v0}, Lcom/mosaicture/view/aj;->notifyDataSetChanged()V

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    :cond_0
    return-void
.end method
