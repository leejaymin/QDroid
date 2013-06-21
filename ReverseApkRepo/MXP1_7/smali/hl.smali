.class public final Lhl;
.super Ljava/lang/Object;


# instance fields
.field private final ㅼ꽑嫄:Lgu;

.field private final 弱밧:C

.field public 癤욱븳援:I

.field public 궗:I

.field public 먯꽌:Ljava/lang/String;

.field private final 쇰뒗:C


# direct methods
.method public constructor <init>(CC)V
    .locals 1

    new-instance v0, Lgv;

    invoke-direct {v0}, Lgv;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lhl;-><init>(Lgu;CC)V

    return-void
.end method

.method public constructor <init>(Lgu;CC)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl;->ㅼ꽑嫄:Lgu;

    iput-char p2, p0, Lhl;->弱밧:C

    iput-char p3, p0, Lhl;->쇰뒗:C

    return-void
.end method


# virtual methods
.method public 癤욱븳援(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v4, p0, Lhl;->弱밧:C

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-char v3, p0, Lhl;->쇰뒗:C

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p0, Lhl;->ㅼ꽑嫄:Lgu;

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgu;->癤욱븳援(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lhl;->癤욱븳援:I

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v4, p0, Lhl;->弱밧:C

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    iget-char v3, p0, Lhl;->쇰뒗:C

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p0, Lhl;->ㅼ꽑嫄:Lgu;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lgu;->癤욱븳援(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lhl;->궗:I

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhl;->먯꽌:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
