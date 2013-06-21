.class final Lcom/tequnique/camerax/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field final synthetic b:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/ba;->b:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/tequnique/camerax/ba;->a:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/ba;->b:Lcom/tequnique/camerax/CameraProActivity;

    iget v1, p0, Lcom/tequnique/camerax/ba;->a:I

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->b(Lcom/tequnique/camerax/CameraProActivity;I)V

    return-void
.end method
