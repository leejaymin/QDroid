.class final Lcom/tapjoy/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/n;


# direct methods
.method constructor <init>(Lcom/tapjoy/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-instance v0, Lcom/tapjoy/n;

    iget-object v1, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    invoke-static {v1}, Lcom/tapjoy/n;->b(Lcom/tapjoy/n;)Lcom/tapjoy/h;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/n;-><init>(Lcom/tapjoy/h;B)V

    const-string v1, "VirtualGoodUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RETRY DOWNLOAD VG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    invoke-static {v3}, Lcom/tapjoy/n;->a(Lcom/tapjoy/n;)Lcom/tapjoy/cc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    iget-object v1, v1, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    iget-object v1, v0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    iget-object v1, v1, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    iget-object v1, v1, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    iget-object v1, v1, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    iput-object v1, v0, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    iget-object v1, v1, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    const-string v2, "Download Pending"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v0, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v4, v0, Lcom/tapjoy/n;->g:I

    iget-object v1, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    invoke-static {v1}, Lcom/tapjoy/n;->a(Lcom/tapjoy/n;)Lcom/tapjoy/cc;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    invoke-virtual {v2}, Lcom/tapjoy/n;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    invoke-virtual {v2, v6}, Lcom/tapjoy/n;->cancel(Z)Z

    :cond_0
    iget-object v2, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    invoke-static {v2}, Lcom/tapjoy/n;->b(Lcom/tapjoy/n;)Lcom/tapjoy/h;

    move-result-object v2

    iget-object v2, v2, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/s;->a:Lcom/tapjoy/n;

    invoke-static {v2}, Lcom/tapjoy/n;->b(Lcom/tapjoy/n;)Lcom/tapjoy/h;

    move-result-object v2

    iget-object v2, v2, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->m:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VirtualGoodUtil"

    const-string v3, "UPDATE DETAIL VIEW"

    invoke-static {v2, v3}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/n;)V

    :cond_1
    new-array v2, v6, [Lcom/tapjoy/cc;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/tapjoy/h;->a(Landroid/os/AsyncTask;[Lcom/tapjoy/cc;)Z

    return-void
.end method
