.class public final Lcom/inisoft/mediaplayer/ax;
.super Ljava/lang/Object;


# static fields
.field private static synthetic f:[I


# instance fields
.field private a:J

.field private b:Lcom/inisoft/mediaplayer/bs;

.field private c:La/d/bd;

.field private d:Lcom/inisoft/mediaplayer/cn;

.field private e:Lcom/inisoft/mediaplayer/bx;


# direct methods
.method private constructor <init>(Lcom/inisoft/mediaplayer/bs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ax;->b:Lcom/inisoft/mediaplayer/bs;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/ax;->a:J

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/ax;)La/d/bd;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    return-object v0
.end method

.method static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/inisoft/mediaplayer/ax;
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v0, "smb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/inisoft/mediaplayer/ax;

    sget-object v4, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {v0, v4}, Lcom/inisoft/mediaplayer/ax;-><init>(Lcom/inisoft/mediaplayer/bs;)V

    :goto_0
    const-string v4, "ftp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/ax;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {v0, v2}, Lcom/inisoft/mediaplayer/ax;-><init>(Lcom/inisoft/mediaplayer/bs;)V

    :cond_0
    :goto_1
    if-nez v0, :cond_2

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/inisoft/mediaplayer/ax;->d()[I

    move-result-object v4

    iget-object v5, v0, Lcom/inisoft/mediaplayer/ax;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    :goto_3
    const/4 v2, 0x0

    invoke-static {}, Lcom/inisoft/mediaplayer/ax;->d()[I

    move-result-object v4

    iget-object v5, v0, Lcom/inisoft/mediaplayer/ax;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_1

    :cond_3
    :goto_4
    if-eqz v2, :cond_1

    move-object v1, v0

    goto :goto_2

    :sswitch_0
    :try_start_0
    invoke-static {p0, v2}, Lcom/inisoft/mediaplayer/hw;->d(Landroid/content/Context;Ljava/lang/String;)La/d/az;

    move-result-object v2

    new-instance v4, La/d/bd;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, La/d/bd;-><init>(La/d/az;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    iget-object v2, v0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    invoke-virtual {v2}, La/d/bd;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/inisoft/mediaplayer/ax;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v1, v0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    goto :goto_3

    :sswitch_1
    new-instance v4, Lcom/inisoft/mediaplayer/bx;

    invoke-direct {v4, p0}, Lcom/inisoft/mediaplayer/bx;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/inisoft/mediaplayer/ax;->e:Lcom/inisoft/mediaplayer/bx;

    :try_start_1
    iget-object v4, v0, Lcom/inisoft/mediaplayer/ax;->e:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/bx;->a()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/inisoft/mediaplayer/ax;->e:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/inisoft/mediaplayer/bx;->c(Ljava/lang/String;)Lcom/inisoft/mediaplayer/cn;

    move-result-object v2

    iput-object v2, v0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    iget-object v2, v0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/cn;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/inisoft/mediaplayer/ax;->a:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    iput-object v1, v0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    goto :goto_3

    :sswitch_2
    iget-object v4, v0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_4

    :sswitch_3
    iget-object v4, v0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/ax;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    return-void
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/ax;)Lcom/inisoft/mediaplayer/cn;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    return-object v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/ax;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    return-void
.end method

.method private static synthetic d()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/ax;->f:[I

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
    sput-object v0, Lcom/inisoft/mediaplayer/ax;->f:[I

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

.method static synthetic e(Lcom/inisoft/mediaplayer/ax;)Lcom/inisoft/mediaplayer/bx;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->e:Lcom/inisoft/mediaplayer/bx;

    return-object v0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/ax;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ax;->e:Lcom/inisoft/mediaplayer/bx;

    return-void
.end method


# virtual methods
.method public final a([BI)I
    .locals 2

    invoke-static {}, Lcom/inisoft/mediaplayer/ax;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ax;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, La/d/bd;->a([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    invoke-virtual {v0, p1, p2}, Lcom/inisoft/mediaplayer/cn;->a([BI)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/ax;->a:J

    return-wide v0
.end method

.method public final a(J)J
    .locals 2

    invoke-static {}, Lcom/inisoft/mediaplayer/ax;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ax;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    invoke-virtual {v0, p1, p2}, La/d/bd;->a(J)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    invoke-virtual {v0}, La/d/bd;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    invoke-virtual {v0, p1, p2}, Lcom/inisoft/mediaplayer/cn;->a(J)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cn;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/inisoft/mediaplayer/ax;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ax;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inisoft/mediaplayer/ay;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/ay;-><init>(Lcom/inisoft/mediaplayer/ax;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inisoft/mediaplayer/az;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/az;-><init>(Lcom/inisoft/mediaplayer/ax;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/inisoft/mediaplayer/ax;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ax;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->c:La/d/bd;

    invoke-virtual {v0}, La/d/bd;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :sswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ax;->d:Lcom/inisoft/mediaplayer/cn;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cn;->c()J

    move-result-wide v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method
