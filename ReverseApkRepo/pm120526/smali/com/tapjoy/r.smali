.class final Lcom/tapjoy/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/n;


# direct methods
.method constructor <init>(Lcom/tapjoy/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/r;->a:Lcom/tapjoy/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/tapjoy/r;->a:Lcom/tapjoy/n;

    iget-object v0, v0, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/r;->a:Lcom/tapjoy/n;

    iget-object v0, v0, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/r;->a:Lcom/tapjoy/n;

    iget-object v0, v0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/r;->a:Lcom/tapjoy/n;

    iget-object v0, v0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/r;->a:Lcom/tapjoy/n;

    invoke-static {v0}, Lcom/tapjoy/n;->b(Lcom/tapjoy/n;)Lcom/tapjoy/h;

    move-result-object v0

    const-string v1, "No more space is available on Device."

    iput-object v1, v0, Lcom/tapjoy/h;->f:Ljava/lang/String;

    return-void
.end method
