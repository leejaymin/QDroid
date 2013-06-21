.class public Lkr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoFile;)V
    .locals 0

    iput-object p1, p0, Lkr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lkr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lms;->癤욱븳援(Landroid/content/Context;Ljava/util/Map;)Z

    iget-object v0, p0, Lkr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lms;->洹()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lkr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lkr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityVideoFile;->궗(Lcom/mxtech/videoplayer/ActivityVideoFile;)Lku;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lkr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯꽌(Lcom/mxtech/videoplayer/ActivityVideoFile;)V

    iget-object v0, p0, Lkr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
