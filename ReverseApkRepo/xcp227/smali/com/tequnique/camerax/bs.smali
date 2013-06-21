.class final Lcom/tequnique/camerax/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bs;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tequnique/camerax/bs;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/ImagePreviewActivity;->a(Lcom/tequnique/camerax/ImagePreviewActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v2

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tequnique/camerax/bs;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-virtual {v1, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
