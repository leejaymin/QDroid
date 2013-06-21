.class public Lbm;
.super Ljava/lang/Object;


# static fields
.field public static final 癤욱븳援:Lbm;


# instance fields
.field private 궗:Ll;

.field private final 먯꽌:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbm;-><init>(Ll;Z)V

    sput-object v0, Lbm;->癤욱븳援:Lbm;

    return-void
.end method

.method private constructor <init>(Ll;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbm;->궗:Ll;

    iput-boolean p2, p0, Lbm;->먯꽌:Z

    return-void
.end method

.method public static 癤욱븳援(Ll;)Lbm;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbm;->癤욱븳援(Ll;Landroid/content/Context;)Lbm;

    move-result-object v0

    return-object v0
.end method

.method public static 癤욱븳援(Ll;Landroid/content/Context;)Lbm;
    .locals 3

    new-instance v0, Lbm;

    invoke-static {p0, p1}, Ll;->癤욱븳援(Ll;Landroid/content/Context;)Ll;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbm;-><init>(Ll;Z)V

    return-object v0
.end method


# virtual methods
.method public 癤욱븳援()Z
    .locals 1

    iget-boolean v0, p0, Lbm;->먯꽌:Z

    return v0
.end method

.method public 궗()Ll;
    .locals 1

    iget-object v0, p0, Lbm;->궗:Ll;

    return-object v0
.end method

.method public 궗(Ll;)V
    .locals 0

    iput-object p1, p0, Lbm;->궗:Ll;

    return-void
.end method
