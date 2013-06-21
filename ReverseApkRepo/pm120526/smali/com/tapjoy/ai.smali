.class final Lcom/tapjoy/ai;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCVirtualGoods;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/tapjoy/cc;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/ai;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/ai;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tapjoy/ai;->b:Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/tapjoy/cc;

    iput-object v0, p0, Lcom/tapjoy/ai;->c:Lcom/tapjoy/cc;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/tapjoy/ai;->c:Lcom/tapjoy/cc;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v0, "src"

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FetchItemIconTask error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/tapjoy/ai;->a([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tapjoy/ai;->a:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->a:Lcom/tapjoy/af;

    invoke-virtual {v0, p0}, Lcom/tapjoy/af;->a(Landroid/os/AsyncTask;)Z

    iget-object v0, p0, Lcom/tapjoy/ai;->c:Lcom/tapjoy/cc;

    invoke-virtual {v0, p1}, Lcom/tapjoy/cc;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tapjoy/ai;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
