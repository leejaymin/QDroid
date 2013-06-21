.class public final Lcom/mxtech/videoplayer/ActivityScanRootSelector;
.super Lcom/mxtech/videoplayer/ActivityThemed;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private ㅼ꽑嫄:Landroid/widget/ListView;

.field private 弱밧:Landroid/widget/Button;

.field private 洹:Ljp;

.field private 대쫫:Landroid/app/ProgressDialog;

.field private final 몃Ъ:Landroid/widget/BaseAdapter;

.field private 쇰뒗:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityThemed;-><init>()V

    new-instance v0, Ljo;

    invoke-direct {v0, p0}, Ljo;-><init>(Lcom/mxtech/videoplayer/ActivityScanRootSelector;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->몃Ъ:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityScanRootSelector;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityScanRootSelector;Ljp;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->洹:Ljp;

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityScanRootSelector;[Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援([Ljava/io/File;)V

    return-void
.end method

.method private 癤욱븳援([Ljava/io/File;)V
    .locals 3

    invoke-static {p1}, Lms;->癤욱븳援([Ljava/io/File;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->몃Ъ:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private 먯꽌()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->쇰뒗:Landroid/widget/Button;

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->洹:Ljp;

    if-nez v1, :cond_0

    instance-of v1, p1, Lll;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lll;

    move-object v1, v0

    invoke-virtual {v1}, Lll;->궗()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lms;->대떎:[Ljava/io/File;

    array-length v5, v4

    move v1, v2

    :goto_1
    if-lt v1, v5, :cond_3

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    sget v2, Lnt;->alert_scanning_folder:I

    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援:Lfm;

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Ljp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljp;-><init>(Lcom/mxtech/videoplayer/ActivityScanRootSelector;Ljp;)V

    iput-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->洹:Ljp;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->洹:Ljp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljp;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_3
    :try_start_2
    aget-object v2, v4, v1

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援:Lfm;

    invoke-virtual {v0}, Lfm;->궗()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->弱밧:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    new-instance v0, Lll;

    invoke-direct {v0, p0}, Lll;-><init>(Landroid/content/Context;)V

    sget v1, Lnt;->choose_video_scan_root:I

    invoke-virtual {v0, v1}, Lll;->setTitle(I)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lll;->癤욱븳援(Ljava/io/File;)V

    const/4 v1, -0x1

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p0}, Lll;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lll;->癤욱븳援([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援:Lfm;

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Lll;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lfp;->癤욱븳援(Landroid/util/SparseBooleanArray;)I

    move-result v0

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援:Lfm;

    sget v1, Lnt;->alert_need_at_lease_one_scan_root:I

    invoke-static {p0, v0, v1}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;I)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lms;->대떎:[Ljava/io/File;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-eq v0, v3, :cond_4

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Somthing wrong: roots.size()="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but listView.getCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援([Ljava/io/File;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget v0, Lnp;->scan_root_selector:I

    invoke-super {p0, p1, v0}, Lcom/mxtech/videoplayer/ActivityThemed;->癤욱븳援(Landroid/os/Bundle;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mxtech/app/MXApplication;

    invoke-virtual {v0, p0}, Lcom/mxtech/app/MXApplication;->癤욱븳援(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityThemed;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lnp;->scan_root_selector:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->setContentView(I)V

    goto :goto_0

    :cond_1
    sget v0, Lno;->list:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    sget v0, Lno;->add:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->弱밧:Landroid/widget/Button;

    sget v0, Lno;->remove:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->쇰뒗:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->弱밧:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->쇰뒗:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->먯꽌()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->ㅼ꽑嫄:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->몃Ъ:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->대쫫:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->洹:Ljp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->洹:Ljp;

    invoke-virtual {v0}, Ljp;->癤욱븳援()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->먯꽌()V

    return-void
.end method

.method protected 癤욱븳援(Ljava/lang/String;)I
    .locals 1

    const-string v0, "white"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lnu;->WhiteTheme_Simple:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lnu;->BlackTheme_Simple:I

    goto :goto_0
.end method
