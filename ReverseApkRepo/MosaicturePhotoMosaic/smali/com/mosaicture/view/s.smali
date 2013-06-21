.class public final Lcom/mosaicture/view/s;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/MosaictureActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/MosaictureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 11

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/MosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/a/a;->a(Landroid/content/Context;)Lcom/mosaicture/c/f;

    move-result-object v8

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data not like ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "%Mosaicture%"

    aput-object v9, v4, v5

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Lcom/mosaicture/view/MosaictureActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    move v2, v6

    move v1, v6

    :goto_0
    if-lt v2, v4, :cond_1

    :goto_1
    if-eqz v8, :cond_0

    invoke-virtual {v8, v7}, Lcom/mosaicture/c/f;->a(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/mosaicture/a/a;->b:Lcom/mosaicture/g/a;

    invoke-virtual {v0}, Lcom/mosaicture/g/a;->b()V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v0, "_data"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    :try_start_2
    iget-object v9, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-virtual {v9}, Lcom/mosaicture/view/MosaictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/mosaicture/g/k;->a(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Lcom/mosaicture/e/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    :try_start_3
    new-instance v10, Lcom/mosaicture/d/a;

    invoke-direct {v10, v0}, Lcom/mosaicture/d/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, v10, Lcom/mosaicture/d/a;->c:I

    iput-wide v5, v10, Lcom/mosaicture/d/a;->E:J

    invoke-virtual {v10, v9}, Lcom/mosaicture/d/a;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/lit8 v0, v2, 0x64

    div-int/2addr v0, v4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/s;->publishProgress([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/mosaicture/view/s;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/MosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Lcom/mosaicture/view/MosaictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->c:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    iget-object v0, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->a(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/BaseApp;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/MosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-virtual {v1}, Lcom/mosaicture/view/MosaictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->c:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/BaseApp;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/mosaicture/view/s;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->a(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
