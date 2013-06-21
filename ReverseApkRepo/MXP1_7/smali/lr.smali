.class Llr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public ㅼ꽑嫄:J

.field public 弱밧:Z

.field public final 癤욱븳援:I

.field public final 궗:Ljava/io/File;

.field public 대쫫:J

.field public 먯꽌:Z

.field public 쇰뒗:I


# direct methods
.method constructor <init>(ILjava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Llr;->먯꽌:Z

    iput p1, p0, Llr;->癤욱븳援:I

    iput-object p2, p0, Llr;->궗:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Llr;

    invoke-virtual {p0, p1}, Llr;->癤욱븳援(Llr;)I

    move-result v0

    return v0
.end method

.method public 癤욱븳援(Llr;)I
    .locals 2

    iget-object v0, p0, Llr;->궗:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Llr;->궗:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
