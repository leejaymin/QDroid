.class public final Lhr;
.super Lhd;


# instance fields
.field private 쇰뒗:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 14

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lhd;-><init>(Landroid/net/Uri;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v9, Len;

    invoke-direct {v9, p1}, Len;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v9}, Len;->癤욱븳援()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    if-ge v3, v2, :cond_1

    iget-object v6, p0, Lhr;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    add-int/2addr v5, v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v1, v2}, Lcom/mxtech/collection/SeekableRangeMap;->putRange(IILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lhr;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v1}, Lcom/mxtech/collection/SeekableRangeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/util/zip/DataFormatException;

    invoke-direct {v1}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v1

    :cond_2
    if-nez v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x5

    if-le v7, v11, :cond_3

    new-instance v1, Ljava/util/zip/DataFormatException;

    invoke-direct {v1}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v1

    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v12, 0x2

    if-le v11, v12, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_0

    const/16 v11, 0x5d

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    if-nez v6, :cond_5

    const-string v10, "INFORMATION"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v8, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const-string v10, "SUBTITLE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    const/4 v6, 0x3

    goto :goto_0

    :cond_5
    const-string v13, "DELAY"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    add-int/lit8 v11, v11, 0x1

    :try_start_0
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-gtz p3, :cond_6

    new-instance v10, Ljava/lang/UnsupportedOperationException;

    const-string v11, "frame time is unknown"

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_0
    move-exception v10

    goto/16 :goto_0

    :cond_6
    int-to-long v10, v10

    move/from16 v0, p3

    int-to-long v12, v0

    mul-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v10

    goto/16 :goto_0

    :cond_7
    const-string v10, "END INFORMATION"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_0

    :pswitch_2
    if-lez v11, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5b

    if-eq v12, v13, :cond_0

    :cond_8
    const/16 v12, 0x2c

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-lez v12, :cond_0

    add-int/lit8 v13, v12, 0x1

    if-ge v13, v11, :cond_0

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v11, v13}, Lgw;->癤욱븳援(Ljava/lang/String;Z)I

    move-result v5

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lgw;->癤욱븳援(Ljava/lang/String;Z)I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {v9}, Len;->궗()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v3, v2

    goto/16 :goto_0

    :pswitch_3
    if-nez v11, :cond_a

    if-ge v3, v2, :cond_9

    iget-object v6, p0, Lhr;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    add-int v10, v5, v1

    add-int v11, v4, v1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v11, v12}, Lcom/mxtech/collection/SeekableRangeMap;->putRange(IILjava/lang/Object;)V

    :cond_9
    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v9}, Len;->궗()I

    move-result v2

    goto/16 :goto_0

    :cond_b
    return-void

    :catch_1
    move-exception v10

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected 癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lhr;->쇰뒗:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string v0, "(\\r?\\n|\\[br\\]|\\|)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lhr;->쇰뒗:Ljava/util/regex/Pattern;

    :cond_0
    iget-object v0, p0, Lhr;->쇰뒗:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lhz;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "[br]"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
