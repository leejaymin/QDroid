.class public Lcom/inisoft/mediaplayer/CommonListActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# static fields
.field public static c:Lcom/inisoft/mediaplayer/ft;

.field private static d:I

.field private static n:Lcom/inisoft/mediaplayer/hn;

.field private static o:I

.field private static p:I

.field private static r:Lcom/inisoft/mediaplayer/bq;

.field private static s:Ljava/util/Vector;

.field private static t:Lcom/inisoft/mediaplayer/e;

.field private static u:Z


# instance fields
.field private A:Ljava/lang/Thread;

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Ljava/util/Locale;

.field private F:Lcom/android/vending/billing/l;

.field private G:Landroid/os/Handler;

.field private H:Lcom/inisoft/mediaplayer/l;

.field a:Z

.field b:Z

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Z

.field private g:Lcom/inisoft/mediaplayer/bw;

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/content/Context;

.field private m:Landroid/app/Activity;

.field private q:Z

.field private v:Lcom/inisoft/mediaplayer/be;

.field private w:I

.field private x:Lcom/inisoft/mediaplayer/aw;

.field private y:Lcom/inisoft/mediaplayer/et;

.field private z:Lcom/inisoft/mediaplayer/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput v2, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    sput-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->n:Lcom/inisoft/mediaplayer/hn;

    sput v2, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    const/4 v0, -0x1

    sput v0, Lcom/inisoft/mediaplayer/CommonListActivity;->p:I

    sput-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    sput-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    sput-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    sput-boolean v2, Lcom/inisoft/mediaplayer/CommonListActivity;->u:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->f:Z

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->g:Lcom/inisoft/mediaplayer/bw;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->h:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->i:J

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->k:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->m:Landroid/app/Activity;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->B:I

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->C:Z

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->D:Z

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->F:Lcom/android/vending/billing/l;

    new-instance v0, Lcom/inisoft/mediaplayer/m;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/m;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->G:Landroid/os/Handler;

    new-instance v0, Lcom/inisoft/mediaplayer/v;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/v;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->H:Lcom/inisoft/mediaplayer/l;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(I)Lcom/inisoft/mediaplayer/e;
    .locals 1

    invoke-static {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x3c

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-string v0, "00:00:00"

    :goto_0
    return-object v0

    :cond_0
    div-long v0, p0, v6

    div-long/2addr v0, v6

    div-long v2, p0, v6

    mul-long v4, v0, v6

    sub-long v3, v2, v4

    rem-long v5, p0, v6

    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    cmp-long v0, v3, v8

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    cmp-long v0, v5, v8

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a()V
    .locals 1

    :try_start_0
    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SELECTED_MODIFY_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SELECTED_PATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    if-eqz v1, :cond_0

    const-string v1, "SELECTED_INDEX"

    sget v2, Lcom/inisoft/mediaplayer/CommonListActivity;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Lcom/actionbarsherlock/view/Menu;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->clear()V

    const/4 v0, 0x0

    const v1, 0x7f0500c1

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a003d

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020085

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x0

    const v1, 0x7f0500bf

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a002a

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    const/4 v0, 0x0

    const v1, 0x7f0500bd

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a0058

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020081

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x0

    const v1, 0x7f0500bc

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a006a

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020080

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x0

    const v1, 0x7f0500ba

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a0022

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x0

    const v1, 0x7f0500c3

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a00c3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x0

    const v1, 0x7f0500c2

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a00d0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x0

    const v1, 0x7f0500c4

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v2

    const v3, 0x7f0a0017

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->w:I

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->h:J

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->k:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;Lcom/android/vending/billing/l;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->F:Lcom/android/vending/billing/l;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;Lcom/inisoft/mediaplayer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;Lcom/inisoft/mediaplayer/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->g:Lcom/inisoft/mediaplayer/bw;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CommonListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->j:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/inisoft/mediaplayer/e;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/e;->b()Ljava/lang/String;

    move-result-object v2

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v7}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "checkforexit"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->f:Z

    if-eqz v3, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@last_folder"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {p0, v4}, Lcom/inisoft/mediaplayer/CommonListActivity;->moveTaskToBack(Z)Z

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f03001f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f050045

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v5, 0x7f0a0046

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setText(I)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v5, 0x7f0a00a5

    new-instance v6, Lcom/inisoft/mediaplayer/s;

    invoke-direct {v6, p0, v0, v1, v2}, Lcom/inisoft/mediaplayer/s;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/widget/CheckBox;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a00a6

    new-instance v1, Lcom/inisoft/mediaplayer/t;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/t;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    const v4, 0x103000b

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method private a(Ljava/io/File;I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x5

    if-lt p2, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_5

    move v0, v1

    :goto_0
    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_6

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "@last_played"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v2, "@last_played"

    :cond_3
    :goto_3
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_4
    const-string v6, "DICE_SETTINGS"

    invoke-virtual {p0, v6, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v2, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "@AudioTrackIndex"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-lez v2, :cond_4

    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :cond_5
    array-length v0, v3

    goto :goto_0

    :cond_6
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dice_thumbnails"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/inisoft/mediaplayer/cj;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/inisoft/mediaplayer/cj;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/cj;->q()V

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    aget-object v4, v3, v2

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v4, v5}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Ljava/io/File;I)V

    goto :goto_5

    :cond_9
    const-string v3, "@last_folder"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v2, "@last_folder"

    goto/16 :goto_3

    :cond_a
    const-string v3, "@AudioTrackIndex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "@AudioTrackIndex"

    goto/16 :goto_3

    :catch_0
    move-exception v3

    move-object v3, v0

    goto/16 :goto_4

    :cond_b
    const-string v2, ""

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2
.end method

