.class public final Lcom/inisoft/mediaplayer/b/ak;
.super Landroid/app/Dialog;


# static fields
.field private static synthetic c:[I


# instance fields
.field private a:Lcom/inisoft/mediaplayer/b/aj;

.field private b:Lcom/inisoft/mediaplayer/b/am;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/b/am;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/inisoft/mediaplayer/b/ak;->b:Lcom/inisoft/mediaplayer/b/am;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/ak;)Lcom/inisoft/mediaplayer/b/aj;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/ak;->a:Lcom/inisoft/mediaplayer/b/aj;

    return-object v0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/b/ak;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/b/am;->values()[Lcom/inisoft/mediaplayer/b/am;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/b/am;->a:Lcom/inisoft/mediaplayer/b/am;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/b/am;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/b/am;->d:Lcom/inisoft/mediaplayer/b/am;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/b/am;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/b/am;->e:Lcom/inisoft/mediaplayer/b/am;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/b/am;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/b/am;->b:Lcom/inisoft/mediaplayer/b/am;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/b/am;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/b/am;->c:Lcom/inisoft/mediaplayer/b/am;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/b/am;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/inisoft/mediaplayer/b/ak;->c:[I

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
.method public final a(Lcom/inisoft/mediaplayer/b/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/ak;->a:Lcom/inisoft/mediaplayer/b/aj;

    return-void
.end method

.method public final show()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, ""

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/b/ak;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/inisoft/mediaplayer/b/ak;->a()[I

    move-result-object v3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/b/ak;->b:Lcom/inisoft/mediaplayer/b/am;

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/b/am;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move-object v2, v0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/inisoft/mediaplayer/b/ak;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/ak;->a:Lcom/inisoft/mediaplayer/b/aj;

    invoke-interface {v0, v2}, Lcom/inisoft/mediaplayer/b/ai;->a(Lcom/inisoft/mediaplayer/b/aj;)V

    new-instance v2, Lcom/inisoft/mediaplayer/b/al;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/b/al;-><init>(Lcom/inisoft/mediaplayer/b/ak;)V

    invoke-virtual {p0, v2}, Lcom/inisoft/mediaplayer/b/ak;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/ai;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/b/ak;->setContentView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_0
    new-instance v0, Lcom/inisoft/mediaplayer/b/a;

    invoke-direct {v0, v2}, Lcom/inisoft/mediaplayer/b/a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a007d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/inisoft/mediaplayer/b/w;

    invoke-direct {v0, v2}, Lcom/inisoft/mediaplayer/b/w;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/inisoft/mediaplayer/b/n;

    invoke-direct {v0, v2}, Lcom/inisoft/mediaplayer/b/n;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0085

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/inisoft/mediaplayer/b/f;

    invoke-direct {v0, v2}, Lcom/inisoft/mediaplayer/b/f;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/inisoft/mediaplayer/b/k;

    invoke-direct {v0, v2}, Lcom/inisoft/mediaplayer/b/k;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0081

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
