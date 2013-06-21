.class final Lcom/mosaicture/crop/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/crop/e;


# direct methods
.method constructor <init>(Lcom/mosaicture/crop/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/f;->a:Lcom/mosaicture/crop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/crop/f;->a:Lcom/mosaicture/crop/e;

    invoke-static {v0}, Lcom/mosaicture/crop/e;->a(Lcom/mosaicture/crop/e;)Lcom/mosaicture/crop/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/crop/f;->a:Lcom/mosaicture/crop/e;

    invoke-virtual {v0, v1}, Lcom/mosaicture/crop/MonitoredActivity;->b(Lcom/mosaicture/crop/s;)V

    iget-object v0, p0, Lcom/mosaicture/crop/f;->a:Lcom/mosaicture/crop/e;

    invoke-static {v0}, Lcom/mosaicture/crop/e;->b(Lcom/mosaicture/crop/e;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/crop/f;->a:Lcom/mosaicture/crop/e;

    invoke-static {v0}, Lcom/mosaicture/crop/e;->b(Lcom/mosaicture/crop/e;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
