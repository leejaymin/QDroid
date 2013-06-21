.class final Lcom/tequnique/camerax/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Lcom/tequnique/camerax/CameraProActivity;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/x;->b:Lcom/tequnique/camerax/CameraProActivity;

    iput p3, p0, Lcom/tequnique/camerax/x;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tequnique/camerax/x;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tequnique/camerax/x;->b:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-object v1, v0, Lcom/tequnique/camerax/bo;->aC:[I

    iget v2, p0, Lcom/tequnique/camerax/x;->c:I

    iget-object v0, p0, Lcom/tequnique/camerax/x;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/tequnique/camerax/x;->b:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->z(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
