.class final LH;
.super Landroid/os/HandlerThread;


# instance fields
.field private volatile a:Landroid/os/Handler;

.field private final b:LM;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J

.field private g:LI;

.field private final h:Lv;

.field private final i:LJ;

.field private final j:LG;


# direct methods
.method private constructor <init>(Lv;LM;Ljava/lang/String;LG;)V
    .locals 2

    const-string v0, "DispatcherThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iput v0, p0, LH;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, LH;->g:LI;

    iput-object p1, p0, LH;->h:Lv;

    iput-object p3, p0, LH;->c:Ljava/lang/String;

    iput-object p2, p0, LH;->b:LM;

    new-instance v0, LJ;

    invoke-direct {v0, p0}, LJ;-><init>(LH;)V

    iput-object v0, p0, LH;->i:LJ;

    iget-object v0, p0, LH;->b:LM;

    iget-object v1, p0, LH;->i:LJ;

    invoke-virtual {v0, v1}, LM;->a(LN;)V

    iput-object p4, p0, LH;->j:LG;

    return-void
.end method

.method synthetic constructor <init>(Lv;Ljava/lang/String;LG;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LH;-><init>(Lv;Ljava/lang/String;LG;B)V

    return-void
.end method

.method private constructor <init>(Lv;Ljava/lang/String;LG;B)V
    .locals 2

    new-instance v0, LM;

    invoke-static {p3}, LG;->a(LG;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, LM;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, LH;-><init>(Lv;LM;Ljava/lang/String;LG;)V

    return-void
.end method

.method static synthetic a(LH;)I
    .locals 1

    iget v0, p0, LH;->d:I

    return v0
.end method

.method static synthetic a(LH;I)I
    .locals 0

    iput p1, p0, LH;->e:I

    return p1
.end method

.method static synthetic a(LH;J)J
    .locals 4

    iget-wide v0, p0, LH;->f:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, LH;->f:J

    return-wide v0
.end method

.method static synthetic a(LH;LI;)LI;
    .locals 0

    iput-object p1, p0, LH;->g:LI;

    return-object p1
.end method

.method static synthetic b(LH;I)I
    .locals 0

    iput p1, p0, LH;->d:I

    return p1
.end method

.method static synthetic b(LH;)J
    .locals 2

    iget-wide v0, p0, LH;->f:J

    return-wide v0
.end method

.method static synthetic b(LH;J)J
    .locals 2

    const-wide/16 v0, 0x2

    iput-wide v0, p0, LH;->f:J

    return-wide v0
.end method

.method static synthetic c(LH;)LG;
    .locals 1

    iget-object v0, p0, LH;->j:LG;

    return-object v0
.end method

.method static synthetic d(LH;)LM;
    .locals 1

    iget-object v0, p0, LH;->b:LM;

    return-object v0
.end method

.method static synthetic e(LH;)Lv;
    .locals 1

    iget-object v0, p0, LH;->h:Lv;

    return-object v0
.end method

.method static synthetic f(LH;)I
    .locals 1

    iget v0, p0, LH;->e:I

    return v0
.end method

.method static synthetic g(LH;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LH;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(LH;)LJ;
    .locals 1

    iget-object v0, p0, LH;->i:LJ;

    return-object v0
.end method

.method static synthetic i(LH;)LI;
    .locals 1

    iget-object v0, p0, LH;->g:LI;

    return-object v0
.end method


# virtual methods
.method public final a([LB;)V
    .locals 2

    iget-object v0, p0, LH;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LH;->a:Landroid/os/Handler;

    new-instance v1, LI;

    invoke-direct {v1, p0, p1}, LI;-><init>(LH;[LB;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final onLooperPrepared()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LH;->a:Landroid/os/Handler;

    return-void
.end method
