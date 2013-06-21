.class final Lcom/tequnique/camerax/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/aq;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tequnique/camerax/aq;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->H(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->g(Lcom/tequnique/camerax/CameraProActivity;I)V

    iget-object v0, p0, Lcom/tequnique/camerax/aq;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->H(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    iget-object v1, p0, Lcom/tequnique/camerax/aq;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->H(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v1

    mul-int/lit16 v2, v0, 0xe10

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/tequnique/camerax/aq;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->H(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v2

    mul-int/lit16 v3, v0, 0xe10

    mul-int/lit8 v4, v1, 0x3c

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/tequnique/camerax/aq;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v3}, Lcom/tequnique/camerax/CameraProActivity;->J(Lcom/tequnique/camerax/CameraProActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/aq;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->o(Lcom/tequnique/camerax/CameraProActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/aq;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->I(Lcom/tequnique/camerax/CameraProActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
