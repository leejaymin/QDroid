.class final Lcom/tequnique/camerax/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->H(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->w(Lcom/tequnique/camerax/CameraProActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->H(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->g(Lcom/tequnique/camerax/CameraProActivity;I)V

    iget-object v0, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->C(Lcom/tequnique/camerax/CameraProActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v2}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->H(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v2}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->o(Lcom/tequnique/camerax/CameraProActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/ap;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->I(Lcom/tequnique/camerax/CameraProActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
