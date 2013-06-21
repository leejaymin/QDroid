.class public Lkt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoFile;)V
    .locals 0

    iput-object p1, p0, Lkt;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lkt;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityVideoFile;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lkt;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lms;->뚮벏()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lnj;->decoder_choice_value:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v3, v0, p2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-gez v1, :cond_2

    iget-object v0, p0, Lkt;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯꽌(Lcom/mxtech/videoplayer/ActivityVideoFile;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_1
    sget v0, Lnj;->decoder_choice_value_noomx:I

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkt;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method
