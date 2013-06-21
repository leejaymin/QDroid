.class final Lcom/tequnique/camerax/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bt;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tequnique/camerax/bt;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->b(Lcom/tequnique/camerax/ImagePreviewActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bt;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-virtual {v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/bt;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->b(Lcom/tequnique/camerax/ImagePreviewActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/tequnique/camerax/ImagePreviewActivity;->a(Lcom/tequnique/camerax/ImagePreviewActivity;I)V

    iget-object v0, p0, Lcom/tequnique/camerax/bt;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->c(Lcom/tequnique/camerax/ImagePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tequnique/camerax/bt;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/ImagePreviewActivity;->b(Lcom/tequnique/camerax/ImagePreviewActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/bt;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->d(Lcom/tequnique/camerax/ImagePreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/bt;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/ImagePreviewActivity;->e(Lcom/tequnique/camerax/ImagePreviewActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
