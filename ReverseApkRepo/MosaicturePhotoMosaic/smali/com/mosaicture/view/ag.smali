.class public final Lcom/mosaicture/view/ag;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabMosaictureActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabMosaictureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/ag;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 12

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/mosaicture/view/ag;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    const-string v3, "_data not like ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "%/Mosaicture/Mosaics/%"

    aput-object v8, v4, v5

    const-string v5, "date_added DESC"

    invoke-virtual/range {v0 .. v5}, Lcom/mosaicture/view/TabMosaictureActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "_data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/mosaicture/view/ag;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mosaicture/view/TabMosaictureActivity;->a(Lcom/mosaicture/view/TabMosaictureActivity;[Ljava/lang/String;)V

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v6, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    move v1, v7

    :goto_1
    if-lt v1, v0, :cond_0

    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v6, p0, Lcom/mosaicture/view/ag;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-static {v6}, Lcom/mosaicture/view/TabMosaictureActivity;->a(Lcom/mosaicture/view/TabMosaictureActivity;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mosaicture/view/ag;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-virtual {v8}, Lcom/mosaicture/view/TabMosaictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/mosaicture/view/ag;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/mosaicture/view/ag;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/mosaicture/view/ag;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    iget-object v0, p0, Lcom/mosaicture/view/ag;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mosaicture/view/TabMosaictureActivity;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mosaicture/view/TabMosaictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
