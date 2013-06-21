.class public Lcom/inisoft/mediaplayer/MediaPathActivity;
.super Lcom/actionbarsherlock/app/SherlockListActivity;


# static fields
.field private static d:Lcom/inisoft/mediaplayer/bq;

.field private static g:Z

.field private static synthetic m:[I


# instance fields
.field a:Lcom/inisoft/mediaplayer/ci;

.field b:Lcom/inisoft/mediaplayer/ci;

.field c:Lcom/inisoft/mediaplayer/bo;

.field private e:Ljava/util/ArrayList;

.field private f:Lcom/inisoft/mediaplayer/ea;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    iput v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->i:I

    iput v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->j:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->l:Ljava/util/Locale;

    new-instance v0, Lcom/inisoft/mediaplayer/dt;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dt;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->a:Lcom/inisoft/mediaplayer/ci;

    new-instance v0, Lcom/inisoft/mediaplayer/du;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/du;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->b:Lcom/inisoft/mediaplayer/ci;

    new-instance v0, Lcom/inisoft/mediaplayer/dv;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dv;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->c:Lcom/inisoft/mediaplayer/bo;

    return-void
.end method

.method static synthetic a()Lcom/inisoft/mediaplayer/bq;
    .locals 1

    sget-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    return-object v0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/MediaPathActivity;)Lcom/inisoft/mediaplayer/ea;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "SELECTED_PATH"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "listview_networkindex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->finish()V

    return-void
.end method

