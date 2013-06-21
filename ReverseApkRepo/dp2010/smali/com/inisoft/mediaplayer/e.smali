.class public final Lcom/inisoft/mediaplayer/e;
.super Ljava/lang/Object;


# static fields
.field private static synthetic B:[I


# instance fields
.field private final A:Ljava/util/Comparator;

.field protected a:Lcom/inisoft/mediaplayer/bp;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/inisoft/mediaplayer/l;

.field protected d:Lcom/inisoft/mediaplayer/ar;

.field e:Z

.field f:Z

.field g:Lcom/inisoft/mediaplayer/ci;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/inisoft/mediaplayer/hn;

.field private q:Ljava/util/ArrayList;

.field private r:I

.field private s:I

.field private t:Lcom/inisoft/mediaplayer/et;

.field private u:Ljava/lang/Thread;

.field private v:Lcom/inisoft/mediaplayer/bx;

.field private w:I

.field private x:I

.field private y:Landroid/os/Handler;

.field private z:Lcom/inisoft/mediaplayer/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/bp;Lcom/inisoft/mediaplayer/hn;Lcom/inisoft/mediaplayer/l;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->j:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/e;->k:Z

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/e;->l:Z

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/e;->m:Z

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/e;->n:Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->d:Lcom/inisoft/mediaplayer/ar;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->p:Lcom/inisoft/mediaplayer/hn;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iput v3, p0, Lcom/inisoft/mediaplayer/e;->r:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/e;->s:I

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->t:Lcom/inisoft/mediaplayer/et;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->u:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    new-instance v0, Lcom/inisoft/mediaplayer/f;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/f;-><init>(Lcom/inisoft/mediaplayer/e;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->y:Landroid/os/Handler;

    new-instance v0, Lcom/inisoft/mediaplayer/h;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/h;-><init>(Lcom/inisoft/mediaplayer/e;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->A:Ljava/util/Comparator;

    new-instance v0, Lcom/inisoft/mediaplayer/i;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/i;-><init>(Lcom/inisoft/mediaplayer/e;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->g:Lcom/inisoft/mediaplayer/ci;

    iput-object p4, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/e;->p:Lcom/inisoft/mediaplayer/hn;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iput v3, p0, Lcom/inisoft/mediaplayer/e;->w:I

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/e;->e:Z

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/e;->f:Z

    iput v3, p0, Lcom/inisoft/mediaplayer/e;->x:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->l()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/e;->n:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@last_folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@last_folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/e;->b(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/inisoft/mediaplayer/e;->r()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/e;->m:Z

    :sswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->q()V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/e;Lcom/inisoft/mediaplayer/et;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/e;->t:Lcom/inisoft/mediaplayer/et;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    array-length v0, v2

    goto :goto_0

    :cond_1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/inisoft/mediaplayer/e;->l:Z

    invoke-static {v4, v3, v5}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/inisoft/mediaplayer/cj;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/inisoft/mediaplayer/cj;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x2e

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move v4, v2

    :goto_1
    array-length v1, p1

    if-lt v4, v1, :cond_1

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v1, ""

    iget-object v6, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v6, v6, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v7, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    if-ne v6, v7, :cond_3

    move-object v0, p1

    check-cast v0, [La/d/az;

    move-object v1, v0

    aget-object v1, v1, v4

    invoke-virtual {v1}, La/d/az;->f()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".smi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v6, v6, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v7, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    if-ne v6, v7, :cond_2

    move-object v0, p1

    check-cast v0, [Lb/a/a/a/a/h;

    move-object v1, v0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lb/a/a/a/a/h;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".srt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".ass"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v3

    goto/16 :goto_0

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".SMI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->r()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->q()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->d:Lcom/inisoft/mediaplayer/ar;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ar;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/e;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->u:Ljava/lang/Thread;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    :try_start_0
    iput p1, p0, Lcom/inisoft/mediaplayer/e;->r:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/e;->h()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/e;->d()V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/cj;->b(JZ)V

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/e;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->d:Lcom/inisoft/mediaplayer/ar;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ar;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(I)V
    .locals 5

    const/4 v1, 0x0

    if-gez p1, :cond_5

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iput v1, p0, Lcom/inisoft/mediaplayer/e;->r:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->p:Lcom/inisoft/mediaplayer/hn;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->p:Lcom/inisoft/mediaplayer/hn;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hn;->b()V

    :cond_4
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const-string v3, "DICE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@last_played"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@currentPos"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/inisoft/mediaplayer/e;->r:I

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_5
    move v1, p1

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/e;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->u:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/e;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->u:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->u:Ljava/lang/Thread;

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inisoft/mediaplayer/j;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/j;-><init>(Lcom/inisoft/mediaplayer/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->u:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/e;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/e;->w:I

    return v0
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/e;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/e;->r:I

    return v0
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/e;->m:Z

    return v0
.end method

.method static synthetic j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    return-object v0
.end method

.method static synthetic k(Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->n()V

    return-void
.end method

.method private l()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showAudioFile"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/e;->l:Z

    const-string v1, "thumbnail"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/e;->m:Z

    const-string v1, "playnextfile"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/e;->k:Z

    const-string v1, "lastfolder"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/e;->n:Z

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@last_played"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->o:Ljava/lang/String;

    const-string v1, "Sort_Type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/e;->w:I

    const-string v1, "Sort_Order"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/e;->e:Z

    const-string v1, "Sort_ShowFolder"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/e;->f:Z

    const-string v1, "BUCKET_POSITION"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/e;->x:I

    return-void
.end method

.method static synthetic l(Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->o()V

    return-void
.end method

.method static synthetic m(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/et;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->t:Lcom/inisoft/mediaplayer/et;

    return-object v0
.end method

.method private declared-synchronized m()V
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->A:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    array-length v0, v2

    goto :goto_1

    :cond_2
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/inisoft/mediaplayer/e;->l:Z

    invoke-static {v4, v3, v5}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/inisoft/mediaplayer/cj;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/inisoft/mediaplayer/cj;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/inisoft/mediaplayer/e;->f:Z

    if-eqz v3, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/inisoft/mediaplayer/cj;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/inisoft/mediaplayer/cj;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/cj;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static synthetic n(Lcom/inisoft/mediaplayer/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized n()V
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v3, v3, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/hw;->d(Landroid/content/Context;Ljava/lang/String;)La/d/az;

    move-result-object v0

    invoke-virtual {v0}, La/d/az;->i()[La/d/az;

    move-result-object v2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    :goto_0
    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->A:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    array-length v0, v2

    goto :goto_1

    :cond_2
    aget-object v3, v2, v1

    invoke-virtual {v3}, La/d/az;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/inisoft/mediaplayer/e;->l:Z

    invoke-static {v4, v3, v5}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/inisoft/mediaplayer/cj;

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/inisoft/mediaplayer/cj;-><init>(La/d/az;Landroid/content/Context;)V

    aget-object v4, v2, v1

    invoke-virtual {v4}, La/d/az;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/inisoft/mediaplayer/e;->a([Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/inisoft/mediaplayer/cj;->a(Z)V

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/inisoft/mediaplayer/e;->f:Z

    if-eqz v3, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {v3}, La/d/az;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {v3}, La/d/az;->h()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/inisoft/mediaplayer/cj;

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/inisoft/mediaplayer/cj;-><init>(La/d/az;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/cj;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized o()V
    .locals 8

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/bx;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v3, v3, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v4, v4, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v5, v5, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-boolean v6, v6, Lcom/inisoft/mediaplayer/bp;->g:Z

    invoke-direct/range {v0 .. v6}, Lcom/inisoft/mediaplayer/bx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/bx;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bx;->a()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    const-string v0, "/"

    :cond_2
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/bx;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bx;->b()[Lb/a/a/a/a/h;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    :goto_0
    if-nez v1, :cond_4

    move v0, v7

    :goto_1
    if-lt v7, v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->A:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    array-length v0, v1

    goto :goto_1

    :cond_5
    aget-object v2, v1, v7

    invoke-virtual {v2}, Lb/a/a/a/a/h;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/inisoft/mediaplayer/e;->l:Z

    invoke-static {v3, v2, v4}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/inisoft/mediaplayer/cj;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    aget-object v4, v1, v7

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v5}, Lcom/inisoft/mediaplayer/cj;-><init>(Ljava/lang/String;Lb/a/a/a/a/h;Landroid/content/Context;)V

    aget-object v3, v1, v7

    invoke-virtual {v3}, Lb/a/a/a/a/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/inisoft/mediaplayer/e;->a([Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/cj;->a(Z)V

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/e;->f:Z

    if-eqz v2, :cond_6

    aget-object v2, v1, v7

    invoke-virtual {v2}, Lb/a/a/a/a/h;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/inisoft/mediaplayer/cj;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    aget-object v4, v1, v7

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v5}, Lcom/inisoft/mediaplayer/cj;-><init>(Ljava/lang/String;Lb/a/a/a/a/h;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/cj;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private p()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    :goto_0
    new-instance v1, Lcom/inisoft/mediaplayer/a;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/inisoft/mediaplayer/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/inisoft/mediaplayer/a;->a(Z)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/inisoft/mediaplayer/e;->x:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/inisoft/mediaplayer/e;->x:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v1, v3, :cond_0

    iput v4, p0, Lcom/inisoft/mediaplayer/e;->x:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const-string v3, "DICE_SETTINGS"

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "BUCKET_POSITION"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->f()V

    :cond_0
    new-instance v1, Ljava/io/File;

    iget v0, p0, Lcom/inisoft/mediaplayer/e;->x:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/e;->a(Ljava/io/File;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->A:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/e;->c(Ljava/lang/String;)V

    return v4

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/inisoft/mediaplayer/e;->a(Ljava/io/File;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private q()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/inisoft/mediaplayer/k;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v3, 0x7f03003b

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->p:Lcom/inisoft/mediaplayer/hn;

    iget-boolean v6, p0, Lcom/inisoft/mediaplayer/e;->m:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/inisoft/mediaplayer/k;-><init>(Lcom/inisoft/mediaplayer/e;Landroid/content/Context;ILjava/util/ArrayList;Lcom/inisoft/mediaplayer/hn;Z)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->z:Lcom/inisoft/mediaplayer/k;

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->d:Lcom/inisoft/mediaplayer/ar;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->z:Lcom/inisoft/mediaplayer/k;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ar;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->z:Lcom/inisoft/mediaplayer/k;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/k;->notifyDataSetChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/inisoft/mediaplayer/k;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v3, 0x7f03003a

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/e;->p:Lcom/inisoft/mediaplayer/hn;

    iget-boolean v6, p0, Lcom/inisoft/mediaplayer/e;->m:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/inisoft/mediaplayer/k;-><init>(Lcom/inisoft/mediaplayer/e;Landroid/content/Context;ILjava/util/ArrayList;Lcom/inisoft/mediaplayer/hn;Z)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->z:Lcom/inisoft/mediaplayer/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static synthetic r()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/e;->B:[I

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
    sput-object v0, Lcom/inisoft/mediaplayer/e;->B:[I

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


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/e;->c(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    check-cast p2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->p()Lcom/inisoft/mediaplayer/ck;

    move-result-object v2

    sget-object v3, Lcom/inisoft/mediaplayer/ck;->e:Lcom/inisoft/mediaplayer/ck;

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v0, p0, Lcom/inisoft/mediaplayer/e;->r:I

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v3, 0x7f0a0034

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v3, 0x7f0a003a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v3, 0x7f0a0037

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v3, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v3, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v3, 0x7f0a002c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v3, 0x7f0a002f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public final a(Lcom/inisoft/mediaplayer/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/e;->d:Lcom/inisoft/mediaplayer/ar;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inisoft/mediaplayer/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/e;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/hw;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bw;->a()I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v1, p0, v0}, Lcom/inisoft/mediaplayer/l;->a(Lcom/inisoft/mediaplayer/e;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v5, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/e;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v1, p0, v0}, Lcom/inisoft/mediaplayer/l;->a(Lcom/inisoft/mediaplayer/e;Lcom/inisoft/mediaplayer/cj;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "/sdcard"

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v3, 0x7f0a009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    sget-object v3, Lcom/inisoft/mediaplayer/cg;->a:Lcom/inisoft/mediaplayer/cg;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->g:Lcom/inisoft/mediaplayer/ci;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/inisoft/mediaplayer/by;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inisoft/mediaplayer/cg;Lcom/inisoft/mediaplayer/ci;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v1, v2, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/e;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, "/"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    const-string v0, "/"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    :try_start_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/e;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v1, p0, v0}, Lcom/inisoft/mediaplayer/l;->b(Lcom/inisoft/mediaplayer/e;Lcom/inisoft/mediaplayer/cj;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :try_start_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/e;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/l;->a(Lcom/inisoft/mediaplayer/cj;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->j:Ljava/lang/String;

    invoke-static {}, Lcom/inisoft/mediaplayer/e;->r()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/l;->c(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_1
    iput-object p1, p0, Lcom/inisoft/mediaplayer/e;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iput-object p1, p0, Lcom/inisoft/mediaplayer/e;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iput-object p1, p0, Lcom/inisoft/mediaplayer/e;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iput-object p1, p0, Lcom/inisoft/mediaplayer/e;->j:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x4

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->l()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inisoft/mediaplayer/e;->r()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->q()V

    :goto_1
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->m()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->y:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->y:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->p()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final e()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@currentPos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/e;->r:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "prevPlay"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "nextPlay"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "onCompletion"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "onError"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "playnextfile"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/inisoft/mediaplayer/e;->k:Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "onCompletion"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v6, "prevPlay"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v6, "nextPlay"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v6, "onError"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->d:Lcom/inisoft/mediaplayer/ar;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/e;->b(I)V

    :cond_0
    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v1, 0x7f0a00ad

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/e;->d(I)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    if-gt v0, v2, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v1, 0x7f0a00ae

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/e;->d(I)V

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/e;->k:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/e;->d(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/e;->r:I

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/e;->c(I)V

    return-void
.end method

.method public final g()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-static {}, Lcom/inisoft/mediaplayer/e;->r()[I

    move-result-object v3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v4, v4, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    move-object v0, v2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/e;->h()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/e;->d()V

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->i:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/hw;->d(Landroid/content/Context;Ljava/lang/String;)La/d/az;

    move-result-object v0

    invoke-virtual {v0}, La/d/az;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->d()V

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->d()V

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/bx;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->v:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bx;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->d()V

    :cond_7
    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->a()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->b()V

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 2

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->l()V

    invoke-static {}, Lcom/inisoft/mediaplayer/e;->r()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->m()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->z:Lcom/inisoft/mediaplayer/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->z:Lcom/inisoft/mediaplayer/k;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/k;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/e;->p()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->z:Lcom/inisoft/mediaplayer/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/e;->z:Lcom/inisoft/mediaplayer/k;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/k;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
