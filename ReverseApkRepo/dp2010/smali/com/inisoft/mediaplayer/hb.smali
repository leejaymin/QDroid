.class final Lcom/inisoft/mediaplayer/hb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/inisoft/mediaplayer/gz;

    check-cast p2, Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