.method private static a(Lcom/actionbarsherlock/view/Menu;)V
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/actionbarsherlock/view/Menu;->clear()V

    const/4 v0, 0x0

    const v1, 0x7f0500c0

    invoke-interface {p0}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a000c

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p0}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p0}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/MediaPathActivity;Lcom/inisoft/mediaplayer/bs;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->c:Lcom/inisoft/mediaplayer/bo;

    invoke-static {p0, v0, p1, v1}, Lcom/inisoft/mediaplayer/bj;->a(Landroid/content/Context;Lcom/inisoft/mediaplayer/bp;Lcom/inisoft/mediaplayer/bs;Lcom/inisoft/mediaplayer/bo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/inisoft/mediaplayer/bs;)V
    .locals 5

    sget-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    iget-object v2, v0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/bp;

    iget-object v3, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    new-instance v4, Lcom/inisoft/mediaplayer/ea;

    invoke-direct {v4, p0, v0, v1}, Lcom/inisoft/mediaplayer/ea;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Lcom/inisoft/mediaplayer/bp;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/bq;->a(Lcom/inisoft/mediaplayer/bs;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->h:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/inisoft/mediaplayer/ec;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v2, p0, v3}, Lcom/inisoft/mediaplayer/ec;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/inisoft/mediaplayer/bp;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    const v3, 0x7f0a00b1

    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/inisoft/mediaplayer/bp;-><init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/inisoft/mediaplayer/ea;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/inisoft/mediaplayer/ea;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Lcom/inisoft/mediaplayer/bp;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/bs;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/inisoft/mediaplayer/ec;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v2, p0, v3}, Lcom/inisoft/mediaplayer/ec;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/bs;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/inisoft/mediaplayer/ec;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-direct {v2, p0, v3}, Lcom/inisoft/mediaplayer/ec;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/bs;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/inisoft/mediaplayer/ec;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-direct {v2, p0, v0}, Lcom/inisoft/mediaplayer/ec;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/inisoft/mediaplayer/bs;->d:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/bs;)V

    new-instance v0, Lcom/inisoft/mediaplayer/dz;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/inisoft/mediaplayer/dz;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->registerForContextMenu(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/MediaPathActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    iget v1, v1, Lcom/inisoft/mediaplayer/ea;->c:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/bq;->a(I)Lcom/inisoft/mediaplayer/bp;

    move-result-object v0

    iget-object v1, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->c:Lcom/inisoft/mediaplayer/bo;

    invoke-static {p0, v0, v1, v2}, Lcom/inisoft/mediaplayer/bj;->a(Landroid/content/Context;Lcom/inisoft/mediaplayer/bp;Lcom/inisoft/mediaplayer/bs;Lcom/inisoft/mediaplayer/bo;)V

    return-void
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/MediaPathActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    return-void
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/MediaPathActivity;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->h:I

    return v0
.end method

.method private static synthetic d()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->m:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/bs;->values()[Lcom/inisoft/mediaplayer/bs;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->d:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->f:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->e:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->m:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/MediaPathActivity;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00a5

    new-instance v2, Lcom/inisoft/mediaplayer/dy;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/dy;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/MediaPathActivity;)V
    .locals 4

    :try_start_0
    const-string v0, "/"

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0a009e

    invoke-virtual {p0, v2}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/cg;->c:Lcom/inisoft/mediaplayer/cg;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->b:Lcom/inisoft/mediaplayer/ci;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/by;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inisoft/mediaplayer/cg;Lcom/inisoft/mediaplayer/ci;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onBackPressed()V

    iget v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->j:I

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->l:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->l:Ljava/util/Locale;

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->l:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    if-ne v0, v1, :cond_1

    const-string v0, "/"

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0a009e

    invoke-virtual {p0, v2}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/cg;->c:Lcom/inisoft/mediaplayer/cg;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->a:Lcom/inisoft/mediaplayer/ci;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/by;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inisoft/mediaplayer/cg;Lcom/inisoft/mediaplayer/ci;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->c()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    iget v1, v1, Lcom/inisoft/mediaplayer/ea;->c:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/bq;->b(I)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->b()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DICE_SETTINGS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v5}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "theme"

    const-string v2, "Light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x103006e

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->setTheme(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "en"

    invoke-static {p0, v1, v2}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->l:Ljava/util/Locale;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v1

    sput-boolean v1, Lcom/inisoft/mediaplayer/MediaPathActivity;->g:Z

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/inisoft/mediaplayer/MediaPathActivity;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/inisoft/mediaplayer/MediaPathActivity;->requestWindowFeature(I)Z

    :cond_0
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->setContentView(I)V

    invoke-static {v5}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "theme"

    const-string v2, "Light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    :cond_1
    :goto_1
    new-instance v0, Lcom/inisoft/mediaplayer/be;

    sget-boolean v1, Lcom/inisoft/mediaplayer/MediaPathActivity;->g:Z

    invoke-direct {v0, v1, p0}, Lcom/inisoft/mediaplayer/be;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/be;->a()V

    invoke-virtual {v0, v4}, Lcom/inisoft/mediaplayer/be;->a(Z)V

    const v1, 0x7f0a009d

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/be;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/inisoft/mediaplayer/bq;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/bq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SELECTED_MODIFY_INDEX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->i:I

    const-string v1, "SELECTED_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->k:Ljava/lang/String;

    const-string v1, "SELECTED_INDEX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->j:I

    return-void

    :cond_2
    const v1, 0x103006b

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->setTheme(I)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "theme"

    const-string v2, "Light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->setTheme(I)V

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->setTheme(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/eb;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/eb;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Lcom/inisoft/mediaplayer/ea;

    iget-object v2, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v3, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const v3, 0x7f0a0032

    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v3, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    if-ne v0, v3, :cond_2

    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ". "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/actionbarsherlock/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/eb;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/eb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/ea;

    iget-object v1, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/inisoft/mediaplayer/hw;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00a5

    new-instance v2, Lcom/inisoft/mediaplayer/dw;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/dw;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPathActivity;->d()[I

    move-result-object v1

    iget-object v2, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v2, v3

    move v1, v3

    :goto_1
    iget v4, v0, Lcom/inisoft/mediaplayer/ea;->c:I

    if-lt v2, v4, :cond_3

    if-gez v1, :cond_2

    move v1, v3

    :cond_2
    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v3}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "listview_currentindex"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "useMediaStore"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v6, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->k:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(I)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    invoke-virtual {v4, v2}, Lcom/inisoft/mediaplayer/bq;->a(I)Lcom/inisoft/mediaplayer/bp;

    move-result-object v4

    sget-object v5, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    iget-object v4, v4, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    if-ne v5, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    iput-object v6, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->k:Ljava/lang/String;

    iget v0, v0, Lcom/inisoft/mediaplayer/ea;->c:I

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(I)V

    goto :goto_0

    :pswitch_3
    iput-object v6, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->k:Ljava/lang/String;

    iget v0, v0, Lcom/inisoft/mediaplayer/ea;->c:I

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    const-string v2, "udp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "START_FROM_SPLASH"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "FILE_PATH"

    iget-object v0, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "application/x-mpegURL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "START_FROM_SPLASH"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "FILE_PATH"

    iget-object v0, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v3}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useMediaStore"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v6, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->k:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->onBackPressed()V

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0500c0

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/inisoft/mediaplayer/dx;

    invoke-direct {v3, p0}, Lcom/inisoft/mediaplayer/dx;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    invoke-static {p1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/actionbarsherlock/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onStart()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->b()V

    iget v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->i:I

    if-ltz v0, :cond_0

    sget-object v0, Lcom/inisoft/mediaplayer/MediaPathActivity;->d:Lcom/inisoft/mediaplayer/bq;

    iget v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/bq;->a(I)Lcom/inisoft/mediaplayer/bp;

    move-result-object v0

    new-instance v1, Lcom/inisoft/mediaplayer/ea;

    iget v2, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->i:I

    invoke-direct {v1, p0, v0, v2}, Lcom/inisoft/mediaplayer/ea;-><init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Lcom/inisoft/mediaplayer/bp;I)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->f:Lcom/inisoft/mediaplayer/ea;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->c()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/MediaPathActivity;->i:I

    return-void
.end method
