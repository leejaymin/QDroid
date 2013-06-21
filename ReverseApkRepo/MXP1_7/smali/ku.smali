.class public Lku;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoFile;)V
    .locals 0

    iput-object p1, p0, Lku;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoFile;Lku;)V
    .locals 0

    invoke-direct {p0, p1}, Lku;-><init>(Lcom/mxtech/videoplayer/ActivityVideoFile;)V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lku;->癤욱븳援(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lku;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lku;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lku;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->video_file_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mxtech/widget/ListRow;

    invoke-virtual {v0}, Lcom/mxtech/widget/ListRow;->癤욱븳援()V

    move-object p2, v1

    :cond_0
    iget-object v0, p0, Lku;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    sget v0, Lno;->ext:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lno;->mode:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lku;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lku;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoFile;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v3, v0}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public 癤욱븳援(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
