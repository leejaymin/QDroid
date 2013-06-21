.class public abstract Lcom/kms/gui/SelectFolderActivity;
.super Lcom/kms/gui/KMSBaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:Z

.field private d:Landroid/view/LayoutInflater;

.field private e:[Ljava/lang/String;

.field private f:LdZ;

.field private g:Lea;

.field private h:Z

.field private i:[Ljava/lang/String;

.field private j:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;-><init>()V

    .line 39
    new-instance v0, LdZ;

    invoke-direct {v0, p0}, LdZ;-><init>(Lcom/kms/gui/SelectFolderActivity;)V

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->f:LdZ;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/SelectFolderActivity;->h:Z

    .line 352
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/SelectFolderActivity;)LdZ;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->f:LdZ;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 281
    const v0, 0x7f0b0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    new-instance v1, LdX;

    invoke-direct {v1, p0, v0, p1}, LdX;-><init>(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;Landroid/view/View;)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 298
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 299
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kms/gui/SelectFolderActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kms/gui/SelectFolderActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v2, Lcom/kavsdk/shared/FsExplorer;

    invoke-direct {v2}, Lcom/kavsdk/shared/FsExplorer;-><init>()V

    .line 87
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x1

    .line 100
    :goto_1
    if-eqz v0, :cond_4

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/kms/gui/SelectFolderActivity;->c()Z

    move-result v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/kavsdk/shared/FsExplorer;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 108
    :goto_2
    invoke-virtual {v2}, Lcom/kavsdk/shared/FsExplorer;->getDirList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    .line 109
    invoke-virtual {v2}, Lcom/kavsdk/shared/FsExplorer;->getFileList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->i:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kms/gui/SelectFolderActivity;->c()Z

    move-result v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/kavsdk/shared/FsExplorer;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static synthetic b(Lcom/kms/gui/SelectFolderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 302
    const v0, 0x7f0b0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    const v1, 0x7f0b0121

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 304
    new-instance v2, LdY;

    invoke-direct {v2, p0, v0, v1}, LdY;-><init>(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;Landroid/view/View;)V

    .line 319
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 320
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 321
    return-void
.end method

.method public static synthetic b(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kms/gui/SelectFolderActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/kms/gui/SelectFolderActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/kms/gui/SelectFolderActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static synthetic e(Lcom/kms/gui/SelectFolderActivity;)Lea;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->g:Lea;

    return-object v0
.end method

.method private f()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 449
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sys"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/proc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/debug"

    aput-object v2, v0, v1

    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 454
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    array-length v0, v0

    sub-int v0, p1, v0

    .line 274
    iget-boolean v1, p0, Lcom/kms/gui/SelectFolderActivity;->c:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_1

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/kms/gui/SelectFolderActivity;->e:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/kms/gui/SelectFolderActivity;->c:Z

    if-eqz v0, :cond_1

    .line 327
    if-nez p1, :cond_0

    .line 329
    const-string v0, "/"

    .line 336
    :goto_0
    return-object v0

    .line 333
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public abstract e()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030042

    const v1, 0x7f0b002e

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/SelectFolderActivity;->a(II)V

    .line 52
    invoke-virtual {p0}, Lcom/kms/gui/SelectFolderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/kms/gui/SelectFolderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 55
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->d:Landroid/view/LayoutInflater;

    .line 56
    new-instance v0, Lea;

    invoke-direct {v0, p0}, Lea;-><init>(Lcom/kms/gui/SelectFolderActivity;)V

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->g:Lea;

    .line 57
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->g:Lea;

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    invoke-virtual {p0}, Lcom/kms/gui/SelectFolderActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-boolean v3, p0, Lcom/kms/gui/SelectFolderActivity;->c:Z

    .line 63
    invoke-static {v2}, Lcom/kavsdk/shared/SdkUtils;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->a(Ljava/lang/String;)V

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/kms/gui/SelectFolderActivity;->f()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->i:[Ljava/lang/String;

    .line 72
    return-void

    .line 68
    :cond_0
    iput-boolean v2, p0, Lcom/kms/gui/SelectFolderActivity;->c:Z

    .line 69
    invoke-static {v3}, Lcom/kavsdk/shared/SdkUtils;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->j:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 431
    if-nez p2, :cond_0

    .line 433
    const v0, 0x7f0b0005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 434
    if-eqz v0, :cond_0

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 439
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    const v0, 0x7f0b0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 474
    if-eqz v0, :cond_0

    .line 476
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 479
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 342
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/kms/gui/SelectFolderActivity;->h:Z

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kms/gui/SelectFolderActivity;->a(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/kms/gui/SelectFolderActivity;->g:Lea;

    invoke-virtual {v0}, Lea;->notifyDataSetChanged()V

    .line 347
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/SelectFolderActivity;->h:Z

    .line 348
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onWindowFocusChanged(Z)V

    .line 349
    return-void
.end method
