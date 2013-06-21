.class final Lcom/tequnique/camerax/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bp;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/bp;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/ImagePreviewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/bp;->a:Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-virtual {v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->onBackPressed()V

    return-void
.end method
