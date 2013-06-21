.class public final Lhp;
.super Lhd;


# static fields
.field private static 쇰뒗:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 13

    invoke-direct {p0, p2}, Lhd;-><init>(Landroid/net/Uri;)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v8, Len;

    invoke-direct {v8, p1}, Len;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v8}, Len;->癤욱븳援()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lhp;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v2, v0}, Lcom/mxtech/collection/SeekableRangeMap;->putRange(IILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lhp;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableRangeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0

    :cond_2
    if-nez v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    const/16 v9, 0xc

    if-le v5, v9, :cond_3

    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-lez v9, :cond_0

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    goto :goto_0

    :pswitch_1
    const-string v10, "-->"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_0

    add-int/lit8 v11, v10, 0x3

    if-ge v11, v9, :cond_0

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x2c

    const/16 v12, 0x2e

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lgw;->癤욱븳援(Ljava/lang/String;Z)I

    move-result v3

    add-int/lit8 v9, v10, 0x3

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Leo;->癤욱븳援:[C

    invoke-static {v7, v9}, Leo;->癤욱븳援(Ljava/lang/CharSequence;[C)I

    move-result v9

    if-lez v9, :cond_4

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_4
    const/16 v9, 0x2c

    const/16 v10, 0x2e

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lgw;->癤욱븳援(Ljava/lang/String;Z)I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {v8}, Len;->궗()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :pswitch_2
    if-nez v9, :cond_6

    if-ge v1, v0, :cond_5

    iget-object v4, p0, Lhp;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v2, v7}, Lcom/mxtech/collection/SeekableRangeMap;->putRange(IILjava/lang/Object;)V

    :cond_5
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v8}, Len;->궗()I

    move-result v0

    const/4 v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto/16 :goto_0

    :cond_7
    return-void

    :catch_1
    move-exception v7

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static 궗(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 2

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lhp;->쇰뒗:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string v0, "(\\r?\\n|\\|)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhp;->쇰뒗:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v0, Lhp;->쇰뒗:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    and-int/lit16 v0, p1, 0x100

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
    const/16 v0, 0x7c

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected 癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p1, p2}, Lhp;->궗(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
