.class final Lcom/tequnique/camerax/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/m;

.field private final synthetic b:F


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/m;F)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    iput p2, p0, Lcom/tequnique/camerax/n;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->v(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "antishake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget v0, v0, Lcom/tequnique/camerax/bo;->O:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/tequnique/camerax/n;->b:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tequnique/camerax/CameraProActivity;->e(Lcom/tequnique/camerax/CameraProActivity;I)V

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->w(Lcom/tequnique/camerax/CameraProActivity;)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/tequnique/camerax/n;->b:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tequnique/camerax/CameraProActivity;->e(Lcom/tequnique/camerax/CameraProActivity;I)V

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->w(Lcom/tequnique/camerax/CameraProActivity;)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/tequnique/camerax/n;->b:F

    float-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tequnique/camerax/CameraProActivity;->e(Lcom/tequnique/camerax/CameraProActivity;I)V

    iget-object v0, p0, Lcom/tequnique/camerax/n;->a:Lcom/tequnique/camerax/m;

    invoke-static {v0}, Lcom/tequnique/camerax/m;->a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->w(Lcom/tequnique/camerax/CameraProActivity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
