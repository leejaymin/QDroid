.class public Lks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoFile;)V
    .locals 0

    iput-object p1, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    check-cast p1, Landroid/app/Dialog;

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lfr;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lfr;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityVideoFile;->궗(Lcom/mxtech/videoplayer/ActivityVideoFile;)Lku;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityVideoFile;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯꽌(Lcom/mxtech/videoplayer/ActivityVideoFile;)V

    iget-object v0, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityVideoFile;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lks;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v3}, Lcom/mxtech/videoplayer/ActivityVideoFile;->궗(Lcom/mxtech/videoplayer/ActivityVideoFile;)Lku;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
