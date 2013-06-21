.class final Lcom/tapjoy/m;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tapjoy/h;


# direct methods
.method private constructor <init>(Lcom/tapjoy/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/h;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/m;-><init>(Lcom/tapjoy/h;)V

    return-void
.end method

.method private varargs a()Ljava/util/ArrayList;
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/tapjoy/h;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "VirtualGoodUtil"

    const-string v1, "virtual goods UI is already open -- aborting check for virtual goods"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "VirtualGoodUtil"

    const-string v1, "fetchPurchasedVGItems"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/h;->f()Lcom/tapjoy/aq;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/aq;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-static {v2}, Lcom/tapjoy/h;->a(Lcom/tapjoy/h;)Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tapjoy/ar;->a(Ljava/lang/String;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/m;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-static {v0}, Lcom/tapjoy/h;->c(Lcom/tapjoy/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-static {v0}, Lcom/tapjoy/h;->a(Lcom/tapjoy/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/au;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "SELECT VGStoreItemID FROM tapjoy_VGStoreItems"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "VGStoreItemID"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v5

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-static {v0}, Lcom/tapjoy/h;->c(Lcom/tapjoy/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-static {v0}, Lcom/tapjoy/h;->c(Lcom/tapjoy/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/cc;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-static {v2}, Lcom/tapjoy/h;->d(Lcom/tapjoy/h;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tapjoy/DownloadVirtualGood;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "NAME"

    invoke-virtual {v0}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "URL_PARAMS"

    iget-object v2, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-static {v2}, Lcom/tapjoy/h;->e(Lcom/tapjoy/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    iget-object v0, p0, Lcom/tapjoy/m;->a:Lcom/tapjoy/h;

    invoke-static {v0}, Lcom/tapjoy/h;->d(Lcom/tapjoy/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
