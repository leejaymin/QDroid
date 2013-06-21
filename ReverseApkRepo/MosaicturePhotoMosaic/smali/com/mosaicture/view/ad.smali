.class final Lcom/mosaicture/view/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabMosaictureActivity;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/TabMosaictureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/ad;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/ad;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabMosaictureActivity;->b(Lcom/mosaicture/view/TabMosaictureActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/mosaicture/view/ad;->a:Lcom/mosaicture/view/TabMosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabMosaictureActivity;->c(Lcom/mosaicture/view/TabMosaictureActivity;)V

    return-void
.end method
