.class public final Lhs;
.super Ljava/lang/Object;


# direct methods
.method public static 癤욱븳援(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lms;->ㅼ쬆:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/mxtech/nio/Charset;->autoDecode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xfeff

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/mxtech/nio/Charset;

    sget-object v1, Lms;->ㅼ쬆:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mxtech/nio/Charset;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/mxtech/nio/Charset;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static 癤욱븳援(Ljava/io/File;ILhi;)[Lhg;
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lhg;

    :goto_0
    return-object v0

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file too large. size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p0}, Lhs;->癤욱븳援(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lhs;->癤욱븳援(Ljava/lang/String;Landroid/net/Uri;ILhi;)[Lhg;

    move-result-object v0

    goto :goto_0
.end method

.method public static 癤욱븳援(Ljava/lang/String;Landroid/net/Uri;ILhi;)[Lhg;
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mxtech/FileUtils;->먯꽌(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v0, v2

    :goto_0
    if-nez v0, :cond_7

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lhg;

    const/4 v9, 0x0

    new-instance v10, Lhp;

    invoke-direct {v10, p0, p1}, Lhp;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v10, v0, v9
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    return-object v0

    :sswitch_0
    const-string v3, "SRT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhp;

    invoke-direct {v4, p0, p1}, Lhp;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v0, v3
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    const-string v3, "SUB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez p2, :cond_2

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhm;

    invoke-direct {v4, p0, p1, p2}, Lhm;-><init>(Ljava/lang/String;Landroid/net/Uri;I)V

    aput-object v4, v0, v3
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhr;

    invoke-direct {v4, p0, p1, p2}, Lhr;-><init>(Ljava/lang/String;Landroid/net/Uri;I)V

    aput-object v4, v0, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v1

    move v8, v2

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v3, "SMI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SAMI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :try_start_4
    new-instance v0, Lcom/mxtech/subtitle/SAMIParser;

    invoke-direct {v0}, Lcom/mxtech/subtitle/SAMIParser;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/mxtech/subtitle/SAMIParser;->癤욱븳援(Ljava/lang/String;Landroid/net/Uri;)[Lhg;
    :try_end_4
    .catch Ljava/util/zip/DataFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    goto :goto_1

    :catch_3
    move-exception v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v1

    move v0, v2

    move v1, v2

    goto :goto_0

    :cond_5
    const-string v3, "SSA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_5
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;

    invoke-direct {v4, p0, p1, p3}, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;-><init>(Ljava/lang/String;Landroid/net/Uri;Lhi;)V

    aput-object v4, v0, v3
    :try_end_5
    .catch Ljava/util/zip/DataFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v2

    move v0, v2

    move v1, v2

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "TXT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_6

    const/4 v0, 0x1

    :try_start_6
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhm;

    invoke-direct {v4, p0, p1, p2}, Lhm;-><init>(Ljava/lang/String;Landroid/net/Uri;I)V

    aput-object v4, v0, v3
    :try_end_6
    .catch Ljava/util/zip/DataFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    :cond_6
    const/4 v0, 0x1

    :try_start_7
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhj;

    invoke-direct {v4, p0, p1}, Lhj;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v0, v3
    :try_end_7
    .catch Ljava/util/zip/DataFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v0

    const/4 v0, 0x1

    :try_start_8
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhu;

    invoke-direct {v4, p0, p1}, Lhu;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v0, v3
    :try_end_8
    .catch Ljava/util/zip/DataFormatException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const/4 v0, 0x1

    :try_start_9
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhn;

    invoke-direct {v4, p0, p1}, Lhn;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v0, v3
    :try_end_9
    .catch Ljava/util/zip/DataFormatException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    move v0, v2

    move v1, v2

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "ASS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_a
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;

    invoke-direct {v4, p0, p1, p3}, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;-><init>(Ljava/lang/String;Landroid/net/Uri;Lhi;)V

    aput-object v4, v0, v3
    :try_end_a
    .catch Ljava/util/zip/DataFormatException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v2

    move v0, v2

    move v1, v2

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "MPL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_b
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhj;

    invoke-direct {v4, p0, p1}, Lhj;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v0, v3
    :try_end_b
    .catch Ljava/util/zip/DataFormatException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_1

    :catch_a
    move-exception v0

    move v3, v2

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    move v8, v2

    move v0, v2

    move v1, v2

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "PSB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_c
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhn;

    invoke-direct {v4, p0, p1}, Lhn;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v0, v3
    :try_end_c
    .catch Ljava/util/zip/DataFormatException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_1

    :catch_b
    move-exception v0

    move v3, v1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v0, v2

    move v1, v2

    goto/16 :goto_0

    :catch_c
    move-exception v0

    :cond_7
    if-nez v7, :cond_8

    if-lez p2, :cond_8

    const/4 v0, 0x1

    :try_start_d
    new-array v0, v0, [Lhg;

    const/4 v7, 0x0

    new-instance v9, Lhm;

    invoke-direct {v9, p0, p1, p2}, Lhm;-><init>(Ljava/lang/String;Landroid/net/Uri;I)V

    aput-object v9, v0, v7
    :try_end_d
    .catch Ljava/util/zip/DataFormatException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_1

    :catch_d
    move-exception v0

    :cond_8
    if-nez v8, :cond_9

    :try_start_e
    new-instance v0, Lcom/mxtech/subtitle/SAMIParser;

    invoke-direct {v0}, Lcom/mxtech/subtitle/SAMIParser;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/mxtech/subtitle/SAMIParser;->癤욱븳援(Ljava/lang/String;Landroid/net/Uri;)[Lhg;
    :try_end_e
    .catch Ljava/util/zip/DataFormatException; {:try_start_e .. :try_end_e} :catch_e

    move-result-object v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    :cond_9
    if-nez v6, :cond_a

    const/4 v0, 0x1

    :try_start_f
    new-array v0, v0, [Lhg;

    const/4 v6, 0x0

    new-instance v7, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;

    invoke-direct {v7, p0, p1, p3}, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;-><init>(Ljava/lang/String;Landroid/net/Uri;Lhi;)V

    aput-object v7, v0, v6
    :try_end_f
    .catch Ljava/util/zip/DataFormatException; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_1

    :catch_f
    move-exception v0

    :cond_a
    if-nez v5, :cond_b

    const/4 v0, 0x1

    :try_start_10
    new-array v0, v0, [Lhg;

    const/4 v5, 0x0

    new-instance v6, Lhj;

    invoke-direct {v6, p0, p1}, Lhj;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v6, v0, v5
    :try_end_10
    .catch Ljava/util/zip/DataFormatException; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_1

    :catch_10
    move-exception v0

    :cond_b
    if-nez v4, :cond_c

    const/4 v0, 0x1

    :try_start_11
    new-array v0, v0, [Lhg;

    const/4 v4, 0x0

    new-instance v5, Lhu;

    invoke-direct {v5, p0, p1}, Lhu;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v5, v0, v4
    :try_end_11
    .catch Ljava/util/zip/DataFormatException; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_1

    :catch_11
    move-exception v0

    :cond_c
    if-nez v3, :cond_d

    const/4 v0, 0x1

    :try_start_12
    new-array v0, v0, [Lhg;

    const/4 v3, 0x0

    new-instance v4, Lhn;

    invoke-direct {v4, p0, p1}, Lhn;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v4, v0, v3
    :try_end_12
    .catch Ljava/util/zip/DataFormatException; {:try_start_12 .. :try_end_12} :catch_12

    goto/16 :goto_1

    :catch_12
    move-exception v0

    :cond_d
    if-nez v1, :cond_e

    const/4 v0, 0x1

    :try_start_13
    new-array v0, v0, [Lhg;

    const/4 v1, 0x0

    new-instance v3, Lhr;

    invoke-direct {v3, p0, p1, p2}, Lhr;-><init>(Ljava/lang/String;Landroid/net/Uri;I)V

    aput-object v3, v0, v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_1

    :catch_13
    move-exception v0

    :cond_e
    new-array v0, v2, [Lhg;

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_2
        0x4d -> :sswitch_3
        0x50 -> :sswitch_4
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
        0x61 -> :sswitch_2
        0x6d -> :sswitch_3
        0x70 -> :sswitch_4
        0x73 -> :sswitch_0
        0x74 -> :sswitch_1
    .end sparse-switch
.end method
