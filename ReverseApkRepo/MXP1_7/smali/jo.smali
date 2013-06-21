.class public Ljo;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScanRootSelector;)V
    .locals 0

    iput-object p1, p0, Ljo;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lms;->대떎:[Ljava/io/File;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lms;->대떎:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_1

    iget-object v0, p0, Ljo;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->scan_root_selector_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    sget-object v0, Lms;->대떎:[Ljava/io/File;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    :goto_1
    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lms;->대떎:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
