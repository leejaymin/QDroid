.class public final Lcom/mosaicture/view/v;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    check-cast p1, [Ljava/lang/Integer;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-virtual {v2}, Lcom/mosaicture/view/TabGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v2}, Lcom/mosaicture/view/TabGalleryActivity;->g(Lcom/mosaicture/view/TabGalleryActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    move v0, v1

    move v2, v1

    :goto_1
    iget-object v4, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v4}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v4}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    sget-object v4, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    iget-object v5, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v5}, Lcom/mosaicture/view/TabGalleryActivity;->d(Lcom/mosaicture/view/TabGalleryActivity;)[J

    move-result-object v5

    aget-wide v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mosaicture/g/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v4}, Lcom/mosaicture/view/TabGalleryActivity;->c(Lcom/mosaicture/view/TabGalleryActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/mosaicture/g/k;->a(Ljava/lang/String;)V

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_ID=?"

    new-array v6, v9, [Ljava/lang/String;

    iget-object v7, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v7}, Lcom/mosaicture/view/TabGalleryActivity;->d(Lcom/mosaicture/view/TabGalleryActivity;)[J

    move-result-object v7

    aget-wide v7, v7, v0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v5}, Lcom/mosaicture/view/TabGalleryActivity;->g(Lcom/mosaicture/view/TabGalleryActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object v0, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/TabGalleryActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->h(Lcom/mosaicture/view/TabGalleryActivity;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/mosaicture/view/v;->a:Lcom/mosaicture/view/TabGalleryActivity;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/TabGalleryActivity;->showDialog(I)V

    return-void
.end method
