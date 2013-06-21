.class public final Lcv;
.super Ljava/lang/Object;


# static fields
.field public static 癤욱븳援:Lcx;

.field private static 궗:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcv;->癤욱븳援:Lcx;

    const/4 v0, 0x5

    sput v0, Lcv;->궗:I

    return-void
.end method

.method public static ㅼ꽑嫄(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcw;->癤욱븳援:Lcw;

    invoke-static {v0, p0}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;)V

    return-void
.end method

.method public static ㅼ꽑嫄(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcw;->ㅼ꽑嫄:Lcw;

    invoke-static {v0, p0, p1}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static 弱밧(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcw;->ㅼ꽑嫄:Lcw;

    invoke-static {v0, p0}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;)V

    return-void
.end method

.method private static 癤욱븳援(Lcw;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static 癤욱븳援(Lcw;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcv;->癤욱븳援:Lcx;

    if-eqz v0, :cond_0

    sget-object v0, Lcv;->癤욱븳援:Lcx;

    invoke-interface {v0, p0, p1, p2}, Lcx;->癤욱븳援(Lcw;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static 癤욱븳援(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcw;->궗:Lcw;

    invoke-static {v0, p0}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;)V

    return-void
.end method

.method public static 癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcw;->궗:Lcw;

    invoke-static {v0, p0, p1}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static 癤욱븳援(I)Z
    .locals 1

    sget v0, Lcv;->궗:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 癤욱븳援(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p1}, Lcv;->癤욱븳援(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 궗(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcw;->弱밧:Lcw;

    invoke-static {v0, p0}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;)V

    return-void
.end method

.method public static 궗(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcw;->弱밧:Lcw;

    invoke-static {v0, p0, p1}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static 먯꽌(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcw;->먯꽌:Lcw;

    invoke-static {v0, p0}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;)V

    return-void
.end method

.method public static 먯꽌(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcv;->癤욱븳援(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcw;->먯꽌:Lcw;

    invoke-static {v0, p0, p1}, Lcv;->癤욱븳援(Lcw;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
