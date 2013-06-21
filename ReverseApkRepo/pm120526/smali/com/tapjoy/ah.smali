.class final Lcom/tapjoy/ah;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/ah;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method

.method private varargs a()Ljava/util/ArrayList;
    .locals 4

    const-string v0, "Virtual Goods"

    const-string v1, "Fetching All Store Items"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->b:Lcom/tapjoy/aq;

    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->c(Lcom/tapjoy/TJCVirtualGoods;)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/aq;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0, v1}, Lcom/tapjoy/ar;->a(Ljava/lang/String;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/ah;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/cc;

    invoke-virtual {v0}, Lcom/tapjoy/cc;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/cc;

    invoke-virtual {v0}, Lcom/tapjoy/cc;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->b(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->d(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->c()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->e(Lcom/tapjoy/TJCVirtualGoods;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->b(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    iget-object v0, p0, Lcom/tapjoy/ah;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->b(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->c()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
