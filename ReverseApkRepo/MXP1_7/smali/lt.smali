.class Llt;
.super Lrh;


# instance fields
.field final synthetic 癤욱븳援:Llp;


# direct methods
.method public constructor <init>(Llp;Landroid/content/Context;Llr;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Llt;->癤욱븳援:Llp;

    invoke-direct {p0, p2}, Lrh;-><init>(Landroid/content/Context;)V

    sget v0, Lnt;->detail_title_detail:I

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p3, Llr;->궗:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llt;->setTitle(Ljava/lang/CharSequence;)V

    sget v0, Lnt;->detail_folder:I

    iget-object v1, p3, Llr;->궗:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Llt;->궗(ILjava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v0, v5

    sget v1, Lnt;->detail_date:I

    iget-object v2, p3, Llr;->궗:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const/16 v4, 0x15

    invoke-static {p2, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Llt;->궗(ILjava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v1, v0

    sget v2, Lnt;->detail_video_count:I

    iget v0, p3, Llr;->쇰뒗:I

    if-nez v0, :cond_1

    sget v0, Lnt;->detail_value_none:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v2, v0}, Llt;->궗(ILjava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v0, v1

    sget v1, Lnt;->detail_video_total_size:I

    iget-wide v2, p3, Llr;->대쫫:J

    invoke-static {p2, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Llt;->궗(ILjava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    sget v0, Lnt;->detail_group_folder:I

    invoke-virtual {p0, v0, v5}, Llt;->癤욱븳援(II)Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    sget v0, Lnt;->detail_video_count_value:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p3, Llr;->쇰뒗:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
