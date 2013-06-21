.class public final Lho;
.super Ljava/lang/Object;

# interfaces
.implements Lhg;


# static fields
.field public static 癤욱븳援:Ljava/lang/String;

.field private static final 몃Ъ:[C


# instance fields
.field private final 洹:Lcom/mxtech/collection/SeekableMap;

.field public final 궗:Ljava/lang/String;

.field private final 대쫫:Ljava/util/Locale;

.field private final 먯꽌:Landroid/net/Uri;

.field private final 쇰뒗:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lho;->몃Ъ:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x3ct 0x0t
        0x26t 0x0t
    .end array-data
.end method

.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mxtech/collection/SeekableMap;

    const/4 v1, -0x1

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/mxtech/collection/SeekableMap;-><init>(II)V

    iput-object v0, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    iput-object p5, p0, Lho;->궗:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string v0, "und"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "krcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    iput-object v0, p0, Lho;->대쫫:Ljava/util/Locale;

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unknown"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lho;->대쫫:Ljava/util/Locale;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lho;->대쫫:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lho;->쇰뒗:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lho;->먯꽌:Landroid/net/Uri;

    return-void

    :cond_2
    const-string v1, "encc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v0, p0, Lho;->대쫫:Ljava/util/Locale;

    goto :goto_0

    :cond_3
    const-string v1, "jpcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    iput-object v0, p0, Lho;->대쫫:Ljava/util/Locale;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lho;->대쫫:Ljava/util/Locale;

    goto :goto_0

    :cond_5
    invoke-static {p4}, Lek;->癤욱븳援(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lho;->대쫫:Ljava/util/Locale;

    goto :goto_0

    :cond_6
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iput-object p5, p0, Lho;->쇰뒗:Ljava/lang/String;

    goto :goto_1

    :cond_7
    sget-object v0, Lho;->癤욱븳援:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lho;->쇰뒗:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iput-object p3, p0, Lho;->쇰뒗:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public next()I
    .locals 1

    iget-object v0, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableMap;->next()I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 1

    iget-object v0, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableMap;->previous()I

    move-result v0

    return v0
.end method

.method public ㅼ꽑嫄()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 弱밧()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 洹()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lho;->대쫫:Ljava/util/Locale;

    return-object v0
.end method

.method public 癤욱븳援()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 癤욱븳援(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0, p1, p2}, Lcom/mxtech/collection/SeekableMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    sget-object v1, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    sget-object v2, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/mxtech/collection/SeekableMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v1, p1, v0}, Lcom/mxtech/collection/SeekableMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public 癤욱븳援(Z)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(I)Z
    .locals 1

    iget-object v0, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0, p1}, Lcom/mxtech/collection/SeekableMap;->seek(I)Z

    move-result v0

    return v0
.end method

.method public 궗()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 궗(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableMap;->begin()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v1, v0}, Lcom/mxtech/collection/SeekableMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v1, Lho;->몃Ъ:[C

    invoke-static {v0, v1}, Leo;->癤욱븳援(Ljava/lang/CharSequence;[C)I

    move-result v1

    if-ltz v1, :cond_0

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lhz;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lho;->쇰뒗:Ljava/lang/String;

    return-object v0
.end method

.method public 먯꽌()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public 몃Ъ()Z
    .locals 1

    iget-object v0, p0, Lho;->洹:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public 쇰뒗()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lho;->먯꽌:Landroid/net/Uri;

    return-object v0
.end method
