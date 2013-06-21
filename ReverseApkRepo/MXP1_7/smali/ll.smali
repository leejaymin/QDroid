.class public final Lll;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/io/FileFilter;


# instance fields
.field private ㅼ꽑嫄:[Ljava/lang/String;

.field private 弱밧:[Ljava/lang/String;

.field private 癤욱븳援:Llo;

.field private 궗:Landroid/widget/TextView;

.field private 먯꽌:Ljava/io/File;

.field private 쇰뒗:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lll;->먯꽌()V

    return-void
.end method

.method private ㅼ꽑嫄()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lll;->먯꽌:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lll;->弱밧:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lll;->ㅼ꽑嫄:[Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lll;->먯꽌:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Llm;

    invoke-direct {v0, p0}, Llm;-><init>(Lll;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lll;->먯꽌:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lll;->먯꽌:Ljava/io/File;

    const-string v5, ".."

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v3

    :goto_1
    new-instance v1, Lln;

    invoke-virtual {p0}, Lll;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lln;-><init>(Landroid/content/Context;[Ljava/io/File;)V

    sget v0, Lno;->fileList:I

    invoke-virtual {p0, v0}, Lll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lll;->궗:Landroid/widget/TextView;

    iget-object v1, p0, Lll;->먯꽌:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    :goto_2
    return v0

    :cond_1
    iget-object v0, p0, Lll;->먯꽌:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private 먯꽌()V
    .locals 3

    invoke-virtual {p0}, Lll;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->file_chooser:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lno;->fileList:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v0, Lno;->path:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lll;->궗:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lll;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lll;->setInverseBackgroundForced(Z)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lll;->弱밧:[Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lll;->弱밧:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lll;->ㅼ꽑嫄:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lll;->ㅼ꽑嫄:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lln;

    invoke-virtual {v0, p3}, Lln;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lll;->먯꽌:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lll;->먯꽌:Ljava/io/File;

    :goto_0
    invoke-direct {p0}, Lll;->ㅼ꽑嫄()Z

    :goto_1
    return-void

    :cond_0
    iput-object v0, p0, Lll;->먯꽌:Ljava/io/File;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lll;->쇰뒗:Ljava/io/File;

    iget-object v1, p0, Lll;->癤욱븳援:Llo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lll;->癤욱븳援:Llo;

    invoke-interface {v1, p0, v0}, Llo;->癤욱븳援(Lll;Ljava/io/File;)V

    :cond_2
    invoke-virtual {p0}, Lll;->dismiss()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    const/4 v0, 0x0

    iput-object v0, p0, Lll;->쇰뒗:Ljava/io/File;

    invoke-direct {p0}, Lll;->ㅼ꽑嫄()Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    return-void
.end method

.method public 癤욱븳援()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lll;->쇰뒗:Ljava/io/File;

    return-object v0
.end method

.method public 癤욱븳援(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lll;->먯꽌:Ljava/io/File;

    return-void
.end method

.method public 癤욱븳援(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lll;->癤욱븳援(Ljava/io/File;)V

    return-void
.end method

.method public 癤욱븳援(Llo;)V
    .locals 0

    iput-object p1, p0, Lll;->癤욱븳援:Llo;

    return-void
.end method

.method public 癤욱븳援([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lll;->ㅼ꽑嫄:[Ljava/lang/String;

    return-void
.end method

.method public 궗()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lll;->먯꽌:Ljava/io/File;

    return-object v0
.end method
