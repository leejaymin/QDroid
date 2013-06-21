.class final Lcom/tequnique/camerax/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bd;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/bd;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->g(Lcom/tequnique/camerax/CameraProActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bd;->a:Lcom/tequnique/camerax/CameraProActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;Z)V

    :cond_0
    return-void
.end method