.method private a(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/be;->a(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/be;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/be;->a(Z)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/be;->a(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/be;->b(I)V

    :try_start_0
    new-instance v1, Lcom/inisoft/mediaplayer/a;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/inisoft/mediaplayer/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/a;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    :cond_2
    const-string v0, ""

    new-instance v1, Lcom/inisoft/mediaplayer/an;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/an;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-static {p0, v0, v1}, Lcom/inisoft/mediaplayer/et;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnKeyListener;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inisoft/mediaplayer/ao;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/ao;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    if-nez v1, :cond_4

    move v2, v0

    :goto_1
    const-string v1, "BUCKET_POSITION"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v2, :cond_5

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BUCKET_POSITION"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->l()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/be;->c(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/a;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    return v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 0

    sput p0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    return-void
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/CommonListActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->i:J

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    if-eqz v0, :cond_0

    sput-object v3, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    :cond_0
    new-instance v0, Lcom/inisoft/mediaplayer/bq;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/bq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    sget v1, Lcom/inisoft/mediaplayer/CommonListActivity;->p:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/bq;->a(I)Lcom/inisoft/mediaplayer/bp;

    move-result-object v0

    new-instance v1, Lcom/inisoft/mediaplayer/e;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->H:Lcom/inisoft/mediaplayer/l;

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/inisoft/mediaplayer/e;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/bp;Lcom/inisoft/mediaplayer/hn;Lcom/inisoft/mediaplayer/l;)V

    sput-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/e;->a(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->d()V

    const/4 v0, 0x1

    sput v0, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/be;->a(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/be;->b(I)V

    :cond_2
    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    return v0
.end method

.method private static c(Ljava/lang/String;)J
    .locals 9

    const-wide/16 v0, 0x258

    const-wide/16 v7, 0x3c

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_0

    const-string v2, "??:??:??"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static c(I)Lcom/inisoft/mediaplayer/e;
    .locals 2

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/e;

    goto :goto_0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    return-void
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/a;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    return-object v0
.end method

.method static synthetic d()Lcom/inisoft/mediaplayer/e;
    .locals 1

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->p:I

    return v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->l()V

    return-void
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/be;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    return-object v0
.end method

.method static synthetic f()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/inisoft/mediaplayer/CommonListActivity;->p:I

    return-void
.end method

.method static synthetic g()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->h()V

    return-void
.end method

.method private h()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/be;

    sget-boolean v1, Lcom/inisoft/mediaplayer/CommonListActivity;->u:Z

    invoke-direct {v0, v1, p0}, Lcom/inisoft/mediaplayer/be;-><init>(ZLandroid/app/Activity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->n:Lcom/inisoft/mediaplayer/hn;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inisoft/mediaplayer/hn;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/hn;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->n:Lcom/inisoft/mediaplayer/hn;

    :goto_0
    iput-object p0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    iput-object p0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->m:Landroid/app/Activity;

    sput-object v4, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    new-instance v0, Lcom/inisoft/mediaplayer/bq;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/bq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastfolder"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->f:Z

    const-string v1, "listview_currentindex"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    const-string v1, "Sort_Type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->w:I

    const-string v1, "Sort_Order"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->a:Z

    const-string v1, "Sort_ShowFolder"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->b:Z

    const-string v1, "useMediaStore"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->j()V

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Z)V

    const v0, 0x7f05008a

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->e:Landroid/support/v4/view/ViewPager;

    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->p:I

    if-lez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->i()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->n:Lcom/inisoft/mediaplayer/hn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/hn;->a()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->C:Z

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/inisoft/mediaplayer/av;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/inisoft/mediaplayer/av;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/v;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->x:Lcom/inisoft/mediaplayer/aw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/aw;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/aw;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->x:Lcom/inisoft/mediaplayer/aw;

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->x:Lcom/inisoft/mediaplayer/aw;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/az;)V

    return-void
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/CommonListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->D:Z

    return v0
.end method

.method private j()V
    .locals 7

    const/4 v2, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    new-instance v0, Lcom/inisoft/mediaplayer/bq;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/bq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bq;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->e()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/bq;->a(Lcom/inisoft/mediaplayer/bs;)I

    move-result v0

    sput v0, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    sget v1, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    if-lt v0, v1, :cond_1

    sput v2, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    :cond_1
    :goto_1
    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    if-lt v2, v0, :cond_3

    :goto_2
    return-void

    :cond_2
    sget-object v4, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    new-instance v5, Lcom/inisoft/mediaplayer/bp;

    sget-object v6, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Lcom/inisoft/mediaplayer/bp;-><init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/inisoft/mediaplayer/bq;->a(Lcom/inisoft/mediaplayer/bp;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/bq;->a(I)Lcom/inisoft/mediaplayer/bp;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/inisoft/mediaplayer/e;

    sget-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/bq;->a(I)Lcom/inisoft/mediaplayer/bp;

    move-result-object v1

    sget-object v3, Lcom/inisoft/mediaplayer/CommonListActivity;->n:Lcom/inisoft/mediaplayer/hn;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->H:Lcom/inisoft/mediaplayer/l;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/inisoft/mediaplayer/e;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/bp;Lcom/inisoft/mediaplayer/hn;Lcom/inisoft/mediaplayer/l;)V

    sget-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/inisoft/mediaplayer/e;

    new-instance v1, Lcom/inisoft/mediaplayer/bp;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {v1, v2}, Lcom/inisoft/mediaplayer/bp;-><init>(Lcom/inisoft/mediaplayer/bs;)V

    sget-object v2, Lcom/inisoft/mediaplayer/CommonListActivity;->n:Lcom/inisoft/mediaplayer/hn;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->H:Lcom/inisoft/mediaplayer/l;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/inisoft/mediaplayer/e;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/bp;Lcom/inisoft/mediaplayer/hn;Lcom/inisoft/mediaplayer/l;)V

    sget-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    sput v0, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    goto :goto_2
.end method

.method static synthetic j(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    :try_start_0
    const-string v0, "DICE_SETTINGS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "en"

    invoke-static {p0, v1, v2}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    sget-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "listview_currentindex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->e:Landroid/support/v4/view/ViewPager;

    sget v1, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(I)V

    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->D:Z

    return-void
.end method

.method static synthetic l(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/android/vending/billing/l;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->F:Lcom/android/vending/billing/l;

    return-object v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/a;->b()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/as;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/a;->b()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->z:Lcom/inisoft/mediaplayer/a;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/a;->c()[I

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/inisoft/mediaplayer/as;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/content/Context;[Ljava/lang/String;[I)V

    sget-boolean v1, Lcom/inisoft/mediaplayer/CommonListActivity;->u:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    new-instance v2, Lcom/inisoft/mediaplayer/ap;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/ap;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/inisoft/mediaplayer/be;->a(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->v:Lcom/inisoft/mediaplayer/be;

    new-instance v2, Lcom/inisoft/mediaplayer/aq;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/aq;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/inisoft/mediaplayer/be;->a(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->m:Landroid/app/Activity;

    return-object v0
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    :cond_0
    const-string v0, ""

    new-instance v1, Lcom/inisoft/mediaplayer/n;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/n;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-static {p0, v0, v1}, Lcom/inisoft/mediaplayer/et;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnKeyListener;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inisoft/mediaplayer/o;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/o;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->G:Landroid/os/Handler;

    return-object v0
.end method

.method private n()Z
    .locals 8

    const/4 v7, -0x2

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "FileExtension_wmv"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;)V

    move v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v4, "DICE_SETTINGS"

    invoke-virtual {p0, v4, v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "dice_version"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v6, :cond_0

    if-ge v5, v3, :cond_6

    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz v0, :cond_1

    const-string v0, "useMediaStore"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "exynos4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FileExtension_mp4"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string v0, "dice_version"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v0, 0x6f

    if-lt v3, v0, :cond_3

    move v1, v2

    :cond_3
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, "file:///android_asset/modify.html"

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "en"

    invoke-static {p0, v4, v5}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    if-nez v4, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    :cond_4
    iget-object v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ko_KR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v0, "file:///android_asset/modify_kr.html"

    :cond_5
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00cf

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a00a5

    new-instance v3, Lcom/inisoft/mediaplayer/u;

    invoke-direct {v3, p0}, Lcom/inisoft/mediaplayer/u;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v2, v1

    :cond_6
    return v2

    :catch_0
    move-exception v3

    move v3, v2

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic o(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/bw;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->g:Lcom/inisoft/mediaplayer/bw;

    return-object v0
.end method

.method static synthetic q(Lcom/inisoft/mediaplayer/CommonListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/inisoft/mediaplayer/CommonListActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->h:J

    return-wide v0
.end method

.method static synthetic s(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/inisoft/mediaplayer/CommonListActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->i:J

    return-wide v0
.end method

.method static synthetic u(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->e()Ljava/util/Vector;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v4, v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Ljava/io/File;I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic v(Lcom/inisoft/mediaplayer/CommonListActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic w(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->A:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic x(Lcom/inisoft/mediaplayer/CommonListActivity;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->w:I

    return v0
.end method

.method static synthetic y(Lcom/inisoft/mediaplayer/CommonListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->f:Z

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v2, "DICE_SETTINGS"

    invoke-virtual {p0, v2, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "useMediaStore"

    iget-boolean v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "listview_currentindex"

    sget v5, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    if-nez p3, :cond_2

    sget-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Z)V

    :goto_1
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/bq;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/bq;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/bq;->a(Lcom/inisoft/mediaplayer/bq;Lcom/inisoft/mediaplayer/bs;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->j()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->i()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Z)V

    goto :goto_1

    :cond_2
    const-string v2, "SELECTED_PATH"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "listview_networkindex"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/inisoft/mediaplayer/CommonListActivity;->p:I

    if-lez v4, :cond_3

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Z)V

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->i()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Z)V

    sget-object v2, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    new-instance v2, Lcom/inisoft/mediaplayer/bq;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/bq;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    sput-object v4, Lcom/inisoft/mediaplayer/CommonListActivity;->t:Lcom/inisoft/mediaplayer/e;

    iget-boolean v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    if-ne v3, v4, :cond_5

    if-nez v3, :cond_6

    sget-object v4, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    sget-object v5, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v2, v4, v5}, Lcom/inisoft/mediaplayer/bq;->a(Lcom/inisoft/mediaplayer/bq;Lcom/inisoft/mediaplayer/bs;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->j()V

    move v0, v1

    :cond_6
    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    if-nez v2, :cond_8

    sget-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->r:Lcom/inisoft/mediaplayer/bq;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/bq;->a(Lcom/inisoft/mediaplayer/bs;)I

    move-result v1

    sput v1, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    :goto_2
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->i()V

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->e:Landroid/support/v4/view/ViewPager;

    sget v1, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto/16 :goto_0

    :cond_8
    sput v1, Lcom/inisoft/mediaplayer/CommonListActivity;->o:I

    goto :goto_2

    :sswitch_1
    if-ne p2, v6, :cond_9

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->finish()V

    goto/16 :goto_0

    :cond_9
    if-ne p2, v1, :cond_0

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {p0, v1, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "useMediaStore"

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->m()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    :try_start_0
    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v3}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v5}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "theme"

    const-string v2, "Light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x103006e

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->setTheme(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "en"

    invoke-static {p0, v0, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->E:Ljava/util/Locale;

    invoke-static {v5}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    sput-boolean v0, Lcom/inisoft/mediaplayer/CommonListActivity;->u:Z

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/inisoft/mediaplayer/CommonListActivity;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/inisoft/mediaplayer/CommonListActivity;->requestWindowFeature(I)Z

    :cond_0
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->setContentView(I)V

    const v0, 0x7f050087

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->findViewById(I)Landroid/view/View;

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->C:Z

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->D:Z

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    new-instance v1, Lcom/inisoft/mediaplayer/ak;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/ak;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-static {p0, v0, v1}, Lcom/inisoft/mediaplayer/et;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnKeyListener;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->y:Lcom/inisoft/mediaplayer/et;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inisoft/mediaplayer/al;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/al;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    :cond_1
    const v0, 0x103006b

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->setTheme(I)V

    goto :goto_0

    :cond_2
    const-string v1, "theme"

    const-string v2, "Light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->setTheme(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->setTheme(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->h()V

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->C:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/actionbarsherlock/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->F:Lcom/android/vending/billing/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->F:Lcom/android/vending/billing/l;

    invoke-virtual {v0}, Lcom/android/vending/billing/l;->b()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->F:Lcom/android/vending/billing/l;

    :cond_0
    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->c:Lcom/inisoft/mediaplayer/ft;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->c:Lcom/inisoft/mediaplayer/ft;

    invoke-virtual {v0, p0}, Lcom/inisoft/mediaplayer/ft;->a(Landroid/content/Context;)V

    sput-object v1, Lcom/inisoft/mediaplayer/CommonListActivity;->c:Lcom/inisoft/mediaplayer/ft;

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x0

    const/16 v4, 0x67

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    :try_start_0
    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->c()V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->h()V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0500bc

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inisoft/mediaplayer/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x63

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0500bd

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->m()V

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->a()V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0500c1

    if-ne v0, v1, :cond_8

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a003d

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c0018

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->w:I

    new-instance v6, Lcom/inisoft/mediaplayer/q;

    invoke-direct {v6, p0}, Lcom/inisoft/mediaplayer/q;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-virtual {v4, v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f050066

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f050067

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-boolean v6, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->a:Z

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v6, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->b:Z

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v6, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->q:Z

    if-eqz v6, :cond_7

    sget v6, Lcom/inisoft/mediaplayer/CommonListActivity;->p:I

    if-gez v6, :cond_7

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_4
    const-string v3, "OK"

    new-instance v6, Lcom/inisoft/mediaplayer/r;

    invoke-direct {v6, p0, v0, v1}, Lcom/inisoft/mediaplayer/r;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    goto/16 :goto_1

    :cond_6
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    const v4, 0x103000b

    invoke-direct {v0, v1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0500bf

    if-ne v0, v1, :cond_9

    :try_start_1
    sget v0, Lcom/inisoft/mediaplayer/CommonListActivity;->d:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move v0, v2

    goto/16 :goto_1

    :cond_9
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0500c3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->G:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->G:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v2

    goto/16 :goto_1

    :cond_a
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0500c2

    if-ne v0, v1, :cond_b

    const-string v0, "https://sites.google.com/a/inisoft.co.kr/diceplayer/diceplayer-help"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    goto/16 :goto_1

    :cond_b
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0500ba

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lcom/inisoft/mediaplayer/bt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v3, "text/html"

    invoke-virtual {v1, v0, v3, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0022

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0027

    new-instance v3, Lcom/inisoft/mediaplayer/p;

    invoke-direct {v3, p0}, Lcom/inisoft/mediaplayer/p;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    goto/16 :goto_1

    :cond_c
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0500c4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->s:Ljava/util/Vector;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(I)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/e;)V

    :cond_d
    move v0, v2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_5
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/actionbarsherlock/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->c:Lcom/inisoft/mediaplayer/ft;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->c:Lcom/inisoft/mediaplayer/ft;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ft;->b()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FFMPEG_ERROR"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FFMPEG_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0091

    new-instance v2, Lcom/inisoft/mediaplayer/am;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/am;-><init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/inisoft/mediaplayer/ft;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ft;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->c:Lcom/inisoft/mediaplayer/ft;

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->D:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CommonListActivity;->k()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/CommonListActivity;->D:Z

    goto :goto_0
.end method
