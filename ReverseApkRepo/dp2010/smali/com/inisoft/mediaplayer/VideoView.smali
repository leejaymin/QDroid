.class public Lcom/inisoft/mediaplayer/VideoView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Lcom/inisoft/mediaplayer/df;


# static fields
.field private static synthetic W:[I


# instance fields
.field private A:Z

.field private B:I

.field private C:Landroid/content/Context;

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Lcom/inisoft/mediaplayer/et;

.field private J:Lcom/inisoft/mediaplayer/bw;

.field private K:Lcom/inisoft/mediaplayer/fs;

.field private L:Z

.field private M:Lcom/inisoft/mediaplayer/ax;

.field private N:Z

.field private O:Z

.field private P:Lcom/inisoft/mediaplayer/fn;

.field private Q:Lcom/inisoft/mediaplayer/ei;

.field private R:Lcom/inisoft/mediaplayer/ej;

.field private S:Lcom/inisoft/mediaplayer/eh;

.field private T:Lcom/inisoft/mediaplayer/ek;

.field private U:Landroid/view/View$OnClickListener;

.field private V:Landroid/view/View$OnClickListener;

.field a:Z

.field b:Lcom/inisoft/mediaplayer/eq;

.field c:Lcom/inisoft/mediaplayer/ep;

.field d:Lcom/inisoft/mediaplayer/el;

.field e:Landroid/view/SurfaceHolder$Callback;

.field private f:Ljava/lang/String;

.field private g:Landroid/net/Uri;

.field private h:Ljava/util/Map;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/view/SurfaceHolder;

.field private m:Lcom/inisoft/mediaplayer/es;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/inisoft/mediaplayer/ei;

.field private s:Lcom/inisoft/mediaplayer/el;

.field private t:I

.field private u:Lcom/inisoft/mediaplayer/ej;

.field private v:Lcom/inisoft/mediaplayer/en;

.field private w:Lcom/inisoft/mediaplayer/ij;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/inisoft/mediaplayer/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->f:Ljava/lang/String;

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->l:Landroid/view/SurfaceHolder;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/VideoView;->L:Z

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->M:Lcom/inisoft/mediaplayer/ax;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->a:Z

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    new-instance v0, Lcom/inisoft/mediaplayer/hx;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/hx;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->b:Lcom/inisoft/mediaplayer/eq;

    new-instance v0, Lcom/inisoft/mediaplayer/ia;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ia;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->c:Lcom/inisoft/mediaplayer/ep;

    new-instance v0, Lcom/inisoft/mediaplayer/ib;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ib;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->d:Lcom/inisoft/mediaplayer/el;

    new-instance v0, Lcom/inisoft/mediaplayer/ic;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ic;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->Q:Lcom/inisoft/mediaplayer/ei;

    new-instance v0, Lcom/inisoft/mediaplayer/id;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/id;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->R:Lcom/inisoft/mediaplayer/ej;

    new-instance v0, Lcom/inisoft/mediaplayer/if;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/if;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->S:Lcom/inisoft/mediaplayer/eh;

    new-instance v0, Lcom/inisoft/mediaplayer/ig;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ig;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->T:Lcom/inisoft/mediaplayer/ek;

    new-instance v0, Lcom/inisoft/mediaplayer/ih;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ih;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->e:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/inisoft/mediaplayer/ii;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ii;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->U:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/hy;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/hy;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->V:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->f:Ljava/lang/String;

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->l:Landroid/view/SurfaceHolder;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/VideoView;->L:Z

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->M:Lcom/inisoft/mediaplayer/ax;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->a:Z

    iput-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    new-instance v0, Lcom/inisoft/mediaplayer/hx;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/hx;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->b:Lcom/inisoft/mediaplayer/eq;

    new-instance v0, Lcom/inisoft/mediaplayer/ia;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ia;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->c:Lcom/inisoft/mediaplayer/ep;

    new-instance v0, Lcom/inisoft/mediaplayer/ib;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ib;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->d:Lcom/inisoft/mediaplayer/el;

    new-instance v0, Lcom/inisoft/mediaplayer/ic;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ic;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->Q:Lcom/inisoft/mediaplayer/ei;

    new-instance v0, Lcom/inisoft/mediaplayer/id;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/id;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->R:Lcom/inisoft/mediaplayer/ej;

    new-instance v0, Lcom/inisoft/mediaplayer/if;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/if;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->S:Lcom/inisoft/mediaplayer/eh;

    new-instance v0, Lcom/inisoft/mediaplayer/ig;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ig;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->T:Lcom/inisoft/mediaplayer/ek;

    new-instance v0, Lcom/inisoft/mediaplayer/ih;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ih;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->e:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/inisoft/mediaplayer/ii;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ii;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->U:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/hy;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/hy;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->V:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->s()V

    return-void
.end method

.method static synthetic A(Lcom/inisoft/mediaplayer/VideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->L:Z

    return v0
.end method

.method static synthetic B(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->L:Z

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    return v0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/VideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->l:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/VideoView;Lcom/inisoft/mediaplayer/et;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->I:Lcom/inisoft/mediaplayer/et;

    return-void
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    return v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    return-void
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->A:Z

    return-void
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    return-void
.end method

.method private c(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->reset()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->z:Z

    return-void
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    return-void
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->y:Z

    return-void
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    return-void
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/el;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->s:Lcom/inisoft/mediaplayer/el;

    return-object v0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    return-void
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/es;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    return-object v0
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->t:I

    return-void
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    return-object v0
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->p:I

    return-void
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->x:I

    return v0
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->q:I

    return-void
.end method

.method static synthetic j(Lcom/inisoft/mediaplayer/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->p:I

    return v0
.end method

.method static synthetic k(Lcom/inisoft/mediaplayer/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->q:I

    return v0
.end method

.method static synthetic l(Lcom/inisoft/mediaplayer/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    return v0
.end method

.method static synthetic m(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method

.method static synthetic n(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ei;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->r:Lcom/inisoft/mediaplayer/ei;

    return-object v0
.end method

.method static synthetic o(Lcom/inisoft/mediaplayer/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    return v0
.end method

.method static synthetic p(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ej;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->u:Lcom/inisoft/mediaplayer/ej;

    return-object v0
.end method

.method static synthetic q(Lcom/inisoft/mediaplayer/VideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->O:Z

    return v0
.end method

.method static synthetic r(Lcom/inisoft/mediaplayer/VideoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/bw;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->J:Lcom/inisoft/mediaplayer/bw;

    return-object v0
.end method

.method private s()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    iput v2, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->e:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/VideoView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/VideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->requestFocus()Z

    iput v2, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    iput v2, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    iput v2, p0, Lcom/inisoft/mediaplayer/VideoView;->B:I

    iput-object v4, p0, Lcom/inisoft/mediaplayer/VideoView;->I:Lcom/inisoft/mediaplayer/et;

    iput v2, p0, Lcom/inisoft/mediaplayer/VideoView;->D:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->J:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/VideoView;->setWillNotDraw(Z)V

    iput-object v4, p0, Lcom/inisoft/mediaplayer/VideoView;->M:Lcom/inisoft/mediaplayer/ax;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/VideoView;->N:Z

    return-void
.end method

.method static synthetic t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->w:Lcom/inisoft/mediaplayer/ij;

    return-object v0
.end method

.method private t()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->l:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v4}, Lcom/inisoft/mediaplayer/VideoView;->c(Z)V

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/VideoView;->z()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->J:Lcom/inisoft/mediaplayer/bw;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->J:Lcom/inisoft/mediaplayer/bw;

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->d:Lcom/inisoft/mediaplayer/el;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setOnPreparedListener(Lcom/inisoft/mediaplayer/el;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->b:Lcom/inisoft/mediaplayer/eq;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setOnVideoSizeChangedListener(Lcom/inisoft/mediaplayer/eq;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->c:Lcom/inisoft/mediaplayer/ep;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setOnVideoAspectRatioChangedListener(Lcom/inisoft/mediaplayer/ep;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->i:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->Q:Lcom/inisoft/mediaplayer/ei;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setOnCompletionListener(Lcom/inisoft/mediaplayer/ei;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->R:Lcom/inisoft/mediaplayer/ej;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setOnErrorListener(Lcom/inisoft/mediaplayer/ej;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->S:Lcom/inisoft/mediaplayer/eh;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setOnBufferingUpdateListener(Lcom/inisoft/mediaplayer/eh;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->T:Lcom/inisoft/mediaplayer/ek;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setOnInfoListener(Lcom/inisoft/mediaplayer/ek;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->v:Lcom/inisoft/mediaplayer/en;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setOnSubtitleUpdateListener(Lcom/inisoft/mediaplayer/en;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->t:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->M:Lcom/inisoft/mediaplayer/ax;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->M:Lcom/inisoft/mediaplayer/ax;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setDataSource(Lcom/inisoft/mediaplayer/ax;)V

    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->l:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/es;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->prepareAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->u()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/hz;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/hz;-><init>(Lcom/inisoft/mediaplayer/VideoView;)V

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->setUseModifyExtractor()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->R:Lcom/inisoft/mediaplayer/ej;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0, v5, v4}, Lcom/inisoft/mediaplayer/ej;->a(II)Z

    goto/16 :goto_0

    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/inisoft/mediaplayer/er;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/er;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->R:Lcom/inisoft/mediaplayer/ej;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0, v5, v4}, Lcom/inisoft/mediaplayer/ej;->a(II)Z

    goto/16 :goto_0

    :pswitch_2
    :try_start_3
    new-instance v0, Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->R:Lcom/inisoft/mediaplayer/ej;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    const v1, 0x1b072

    invoke-interface {v0, v1, v4}, Lcom/inisoft/mediaplayer/ej;->a(II)Z

    goto/16 :goto_0

    :pswitch_3
    :try_start_4
    new-instance v0, Lcom/inisoft/mediaplayer/SoftwarePlayer;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/SoftwarePlayer;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->R:Lcom/inisoft/mediaplayer/ej;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0, v5, v4}, Lcom/inisoft/mediaplayer/ej;->a(II)Z

    goto/16 :goto_0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/VideoView;->h:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/es;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic u(Lcom/inisoft/mediaplayer/VideoView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0, p0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/VideoView;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->b(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->V:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/fn;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic v(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ax;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->M:Lcom/inisoft/mediaplayer/ax;

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic w(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/et;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->I:Lcom/inisoft/mediaplayer/et;

    return-object v0
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fn;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->L:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_1
.end method

.method static synthetic x(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->x:I

    return-void
.end method

.method private x()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->v()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic y(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->t()V

    return-void
.end method

.method private y()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic z(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/VideoView;->c(Z)V

    return-void
.end method

.method private static synthetic z()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/VideoView;->W:[I

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
    sput-object v0, Lcom/inisoft/mediaplayer/VideoView;->W:[I

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


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->start()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fn;->f()V

    :cond_0
    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    :cond_1
    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_0
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/es;->setVolumeBooster(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/es;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->x:I

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->v:Lcom/inisoft/mediaplayer/en;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->v:Lcom/inisoft/mediaplayer/en;

    div-int/lit16 v1, p1, 0x3e8

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/en;->a(I)V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->x:I

    goto :goto_0
.end method

.method public final a(Landroid/text/Spannable;F)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0, p1, p2}, Lcom/inisoft/mediaplayer/fn;->a(Landroid/text/Spannable;F)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->M:Lcom/inisoft/mediaplayer/ax;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/bw;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->J:Lcom/inisoft/mediaplayer/bw;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "omap4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    sget-object v3, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    if-eq p1, v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    if-eq p1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final a(Lcom/inisoft/mediaplayer/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->r:Lcom/inisoft/mediaplayer/ei;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/ej;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->u:Lcom/inisoft/mediaplayer/ej;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/el;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->s:Lcom/inisoft/mediaplayer/el;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/en;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->v:Lcom/inisoft/mediaplayer/en;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/fn;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_0
    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->u()V

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/VideoView;->w:Lcom/inisoft/mediaplayer/ij;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->g:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->x:I

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->t()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->invalidate()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fn;->d(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->pause()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fn;->f()V

    :cond_0
    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    :cond_1
    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    return-void
.end method

.method public final b(I)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->D:I

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fn;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/VideoView;->N:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->p()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->x:I

    return-void
.end method

.method public final c()I
    .locals 1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->i:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->i:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->i:I

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->i:I

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->i:I

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/es;->setSpeed(I)V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/VideoView;->x:I

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/es;->setAudioTrack(I)V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->t:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/es;->setSubtitleIndex(I)V

    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fn;->b(I)V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->y:Z

    return v0
.end method

.method public getSolidColor()I
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->z:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->A:Z

    return v0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->d:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fn;->e()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->v:Lcom/inisoft/mediaplayer/en;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->v:Lcom/inisoft/mediaplayer/en;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/en;->c()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->v:Lcom/inisoft/mediaplayer/en;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->v:Lcom/inisoft/mediaplayer/en;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/en;->d()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->w:Lcom/inisoft/mediaplayer/ij;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->w:Lcom/inisoft/mediaplayer/ij;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/ij;->a()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->stop()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->reset()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->B:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final o()V
    .locals 2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->x:I

    :cond_0
    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->B:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->H()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->N:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->j:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->k:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x55

    const/16 v4, 0x4f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_6

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_1
    :goto_2
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    sget-object v2, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x56

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->m:Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/es;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_6
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_3

    :cond_8
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_9

    if-eq p1, v4, :cond_9

    if-ne p1, v5, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_5
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v0

    if-ltz v0, :cond_c

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_d

    const/16 v0, 0x36

    if-gt p1, v0, :cond_d

    move v1, v2

    :cond_c
    :goto_6
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->w()V

    goto :goto_4

    :cond_d
    const/4 v0, 0x7

    if-lt p1, v0, :cond_c

    const/16 v0, 0x10

    if-gt p1, v0, :cond_c

    move v1, v2

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->C:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    invoke-static {v0, p1}, Lcom/inisoft/mediaplayer/VideoView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    invoke-static {v1, p2}, Lcom/inisoft/mediaplayer/VideoView;->getDefaultSize(II)I

    move-result v1

    iput v0, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iput v1, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    mul-int/2addr v3, v0

    if-le v2, v3, :cond_3

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    div-int/2addr v1, v2

    :cond_0
    :goto_1
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    if-nez v2, :cond_4

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    mul-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    div-int/2addr v0, v2

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->D:I

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->J:Lcom/inisoft/mediaplayer/bw;

    sget-object v3, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/inisoft/mediaplayer/VideoView;->J:Lcom/inisoft/mediaplayer/bw;

    sget-object v3, Lcom/inisoft/mediaplayer/bw;->e:Lcom/inisoft/mediaplayer/bw;

    if-ne v2, v3, :cond_7

    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v0

    if-gez v0, :cond_6

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->a:Z

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_9
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v4, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    div-int/2addr v3, v4

    if-ge v2, v3, :cond_1e

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_a
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->D:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    if-lt v0, v2, :cond_c

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    if-lt v2, v3, :cond_b

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_c
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    if-lt v2, v3, :cond_d

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_d
    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_e
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->D:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    if-lt v0, v2, :cond_10

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v2, v2, 0x9

    if-lt v1, v2, :cond_f

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x9

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_f
    mul-int/lit8 v1, v0, 0x9

    div-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_10
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    if-lt v2, v3, :cond_11

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_12
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->D:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    if-lt v0, v2, :cond_14

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    mul-int/lit16 v2, v2, 0xeb

    div-int/lit8 v2, v2, 0x64

    if-lt v1, v2, :cond_13

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    mul-int/lit16 v0, v0, 0xeb

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_13
    mul-int/lit8 v1, v0, 0x64

    div-int/lit16 v1, v1, 0xeb

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_14
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0xeb

    if-lt v2, v3, :cond_15

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0xeb

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_16
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->D:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    if-gt v2, v3, :cond_17

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    if-gt v2, v3, :cond_17

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->n:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_17
    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_19

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_19
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nexus s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_1a
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    if-eqz v2, :cond_1b

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    if-nez v2, :cond_1d

    :cond_1b
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1c

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_1c
    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v3, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    mul-int/2addr v1, v3

    div-int v0, v1, v0

    invoke-virtual {p0, v2, v0}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_1d
    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_1e

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->F:I

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_1e
    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v1, p0, Lcom/inisoft/mediaplayer/VideoView;->E:I

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->H:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/inisoft/mediaplayer/VideoView;->G:I

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_1f
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ap()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->w()V

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VideoView;->w()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()V
    .locals 2

    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->B:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/inisoft/mediaplayer/VideoView;->B:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    goto :goto_0
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/VideoView;->P:Lcom/inisoft/mediaplayer/fn;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/VideoView;->K:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_0
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/VideoView;->O:Z

    return-void
.end method
