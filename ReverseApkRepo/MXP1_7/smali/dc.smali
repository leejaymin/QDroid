.class public Ldc;
.super Ljava/lang/Object;


# static fields
.field public static final ㅼ꽑嫄:Ldc;

.field public static final 弱밧:Ldc;


# instance fields
.field public final 癤욱븳援:Ljava/lang/String;

.field public final 궗:Ljava/lang/String;

.field public final 먯꽌:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ldc;

    invoke-direct {v0}, Ldc;-><init>()V

    sput-object v0, Ldc;->ㅼ꽑嫄:Ldc;

    new-instance v0, Ldc;

    const-string v1, "unknown"

    const-string v2, "generic"

    const-string v3, "generic"

    invoke-direct {v0, v1, v2, v3}, Ldc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ldc;->弱밧:Ldc;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Ldc;->癤욱븳援:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Ldc;->궗:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Ldc;->먯꽌:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc;->癤욱븳援:Ljava/lang/String;

    iput-object p2, p0, Ldc;->궗:Ljava/lang/String;

    iput-object p3, p0, Ldc;->먯꽌:Ljava/lang/String;

    return-void
.end method

.method private static 癤욱븳援(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ldc;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ldc;

    iget-object v1, p0, Ldc;->癤욱븳援:Ljava/lang/String;

    iget-object v2, p1, Ldc;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1, v2}, Ldc;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldc;->궗:Ljava/lang/String;

    iget-object v2, p1, Ldc;->궗:Ljava/lang/String;

    invoke-static {v1, v2}, Ldc;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldc;->먯꽌:Ljava/lang/String;

    iget-object v2, p1, Ldc;->먯꽌:Ljava/lang/String;

    invoke-static {v1, v2}, Ldc;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ldc;->癤욱븳援:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldc;->癤욱븳援:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ldc;->궗:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldc;->궗:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Ldc;->먯꽌:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldc;->먯꽌:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
