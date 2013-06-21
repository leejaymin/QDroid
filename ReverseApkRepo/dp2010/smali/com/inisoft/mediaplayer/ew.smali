.class final Lcom/inisoft/mediaplayer/ew;
.super Landroid/os/Handler;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/ew;->b:[I

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
    sput-object v0, Lcom/inisoft/mediaplayer/ew;->b:[I

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


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/inisoft/mediaplayer/ew;->a()[I

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->Y()Lcom/inisoft/mediaplayer/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/co;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fn;->b()V

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->o(Lcom/inisoft/mediaplayer/PlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/co;->a:Lcom/inisoft/mediaplayer/co;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/co;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->o(Lcom/inisoft/mediaplayer/PlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    :cond_3
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->c(Z)V

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->e(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->e(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/hm;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->p(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gm;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->n(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->q(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->O()Lcom/inisoft/mediaplayer/gm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gm;)V

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->r(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->invalidateOptionsMenu()V

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ew;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method
