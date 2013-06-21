.class final Lcom/tequnique/camerax/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/am;->a:Lcom/tequnique/camerax/CameraProActivity;

    iput-object p2, p0, Lcom/tequnique/camerax/am;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/am;->a:Lcom/tequnique/camerax/CameraProActivity;

    iget-object v1, p0, Lcom/tequnique/camerax/am;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
