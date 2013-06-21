.class final Lcom/tequnique/camerax/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/av;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/av;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/aw;->a:Lcom/tequnique/camerax/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/aw;->a:Lcom/tequnique/camerax/av;

    invoke-static {v0}, Lcom/tequnique/camerax/av;->a(Lcom/tequnique/camerax/av;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->h(Lcom/tequnique/camerax/CameraProActivity;)V

    return-void
.end method
