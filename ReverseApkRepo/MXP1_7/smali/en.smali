.class public final Len;
.super Ljava/lang/Object;


# instance fields
.field private final 癤욱븳援:Ljava/lang/String;

.field private 궗:I

.field private final 먯꽌:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Len;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Len;->癤욱븳援:Ljava/lang/String;

    iput p2, p0, Len;->궗:I

    iput p3, p0, Len;->먯꽌:I

    return-void
.end method


# virtual methods
.method public final 癤욱븳援()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    iget v0, p0, Len;->궗:I

    iget v1, p0, Len;->먯꽌:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Len;->궗:I

    :goto_1
    iget v1, p0, Len;->먯꽌:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Len;->癤욱븳援:Ljava/lang/String;

    iget v1, p0, Len;->궗:I

    iget v2, p0, Len;->먯꽌:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Len;->먯꽌:I

    iput v1, p0, Len;->궗:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Len;->癤욱븳援:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Len;->癤욱븳援:Ljava/lang/String;

    iget v2, p0, Len;->궗:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Len;->궗:I

    iget v0, p0, Len;->궗:I

    iget v2, p0, Len;->먯꽌:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Len;->癤욱븳援:Ljava/lang/String;

    iget v2, p0, Len;->궗:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    iget v0, p0, Len;->궗:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Len;->궗:I

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    iget-object v1, p0, Len;->癤욱븳援:Ljava/lang/String;

    iget v2, p0, Len;->궗:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Len;->궗:I

    move-object v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final 궗()I
    .locals 1

    iget v0, p0, Len;->궗:I

    return v0
.end method
