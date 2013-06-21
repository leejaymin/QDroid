.class final Lcom/mosaicture/view/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabMosaictureActivity;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/TabMosaictureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/af;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/view/af;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabMosaictureActivity;->d(Lcom/mosaicture/view/TabMosaictureActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/af;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mosaicture/view/TabMosaictureActivity;->a(Lcom/mosaicture/view/TabMosaictureActivity;I)V

    :cond_0
    return-void
.end method
