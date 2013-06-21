.class final Lcom/tequnique/camerax/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;

.field private final synthetic b:[I

.field private final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;[ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/af;->a:Lcom/tequnique/camerax/CameraProActivity;

    iput-object p2, p0, Lcom/tequnique/camerax/af;->b:[I

    iput-object p3, p0, Lcom/tequnique/camerax/af;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/tequnique/camerax/af;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/af;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v1, p2

    iput v1, v0, Lcom/tequnique/camerax/bo;->C:I

    iget-object v0, p0, Lcom/tequnique/camerax/af;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/af;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget v1, v1, Lcom/tequnique/camerax/bo;->C:I

    invoke-static {v0, v1}, Lcom/tequnique/camerax/b;->a(Landroid/hardware/Camera;I)Z

    iget-object v0, p0, Lcom/tequnique/camerax/af;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tequnique/camerax/af;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v2}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/af;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v2

    iget v2, v2, Lcom/tequnique/camerax/bo;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
