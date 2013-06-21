.class final Lcom/mosaicture/view/e;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/Eula;


# direct methods
.method private constructor <init>(Lcom/mosaicture/view/Eula;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mosaicture/view/Eula;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaicture/view/e;-><init>(Lcom/mosaicture/view/Eula;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v4

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    new-instance v2, Lcom/mosaicture/view/c;

    iget-object v3, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    invoke-direct {v2, v3, v4}, Lcom/mosaicture/view/c;-><init>(Lcom/mosaicture/view/Eula;B)V

    invoke-static {v1, v2}, Lcom/mosaicture/view/Eula;->a(Lcom/mosaicture/view/Eula;Lcom/mosaicture/view/c;)V

    iget-object v1, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v1}, Lcom/mosaicture/view/Eula;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    new-instance v3, Lcom/a/a/a/a/a;

    iget-object v4, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    iget-object v4, v4, Lcom/mosaicture/view/Eula;->c:[B

    iget-object v5, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v5}, Lcom/mosaicture/view/Eula;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/a/a/a/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/mosaicture/view/Eula;->d:Lcom/a/a/a/a/a;

    iget-object v1, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v1}, Lcom/mosaicture/view/Eula;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    invoke-virtual {v0}, Lcom/mosaicture/view/Eula;->a()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    new-instance v2, Lcom/a/a/a/a/i;

    new-instance v3, Lcom/a/a/a/a/t;

    iget-object v4, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    iget-object v4, v4, Lcom/mosaicture/view/Eula;->d:Lcom/a/a/a/a/a;

    invoke-direct {v3, v0, v4}, Lcom/a/a/a/a/t;-><init>(Landroid/content/Context;Lcom/a/a/a/a/p;)V

    iget-object v4, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    iget-object v4, v4, Lcom/mosaicture/view/Eula;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4}, Lcom/a/a/a/a/i;-><init>(Landroid/content/Context;Lcom/a/a/a/a/q;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/mosaicture/view/Eula;->a(Lcom/mosaicture/view/Eula;Lcom/a/a/a/a/i;)V

    iget-object v0, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    invoke-static {v0}, Lcom/mosaicture/view/Eula;->a(Lcom/mosaicture/view/Eula;)Lcom/a/a/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/e;->a:Lcom/mosaicture/view/Eula;

    invoke-static {v1}, Lcom/mosaicture/view/Eula;->b(Lcom/mosaicture/view/Eula;)Lcom/mosaicture/view/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/i;->a(Lcom/a/a/a/a/m;)V

    goto :goto_0
.end method
