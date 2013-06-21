.class final Lcom/tequnique/camerax/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field final synthetic b:Lcom/tequnique/camerax/bg;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/bg;I)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bh;->b:Lcom/tequnique/camerax/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/tequnique/camerax/bh;->a:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/bh;->b:Lcom/tequnique/camerax/bg;

    invoke-static {v0}, Lcom/tequnique/camerax/bg;->a(Lcom/tequnique/camerax/bg;)Lcom/tequnique/camerax/CameraProActivity;

    move-result-object v0

    iget v1, p0, Lcom/tequnique/camerax/bh;->a:I

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;I)V

    return-void
.end method
