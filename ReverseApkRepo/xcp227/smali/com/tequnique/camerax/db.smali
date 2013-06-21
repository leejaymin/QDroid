.class final Lcom/tequnique/camerax/db;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cj;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/db;)Lcom/tequnique/camerax/cj;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    iget-object v2, v2, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tequnique/camerax/WebuploaderActivity;->a(Lcom/tequnique/camerax/WebuploaderActivity;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Uploading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/dc;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/dc;-><init>(Lcom/tequnique/camerax/db;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/db;->a:Lcom/tequnique/camerax/cj;

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
