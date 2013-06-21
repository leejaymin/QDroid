.class public Lcom/inisoft/mediaplayer/PlayerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static synthetic K:[I

.field private static synthetic L:[I

.field private static synthetic M:[I


# instance fields
.field private A:Z

.field private B:Lcom/inisoft/mediaplayer/ax;

.field private C:Z

.field private D:Ljava/util/Locale;

.field private E:Lcom/inisoft/mediaplayer/gm;

.field private F:I

.field private G:Landroid/os/Handler;

.field private H:J

.field private I:Z

.field private J:Lcom/inisoft/mediaplayer/b/aj;

.field a:Landroid/content/BroadcastReceiver;

.field b:Lcom/inisoft/mediaplayer/ek;

.field c:Lcom/inisoft/mediaplayer/ej;

.field d:Lcom/inisoft/mediaplayer/en;

.field e:Lcom/inisoft/mediaplayer/ij;

.field f:Lcom/inisoft/mediaplayer/fq;

.field g:Lcom/inisoft/mediaplayer/gw;

.field h:Lcom/inisoft/mediaplayer/el;

.field i:Lcom/inisoft/mediaplayer/ei;

.field j:Lcom/inisoft/mediaplayer/ci;

.field private k:Lcom/inisoft/mediaplayer/fs;

.field private l:Lcom/inisoft/mediaplayer/fn;

.field private m:Lcom/inisoft/mediaplayer/et;

.field private n:Landroid/widget/FrameLayout;

.field private o:Lcom/inisoft/mediaplayer/VideoView;

.field private p:Lcom/inisoft/mediaplayer/hm;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/inisoft/mediaplayer/gt;

.field private s:Landroid/view/GestureDetector;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->m:Lcom/inisoft/mediaplayer/et;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->n:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->q:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->t:Z

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->u:Z

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->v:Z

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->w:F

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->x:F

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->y:F

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->z:F

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->A:Z

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->D:Ljava/util/Locale;

    new-instance v0, Lcom/inisoft/mediaplayer/ev;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ev;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/inisoft/mediaplayer/ff;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ff;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->b:Lcom/inisoft/mediaplayer/ek;

    new-instance v0, Lcom/inisoft/mediaplayer/fg;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fg;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->c:Lcom/inisoft/mediaplayer/ej;

    new-instance v0, Lcom/inisoft/mediaplayer/fh;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fh;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->d:Lcom/inisoft/mediaplayer/en;

    new-instance v0, Lcom/inisoft/mediaplayer/fi;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fi;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->e:Lcom/inisoft/mediaplayer/ij;

    new-instance v0, Lcom/inisoft/mediaplayer/fj;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fj;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->f:Lcom/inisoft/mediaplayer/fq;

    new-instance v0, Lcom/inisoft/mediaplayer/fk;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fk;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->g:Lcom/inisoft/mediaplayer/gw;

    new-instance v0, Lcom/inisoft/mediaplayer/fl;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fl;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->h:Lcom/inisoft/mediaplayer/el;

    new-instance v0, Lcom/inisoft/mediaplayer/fm;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fm;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->i:Lcom/inisoft/mediaplayer/ei;

    new-instance v0, Lcom/inisoft/mediaplayer/ew;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ew;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->G:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->H:J

    new-instance v0, Lcom/inisoft/mediaplayer/ex;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ex;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->j:Lcom/inisoft/mediaplayer/ci;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->I:Z

    new-instance v0, Lcom/inisoft/mediaplayer/ey;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ey;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->J:Lcom/inisoft/mediaplayer/b/aj;

    return-void
.end method

.method private a(Lcom/inisoft/mediaplayer/cj;)Lcom/inisoft/mediaplayer/bw;
    .locals 7

    const/4 v6, 0x0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->a()Lcom/inisoft/mediaplayer/PlayerActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :cond_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->Q()Lcom/inisoft/mediaplayer/bw;

    move-result-object v2

    sget-object v3, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    if-eq v2, v3, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->Q()Lcom/inisoft/mediaplayer/bw;

    move-result-object v1

    if-nez p1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    if-ne v1, v0, :cond_c

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->e:Lcom/inisoft/mediaplayer/bw;

    :goto_1
    sget-object v1, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->m()I

    move-result v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/d;->a(I)Lcom/inisoft/mediaplayer/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/PlayerActivity;->e()[I

    move-result-object v0

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "DICE_SETTINGS"

    invoke-virtual {p0, v2, v6}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_6

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FileExtension_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/inisoft/mediaplayer/bw;->a(I)Lcom/inisoft/mediaplayer/bw;

    move-result-object v1

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bw;->a()I

    move-result v0

    if-ne v2, v0, :cond_b

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->e:Lcom/inisoft/mediaplayer/bw;

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    sget-object v0, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bw;->a()I

    move-result v0

    if-eq v2, v0, :cond_b

    :goto_2
    sget-object v0, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    goto/16 :goto_0

    :cond_9
    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bw;->a()I

    move-result v0

    if-eq v2, v0, :cond_b

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bw;->a()I

    move-result v0

    if-ne v2, v0, :cond_b

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->m()I

    move-result v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/d;->a(I)Lcom/inisoft/mediaplayer/d;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/inisoft/mediaplayer/PlayerActivity;->e()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_2

    :sswitch_1
    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xe -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0xe -> :sswitch_1
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    int-to-long v1, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/cj;->c(JZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f0a0031

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02008d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const v5, 0x7f0a00ca

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020096

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x3

    const v5, 0x7f0a0038

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020078

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->U()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const v4, 0x7f0a006e

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0200b2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->T()I

    move-result v0

    if-le v0, v6, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x7f0a0060

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    if-eqz v1, :cond_5

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020057

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x6

    const v4, 0x7f0a007d

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v1, :cond_7

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x7

    const v4, 0x7f0a0084

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v1, :cond_8

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_8
    const/4 v0, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const v4, 0x7f0a0085

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v1, :cond_9

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_9
    const/4 v0, 0x0

    const/16 v2, 0x9

    const/16 v3, 0x9

    const v4, 0x7f0a0080

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_a
    const/4 v0, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xa

    const v4, 0x7f0a0081

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v1, :cond_b

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_b
    if-eqz v1, :cond_c

    const/4 v0, 0x0

    const/16 v1, 0xb

    const/16 v2, 0xb

    const v3, 0x7f0a0017

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_c
    :goto_1
    return-void

    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f0a0039

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200b5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PlayerActivity;Lcom/inisoft/mediaplayer/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PlayerActivity;Lcom/inisoft/mediaplayer/gt;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PlayerActivity;Lcom/inisoft/mediaplayer/hv;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/hv;Z)V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PlayerActivity;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hm;->a()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->g()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->q(I)V

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->V()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->q(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PlayerActivity;[B)V
    .locals 12

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v11, -0x1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string v2, "#@#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v5, ""

    new-instance v8, Lcom/inisoft/mediaplayer/hv;

    invoke-direct {v8}, Lcom/inisoft/mediaplayer/hv;-><init>()V

    move v6, v7

    :goto_0
    array-length v0, v9

    if-lt v6, v0, :cond_2

    move v1, v7

    :cond_0
    if-eqz v1, :cond_4

    invoke-virtual {v8}, Lcom/inisoft/mediaplayer/hv;->a()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/hv;)V

    :cond_1
    return-void

    :cond_2
    aget-object v0, v9, v6

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v11, :cond_0

    aget-object v2, v9, v6

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v9, v6

    const-string v4, ","

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v11, :cond_0

    aget-object v3, v9, v6

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v4, 0x1

    aget-object v4, v9, v6

    const-string v10, ","

    invoke-virtual {v4, v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_3

    aget-object v4, v9, v6

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-instance v0, Lcom/inisoft/mediaplayer/hu;

    invoke-direct/range {v0 .. v5}, Lcom/inisoft/mediaplayer/hu;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/inisoft/mediaplayer/hv;->a(Lcom/inisoft/mediaplayer/hu;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    aget-object v4, v9, v6

    invoke-virtual {v4, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v10, 0x1

    aget-object v5, v9, v6

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v0, v8

    goto :goto_1
.end method

.method private a(Lcom/inisoft/mediaplayer/b/am;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->v:Z

    :cond_0
    new-instance v0, Lcom/inisoft/mediaplayer/b/ak;

    invoke-direct {v0, p0, p1}, Lcom/inisoft/mediaplayer/b/ak;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/b/am;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->J:Lcom/inisoft/mediaplayer/b/aj;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/b/ak;->a(Lcom/inisoft/mediaplayer/b/aj;)V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/b/ak;->show()V

    return-void
.end method

.method private a(Lcom/inisoft/mediaplayer/hv;Z)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0060

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "Audio"

    invoke-virtual {p1, v1}, Lcom/inisoft/mediaplayer/hv;->a(Ljava/lang/String;)I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    :goto_0
    iget-object v4, p1, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03001d

    invoke-direct {v0, p0, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_1
    new-instance v1, Lcom/inisoft/mediaplayer/fb;

    invoke-direct {v1, p0, p2}, Lcom/inisoft/mediaplayer/fb;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->N()I

    move-result v1

    new-instance v3, Lcom/inisoft/mediaplayer/fc;

    invoke-direct {v3, p0, p2}, Lcom/inisoft/mediaplayer/fc;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v4

    iget-object v4, v4, Lcom/inisoft/mediaplayer/hu;->b:Ljava/lang/String;

    const-string v5, "Audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v5

    iget-object v5, v5, Lcom/inisoft/mediaplayer/hu;->e:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v5

    iget-object v5, v5, Lcom/inisoft/mediaplayer/hu;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03001e

    invoke-direct {v0, p0, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03001c

    invoke-direct {v0, p0, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "reverseLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const-string v0, "sensorLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_5
    const-string v0, "reverseLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_6
    const-string v0, "sensorLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_7
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    new-instance v0, Lcom/inisoft/mediaplayer/hd;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v1}, Lcom/inisoft/mediaplayer/hd;-><init>(Lcom/inisoft/mediaplayer/fs;)V

    new-instance v1, Lcom/inisoft/mediaplayer/fd;

    invoke-direct {v1, p0, p1}, Lcom/inisoft/mediaplayer/fd;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hd;->a(Lcom/inisoft/mediaplayer/hk;)V

    invoke-virtual {v0, p0, p1}, Lcom/inisoft/mediaplayer/hd;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private a(F)Z
    .locals 8

    const/4 v7, 0x1

    const/high16 v1, 0x437f

    const/high16 v0, 0x41f0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    div-float v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0a0047

    const-string v2, "Brightness"

    invoke-static {p0, v1, v2}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(%d/%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    float-to-int v6, p1

    div-int/lit8 v6, v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f333333

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    const/high16 v2, 0x4220

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Landroid/text/Spannable;F)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    const/high16 v2, 0x41e0

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Landroid/text/Spannable;F)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/PlayerActivity;F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(F)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/bw;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".youtube.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "itag"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/bw;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/bw;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private b(I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "playback_speed"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    invoke-static {}, Lcom/inisoft/mediaplayer/PlayerActivity;->f()[I

    move-result-object v3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_2
    :pswitch_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/inisoft/mediaplayer/cj;->e(IZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :pswitch_1
    move v1, v2

    goto :goto_2

    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/PlayerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->u:Z

    return-void
.end method

.method private b(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->c()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0a0048

    const-string v2, "Volume"

    invoke-static {p0, v1, v2}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(%d/%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    float-to-int v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/fs;->c()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f333333

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    const/high16 v2, 0x4220

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Landroid/text/Spannable;F)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    const/high16 v2, 0x41e0

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Landroid/text/Spannable;F)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    return-object v0
.end method

.method private c()V
    .locals 3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->u()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v0, "Default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/hm;->a(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "Sans"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    const-string v0, "Serif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_3
    const-string v0, "Monospace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/hm;->a(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->a(Landroid/graphics/Typeface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    const-string v2, "Default"

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/fs;->c(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private c(F)V
    .locals 5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->d()I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v1, p1}, Lcom/inisoft/mediaplayer/fn;->a(F)F

    move-result v1

    float-to-int v2, v1

    add-int/2addr v0, v2

    if-gtz v0, :cond_0

    const-string v0, "00:00:00"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-long v3, v1

    invoke-static {v3, v4}, Lcom/inisoft/mediaplayer/hw;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f333333

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x21

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    const/high16 v1, 0x4220

    invoke-virtual {v0, v2, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Landroid/text/Spannable;F)V

    :goto_1
    return-void

    :cond_0
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/inisoft/mediaplayer/hw;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    const/high16 v1, 0x41e0

    invoke-virtual {v0, v2, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Landroid/text/Spannable;F)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->v:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00a5

    new-instance v2, Lcom/inisoft/mediaplayer/ez;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/ez;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->t:Z

    return-void
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/hm;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    return-object v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->I:Z

    return-void
.end method

.method private static synthetic e()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/PlayerActivity;->K:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/d;->values()[Lcom/inisoft/mediaplayer/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/d;->J:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/d;->X:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bp:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x78

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bq:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x79

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_99

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bT:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x96

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_98

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bU:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x97

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_97

    :goto_6
    :try_start_6
    sget-object v1, Lcom/inisoft/mediaplayer/d;->az:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_96

    :goto_7
    :try_start_7
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bh:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x70

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_95

    :goto_8
    :try_start_8
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bK:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8d

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_94

    :goto_9
    :try_start_9
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bS:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x95

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_93

    :goto_a
    :try_start_a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->G:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_92

    :goto_b
    :try_start_b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->H:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_91

    :goto_c
    :try_start_c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bz:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x82

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_90

    :goto_d
    :try_start_d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bA:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x83

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_8f

    :goto_e
    :try_start_e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aH:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_8e

    :goto_f
    :try_start_f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bd:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x6c

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8d

    :goto_10
    :try_start_10
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bt:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x7c

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_8c

    :goto_11
    :try_start_11
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bL:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8e

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_8b

    :goto_12
    :try_start_12
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aD:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_8a

    :goto_13
    :try_start_13
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bc:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x6b

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_89

    :goto_14
    :try_start_14
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aM:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_88

    :goto_15
    :try_start_15
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bI:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8b

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_87

    :goto_16
    :try_start_16
    sget-object v1, Lcom/inisoft/mediaplayer/d;->S:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_86

    :goto_17
    :try_start_17
    sget-object v1, Lcom/inisoft/mediaplayer/d;->L:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_85

    :goto_18
    :try_start_18
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bu:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x7d

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_84

    :goto_19
    :try_start_19
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aE:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_83

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->B:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_82

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ca:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x9d

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_81

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bs:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x7b

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_80

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aZ:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x68

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_7f

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bE:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x87

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_7e

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aT:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_7d

    :goto_20
    :try_start_20
    sget-object v1, Lcom/inisoft/mediaplayer/d;->z:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_7c

    :goto_21
    :try_start_21
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aY:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x67

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_7b

    :goto_22
    :try_start_22
    sget-object v1, Lcom/inisoft/mediaplayer/d;->br:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x7a

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_7a

    :goto_23
    :try_start_23
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aX:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x66

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_79

    :goto_24
    :try_start_24
    sget-object v1, Lcom/inisoft/mediaplayer/d;->I:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_78

    :goto_25
    :try_start_25
    sget-object v1, Lcom/inisoft/mediaplayer/d;->as:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_77

    :goto_26
    :try_start_26
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aL:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_76

    :goto_27
    :try_start_27
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bH:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8a

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_75

    :goto_28
    :try_start_28
    sget-object v1, Lcom/inisoft/mediaplayer/d;->Z:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_74

    :goto_29
    :try_start_29
    sget-object v1, Lcom/inisoft/mediaplayer/d;->w:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_73

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aB:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_72

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bG:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x89

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_71

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aW:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_70

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->e:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_6f

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->f:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_6e

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->v:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_6d

    :goto_30
    :try_start_30
    sget-object v1, Lcom/inisoft/mediaplayer/d;->u:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_6c

    :goto_31
    :try_start_31
    sget-object v1, Lcom/inisoft/mediaplayer/d;->C:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_6b

    :goto_32
    :try_start_32
    sget-object v1, Lcom/inisoft/mediaplayer/d;->A:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_6a

    :goto_33
    :try_start_33
    sget-object v1, Lcom/inisoft/mediaplayer/d;->W:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_69

    :goto_34
    :try_start_34
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bN:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x90

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_68

    :goto_35
    :try_start_35
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bM:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8f

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_67

    :goto_36
    :try_start_36
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aA:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_66

    :goto_37
    :try_start_37
    sget-object v1, Lcom/inisoft/mediaplayer/d;->D:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_65

    :goto_38
    :try_start_38
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bl:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x74

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_64

    :goto_39
    :try_start_39
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bm:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x75

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_63

    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->O:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_62

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aN:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_61

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->m:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_60

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bZ:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x9c

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_5f

    :goto_3e
    :try_start_3e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bO:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x91

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_5e

    :goto_3f
    :try_start_3f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aK:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_5d

    :goto_40
    :try_start_40
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bX:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x9a

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_5c

    :goto_41
    :try_start_41
    sget-object v1, Lcom/inisoft/mediaplayer/d;->k:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_5b

    :goto_42
    :try_start_42
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ax:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_5a

    :goto_43
    :try_start_43
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bF:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x88

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_59

    :goto_44
    :try_start_44
    sget-object v1, Lcom/inisoft/mediaplayer/d;->M:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_58

    :goto_45
    :try_start_45
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bn:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x76

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_57

    :goto_46
    :try_start_46
    sget-object v1, Lcom/inisoft/mediaplayer/d;->i:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_56

    :goto_47
    :try_start_47
    sget-object v1, Lcom/inisoft/mediaplayer/d;->j:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_55

    :goto_48
    :try_start_48
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aF:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_54

    :goto_49
    :try_start_49
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bv:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x7e

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_53

    :goto_4a
    :try_start_4a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->b:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_52

    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->c:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_51

    :goto_4c
    :try_start_4c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->d:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_50

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->n:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4f

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->p:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :goto_4f
    :try_start_4f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->q:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4d

    :goto_50
    :try_start_50
    sget-object v1, Lcom/inisoft/mediaplayer/d;->r:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_4c

    :goto_51
    :try_start_51
    sget-object v1, Lcom/inisoft/mediaplayer/d;->U:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_4b

    :goto_52
    :try_start_52
    sget-object v1, Lcom/inisoft/mediaplayer/d;->V:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_4a

    :goto_53
    :try_start_53
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ac:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_49

    :goto_54
    :try_start_54
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bW:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x99

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_48

    :goto_55
    :try_start_55
    sget-object v1, Lcom/inisoft/mediaplayer/d;->a:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_47

    :goto_56
    :try_start_56
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aJ:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_46

    :goto_57
    :try_start_57
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ar:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_45

    :goto_58
    :try_start_58
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ao:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_44

    :goto_59
    :try_start_59
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bj:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x72

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_43

    :goto_5a
    :try_start_5a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ap:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_42

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aq:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_41

    :goto_5c
    :try_start_5c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bR:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x94

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_40

    :goto_5d
    :try_start_5d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->am:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_3f

    :goto_5e
    :try_start_5e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->an:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_3e

    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bY:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x9b

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_3d

    :goto_60
    :try_start_60
    sget-object v1, Lcom/inisoft/mediaplayer/d;->be:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x6d

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_3c

    :goto_61
    :try_start_61
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ai:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_3b

    :goto_62
    :try_start_62
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ak:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_3a

    :goto_63
    :try_start_63
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ae:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_39

    :goto_64
    :try_start_64
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bV:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x98

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_38

    :goto_65
    :try_start_65
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bJ:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8c

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_37

    :goto_66
    :try_start_66
    sget-object v1, Lcom/inisoft/mediaplayer/d;->o:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_36

    :goto_67
    :try_start_67
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bo:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x77

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_35

    :goto_68
    :try_start_68
    sget-object v1, Lcom/inisoft/mediaplayer/d;->N:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_34

    :goto_69
    :try_start_69
    sget-object v1, Lcom/inisoft/mediaplayer/d;->R:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_33

    :goto_6a
    :try_start_6a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->g:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_32

    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->h:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_31

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->at:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_30

    :goto_6d
    :try_start_6d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->au:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_2f

    :goto_6e
    :try_start_6e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bb:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x6a

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_2e

    :goto_6f
    :try_start_6f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aI:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_2d

    :goto_70
    :try_start_70
    sget-object v1, Lcom/inisoft/mediaplayer/d;->Y:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_2c

    :goto_71
    :try_start_71
    sget-object v1, Lcom/inisoft/mediaplayer/d;->af:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_2b

    :goto_72
    :try_start_72
    sget-object v1, Lcom/inisoft/mediaplayer/d;->l:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_2a

    :goto_73
    :try_start_73
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bk:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x73

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_29

    :goto_74
    :try_start_74
    sget-object v1, Lcom/inisoft/mediaplayer/d;->x:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_28

    :goto_75
    :try_start_75
    sget-object v1, Lcom/inisoft/mediaplayer/d;->y:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_27

    :goto_76
    :try_start_76
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aS:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_26

    :goto_77
    :try_start_77
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bx:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x80

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_25

    :goto_78
    :try_start_78
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bw:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x7f

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_24

    :goto_79
    :try_start_79
    sget-object v1, Lcom/inisoft/mediaplayer/d;->F:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_23

    :goto_7a
    :try_start_7a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ba:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x69

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_22

    :goto_7b
    :try_start_7b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aU:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_21

    :goto_7c
    :try_start_7c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aV:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_20

    :goto_7d
    :try_start_7d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bC:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x85

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_1f

    :goto_7e
    :try_start_7e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->by:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x81

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_1e

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aa:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_1d

    :goto_80
    :try_start_80
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aC:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_1c

    :goto_81
    :try_start_81
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ag:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_1b

    :goto_82
    :try_start_82
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bf:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x6e

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_1a

    :goto_83
    :try_start_83
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ah:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_19

    :goto_84
    :try_start_84
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bD:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x86

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_18

    :goto_85
    :try_start_85
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bB:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x84

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_17

    :goto_86
    :try_start_86
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bi:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x71

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_16

    :goto_87
    :try_start_87
    sget-object v1, Lcom/inisoft/mediaplayer/d;->av:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_15

    :goto_88
    :try_start_88
    sget-object v1, Lcom/inisoft/mediaplayer/d;->K:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_14

    :goto_89
    :try_start_89
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aj:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_13

    :goto_8a
    :try_start_8a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ab:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_12

    :goto_8b
    :try_start_8b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aO:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_11

    :goto_8c
    :try_start_8c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->E:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_10

    :goto_8d
    :try_start_8d
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aP:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_f

    :goto_8e
    :try_start_8e
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aQ:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_e

    :goto_8f
    :try_start_8f
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bg:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x6f

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_d

    :goto_90
    :try_start_90
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aR:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_c

    :goto_91
    :try_start_91
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bQ:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x93

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_b

    :goto_92
    :try_start_92
    sget-object v1, Lcom/inisoft/mediaplayer/d;->s:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_a

    :goto_93
    :try_start_93
    sget-object v1, Lcom/inisoft/mediaplayer/d;->t:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_9

    :goto_94
    :try_start_94
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aw:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_8

    :goto_95
    :try_start_95
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ay:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_7

    :goto_96
    :try_start_96
    sget-object v1, Lcom/inisoft/mediaplayer/d;->T:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_6

    :goto_97
    :try_start_97
    sget-object v1, Lcom/inisoft/mediaplayer/d;->P:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_5

    :goto_98
    :try_start_98
    sget-object v1, Lcom/inisoft/mediaplayer/d;->Q:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_4

    :goto_99
    :try_start_99
    sget-object v1, Lcom/inisoft/mediaplayer/d;->al:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_3

    :goto_9a
    :try_start_9a
    sget-object v1, Lcom/inisoft/mediaplayer/d;->bP:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x92

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_2

    :goto_9b
    :try_start_9b
    sget-object v1, Lcom/inisoft/mediaplayer/d;->ad:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_1

    :goto_9c
    :try_start_9c
    sget-object v1, Lcom/inisoft/mediaplayer/d;->aG:Lcom/inisoft/mediaplayer/d;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/d;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_0

    :goto_9d
    sput-object v0, Lcom/inisoft/mediaplayer/PlayerActivity;->K:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_9d

    :catch_1
    move-exception v1

    goto :goto_9c

    :catch_2
    move-exception v1

    goto :goto_9b

    :catch_3
    move-exception v1

    goto :goto_9a

    :catch_4
    move-exception v1

    goto :goto_99

    :catch_5
    move-exception v1

    goto :goto_98

    :catch_6
    move-exception v1

    goto :goto_97

    :catch_7
    move-exception v1

    goto :goto_96

    :catch_8
    move-exception v1

    goto :goto_95

    :catch_9
    move-exception v1

    goto :goto_94

    :catch_a
    move-exception v1

    goto :goto_93

    :catch_b
    move-exception v1

    goto/16 :goto_92

    :catch_c
    move-exception v1

    goto/16 :goto_91

    :catch_d
    move-exception v1

    goto/16 :goto_90

    :catch_e
    move-exception v1

    goto/16 :goto_8f

    :catch_f
    move-exception v1

    goto/16 :goto_8e

    :catch_10
    move-exception v1

    goto/16 :goto_8d

    :catch_11
    move-exception v1

    goto/16 :goto_8c

    :catch_12
    move-exception v1

    goto/16 :goto_8b

    :catch_13
    move-exception v1

    goto/16 :goto_8a

    :catch_14
    move-exception v1

    goto/16 :goto_89

    :catch_15
    move-exception v1

    goto/16 :goto_88

    :catch_16
    move-exception v1

    goto/16 :goto_87

    :catch_17
    move-exception v1

    goto/16 :goto_86

    :catch_18
    move-exception v1

    goto/16 :goto_85

    :catch_19
    move-exception v1

    goto/16 :goto_84

    :catch_1a
    move-exception v1

    goto/16 :goto_83

    :catch_1b
    move-exception v1

    goto/16 :goto_82

    :catch_1c
    move-exception v1

    goto/16 :goto_81

    :catch_1d
    move-exception v1

    goto/16 :goto_80

    :catch_1e
    move-exception v1

    goto/16 :goto_7f

    :catch_1f
    move-exception v1

    goto/16 :goto_7e

    :catch_20
    move-exception v1

    goto/16 :goto_7d

    :catch_21
    move-exception v1

    goto/16 :goto_7c

    :catch_22
    move-exception v1

    goto/16 :goto_7b

    :catch_23
    move-exception v1

    goto/16 :goto_7a

    :catch_24
    move-exception v1

    goto/16 :goto_79

    :catch_25
    move-exception v1

    goto/16 :goto_78

    :catch_26
    move-exception v1

    goto/16 :goto_77

    :catch_27
    move-exception v1

    goto/16 :goto_76

    :catch_28
    move-exception v1

    goto/16 :goto_75

    :catch_29
    move-exception v1

    goto/16 :goto_74

    :catch_2a
    move-exception v1

    goto/16 :goto_73

    :catch_2b
    move-exception v1

    goto/16 :goto_72

    :catch_2c
    move-exception v1

    goto/16 :goto_71

    :catch_2d
    move-exception v1

    goto/16 :goto_70

    :catch_2e
    move-exception v1

    goto/16 :goto_6f

    :catch_2f
    move-exception v1

    goto/16 :goto_6e

    :catch_30
    move-exception v1

    goto/16 :goto_6d

    :catch_31
    move-exception v1

    goto/16 :goto_6c

    :catch_32
    move-exception v1

    goto/16 :goto_6b

    :catch_33
    move-exception v1

    goto/16 :goto_6a

    :catch_34
    move-exception v1

    goto/16 :goto_69

    :catch_35
    move-exception v1

    goto/16 :goto_68

    :catch_36
    move-exception v1

    goto/16 :goto_67

    :catch_37
    move-exception v1

    goto/16 :goto_66

    :catch_38
    move-exception v1

    goto/16 :goto_65

    :catch_39
    move-exception v1

    goto/16 :goto_64

    :catch_3a
    move-exception v1

    goto/16 :goto_63

    :catch_3b
    move-exception v1

    goto/16 :goto_62

    :catch_3c
    move-exception v1

    goto/16 :goto_61

    :catch_3d
    move-exception v1

    goto/16 :goto_60

    :catch_3e
    move-exception v1

    goto/16 :goto_5f

    :catch_3f
    move-exception v1

    goto/16 :goto_5e

    :catch_40
    move-exception v1

    goto/16 :goto_5d

    :catch_41
    move-exception v1

    goto/16 :goto_5c

    :catch_42
    move-exception v1

    goto/16 :goto_5b

    :catch_43
    move-exception v1

    goto/16 :goto_5a

    :catch_44
    move-exception v1

    goto/16 :goto_59

    :catch_45
    move-exception v1

    goto/16 :goto_58

    :catch_46
    move-exception v1

    goto/16 :goto_57

    :catch_47
    move-exception v1

    goto/16 :goto_56

    :catch_48
    move-exception v1

    goto/16 :goto_55

    :catch_49
    move-exception v1

    goto/16 :goto_54

    :catch_4a
    move-exception v1

    goto/16 :goto_53

    :catch_4b
    move-exception v1

    goto/16 :goto_52

    :catch_4c
    move-exception v1

    goto/16 :goto_51

    :catch_4d
    move-exception v1

    goto/16 :goto_50

    :catch_4e
    move-exception v1

    goto/16 :goto_4f

    :catch_4f
    move-exception v1

    goto/16 :goto_4e

    :catch_50
    move-exception v1

    goto/16 :goto_4d

    :catch_51
    move-exception v1

    goto/16 :goto_4c

    :catch_52
    move-exception v1

    goto/16 :goto_4b

    :catch_53
    move-exception v1

    goto/16 :goto_4a

    :catch_54
    move-exception v1

    goto/16 :goto_49

    :catch_55
    move-exception v1

    goto/16 :goto_48

    :catch_56
    move-exception v1

    goto/16 :goto_47

    :catch_57
    move-exception v1

    goto/16 :goto_46

    :catch_58
    move-exception v1

    goto/16 :goto_45

    :catch_59
    move-exception v1

    goto/16 :goto_44

    :catch_5a
    move-exception v1

    goto/16 :goto_43

    :catch_5b
    move-exception v1

    goto/16 :goto_42

    :catch_5c
    move-exception v1

    goto/16 :goto_41

    :catch_5d
    move-exception v1

    goto/16 :goto_40

    :catch_5e
    move-exception v1

    goto/16 :goto_3f

    :catch_5f
    move-exception v1

    goto/16 :goto_3e

    :catch_60
    move-exception v1

    goto/16 :goto_3d

    :catch_61
    move-exception v1

    goto/16 :goto_3c

    :catch_62
    move-exception v1

    goto/16 :goto_3b

    :catch_63
    move-exception v1

    goto/16 :goto_3a

    :catch_64
    move-exception v1

    goto/16 :goto_39

    :catch_65
    move-exception v1

    goto/16 :goto_38

    :catch_66
    move-exception v1

    goto/16 :goto_37

    :catch_67
    move-exception v1

    goto/16 :goto_36

    :catch_68
    move-exception v1

    goto/16 :goto_35

    :catch_69
    move-exception v1

    goto/16 :goto_34

    :catch_6a
    move-exception v1

    goto/16 :goto_33

    :catch_6b
    move-exception v1

    goto/16 :goto_32

    :catch_6c
    move-exception v1

    goto/16 :goto_31

    :catch_6d
    move-exception v1

    goto/16 :goto_30

    :catch_6e
    move-exception v1

    goto/16 :goto_2f

    :catch_6f
    move-exception v1

    goto/16 :goto_2e

    :catch_70
    move-exception v1

    goto/16 :goto_2d

    :catch_71
    move-exception v1

    goto/16 :goto_2c

    :catch_72
    move-exception v1

    goto/16 :goto_2b

    :catch_73
    move-exception v1

    goto/16 :goto_2a

    :catch_74
    move-exception v1

    goto/16 :goto_29

    :catch_75
    move-exception v1

    goto/16 :goto_28

    :catch_76
    move-exception v1

    goto/16 :goto_27

    :catch_77
    move-exception v1

    goto/16 :goto_26

    :catch_78
    move-exception v1

    goto/16 :goto_25

    :catch_79
    move-exception v1

    goto/16 :goto_24

    :catch_7a
    move-exception v1

    goto/16 :goto_23

    :catch_7b
    move-exception v1

    goto/16 :goto_22

    :catch_7c
    move-exception v1

    goto/16 :goto_21

    :catch_7d
    move-exception v1

    goto/16 :goto_20

    :catch_7e
    move-exception v1

    goto/16 :goto_1f

    :catch_7f
    move-exception v1

    goto/16 :goto_1e

    :catch_80
    move-exception v1

    goto/16 :goto_1d

    :catch_81
    move-exception v1

    goto/16 :goto_1c

    :catch_82
    move-exception v1

    goto/16 :goto_1b

    :catch_83
    move-exception v1

    goto/16 :goto_1a

    :catch_84
    move-exception v1

    goto/16 :goto_19

    :catch_85
    move-exception v1

    goto/16 :goto_18

    :catch_86
    move-exception v1

    goto/16 :goto_17

    :catch_87
    move-exception v1

    goto/16 :goto_16

    :catch_88
    move-exception v1

    goto/16 :goto_15

    :catch_89
    move-exception v1

    goto/16 :goto_14

    :catch_8a
    move-exception v1

    goto/16 :goto_13

    :catch_8b
    move-exception v1

    goto/16 :goto_12

    :catch_8c
    move-exception v1

    goto/16 :goto_11

    :catch_8d
    move-exception v1

    goto/16 :goto_10

    :catch_8e
    move-exception v1

    goto/16 :goto_f

    :catch_8f
    move-exception v1

    goto/16 :goto_e

    :catch_90
    move-exception v1

    goto/16 :goto_d

    :catch_91
    move-exception v1

    goto/16 :goto_c

    :catch_92
    move-exception v1

    goto/16 :goto_b

    :catch_93
    move-exception v1

    goto/16 :goto_a

    :catch_94
    move-exception v1

    goto/16 :goto_9

    :catch_95
    move-exception v1

    goto/16 :goto_8

    :catch_96
    move-exception v1

    goto/16 :goto_7

    :catch_97
    move-exception v1

    goto/16 :goto_6

    :catch_98
    move-exception v1

    goto/16 :goto_5

    :catch_99
    move-exception v1

    goto/16 :goto_4

    :catch_9a
    move-exception v1

    goto/16 :goto_3

    :catch_9b
    move-exception v1

    goto/16 :goto_2

    :catch_9c
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(I)V

    return-void
.end method

.method private static synthetic f()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/PlayerActivity;->L:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/bw;->values()[Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/bw;->e:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/inisoft/mediaplayer/PlayerActivity;->L:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(I)V

    return-void
.end method

.method private static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/PlayerActivity;->M:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/co;->values()[Lcom/inisoft/mediaplayer/co;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/co;->c:Lcom/inisoft/mediaplayer/co;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/co;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/co;->a:Lcom/inisoft/mediaplayer/co;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/co;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/co;->d:Lcom/inisoft/mediaplayer/co;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/co;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/co;->b:Lcom/inisoft/mediaplayer/co;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/co;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/inisoft/mediaplayer/PlayerActivity;->M:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    return-void
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/et;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->m:Lcom/inisoft/mediaplayer/et;

    return-object v0
.end method

.method static synthetic j(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->m:Lcom/inisoft/mediaplayer/et;

    return-void
.end method

.method static synthetic k(Lcom/inisoft/mediaplayer/PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->u:Z

    return v0
.end method

.method static synthetic l(Lcom/inisoft/mediaplayer/PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->C:Z

    return v0
.end method

.method static synthetic m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->G:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/inisoft/mediaplayer/PlayerActivity;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->F:I

    return v0
.end method

.method static synthetic o(Lcom/inisoft/mediaplayer/PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->v:Z

    return v0
.end method

.method static synthetic p(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gm;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    return-object v0
.end method

.method static synthetic q(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 8

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/inisoft/mediaplayer/hv;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/hv;-><init>()V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->a()Lcom/inisoft/mediaplayer/hv;

    move-result-object v5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->O()Lcom/inisoft/mediaplayer/gm;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz v5, :cond_7

    iget-object v0, v5, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v3, v3, v2}, Lcom/inisoft/mediaplayer/fs;->a(ZII)V

    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    move v2, v3

    :goto_2
    iget-object v0, v1, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_8

    iput-object v6, v1, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    move v0, v3

    :goto_3
    iget-object v2, v5, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/hv;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    iget-boolean v2, v2, Lcom/inisoft/mediaplayer/gm;->a:Z

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    iget v5, v5, Lcom/inisoft/mediaplayer/gm;->b:I

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    iget v6, v6, Lcom/inisoft/mediaplayer/gm;->c:I

    invoke-virtual {v0, v2, v5, v6}, Lcom/inisoft/mediaplayer/fs;->a(ZII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    const-string v2, "Subtitle"

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/hv;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->p(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->U()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v0

    const-string v1, "Subtitle"

    invoke-virtual {v0, v4, v1}, Lcom/inisoft/mediaplayer/hv;->a(ZLjava/lang/String;)I

    move-result v1

    const-string v2, "Subtitle"

    invoke-virtual {v0, v3, v2}, Lcom/inisoft/mediaplayer/hv;->a(ZLjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->z()Z

    move-result v2

    if-eqz v2, :cond_4

    if-lez v0, :cond_b

    move v3, v4

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/fn;->e(Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v3, v3, v4}, Lcom/inisoft/mediaplayer/fs;->a(ZII)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v3, v3, v2}, Lcom/inisoft/mediaplayer/fs;->a(ZII)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v4, v3, v2}, Lcom/inisoft/mediaplayer/fs;->a(ZII)V

    goto :goto_1

    :cond_8
    iget-object v0, v1, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/hu;

    if-eqz v0, :cond_9

    iget-boolean v7, v0, Lcom/inisoft/mediaplayer/hu;->a:Z

    if-eqz v7, :cond_9

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_a
    iget-object v2, v1, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_b
    if-lez v1, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v4

    goto :goto_4

    :cond_c
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic r(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    return-void
.end method

.method static synthetic s(Lcom/inisoft/mediaplayer/PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->I:Z

    return v0
.end method

.method static synthetic t(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/inisoft/mediaplayer/gt;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->a()Lcom/inisoft/mediaplayer/PlayerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inisoft/mediaplayer/gt;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/VideoView;Lcom/inisoft/mediaplayer/hm;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->g:Lcom/inisoft/mediaplayer/gw;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gw;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->P()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->f(I)V

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic u(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c()V

    return-void
.end method

.method static synthetic v(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/ax;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    return-object v0
.end method

.method static synthetic w(Lcom/inisoft/mediaplayer/PlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->t:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 11

    const-wide/16 v9, 0x3

    const/16 v6, 0x11

    const/4 v1, 0x0

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/cj;)Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    :try_start_0
    const-string v2, "ro.board.platform"

    invoke-static {v2}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "exynos4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->e:Lcom/inisoft/mediaplayer/bw;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/fs;->b(Lcom/inisoft/mediaplayer/bw;)V

    new-instance v2, Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v2, p0, v3}, Lcom/inisoft/mediaplayer/VideoView;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/inisoft/mediaplayer/fn;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/fn;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->f:Lcom/inisoft/mediaplayer/fq;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fq;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/fn;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->n:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    new-instance v5, Lcom/inisoft/mediaplayer/hm;

    invoke-direct {v5, p0}, Lcom/inisoft/mediaplayer/hm;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v6}, Lcom/inisoft/mediaplayer/fs;->p()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/inisoft/mediaplayer/hm;->a(I)V

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v6}, Lcom/inisoft/mediaplayer/fs;->x()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/inisoft/mediaplayer/hm;->b(I)V

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v6}, Lcom/inisoft/mediaplayer/fs;->r()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/inisoft/mediaplayer/hm;->c(I)V

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v6}, Lcom/inisoft/mediaplayer/fs;->o()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/inisoft/mediaplayer/hm;->b(Z)V

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v6}, Lcom/inisoft/mediaplayer/fs;->q()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/inisoft/mediaplayer/hm;->c(Z)V

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v6}, Lcom/inisoft/mediaplayer/fs;->aq()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/inisoft/mediaplayer/hm;->a(Z)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c()V

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_1
    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/inisoft/mediaplayer/hm;->setGravity(I)V

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->n:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x11

    invoke-direct {v7, v3, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/gt;->d()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    :cond_1
    new-instance v2, Lcom/inisoft/mediaplayer/gt;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    iget-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v2, p0, v3, v5, v6}, Lcom/inisoft/mediaplayer/gt;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/VideoView;Lcom/inisoft/mediaplayer/hm;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->g:Lcom/inisoft/mediaplayer/gw;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gw;)V

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/fn;->a(Landroid/widget/FrameLayout;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->h:Lcom/inisoft/mediaplayer/el;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/el;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->i:Lcom/inisoft/mediaplayer/ei;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/ei;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->c:Lcom/inisoft/mediaplayer/ej;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/ej;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->d:Lcom/inisoft/mediaplayer/en;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/en;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->e:Lcom/inisoft/mediaplayer/ij;

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/ij;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/fs;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VideoView;->b(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->e:Lcom/inisoft/mediaplayer/bw;

    if-ne v0, v2, :cond_3

    :cond_2
    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    :cond_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/fs;->b(Lcom/inisoft/mediaplayer/bw;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/bw;)V

    :try_start_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/ax;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->R()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_6

    cmp-long v0, v2, v9

    if-ltz v0, :cond_9

    sub-long v0, v2, v9

    :goto_2
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/VideoView;->d(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/hm;->setGravity(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/hm;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->d()V

    :try_start_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->g()I

    move-result v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/hm;->a()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v3, v2}, Lcom/inisoft/mediaplayer/fs;->q(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v7}, Lcom/inisoft/mediaplayer/fs;->W()I

    move-result v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/inisoft/mediaplayer/hm;->setPadding(IIII)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/hm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    new-instance v3, Lcom/inisoft/mediaplayer/fe;

    invoke-direct {v3, p0}, Lcom/inisoft/mediaplayer/fe;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/hm;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->C()I

    move-result v2

    or-int/lit8 v2, v2, 0x50

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->n:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->p:Lcom/inisoft/mediaplayer/hm;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->q:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->n:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/cj;->d()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_7
    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_7

    add-int/lit16 v0, v0, -0xbb8

    :cond_7
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->d(I)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_5

    :catch_4
    move-exception v2

    goto/16 :goto_4

    :catch_5
    move-exception v2

    goto/16 :goto_1

    :catch_6
    move-exception v2

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/inisoft/mediaplayer/et;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->m:Lcom/inisoft/mediaplayer/et;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "smb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "ftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/inisoft/mediaplayer/fa;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/inisoft/mediaplayer/fa;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, p3}, Lcom/inisoft/mediaplayer/fs;->d(Ljava/lang/String;)V

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Lcom/inisoft/mediaplayer/cj;->a(Ljava/lang/String;Z)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a()V

    goto :goto_0
.end method

.method public final b()Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->H:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->H:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->H:J

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    iput-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->n()V

    iput-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ax;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v6, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    :cond_3
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->D:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->D:Ljava/util/Locale;

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->D:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    const/4 v0, 0x0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->d:Lcom/inisoft/mediaplayer/en;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->d:Lcom/inisoft/mediaplayer/en;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/en;->b()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v7}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "force_english"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "en"

    invoke-static {p0, v0, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->D:Ljava/util/Locale;

    :goto_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setTheme(I)V

    :cond_0
    iput-boolean v7, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->C:Z

    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->setContentView(I)V

    const v0, 0x7f0500b9

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const v0, 0x7f0a004b

    const-string v1, "Unknown error"

    invoke-static {p0, v0, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->D:Ljava/util/Locale;

    goto :goto_0

    :cond_3
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "http://"

    const-string v2, "httplive://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v7}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "FileExtension_wmv"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_4

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;)V

    :cond_4
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v0, Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fs;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;->a(Lcom/inisoft/mediaplayer/fs;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    const-string v3, "START_FROM_SPLASH"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/fs;->h(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    const-string v3, "SELECTED_FORCECODEC"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/inisoft/mediaplayer/bw;->a(I)Lcom/inisoft/mediaplayer/bw;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/bw;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    const-string v3, "SELECTED_FORCEPOSITION"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/inisoft/mediaplayer/fs;->a(J)V

    const-string v0, "SELECTED_SUBTITLE_PATH"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    const-string v4, "ROADPLAY_TYPE"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/inisoft/mediaplayer/fs;->w(I)V

    const-string v0, "FORCE_SPEED"

    const/16 v4, -0xa

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->F:I

    const-string v0, "SELECTED_AUDIOTRACK_INDEX"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v4, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v4, v0}, Lcom/inisoft/mediaplayer/fs;->m(I)V

    :cond_5
    const-string v0, "SUBTITLE_INDEX1"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    const-string v4, "SUBTITLE_ISEMBEDDED"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "SUBTITLE_INDEX2"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v5, Lcom/inisoft/mediaplayer/gm;

    invoke-direct {v5, v4, v0, v2}, Lcom/inisoft/mediaplayer/gm;-><init>(ZII)V

    iput-object v5, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->M()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "can\'t open file : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iput-object v8, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->E:Lcom/inisoft/mediaplayer/gm;

    goto :goto_3

    :cond_7
    move-object v1, v0

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->h()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->i()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(F)Z

    :cond_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->s:Landroid/view/GestureDetector;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->a()Lcom/inisoft/mediaplayer/PlayerActivity;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->finish()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    iput-object v8, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    goto/16 :goto_1

    :cond_b
    move-object v1, v0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Landroid/view/Menu;)V
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

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->a:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->n()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fn;->g()V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ax;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->B:Lcom/inisoft/mediaplayer/ax;

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->C:Z

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x18

    if-ne p1, v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->f()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    sparse-switch p1, :sswitch_data_0

    :cond_4
    :goto_1
    :sswitch_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v3, :cond_1

    const/16 v3, 0x1d

    if-lt p1, v3, :cond_1

    const/16 v3, 0x22

    if-gt p1, v3, :cond_1

    if-nez v2, :cond_10

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_2
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fn;->c()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->j()Z

    move-result v2

    if-nez v2, :cond_8

    iput-wide v9, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->H:J

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->n()V

    iput-object v8, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    iput-object v8, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    :cond_7
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->finish()V

    goto :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->H:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    iput-wide v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->H:J

    goto :goto_1

    :cond_9
    iput-wide v9, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->H:J

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->n()V

    iput-object v8, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    :cond_a
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/gt;->d()V

    iput-object v8, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    :cond_b
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->finish()V

    move v1, v0

    goto/16 :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V

    :cond_c
    move v1, v0

    goto/16 :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V

    :cond_d
    move v1, v0

    goto/16 :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->ad()I

    move-result v2

    mul-int/lit16 v2, v2, -0x3e8

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(F)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fn;->b()V

    goto/16 :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->ad()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(F)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fn;->b()V

    goto/16 :goto_1

    :sswitch_6
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    :goto_4
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fn;->f()V

    :cond_e
    move v1, v0

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    goto :goto_4

    :pswitch_0
    const/4 v0, -0x5

    goto/16 :goto_2

    :pswitch_1
    move v0, v1

    goto/16 :goto_2

    :pswitch_2
    const/4 v0, 0x5

    goto/16 :goto_2

    :pswitch_3
    const/16 v0, 0xa

    goto/16 :goto_2

    :pswitch_4
    const/16 v0, 0xf

    goto/16 :goto_2

    :pswitch_5
    const/16 v0, 0x14

    goto/16 :goto_2

    :cond_10
    if-ne v2, v0, :cond_1

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    goto/16 :goto_3

    :pswitch_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x3e -> :sswitch_6
        0x4f -> :sswitch_6
        0x52 -> :sswitch_0
        0x55 -> :sswitch_6
        0xbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/16 v4, 0xb

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/VideoView;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "root_folder"

    const-string v3, "/sdcard"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0a009c

    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/inisoft/mediaplayer/cg;->a:Lcom/inisoft/mediaplayer/cg;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->j:Lcom/inisoft/mediaplayer/ci;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/inisoft/mediaplayer/by;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inisoft/mediaplayer/cg;Lcom/inisoft/mediaplayer/ci;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    :try_start_2
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Z)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/hv;Z)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/hv;Z)V

    goto :goto_0

    :cond_7
    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fn;->a()V

    :cond_8
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_9
    if-ne v2, v4, :cond_a

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->finish()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->r:Lcom/inisoft/mediaplayer/gt;

    goto :goto_1

    :cond_a
    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    sget-object v2, Lcom/inisoft/mediaplayer/b/am;->a:Lcom/inisoft/mediaplayer/b/am;

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/b/am;)V

    goto :goto_0

    :cond_b
    const/4 v3, 0x7

    if-ne v2, v3, :cond_c

    sget-object v2, Lcom/inisoft/mediaplayer/b/am;->b:Lcom/inisoft/mediaplayer/b/am;

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/b/am;)V

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x8

    if-ne v2, v3, :cond_d

    sget-object v2, Lcom/inisoft/mediaplayer/b/am;->c:Lcom/inisoft/mediaplayer/b/am;

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/b/am;)V

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x9

    if-ne v2, v3, :cond_e

    sget-object v2, Lcom/inisoft/mediaplayer/b/am;->d:Lcom/inisoft/mediaplayer/b/am;

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/b/am;)V

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xa

    if-ne v2, v3, :cond_f

    sget-object v2, Lcom/inisoft/mediaplayer/b/am;->e:Lcom/inisoft/mediaplayer/b/am;

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/b/am;)V

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->e:Lcom/inisoft/mediaplayer/ij;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->e:Lcom/inisoft/mediaplayer/ij;

    invoke-interface {v2}, Lcom/inisoft/mediaplayer/ij;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->o()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->v:Z

    :cond_0
    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->D()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v3, v2, v1

    sget-object v0, Lcom/inisoft/mediaplayer/co;->a:Lcom/inisoft/mediaplayer/co;

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    float-to-double v4, v3

    const-wide v6, 0x3ff3333333333333L

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_8

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->f()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->G()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    iget v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->w:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    long-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    long-to-float v1, v1

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->w:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->x:F

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->b()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->y:F

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->i()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->z:F

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_b

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->A:Z

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/co;)V

    :cond_4
    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->A:Z

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_c

    const/4 v1, 0x1

    :goto_3
    if-eq v2, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->x:F

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->b()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->y:F

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->i()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->z:F

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_d

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->A:Z

    :cond_5
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->Y()Lcom/inisoft/mediaplayer/co;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/co;->a:Lcom/inisoft/mediaplayer/co;

    if-ne v0, v2, :cond_6

    move-object v0, v1

    :cond_6
    if-ne v1, v0, :cond_10

    invoke-static {}, Lcom/inisoft/mediaplayer/PlayerActivity;->g()[I

    move-result-object v0

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/co;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/inisoft/mediaplayer/co;->b:Lcom/inisoft/mediaplayer/co;

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcom/inisoft/mediaplayer/co;->c:Lcom/inisoft/mediaplayer/co;

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->F()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcom/inisoft/mediaplayer/co;->b:Lcom/inisoft/mediaplayer/co;

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/inisoft/mediaplayer/co;->c:Lcom/inisoft/mediaplayer/co;

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_3

    float-to-double v1, v3

    const-wide/high16 v3, 0x3fe0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3

    :cond_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->E()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/inisoft/mediaplayer/co;->d:Lcom/inisoft/mediaplayer/co;

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v1, 0x0

    goto :goto_4

    :pswitch_6
    iget v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->y:F

    iget v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x14

    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-lez v2, :cond_e

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    int-to-float v3, v1

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/fs;->a(F)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->b()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(F)Z

    :cond_e
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gez v2, :cond_f

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/fs;->a(F)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->b()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(F)Z

    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->G:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->G:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_7
    iget v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->z:F

    iget v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x14

    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    mul-int/lit8 v3, v1, 0x10

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/fs;->b(F)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->i()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(F)Z

    :cond_11
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gez v2, :cond_f

    iget-object v2, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    mul-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/fs;->b(F)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->i()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(F)Z

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :pswitch_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->f()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->c()I

    move-result v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->d()I

    move-result v2

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_12
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->v:Z

    :cond_13
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->m()I

    move-result v0

    if-nez v0, :cond_16

    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    :goto_7
    if-le v0, v1, :cond_14

    move v0, v1

    :cond_14
    add-int/lit16 v2, v2, 0x2710

    if-gt v2, v1, :cond_15

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->f()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(F)V

    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->m()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_17

    move v0, v1

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->m()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->o:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->ap()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->l:Lcom/inisoft/mediaplayer/fn;

    sget-object v2, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->k:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->Y()Lcom/inisoft/mediaplayer/co;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/co;->d:Lcom/inisoft/mediaplayer/co;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->G:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->G:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/PlayerActivity;->s:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
