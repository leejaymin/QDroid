.class public final Lcom/mosaicture/view/p;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/MosaicViewerProgressActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/MosaicViewerProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/p;->a:Lcom/mosaicture/view/MosaicViewerProgressActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/mosaicture/d/a;

    invoke-direct {v0}, Lcom/mosaicture/d/a;-><init>()V

    iput v2, v0, Lcom/mosaicture/d/a;->c:I

    iget-object v1, p0, Lcom/mosaicture/view/p;->a:Lcom/mosaicture/view/MosaicViewerProgressActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->a(Lcom/mosaicture/view/MosaicViewerProgressActivity;)Lcom/mosaicture/c/f;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/mosaicture/c/f;->a(Lcom/mosaicture/d/a;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
