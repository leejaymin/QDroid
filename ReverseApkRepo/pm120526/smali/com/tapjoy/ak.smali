.class final Lcom/tapjoy/ak;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field final synthetic d:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/ak;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tapjoy/ak;->b:Z

    iput-boolean v1, p0, Lcom/tapjoy/ak;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/ak;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/ak;)Lcom/tapjoy/TJCVirtualGoods;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    return-object v0
.end method

.method private varargs a([Lcom/tapjoy/cc;)Lcom/tapjoy/cc;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "Virtual Goods"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "virtual_good_id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->b:Lcom/tapjoy/aq;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/ar;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/ak;->b:Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/ak;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/ak;->c:Z

    :goto_0
    const-string v0, "Virtual Goods"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", successfulPurchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tapjoy/ak;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/ak;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Tapjoy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to purchase item.  e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/tapjoy/ak;->b:Z

    aget-object v0, p1, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/tapjoy/ak;->b:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/ak;->b:Z

    const/4 v0, 0x0

    aget-object v0, p1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/tapjoy/cc;

    invoke-direct {p0, p1}, Lcom/tapjoy/ak;->a([Lcom/tapjoy/cc;)Lcom/tapjoy/cc;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    check-cast p1, Lcom/tapjoy/cc;

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->m(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->n(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-boolean v0, p0, Lcom/tapjoy/ak;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0, p1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/tapjoy/al;

    invoke-direct {v3, p0}, Lcom/tapjoy/al;-><init>(Lcom/tapjoy/ak;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Retry"

    new-instance v3, Lcom/tapjoy/am;

    invoke-direct {v3, p0}, Lcom/tapjoy/am;-><init>(Lcom/tapjoy/ak;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->m(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->m(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tapjoy/ak;->b:Z

    if-nez v0, :cond_1

    const-string v0, "Virtual Goods"

    const-string v1, "Now fetch store items again..."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->t(Lcom/tapjoy/TJCVirtualGoods;)V

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->u(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Lcom/tapjoy/ah;

    iget-object v2, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v1, v2, v4}, Lcom/tapjoy/ah;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/ah;)V

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->v(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/ah;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tapjoy/ak;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->p(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    iget-object v0, p0, Lcom/tapjoy/ak;->a:Ljava/lang/String;

    const-string v1, "Balance too low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "You do not have enough balance to purchase this item."

    iput-object v0, p0, Lcom/tapjoy/ak;->a:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/tapjoy/an;

    invoke-direct {v3, p0}, Lcom/tapjoy/an;-><init>(Lcom/tapjoy/ak;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Get More"

    new-instance v3, Lcom/tapjoy/ao;

    invoke-direct {v3, p0}, Lcom/tapjoy/ao;-><init>(Lcom/tapjoy/ak;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->b(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->q(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->s(Lcom/tapjoy/TJCVirtualGoods;)V

    iget-object v0, p0, Lcom/tapjoy/ak;->d:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/ak;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Lcom/tapjoy/cc;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
