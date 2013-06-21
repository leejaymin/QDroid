.class public final LfS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LfS;

.field private static b:Lgd;

.field private static c:Lge;

.field private static d:LfY;

.field private static e:LfZ;

.field private static f:Lga;

.field private static g:Lgc;

.field private static h:Lgf;

.field private static i:Lgh;

.field private static j:Lgg;

.field private static k:LfX;

.field private static l:Lgb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    new-instance v0, LfS;

    invoke-direct {v0}, LfS;-><init>()V

    sput-object v0, LfS;->a:LfS;

    .line 9
    sput-object v1, LfS;->b:Lgd;

    .line 10
    sput-object v1, LfS;->c:Lge;

    .line 11
    sput-object v1, LfS;->d:LfY;

    .line 12
    sput-object v1, LfS;->e:LfZ;

    .line 13
    sput-object v1, LfS;->f:Lga;

    .line 14
    sput-object v1, LfS;->g:Lgc;

    .line 15
    sput-object v1, LfS;->h:Lgf;

    .line 16
    sput-object v1, LfS;->i:Lgh;

    .line 17
    sput-object v1, LfS;->j:Lgg;

    .line 18
    sput-object v1, LfS;->k:LfX;

    .line 19
    sput-object v1, LfS;->l:Lgb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a()LfS;
    .locals 1

    .prologue
    .line 26
    sget-object v0, LfS;->a:LfS;

    return-object v0
.end method

.method private static b()LfV;
    .locals 1

    .prologue
    .line 72
    sget-object v0, LfS;->k:LfX;

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, LfW;->a()LfW;

    .line 74
    new-instance v0, LfX;

    invoke-direct {v0}, LfX;-><init>()V

    sput-object v0, LfS;->k:LfX;

    .line 76
    :cond_0
    sget-object v0, LfS;->k:LfX;

    return-object v0
.end method

.method private static c()LfV;
    .locals 1

    .prologue
    .line 80
    sget-object v0, LfS;->l:Lgb;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, LfW;->a()LfW;

    .line 82
    new-instance v0, Lgb;

    invoke-direct {v0}, Lgb;-><init>()V

    sput-object v0, LfS;->l:Lgb;

    .line 84
    :cond_0
    sget-object v0, LfS;->l:Lgb;

    return-object v0
.end method

.method private static d()LfV;
    .locals 1

    .prologue
    .line 88
    sget-object v0, LfS;->g:Lgc;

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, LfW;->a()LfW;

    .line 90
    new-instance v0, Lgc;

    invoke-direct {v0}, Lgc;-><init>()V

    sput-object v0, LfS;->g:Lgc;

    .line 92
    :cond_0
    sget-object v0, LfS;->g:Lgc;

    return-object v0
.end method

.method private static e()LfV;
    .locals 2

    .prologue
    .line 97
    sget-object v0, LfS;->c:Lge;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lge;

    invoke-static {}, LfW;->a()LfW;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lge;-><init>(LfW;)V

    sput-object v0, LfS;->c:Lge;

    .line 100
    :cond_0
    sget-object v0, LfS;->c:Lge;

    return-object v0
.end method

.method private static f()LfV;
    .locals 2

    .prologue
    .line 104
    sget-object v0, LfS;->h:Lgf;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lgf;

    invoke-static {}, LfW;->a()LfW;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lgf;-><init>(LfW;)V

    sput-object v0, LfS;->h:Lgf;

    .line 107
    :cond_0
    sget-object v0, LfS;->h:Lgf;

    return-object v0
.end method

.method private static g()LfV;
    .locals 1

    .prologue
    .line 111
    sget-object v0, LfS;->i:Lgh;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, LfW;->a()LfW;

    .line 113
    new-instance v0, Lgh;

    invoke-direct {v0}, Lgh;-><init>()V

    sput-object v0, LfS;->i:Lgh;

    .line 115
    :cond_0
    sget-object v0, LfS;->i:Lgh;

    return-object v0
