.class final Lcom/tequnique/camerax/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/i;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/j;->a:Lcom/tequnique/camerax/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tequnique/camerax/j;->a:Lcom/tequnique/camerax/i;

    invoke-static {v0}, Lcom/tequnique/camerax/i;->a(Lcom/tequnique/camerax/i;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iput p2, v0, Lcom/tequnique/camerax/bo;->G:I

    iget-object v0, p0, Lcom/tequnique/camerax/j;->a:Lcom/tequnique/camerax/i;

    invoke-static {v0}, Lcom/tequnique/camerax/i;->a(Lcom/tequnique/camerax/i;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->q(Lcom/tequnique/camerax/CameraProActivity;)V

    iget-object v0, p0, Lcom/tequnique/camerax/j;->a:Lcom/tequnique/camerax/i;

    invoke-static {v0}, Lcom/tequnique/camerax/i;->a(Lcom/tequnique/camerax/i;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    iget-object v1, p0, Lcom/tequnique/camerax/j;->a:Lcom/tequnique/camerax/i;

    invoke-static {v1}, Lcom/tequnique/camerax/i;->a(Lcom/tequnique/camerax/i;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget v1, v1, Lcom/tequnique/camerax/bo;->G:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lcom/tequnique/camerax/j;->a:Lcom/tequnique/camerax/i;

    invoke-static {v1}, Lcom/tequnique/camerax/i;->a(Lcom/tequnique/camerax/i;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget-object v0, p0, Lcom/tequnique/camerax/j;->a:Lcom/tequnique/camerax/i;

    invoke-static {v0}, Lcom/tequnique/camerax/i;->a(Lcom/tequnique/camerax/i;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
