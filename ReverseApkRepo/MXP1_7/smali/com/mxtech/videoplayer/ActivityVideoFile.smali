.class public final Lcom/mxtech/videoplayer/ActivityVideoFile;
.super Lcom/mxtech/videoplayer/ActivityThemed;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final ㅼ꽑嫄:Lku;

.field private 弱밧:Landroid/widget/ListView;

.field private 洹:Landroid/widget/Button;

.field private 꾨뱾:Z

.field private 대쫫:Landroid/widget/Button;

.field private 뚮Ц:Landroid/content/DialogInterface$OnClickListener;

.field private 먯껜蹂대떎:Z

.field private 몃Ъ:Ljava/util/ArrayList;

.field private 붿슧:Landroid/content/DialogInterface$OnClickListener;

.field private 쇰뒗:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityThemed;-><init>()V

    new-instance v0, Lku;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lku;-><init>(Lcom/mxtech/videoplayer/ActivityVideoFile;Lku;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄:Lku;

    return-void
.end method

.method public static synthetic ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityVideoFile;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    return-object v0
.end method

.method private ㅼ꽑嫄()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄:Lku;

    invoke-virtual {v0}, Lku;->notifyDataSetChanged()V

    iput-boolean v3, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯껜蹂대떎:Z

    iput-boolean v3, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->꾨뱾:Z

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯꽌()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->몃Ъ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->몃Ъ:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoFile;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯껜蹂대떎:Z

    return-void
.end method

.method public static synthetic 궗(Lcom/mxtech/videoplayer/ActivityVideoFile;)Lku;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄:Lku;

    return-object v0
.end method

.method private 먯꽌()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v0

    array-length v3, v0

    iget-object v4, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->대쫫:Landroid/widget/Button;

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->洹:Landroid/widget/Button;

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static synthetic 먯꽌(Lcom/mxtech/videoplayer/ActivityVideoFile;)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援:Lfm;

    invoke-virtual {v0}, Lfm;->궗()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lno;->add:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->뚮Ц:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_2

    new-instance v0, Lks;

    invoke-direct {v0, p0}, Lks;-><init>(Lcom/mxtech/videoplayer/ActivityVideoFile;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->뚮Ц:Landroid/content/DialogInterface$OnClickListener;

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnt;->add:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lnt;->prompt_video_file_extension:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lnp;->video_file_ext_add:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->뚮Ц:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援:Lfm;

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援:Lfm;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    sget v1, Lno;->remove:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_4

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->몃Ъ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    sget v1, Lno;->change:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->붿슧:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_7

    new-instance v0, Lkt;

    invoke-direct {v0, p0}, Lkt;-><init>(Lcom/mxtech/videoplayer/ActivityVideoFile;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->붿슧:Landroid/content/DialogInterface$OnClickListener;

    :cond_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lnt;->decoder_selector_title:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lms;->뚮벏()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lnj;->decoder_choice:I

    :goto_2
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->붿슧:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援:Lfm;

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援:Lfm;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_8
    sget v0, Lnj;->decoder_choice_noomx:I

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget v0, Lnp;->video_file:I

    invoke-super {p0, p1, v0}, Lcom/mxtech/videoplayer/ActivityThemed;->癤욱븳援(Landroid/os/Bundle;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mxtech/app/MXApplication;

    invoke-virtual {v0, p0}, Lcom/mxtech/app/MXApplication;->癤욱븳援(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityThemed;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lnp;->video_file:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->setContentView(I)V

    goto :goto_0

    :cond_1
    sget v0, Lno;->list:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    sget v0, Lno;->add:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->쇰뒗:Landroid/widget/Button;

    sget v0, Lno;->remove:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->대쫫:Landroid/widget/Button;

    sget v0, Lno;->change:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->洹:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->쇰뒗:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->대쫫:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->洹:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lms;->洹()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->몃Ъ:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->몃Ъ:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄:Lku;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯꽌()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->弱밧:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->ㅼ꽑嫄:Lku;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnq;->preferences:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->꾨뱾:Z

    if-eqz v0, :cond_0

    sget v0, Lnt;->alert_rescan:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityThemed;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯꽌()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoFile;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lno;->reset:I

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnt;->menu_revert_to_default:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lnt;->inquire_revert_video_file_extension:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040013

    new-instance v3, Lkr;

    invoke-direct {v3, p0}, Lkr;-><init>(Lcom/mxtech/videoplayer/ActivityVideoFile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援:Lfm;

    invoke-virtual {v2, v1}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->癤욱븳援:Lfm;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ActivityThemed;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Lcom/mxtech/videoplayer/ActivityThemed;->onPause()V

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯껜蹂대떎:Z

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->몃Ъ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->몃Ъ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, v2}, Lms;->癤욱븳援(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoFile;->먯껜蹂대떎:Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
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