.end method

.method private static h()LfV;
    .locals 2

    .prologue
    .line 119
    sget-object v0, LfS;->e:LfZ;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, LfW;->a()LfW;

    .line 121
    new-instance v0, LfZ;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, LfZ;-><init>(Landroid/content/Context;)V

    sput-object v0, LfS;->e:LfZ;

    .line 123
    :cond_0
    sget-object v0, LfS;->e:LfZ;

    return-object v0
.end method

.method private static i()LfV;
    .locals 1

    .prologue
    .line 127
    sget-object v0, LfS;->d:LfY;

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, LfW;->a()LfW;

    .line 129
    new-instance v0, LfY;

    invoke-direct {v0}, LfY;-><init>()V

    sput-object v0, LfS;->d:LfY;

    .line 131
    :cond_0
    sget-object v0, LfS;->d:LfY;

    return-object v0
.end method

.method private static j()LfV;
    .locals 1

    .prologue
    .line 135
    sget-object v0, LfS;->f:Lga;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, LfW;->a()LfW;

    .line 137
    new-instance v0, Lga;

    invoke-direct {v0}, Lga;-><init>()V

    sput-object v0, LfS;->f:Lga;

    .line 139
    :cond_0
    sget-object v0, LfS;->f:Lga;

    return-object v0
.end method

.method private static k()LfV;
    .locals 2

    .prologue
    .line 144
    sget-object v0, LfS;->b:Lgd;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lgd;

    invoke-static {}, LfW;->a()LfW;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lgd;-><init>(LfW;)V

    sput-object v0, LfS;->b:Lgd;

    .line 147
    :cond_0
    sget-object v0, LfS;->b:Lgd;

    return-object v0
.end method

.method private static l()LfV;
    .locals 1

    .prologue
    .line 151
    sget-object v0, LfS;->j:Lgg;

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, LfW;->a()LfW;

    .line 153
    new-instance v0, Lgg;

    invoke-direct {v0}, Lgg;-><init>()V

    sput-object v0, LfS;->j:Lgg;

    .line 155
    :cond_0
    sget-object v0, LfS;->j:Lgg;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(I)LfV;
    .locals 1
    .parameter

    .prologue
    .line 31
    monitor-enter p0

    const/4 v0, 0x0

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 68
    :goto_0
    monitor-exit p0

    return-object v0

    .line 35
    :pswitch_0
    :try_start_0
    invoke-static {}, LfS;->j()LfV;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_1
    invoke-static {}, LfS;->i()LfV;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_2
    invoke-static {}, LfS;->g()LfV;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_3
    invoke-static {}, LfS;->h()LfV;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_4
    invoke-static {}, LfS;->f()LfV;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_5
    invoke-static {}, LfS;->e()LfV;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_6
    invoke-static {}, LfS;->k()LfV;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_7
    invoke-static {}, LfS;->d()LfV;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_8
    invoke-static {}, LfS;->l()LfV;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_9
    invoke-static {}, LfS;->b()LfV;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_a
    invoke-static {}, LfS;->c()LfV;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfW;->a()LfW;

    invoke-static {p1}, LfW;->a(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    sput-object v0, LfS;->b:Lgd;

    .line 284
    const/4 v0, 0x0

    sput-object v0, LfS;->c:Lge;

    .line 285
    const/4 v0, 0x0

    sput-object v0, LfS;->d:LfY;

    .line 286
    const/4 v0, 0x0

    sput-object v0, LfS;->e:LfZ;

    .line 287
    const/4 v0, 0x0

    sput-object v0, LfS;->f:Lga;

    .line 288
    const/4 v0, 0x0

    sput-object v0, LfS;->g:Lgc;

    .line 289
    const/4 v0, 0x0

    sput-object v0, LfS;->h:Lgf;

    .line 290
    const/4 v0, 0x0

    sput-object v0, LfS;->i:Lgh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
