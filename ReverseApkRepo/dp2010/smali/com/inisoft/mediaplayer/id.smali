.class final Lcom/inisoft/mediaplayer/id;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ej;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/id;->b:[I

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
    sput-object v0, Lcom/inisoft/mediaplayer/id;->b:[I

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
.method public final a(II)Z
    .locals 5

    const v0, 0x7f0a0095

    const/4 v2, -0x1

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->o(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->l(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/VideoView;->e(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/VideoView;->f(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->p(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ej;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->p(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ej;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->g(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/es;

    invoke-interface {v1, p1, p2}, Lcom/inisoft/mediaplayer/ej;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->q(Lcom/inisoft/mediaplayer/VideoView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->r(Lcom/inisoft/mediaplayer/VideoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_5

    const v0, 0x7f0a0094

    :cond_4
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->r(Lcom/inisoft/mediaplayer/VideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0091

    new-instance v2, Lcom/inisoft/mediaplayer/ie;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/ie;-><init>(Lcom/inisoft/mediaplayer/id;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_5
    const v1, 0x1b072

    if-ne p1, v1, :cond_6

    const v0, 0x7f0a0092

    goto :goto_1

    :cond_6
    const v1, 0x1b089

    if-ne p2, v1, :cond_7

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->s(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/bw;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/ij;->a(Lcom/inisoft/mediaplayer/bw;)V

    goto/16 :goto_0

    :cond_7
    const v1, -0x1b0d2

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->u(Lcom/inisoft/mediaplayer/VideoView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->v(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/inisoft/mediaplayer/id;->a()[I

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/VideoView;->s(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/bw;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->v(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/ij;->a(Lcom/inisoft/mediaplayer/bw;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/ij;->a(Lcom/inisoft/mediaplayer/bw;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->t(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ij;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/ij;->a(Lcom/inisoft/mediaplayer/bw;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
