.class public Limoblife/cmfilemanager/FileManagerActivity;
.super Limoblife/cmfilemanager/DistributionLibraryListActivity;


# static fields
.field private static final e:Ljava/lang/Character;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/ProgressBar;

.field private C:Limoblife/cmfilemanager/c;

.field private D:Ljava/io/File;

.field private E:Limoblife/cmfilemanager/aq;

.field private F:Landroid/view/MenuItem;

.field private G:Landroid/view/MenuItem;

.field private H:Landroid/os/Handler;

.field private I:Z

.field private J:[Limoblife/cmfilemanager/ac;

.field private K:Ljava/io/File;

.field b:Ljava/util/List;

.field c:Ljava/util/List;

.field d:Ljava/util/List;

.field private f:I

.field private g:Ljava/util/ArrayList;

.field private h:Z

.field private i:Ljava/io/File;

.field private j:Ljava/lang/String;

.field private k:Limoblife/cmfilemanager/b/c;

.field private l:Ljava/lang/String;

.field private m:Ljava/io/File;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/ImageButton;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Limoblife/cmfilemanager/FileManagerActivity;->e:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Limoblife/cmfilemanager/DistributionLibraryListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->d:Ljava/util/List;

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    const-string v0, ""

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->j:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->K:Ljava/io/File;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1, p2}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Limoblife/cmfilemanager/FileManagerActivity;->e:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v0, ""

    if-lez v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    sget v1, Limoblife/cmfilemanager/ao;->c:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    const/16 v1, 0x1f4

    if-lt v2, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget v1, Limoblife/cmfilemanager/ao;->d:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private a()V
    .locals 6

    const/4 v5, -0x2

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sget v1, Limoblife/cmfilemanager/ak;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Limoblife/cmfilemanager/y;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/y;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, ""

    const/4 v0, 0x1

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->e()V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sget v4, Limoblife/cmfilemanager/ak;->g:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Limoblife/cmfilemanager/z;

    invoke-direct {v4, p0}, Limoblife/cmfilemanager/z;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v4, Limoblife/cmfilemanager/i;

    invoke-direct {v4, p0}, Limoblife/cmfilemanager/i;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method static synthetic a(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    return-void
.end method

.method static synthetic a(Limoblife/cmfilemanager/FileManagerActivity;Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Limoblife/cmfilemanager/b;

    const/4 v1, 0x0

    iput-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->C:Limoblife/cmfilemanager/c;

    iget-object v1, v0, Limoblife/cmfilemanager/b;->c:Ljava/util/List;

    iput-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->d:Ljava/util/List;

    iget-object v1, v0, Limoblife/cmfilemanager/b;->a:Ljava/util/List;

    iput-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->b:Ljava/util/List;

    iget-object v1, v0, Limoblife/cmfilemanager/b;->b:Ljava/util/List;

    iput-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->c:Ljava/util/List;

    iget-boolean v0, v0, Limoblife/cmfilemanager/b;->d:Z

    iput-boolean v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->h:Z

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->d:Ljava/util/List;

    invoke-static {v0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->b:Ljava/util/List;

    invoke-static {v0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->c:Ljava/util/List;

    invoke-static {v0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->g:Ljava/util/ArrayList;

    new-array v1, v3, [Limoblife/cmfilemanager/ac;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Limoblife/cmfilemanager/ac;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->J:[Limoblife/cmfilemanager/ac;

    new-instance v0, Limoblife/cmfilemanager/ad;

    invoke-direct {v0, p0}, Limoblife/cmfilemanager/ad;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->hasTextFilter()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Limoblife/cmfilemanager/ad;->a(Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->D:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ad;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ad;->getCount()I

    move-result v5

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_1

    :goto_2
    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->a()V

    invoke-virtual {p0, v3}, Limoblife/cmfilemanager/FileManagerActivity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->B:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Limoblife/cmfilemanager/aq;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->c:Ljava/util/List;

    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->H:Landroid/os/Handler;

    iget-object v5, p0, Limoblife/cmfilemanager/FileManagerActivity;->k:Limoblife/cmfilemanager/b/c;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Limoblife/cmfilemanager/aq;-><init>(Ljava/io/File;Ljava/util/List;Landroid/os/Handler;Landroid/content/Context;Limoblife/cmfilemanager/b/c;)V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->E:Limoblife/cmfilemanager/aq;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->E:Limoblife/cmfilemanager/aq;

    invoke-virtual {v0}, Limoblife/cmfilemanager/aq;->start()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Limoblife/cmfilemanager/ad;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Limoblife/cmfilemanager/ac;

    invoke-virtual {v1}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Limoblife/cmfilemanager/FileManagerActivity;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    invoke-direct {p0, p1}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Limoblife/cmfilemanager/FileManagerActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Limoblife/cmfilemanager/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-static {v0, p2}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Limoblife/cmfilemanager/ao;->z:I

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    sget v0, Limoblife/cmfilemanager/ao;->w:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Limoblife/cmfilemanager/ao;->r:I

    goto :goto_0

    :cond_3
    sget v0, Limoblife/cmfilemanager/ao;->q:I

    goto :goto_0
.end method

.method static synthetic a(Limoblife/cmfilemanager/FileManagerActivity;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-static {v0, p1}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/io/File;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Limoblife/cmfilemanager/ao;->j:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->D:Ljava/io/File;

    iput-object p1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    goto :goto_0

    :cond_2
    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Limoblife/cmfilemanager/FileManagerActivity;->b(Ljava/io/File;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->p:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->w:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    sget v0, Limoblife/cmfilemanager/al;->l:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->w:Landroid/widget/LinearLayout;

    sget v0, Limoblife/cmfilemanager/al;->m:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->v:Landroid/widget/EditText;

    sget v0, Limoblife/cmfilemanager/al;->h:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->x:Landroid/widget/ImageButton;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->x:Landroid/widget/ImageButton;

    new-instance v3, Limoblife/cmfilemanager/x;

    invoke-direct {v3, p0}, Limoblife/cmfilemanager/x;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->w:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->w:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->a()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v3, 0x8000

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Limoblife/cmfilemanager/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->finish()V

    return-void

    :cond_1
    iget v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    goto :goto_0
.end method

.method static synthetic b(Limoblife/cmfilemanager/FileManagerActivity;Ljava/io/File;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Limoblife/cmfilemanager/aa;

    invoke-direct {v0, p0, v2}, Limoblife/cmfilemanager/aa;-><init>(Limoblife/cmfilemanager/FileManagerActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Limoblife/cmfilemanager/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Limoblife/cmfilemanager/ao;->n:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->k:Limoblife/cmfilemanager/b/c;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Limoblife/cmfilemanager/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://org.openintents.cmfilemanager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Limoblife/cmfilemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->finish()V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v0, Limoblife/cmfilemanager/ao;->b:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->w:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    if-lez v0, :cond_0

    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    :cond_0
    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Limoblife/cmfilemanager/FileManagerActivity;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->J:[Limoblife/cmfilemanager/ac;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    sget v1, Limoblife/cmfilemanager/ao;->s:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Limoblife/cmfilemanager/ac;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 8

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v0, 0x1

    iget v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    move v7, v0

    :goto_0
    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->C:Limoblife/cmfilemanager/c;

    if-eqz v1, :cond_0

    iput-boolean v0, v1, Limoblife/cmfilemanager/c;->a:Z

    :cond_0
    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->E:Limoblife/cmfilemanager/aq;

    if-eqz v1, :cond_1

    iput-boolean v0, v1, Limoblife/cmfilemanager/aq;->b:Z

    iput-object v4, p0, Limoblife/cmfilemanager/FileManagerActivity;->E:Limoblife/cmfilemanager/aq;

    :cond_1
    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v4}, Limoblife/cmfilemanager/FileManagerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Limoblife/cmfilemanager/c;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->H:Landroid/os/Handler;

    iget-object v4, p0, Limoblife/cmfilemanager/FileManagerActivity;->k:Limoblife/cmfilemanager/b/c;

    iget-object v5, p0, Limoblife/cmfilemanager/FileManagerActivity;->j:Ljava/lang/String;

    iget-boolean v6, p0, Limoblife/cmfilemanager/FileManagerActivity;->I:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Limoblife/cmfilemanager/c;-><init>(Ljava/io/File;Landroid/content/Context;Landroid/os/Handler;Limoblife/cmfilemanager/b/c;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->C:Limoblife/cmfilemanager/c;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->C:Limoblife/cmfilemanager/c;

    invoke-virtual {v0}, Limoblife/cmfilemanager/c;->start()V

    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static synthetic d(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sget v3, Limoblife/cmfilemanager/ak;->c:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Limoblife/cmfilemanager/j;

    invoke-direct {v3, p0}, Limoblife/cmfilemanager/j;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v2, v4, v4}, Landroid/widget/ImageButton;->measure(II)V

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method static synthetic e(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->g()V

    return-void
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.openintents.action.PICK_DIRECTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-static {v1}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "org.openintents.extra.TITLE"

    sget v2, Limoblife/cmfilemanager/ao;->L:I

    invoke-virtual {p0, v2}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.openintents.extra.BUTTON_TEXT"

    sget v2, Limoblife/cmfilemanager/ao;->K:I

    invoke-virtual {p0, v2}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.openintents.extra.WRITEABLE_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Limoblife/cmfilemanager/FileManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic f(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Limoblife/cmfilemanager/FileManagerActivity;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->K:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->K:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->K:Ljava/io/File;

    invoke-direct {p0, v2}, Limoblife/cmfilemanager/FileManagerActivity;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->K:Ljava/io/File;

    :cond_2
    invoke-direct {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method static synthetic g(Limoblife/cmfilemanager/FileManagerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.openintents.action.PICK_DIRECTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-static {v1}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "org.openintents.extra.TITLE"

    sget v2, Limoblife/cmfilemanager/ao;->f:I

    invoke-virtual {p0, v2}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.openintents.extra.BUTTON_TEXT"

    sget v2, Limoblife/cmfilemanager/ao;->e:I

    invoke-virtual {p0, v2}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.openintents.extra.WRITEABLE_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic h(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->c()V

    return-void
.end method

.method static synthetic i(Limoblife/cmfilemanager/FileManagerActivity;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    return-object v0
.end method

.method static synthetic j(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->J:[Limoblife/cmfilemanager/ac;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    new-instance v0, Limoblife/cmfilemanager/aa;

    invoke-direct {v0, p0, v1}, Limoblife/cmfilemanager/aa;-><init>(Limoblife/cmfilemanager/FileManagerActivity;B)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Limoblife/cmfilemanager/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    aget-object v5, v3, v0

    invoke-virtual {v5}, Limoblife/cmfilemanager/ac;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v5}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v4, 0x4

    const/4 v7, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v7, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Limoblife/cmfilemanager/b/a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    if-eq v3, v4, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Limoblife/cmfilemanager/ao;->y:I

    :goto_1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget v0, Limoblife/cmfilemanager/ao;->u:I

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Limoblife/cmfilemanager/ao;->p:I

    goto :goto_1

    :cond_3
    sget v0, Limoblife/cmfilemanager/ao;->o:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->J:[Limoblife/cmfilemanager/ac;

    array-length v4, v3

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_6

    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    sget v0, Limoblife/cmfilemanager/ao;->u:I

    :cond_5
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Limoblife/cmfilemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->finish()V

    goto :goto_0

    :cond_6
    aget-object v5, v3, v0

    invoke-virtual {v5}, Limoblife/cmfilemanager/ac;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v5}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Limoblife/cmfilemanager/ao;->p:I

    goto :goto_3

    :cond_7
    sget v0, Limoblife/cmfilemanager/ao;->o:I

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_1
    if-ne p2, v7, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Limoblife/cmfilemanager/b/a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    if-eq v3, v4, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Limoblife/cmfilemanager/FileManagerActivity;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Limoblife/cmfilemanager/ao;->t:I

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    :goto_4
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    sget v0, Limoblife/cmfilemanager/ao;->i:I

    goto :goto_4

    :cond_a
    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->J:[Limoblife/cmfilemanager/ac;

    array-length v4, v3

    move v0, v1

    :goto_5
    if-lt v0, v4, :cond_c

    move v0, v1

    :goto_6
    if-nez v0, :cond_b

    sget v0, Limoblife/cmfilemanager/ao;->t:I

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    :cond_b
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Limoblife/cmfilemanager/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->finish()V

    goto/16 :goto_0

    :cond_c
    aget-object v5, v3, v0

    invoke-virtual {v5}, Limoblife/cmfilemanager/ac;->a()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v5}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v2, v6}, Limoblife/cmfilemanager/FileManagerActivity;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-eqz v2, :cond_d

    invoke-static {v5, v6}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_d

    sget v0, Limoblife/cmfilemanager/ao;->i:I

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_2
    if-ne p2, v7, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->d()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Limoblife/cmfilemanager/ad;

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Limoblife/cmfilemanager/ad;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->l:Ljava/lang/String;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    invoke-direct {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->b(Ljava/io/File;)V

    move v0, v3

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->f()V

    move v0, v3

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->g()V

    move v0, v3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->showDialog(I)V

    move v0, v3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->showDialog(I)V

    move v0, v3

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "hh"

    const-string v5, "FileManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Title to send: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "FileManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Content to send: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Limoblife/cmfilemanager/FileManagerActivity;->k:Limoblife/cmfilemanager/b/c;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Limoblife/cmfilemanager/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "content://org.openintents.cmfilemanager"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget v0, Limoblife/cmfilemanager/ao;->J:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget v0, Limoblife/cmfilemanager/ao;->ap:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "FileManagerActivity"

    const-string v1, "Email client not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->a:Limoblife/cmfilemanager/d;

    const/16 v1, 0x65

    iput v1, v0, Limoblife/cmfilemanager/d;->b:I

    const/16 v1, 0x64

    iput v1, v0, Limoblife/cmfilemanager/d;->c:I

    new-instance v0, Limoblife/cmfilemanager/h;

    invoke-direct {v0, p0}, Limoblife/cmfilemanager/h;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->H:Landroid/os/Handler;

    invoke-virtual {p0, v9}, Limoblife/cmfilemanager/FileManagerActivity;->requestWindowFeature(I)Z

    sget v0, Limoblife/cmfilemanager/am;->b:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->setContentView(I)V

    sget v0, Limoblife/cmfilemanager/al;->v:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Limoblife/cmfilemanager/ao;->aq:I

    invoke-virtual {p0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Limoblife/cmfilemanager/al;->c:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/cmfilemanager/s;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/s;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/cmfilemanager/al;->o:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->A:Landroid/widget/TextView;

    sget v0, Limoblife/cmfilemanager/al;->w:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->B:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Limoblife/cmfilemanager/al;->n:I

    invoke-virtual {p0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    sget v0, Limoblife/cmfilemanager/al;->k:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    sget v0, Limoblife/cmfilemanager/al;->b:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->y:Landroid/widget/LinearLayout;

    sget v0, Limoblife/cmfilemanager/al;->a:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->z:Landroid/widget/LinearLayout;

    sget v0, Limoblife/cmfilemanager/al;->p:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->p:Landroid/widget/EditText;

    sget v0, Limoblife/cmfilemanager/al;->j:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->q:Landroid/widget/Button;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->q:Landroid/widget/Button;

    new-instance v1, Limoblife/cmfilemanager/t;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/t;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->w:Landroid/widget/LinearLayout;

    new-instance v0, Limoblife/cmfilemanager/b/b;

    invoke-direct {v0}, Limoblife/cmfilemanager/b/b;-><init>()V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Limoblife/cmfilemanager/ap;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v1}, Limoblife/cmfilemanager/b/b;->a(Landroid/content/res/XmlResourceParser;)Limoblife/cmfilemanager/b/c;

    move-result-object v0

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->k:Limoblife/cmfilemanager/b/c;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->j:Ljava/lang/String;

    iput v9, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    iput v9, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    iput-boolean v8, p0, Limoblife/cmfilemanager/FileManagerActivity;->I:Z

    if-eqz v2, :cond_0

    const-string v0, "org.openintents.action.PICK_FILE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    iput v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    :cond_0
    :goto_1
    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    if-eq v0, v10, :cond_2

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Limoblife/cmfilemanager/b/a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v2

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_4
    const-string v1, "org.openintents.extra.TITLE"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v1, "org.openintents.extra.BUTTON_TEXT"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->q:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iput v8, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    if-eqz p1, :cond_6

    new-instance v0, Ljava/io/File;

    const-string v1, "current_directory"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "context_file"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    const-string v1, "context_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->l:Ljava/lang/String;

    const-string v1, "show_directory_input"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->a(Z)V

    const-string v1, "steps_back"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    :cond_6
    invoke-direct {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FileManagerActivity"

    const-string v2, "PreselectedChannelsActivity: XmlPullParserException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PreselectedChannelsActivity: XmlPullParserException"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "FileManagerActivity"

    const-string v2, "PreselectedChannelsActivity: IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PreselectedChannelsActivity: IOException"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "org.openintents.action.PICK_DIRECTORY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    iput v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    const-string v0, "org.openintents.extra.WRITEABLE_ONLY"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->I:Z

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->q:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "org.openintents.action.MULTI_SELECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v10, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v0, Limoblife/cmfilemanager/al;->i:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->s:Landroid/widget/Button;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->s:Landroid/widget/Button;

    new-instance v2, Limoblife/cmfilemanager/u;

    invoke-direct {v2, p0}, Limoblife/cmfilemanager/u;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/cmfilemanager/al;->f:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->t:Landroid/widget/Button;

    new-instance v2, Limoblife/cmfilemanager/v;

    invoke-direct {v2, p0}, Limoblife/cmfilemanager/v;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/cmfilemanager/al;->g:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->u:Landroid/widget/Button;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->u:Landroid/widget/Button;

    new-instance v2, Limoblife/cmfilemanager/w;

    invoke-direct {v2, p0}, Limoblife/cmfilemanager/w;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_2

    :cond_b
    move-object v0, v3

    goto/16 :goto_2

    :cond_c
    move-object v0, v1

    goto/16 :goto_3

    :cond_d
    move-object v0, v1

    goto/16 :goto_4

    :cond_e
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ad;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FileManagerActivity"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Limoblife/cmfilemanager/ad;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/16 v1, 0x9

    sget v3, Limoblife/cmfilemanager/ao;->H:I

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    const/16 v1, 0x8

    sget v3, Limoblife/cmfilemanager/ao;->J:I

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_3
    const/16 v1, 0xa

    sget v3, Limoblife/cmfilemanager/ao;->E:I

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xb

    sget v3, Limoblife/cmfilemanager/ao;->A:I

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_4
    const/4 v1, 0x7

    sget v3, Limoblife/cmfilemanager/ao;->I:I

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x6

    sget v3, Limoblife/cmfilemanager/ao;->B:I

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->k:Limoblife/cmfilemanager/b/c;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Limoblife/cmfilemanager/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "FileManagerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Data="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FileManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/high16 v1, 0x4

    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v3, v2

    move v7, v2

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const v11, 0x1080027

    const v10, 0x104000a

    const/high16 v9, 0x104

    const/4 v8, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Limoblife/cmfilemanager/am;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Limoblife/cmfilemanager/al;->q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Limoblife/cmfilemanager/ao;->g:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Limoblife/cmfilemanager/k;

    invoke-direct {v2, p0, v0}, Limoblife/cmfilemanager/k;-><init>(Limoblife/cmfilemanager/FileManagerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v10, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Limoblife/cmfilemanager/l;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/l;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Limoblife/cmfilemanager/ao;->an:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v4, p0, Limoblife/cmfilemanager/FileManagerActivity;->l:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Limoblife/cmfilemanager/m;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/m;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Limoblife/cmfilemanager/n;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/n;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Limoblife/cmfilemanager/am;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Limoblife/cmfilemanager/al;->q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Limoblife/cmfilemanager/ao;->I:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Limoblife/cmfilemanager/o;

    invoke-direct {v2, p0, v0}, Limoblife/cmfilemanager/o;-><init>(Limoblife/cmfilemanager/FileManagerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v10, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Limoblife/cmfilemanager/p;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/p;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x0

    iget-object v4, p0, Limoblife/cmfilemanager/FileManagerActivity;->J:[Limoblife/cmfilemanager/ac;

    array-length v5, v4

    move v2, v3

    move v0, v3

    :goto_1
    if-lt v2, v5, :cond_0

    if-ne v0, v8, :cond_2

    sget v0, Limoblife/cmfilemanager/ao;->an:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Limoblife/cmfilemanager/q;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/q;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Limoblife/cmfilemanager/r;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/r;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    aget-object v6, v4, v2

    invoke-virtual {v6}, Limoblife/cmfilemanager/ac;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget v1, Limoblife/cmfilemanager/ao;->ao:I

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const v7, 0x108003f

    const/16 v6, 0x73

    const/16 v5, 0x32

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x5

    sget v1, Limoblife/cmfilemanager/ao;->G:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0x66

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    if-ne v0, v4, :cond_0

    const/16 v0, 0xf

    sget v1, Limoblife/cmfilemanager/ao;->F:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Limoblife/cmfilemanager/ak;->d:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x31

    const/16 v2, 0x6d

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    :cond_0
    const/16 v0, 0xc

    sget v1, Limoblife/cmfilemanager/ao;->D:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->G:Landroid/view/MenuItem;

    const/16 v0, 0xd

    sget v1, Limoblife/cmfilemanager/ao;->C:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->F:Landroid/view/MenuItem;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->a:Limoblife/cmfilemanager/d;

    invoke-virtual {v0, p1}, Limoblife/cmfilemanager/d;->a(Landroid/view/Menu;)V

    return v4
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onDestroy()V

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->C:Limoblife/cmfilemanager/c;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Limoblife/cmfilemanager/c;->a:Z

    :cond_0
    iput-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->C:Limoblife/cmfilemanager/c;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->E:Limoblife/cmfilemanager/aq;

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Limoblife/cmfilemanager/aq;->b:Z

    iput-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->E:Limoblife/cmfilemanager/aq;

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    invoke-super/range {p0 .. p5}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ad;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p3}, Limoblife/cmfilemanager/ad;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Limoblife/cmfilemanager/ac;

    iget v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->f:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Limoblife/cmfilemanager/ac;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Limoblife/cmfilemanager/ac;->a(Z)V

    invoke-virtual {v0}, Limoblife/cmfilemanager/ad;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Limoblife/cmfilemanager/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    :cond_4
    invoke-direct {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/FileManagerActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.openintents.action.MULTI_SELECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-static {v2}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "org.openintents.extra.TITLE"

    sget v3, Limoblife/cmfilemanager/ao;->M:I

    invoke-virtual {p0, v3}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Limoblife/cmfilemanager/FileManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4

    invoke-super {p0, p1, p2}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v0, Limoblife/cmfilemanager/al;->q:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    sget v0, Limoblife/cmfilemanager/ao;->an:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Limoblife/cmfilemanager/FileManagerActivity;->l:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    sget v0, Limoblife/cmfilemanager/al;->q:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Limoblife/cmfilemanager/al;->r:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    sget v1, Limoblife/cmfilemanager/ao;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->G:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {p0}, Limoblife/cmfilemanager/PreferenceActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->G:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0}, Limoblife/cmfilemanager/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Limoblife/a/b;

    invoke-direct {v1, p0, p1}, Limoblife/a/b;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Limoblife/a/b;->a(Landroid/content/ComponentName;Landroid/content/Intent;)I

    return v4

    :cond_1
    iget-object v0, p0, Limoblife/cmfilemanager/FileManagerActivity;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "current_directory"

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "context_file"

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "context_text"

    iget-object v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Limoblife/cmfilemanager/FileManagerActivity;->b()Z

    move-result v0

    const-string v1, "show_directory_input"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "steps_back"

    iget v1, p0, Limoblife/cmfilemanager/FileManagerActivity;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
