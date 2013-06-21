.class final Lcom/tequnique/camerax/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bq;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tequnique/camerax/bq;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/ImagePreviewActivity;->a(Lcom/tequnique/camerax/ImagePreviewActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraPro"

    const-string v1, "File was not deleted."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/tequnique/camerax/bq;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/ImagePreviewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/bq;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-virtual {v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->onBackPressed()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tequnique/camerax/bq;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/ImagePreviewActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "CameraPro"

    const-string v1, "Error updating media library"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
