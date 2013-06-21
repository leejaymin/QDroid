.class final Lcom/tequnique/camerax/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/a/m;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/ar;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/ar;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v0}, Lcom/tequnique/camerax/CameraProActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x123

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/ar;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->o(Lcom/tequnique/camerax/CameraProActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/as;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/as;-><init>(Lcom/tequnique/camerax/ar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
