.class final Lcom/tequnique/camerax/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;

.field private final synthetic b:Landroid/media/CamcorderProfile;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/media/CamcorderProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    iput-object p2, p0, Lcom/tequnique/camerax/av;->b:Landroid/media/CamcorderProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/av;)Lcom/tequnique/camerax/CameraProActivity;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    return-object v0
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 5

    const/16 v0, 0x3e8

    const/16 v3, 0x321

    const/16 v2, 0x320

    iget-object v1, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tequnique/camerax/bo;->ai:Z

    if-eqz v1, :cond_2

    if-eq p2, v2, :cond_0

    if-ne p2, v3, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->p(Lcom/tequnique/camerax/CameraProActivity;)Z

    iget-object v1, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget v1, v1, Lcom/tequnique/camerax/bo;->aw:I

    iget-object v2, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aj:Z

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/tequnique/camerax/av;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x2d0

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/tequnique/camerax/av;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x1e0

    if-le v1, v2, :cond_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->o(Lcom/tequnique/camerax/CameraProActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tequnique/camerax/aw;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/aw;-><init>(Lcom/tequnique/camerax/av;)V

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_2
    if-ne p2, v2, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->p(Lcom/tequnique/camerax/CameraProActivity;)Z

    goto :goto_1

    :cond_3
    if-ne p2, v3, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->p(Lcom/tequnique/camerax/CameraProActivity;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(2) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tequnique/camerax/av;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v1}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method
