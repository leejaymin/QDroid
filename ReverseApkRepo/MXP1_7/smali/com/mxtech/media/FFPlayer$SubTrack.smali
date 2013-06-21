.class public Lcom/mxtech/media/FFPlayer$SubTrack;
.super Ljava/lang/Object;

# interfaces
.implements Lhg;


# instance fields
.field private final _nativeTrack:I

.field private final 洹:Ljava/util/Locale;

.field final synthetic 癤욱븳援:Lcom/mxtech/media/FFPlayer;

.field private final 궗:I

.field private final 대쫫:Ljava/lang/String;

.field private final 먯꽌:I

.field private 몃Ъ:Z

.field private final 쇰뒗:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/mxtech/media/FFPlayer;II)V
    .locals 4

    iput-object p1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lcom/mxtech/media/FFPlayer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎(Lcom/mxtech/media/FFPlayer;I)V

    invoke-static {p1, p2}, Lcom/mxtech/media/FFPlayer;->꾨뱾(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    iput v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->궗:I

    iget v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->궗:I

    const v1, 0x17004

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/mxtech/media/FFPlayer;->궗(Lcom/mxtech/media/FFPlayer;)Lhi;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lhi;->癤욱븳援(ILcom/mxtech/media/FFPlayer;)Lcom/mxtech/subtitle/SubStationAlphaMedia;

    :cond_0
    iput p2, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->먯꽌:I

    iput p3, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->_nativeTrack:I

    const/16 v0, 0x66

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lcom/mxtech/media/FFPlayer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v0, v2}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lcom/mxtech/media/FFPlayer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    const-string v2, "und"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->洹:Ljava/util/Locale;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->洹:Ljava/util/Locale;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->洹:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->대쫫:Ljava/lang/String;

    const-string v0, "ffsub"

    const-string v1, "."

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->쇰뒗:Landroid/net/Uri;

    return-void

    :cond_4
    invoke-static {v1}, Lek;->癤욱븳援(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->洹:Ljava/util/Locale;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/mxtech/media/FFPlayer;->洹:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lcom/mxtech/media/FFPlayer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public next()I
    .locals 2

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->_nativeTrack:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->먮(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 2

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->_nativeTrack:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->붿슧(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method

.method public ㅼ꽑嫄()Z
    .locals 2

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->_nativeTrack:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->뚮Ц(Lcom/mxtech/media/FFPlayer;I)Z

    move-result v0

    return v0
.end method

.method public 弱밧()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 洹()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->洹:Ljava/util/Locale;

    return-object v0
.end method

.method public 癤욱븳援()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public 癤욱븳援(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->몃Ъ:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->궗:I

    const v1, 0x17004

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-static {v0}, Lcom/mxtech/media/FFPlayer;->궗(Lcom/mxtech/media/FFPlayer;)Lhi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhi;->癤욱븳援(Z)V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->먯꽌:I

    invoke-static {v0, v1, p1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lcom/mxtech/media/FFPlayer;IZ)V

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-static {v0}, Lcom/mxtech/media/FFPlayer;->먯꽌(Lcom/mxtech/media/FFPlayer;)Lfz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-static {v0}, Lcom/mxtech/media/FFPlayer;->먯꽌(Lcom/mxtech/media/FFPlayer;)Lfz;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-interface {v0, v1, p0, p1}, Lfz;->癤욱븳援(Lcom/mxtech/media/FFPlayer;Lcom/mxtech/media/FFPlayer$SubTrack;Z)V

    :cond_1
    return-void
.end method

.method public 癤욱븳援(I)Z
    .locals 2

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->_nativeTrack:I

    invoke-static {v0, v1, p1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lcom/mxtech/media/FFPlayer;II)Z

    move-result v0

    return v0
.end method

.method public 궗()I
    .locals 1

    iget v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->궗:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17000 -> :sswitch_0
        0x17001 -> :sswitch_0
        0x17002 -> :sswitch_1
        0x17003 -> :sswitch_0
        0x17004 -> :sswitch_0
        0x17005 -> :sswitch_1
        0x17006 -> :sswitch_0
        0x53526970 -> :sswitch_1
    .end sparse-switch
.end method

.method public 궗(I)Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v2, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->_nativeTrack:I

    invoke-static {v0, v2}, Lcom/mxtech/media/FFPlayer;->뚮젮議뚮떎怨(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lhe;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lhp;->궗(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    check-cast v0, [Ljava/lang/Object;

    array-length v4, v0

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lhp;->궗(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->대쫫:Ljava/lang/String;

    return-object v0
.end method

.method public 먯꽌()I
    .locals 1

    iget v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->궗:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x3

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x17000
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public 몃Ъ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->몃Ъ:Z

    return v0
.end method

.method public 쇰뒗()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer$SubTrack;->쇰뒗:Landroid/net/Uri;

    return-object v0
.end method
