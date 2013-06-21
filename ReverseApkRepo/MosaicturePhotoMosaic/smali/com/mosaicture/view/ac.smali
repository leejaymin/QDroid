.class public final Lcom/mosaicture/view/ac;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/mosaicture/view/TabGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabGalleryActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/mosaicture/view/ac;->a:Landroid/content/Context;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 8

    const/4 v6, 0x0

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data like ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "%/Mosaicture/Mosaics/%"

    aput-object v7, v4, v5

    const-string v5, "date_added DESC"

    invoke-virtual/range {v0 .. v5}, Lcom/mosaicture/view/TabGalleryActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v0, v3}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;I)V

    iget-object v0, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    iget-object v3, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v3}, Lcom/mosaicture/view/TabGalleryActivity;->b(Lcom/mosaicture/view/TabGalleryActivity;)I

    move-result v3

    new-array v3, v3, [J

    invoke-static {v0, v3}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;[J)V

    iget-object v0, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    iget-object v3, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v3}, Lcom/mosaicture/view/TabGalleryActivity;->b(Lcom/mosaicture/view/TabGalleryActivity;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    iget-object v3, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v3}, Lcom/mosaicture/view/TabGalleryActivity;->b(Lcom/mosaicture/view/TabGalleryActivity;)I

    move-result v3

    new-array v3, v3, [Z

    invoke-static {v0, v3}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;[Z)V

    move v0, v6

    :goto_0
    iget-object v3, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v3}, Lcom/mosaicture/view/TabGalleryActivity;->b(Lcom/mosaicture/view/TabGalleryActivity;)I

    move-result v3

    if-lt v0, v3, :cond_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v3, "_data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v4}, Lcom/mosaicture/view/TabGalleryActivity;->c(Lcom/mosaicture/view/TabGalleryActivity;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v3}, Lcom/mosaicture/view/TabGalleryActivity;->d(Lcom/mosaicture/view/TabGalleryActivity;)[J

    move-result-object v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v3, v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v3}, Lcom/mosaicture/view/ac;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/mosaicture/view/ac;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->e(Lcom/mosaicture/view/TabGalleryActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    iget-object v0, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->b(Lcom/mosaicture/view/TabGalleryActivity;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/mosaicture/view/ac;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->f(Lcom/mosaicture/view/TabGalleryActivity;)Lcom/mosaicture/view/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/view/aa;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
