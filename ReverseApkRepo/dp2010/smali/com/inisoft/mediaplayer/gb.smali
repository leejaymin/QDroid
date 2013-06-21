.class public final Lcom/inisoft/mediaplayer/gb;
.super Ljava/lang/Object;


# static fields
.field private static synthetic s:[I


# instance fields
.field a:Lcom/inisoft/mediaplayer/el;

.field b:Lcom/inisoft/mediaplayer/ei;

.field c:Lcom/inisoft/mediaplayer/ej;

.field d:Lcom/inisoft/mediaplayer/en;

.field e:Lcom/inisoft/mediaplayer/gw;

.field private f:Landroid/content/Context;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/inisoft/mediaplayer/VideoView;

.field private i:Landroid/view/WindowManager$LayoutParams;

.field private j:Landroid/view/WindowManager;

.field private k:Lcom/inisoft/mediaplayer/hm;

.field private l:Lcom/inisoft/mediaplayer/gt;

.field private m:Lcom/inisoft/mediaplayer/ax;

.field private n:Lcom/inisoft/mediaplayer/fs;

.field private o:Lcom/inisoft/mediaplayer/fx;

.field private p:Landroid/os/Messenger;

.field private q:Z

.field private r:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Messenger;Lcom/inisoft/mediaplayer/fs;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->m:Lcom/inisoft/mediaplayer/ax;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gb;->q:Z

    new-instance v0, Lcom/inisoft/mediaplayer/gc;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/gc;-><init>(Lcom/inisoft/mediaplayer/gb;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->a:Lcom/inisoft/mediaplayer/el;

    new-instance v0, Lcom/inisoft/mediaplayer/gd;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/gd;-><init>(Lcom/inisoft/mediaplayer/gb;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->b:Lcom/inisoft/mediaplayer/ei;

    new-instance v0, Lcom/inisoft/mediaplayer/ge;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ge;-><init>(Lcom/inisoft/mediaplayer/gb;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->c:Lcom/inisoft/mediaplayer/ej;

    new-instance v0, Lcom/inisoft/mediaplayer/gf;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/gf;-><init>(Lcom/inisoft/mediaplayer/gb;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->d:Lcom/inisoft/mediaplayer/en;

    new-instance v0, Lcom/inisoft/mediaplayer/gg;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/gg;-><init>(Lcom/inisoft/mediaplayer/gb;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->e:Lcom/inisoft/mediaplayer/gw;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/gb;->p:Landroid/os/Messenger;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    int-to-long v1, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/cj;->c(JZ)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 4

    const/16 v0, 0x8

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    mul-int/2addr v2, p1

    div-int/2addr v2, p2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->x()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x2

    if-gt v1, v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/hm;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gb;F)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v1, v0}, Lcom/inisoft/mediaplayer/gb;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gb;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/inisoft/mediaplayer/gb;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gb;Lcom/inisoft/mediaplayer/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gb;->m:Lcom/inisoft/mediaplayer/ax;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gb;[B)V
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
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

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

.method static synthetic b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    return-object v0
.end method

.method private b(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->p:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/gb;I)V
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Lcom/inisoft/mediaplayer/gb;->b(II)V

    return-void
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/gb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gb;->q:Z

    return v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/gb;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gb;->q:Z

    return-void
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->o:Lcom/inisoft/mediaplayer/fx;

    return-object v0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/gb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/gb;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/gb;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "playback_speed"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    invoke-static {}, Lcom/inisoft/mediaplayer/gb;->i()[I

    move-result-object v2

    iget-object v4, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v1

    :goto_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/inisoft/mediaplayer/cj;->e(IZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :pswitch_1
    move v2, v3

    goto :goto_2

    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_2

    :catch_1
    move-exception v2

    move v2, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private g()Z
    .locals 11

    const-wide/16 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PopupPlayActivity"

    const-string v1, "Cannot recreate video overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    move v0, v6

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const/16 v4, 0x228

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v2, v3}, Lcom/inisoft/mediaplayer/VideoView;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->r()V

    new-instance v0, Lcom/inisoft/mediaplayer/fx;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/gb;->p:Landroid/os/Messenger;

    invoke-direct {v0, v2, v3, v4}, Lcom/inisoft/mediaplayer/fx;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->o:Lcom/inisoft/mediaplayer/fx;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->a:Lcom/inisoft/mediaplayer/el;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/el;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->b:Lcom/inisoft/mediaplayer/ei;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/ei;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->c:Lcom/inisoft/mediaplayer/ej;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/ej;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->d:Lcom/inisoft/mediaplayer/en;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/en;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/bw;)V

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    new-instance v0, Lcom/inisoft/mediaplayer/hm;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/inisoft/mediaplayer/hm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/fs;->p()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/inisoft/mediaplayer/hm;->a(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/fs;->x()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/inisoft/mediaplayer/hm;->b(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/fs;->r()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/inisoft/mediaplayer/hm;->c(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/fs;->o()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/inisoft/mediaplayer/hm;->b(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/fs;->q()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/inisoft/mediaplayer/hm;->c(Z)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/fs;->u()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v0, "Default"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v5, v0}, Lcom/inisoft/mediaplayer/hm;->a(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v0

    const-string v5, ".mp3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->setGravity(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->o:Lcom/inisoft/mediaplayer/fx;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fx;->a(Lcom/inisoft/mediaplayer/VideoView;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->o:Lcom/inisoft/mediaplayer/fx;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/inisoft/mediaplayer/gj;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/gj;-><init>(Lcom/inisoft/mediaplayer/gb;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->r:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/inisoft/mediaplayer/gh;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/gh;-><init>(Lcom/inisoft/mediaplayer/gb;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-nez v0, :cond_10

    :try_start_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    :cond_3
    new-instance v0, Lcom/inisoft/mediaplayer/gt;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inisoft/mediaplayer/gt;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/VideoView;Lcom/inisoft/mediaplayer/hm;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->e:Lcom/inisoft/mediaplayer/gw;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gw;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->m:Lcom/inisoft/mediaplayer/ax;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/ax;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->R()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_d

    cmp-long v2, v0, v9

    if-ltz v2, :cond_4

    sub-long/2addr v0, v9

    :cond_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/VideoView;->d(I)V

    :cond_5
    :goto_5
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gb;->h()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v6

    :goto_6
    move v7, v0

    goto/16 :goto_0

    :cond_6
    move v0, v7

    goto/16 :goto_1

    :cond_7
    const-string v0, "Sans"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_8
    const-string v0, "Serif"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_9
    const-string v0, "Monospace"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_a
    :try_start_3
    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v5, v0}, Lcom/inisoft/mediaplayer/hm;->a(Landroid/graphics/Typeface;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Lcom/inisoft/mediaplayer/hm;->a(Landroid/graphics/Typeface;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    const-string v5, "Default"

    invoke-virtual {v0, v5}, Lcom/inisoft/mediaplayer/fs;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    iget-object v5, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    const-string v8, "Default"

    invoke-virtual {v5, v8}, Lcom/inisoft/mediaplayer/fs;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    :try_start_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/hm;->setGravity(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/hm;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->d()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/hm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->C()I

    move-result v0

    or-int/lit8 v0, v0, 0x50

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->k:Lcom/inisoft/mediaplayer/hm;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_d
    :try_start_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->d()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_9
    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_e

    add-int/lit16 v0, v0, -0xbb8

    :cond_e
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->d(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto :goto_7

    :cond_f
    move v0, v7

    goto :goto_9

    :cond_10
    move v0, v7

    goto/16 :goto_6
.end method

.method private h()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "popup_ratio"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/inisoft/mediaplayer/gb;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v4, v5}, Lcom/inisoft/mediaplayer/gb;->a(II)V

    goto :goto_0

    :cond_2
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v5, v0}, Lcom/inisoft/mediaplayer/gb;->a(II)V

    goto :goto_0

    :cond_3
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/inisoft/mediaplayer/gb;->a(II)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/gb;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    return-void
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    return-object v0
.end method

.method private static synthetic i()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/gb;->s:[I

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
    sput-object v0, Lcom/inisoft/mediaplayer/gb;->s:[I

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

.method static synthetic j(Lcom/inisoft/mediaplayer/gb;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    return-void
.end method

.method static synthetic k(Lcom/inisoft/mediaplayer/gb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/inisoft/mediaplayer/gb;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->p:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic m(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->i:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic n(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic o(Lcom/inisoft/mediaplayer/gb;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic p(Lcom/inisoft/mediaplayer/gb;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->r:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic q(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/ax;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->m:Lcom/inisoft/mediaplayer/ax;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gb;->q:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "smb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    const-string v2, "ftp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/inisoft/mediaplayer/gi;

    invoke-direct {v2, p0, v0}, Lcom/inisoft/mediaplayer/gi;-><init>(Lcom/inisoft/mediaplayer/gb;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gb;->m:Lcom/inisoft/mediaplayer/ax;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gb;->g()Z

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/gb;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->n()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gb;->h:Lcom/inisoft/mediaplayer/VideoView;

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gb;->g()Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->n(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->l:Lcom/inisoft/mediaplayer/gt;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gb;->n:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->O()Lcom/inisoft/mediaplayer/gm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gm;)V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gb;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gb;->h()V

    return-void
.end method
