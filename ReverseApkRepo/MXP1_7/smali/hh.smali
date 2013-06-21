.class Lhh;
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
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lhg;

    check-cast p2, Lhg;

    invoke-virtual {p0, p1, p2}, Lhh;->癤욱븳援(Lhg;Lhg;)I

    move-result v0

    return v0
.end method

.method public 癤욱븳援(Lhg;Lhg;)I
    .locals 2

    invoke-interface {p2}, Lhg;->먯꽌()I

    move-result v0

    invoke-interface {p1}, Lhg;->먯꽌()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
