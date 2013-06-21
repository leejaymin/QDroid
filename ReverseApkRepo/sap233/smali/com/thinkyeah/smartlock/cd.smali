.class final Lcom/thinkyeah/smartlock/cd;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/bn;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/bn;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/cd;-><init>(Lcom/thinkyeah/smartlock/bn;)V

    return-void
.end method

.method private varargs a()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->h()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bn;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0}, Lcom/thinkyeah/common/b;->a(Landroid/graphics/BitmapFactory$Options;)I

    move-result v0

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v5}, Lcom/thinkyeah/smartlock/bn;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/thinkyeah/smartlock/bn;->n()Lcom/thinkyeah/common/c;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/thinkyeah/smartlock/bn;->n()Lcom/thinkyeah/common/c;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/cd;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v0, p1}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/cd;->a:Lcom/thinkyeah/smartlock/bn;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
