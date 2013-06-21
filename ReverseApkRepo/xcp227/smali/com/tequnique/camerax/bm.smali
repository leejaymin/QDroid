.class final Lcom/tequnique/camerax/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/FileDialog;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/FileDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bm;->a:Lcom/tequnique/camerax/FileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tequnique/camerax/bm;->a:Lcom/tequnique/camerax/FileDialog;

    invoke-virtual {v0}, Lcom/tequnique/camerax/FileDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RESULT_PATH"

    iget-object v2, p0, Lcom/tequnique/camerax/bm;->a:Lcom/tequnique/camerax/FileDialog;

    invoke-static {v2}, Lcom/tequnique/camerax/FileDialog;->a(Lcom/tequnique/camerax/FileDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tequnique/camerax/bm;->a:Lcom/tequnique/camerax/FileDialog;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tequnique/camerax/bm;->a:Lcom/tequnique/camerax/FileDialog;

    invoke-virtual {v2}, Lcom/tequnique/camerax/FileDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tequnique/camerax/FileDialog;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tequnique/camerax/bm;->a:Lcom/tequnique/camerax/FileDialog;

    invoke-virtual {v0}, Lcom/tequnique/camerax/FileDialog;->finish()V

    return-void
.end method
