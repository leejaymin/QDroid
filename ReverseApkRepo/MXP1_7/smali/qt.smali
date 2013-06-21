.class final Lqt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field ㅼ꽑嫄:Z

.field 弱밧:I

.field 洹:J

.field final 癤욱븳援:Landroid/net/Uri;

.field final 궗:Ljava/io/File;

.field 꾨뱾:B

.field 대쫫:Ljava/lang/Long;

.field 뚮Ц:I

.field 먮:Ljava/lang/ref/SoftReference;

.field 먯껜蹂대떎:Z

.field 먯꽌:I

.field 몃Ъ:Z

.field 붿슧:[Ljava/io/File;

.field 쇰뒗:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/io/File;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt;->궗:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lqt;->癤욱븳援:Landroid/net/Uri;

    iput p2, p0, Lqt;->먯꽌:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lqt;->洹:J

    return-void
.end method

.method constructor <init>(Ljava/io/File;IJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt;->궗:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lqt;->癤욱븳援:Landroid/net/Uri;

    iput p2, p0, Lqt;->먯꽌:I

    iput-wide p3, p0, Lqt;->洹:J

    iput p5, p0, Lqt;->뚮Ц:I

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lqt;

    invoke-virtual {p0, p1}, Lqt;->癤욱븳援(Lqt;)I

    move-result v0

    return v0
.end method

.method 癤욱븳援()I
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lqt;->ㅼ꽑嫄:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lqt;->대쫫:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lqt;->쇰뒗:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lqt;->쇰뒗:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lqt;->대쫫:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lqt;->쇰뒗:Ljava/lang/Long;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 癤욱븳援(Lqt;)I
    .locals 2

    iget-object v0, p0, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method 궗()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lqt;->癤욱븳援:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgm;->癤욱븳援(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
