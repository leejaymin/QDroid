.class public final Lqp;
.super Lma;

# interfaces
.implements Lld;


# static fields
.field static final ㅼ꽑嫄:[Ljava/lang/String;

.field public static 궗:I

.field public static 먯꽌:I


# instance fields
.field private 弱밧:Ljava/lang/Object;

.field private final 洹:Lqv;

.field private 꾨뱾:Landroid/widget/ListView;

.field private final 대쫫:Llx;

.field private 뚮Ц:Landroid/database/Cursor;

.field private 뚮젮議뚮떎怨:Lqt;

.field private 먮:[Lqt;

.field private final 먯껜蹂대떎:Llc;

.field private final 몃Ъ:Lqu;

.field private final 붿슧:Landroid/database/DataSetObservable;

.field private final 쇰뒗:Lmb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lqp;->ㅼ꽑嫄:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Llx;Lmb;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lma;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lqp;->붿슧:Landroid/database/DataSetObservable;

    iput-object p3, p0, Lqp;->弱밧:Ljava/lang/Object;

    iput-object p2, p0, Lqp;->쇰뒗:Lmb;

    iput-object p1, p0, Lqp;->대쫫:Llx;

    new-instance v0, Lqv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqv;-><init>(Lqp;Lqv;)V

    iput-object v0, p0, Lqp;->洹:Lqv;

    new-instance v0, Lqu;

    invoke-direct {v0, p0}, Lqu;-><init>(Lqp;)V

    iput-object v0, p0, Lqp;->몃Ъ:Lqu;

    new-instance v0, Llc;

    invoke-interface {p1}, Llx;->뚮Ц()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llc;-><init>(Lld;Landroid/os/Handler;)V

    iput-object v0, p0, Lqp;->먯껜蹂대떎:Llc;

    invoke-direct {p0}, Lqp;->먯껜蹂대떎()V

    invoke-direct {p0}, Lqp;->꾨뱾()V

    return-void
.end method

.method static synthetic ㅼ꽑嫄(Lqp;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic 弱밧(Lqp;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lqp;->꾨뱾:Landroid/widget/ListView;

    return-object v0
.end method

.method private 癤욱븳援(Lql;Ljava/io/File;Landroid/database/Cursor;Ljava/util/Map;I)I
    .locals 9

    const/4 v4, 0x0

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-object v0, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "deleting video file record for \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' as file size altered."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lql;->癤욱븳援(ILjava/io/File;)V

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqt;

    if-eqz v0, :cond_0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, p5, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lqt;->ㅼ꽑嫄:Z

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lqt;->먯껜蹂대떎:Z

    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    iput-boolean v2, v0, Lqt;->몃Ъ:Z

    const/16 v1, 0x8

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lqt;->꾨뱾:B

    invoke-interface {p3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v4

    :goto_4
    iput-object v1, v0, Lqt;->대쫫:Ljava/lang/Long;

    invoke-interface {p3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    iput-object v4, v0, Lqt;->쇰뒗:Ljava/lang/Long;

    iget v1, v0, Lqt;->뚮Ц:I

    if-gtz v1, :cond_0

    const/16 v1, 0x9

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lqt;->뚮Ц:I

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4

    :cond_7
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_5
.end method

.method private 癤욱븳援(Lqt;)I
    .locals 1

    invoke-virtual {p1}, Lqt;->癤욱븳援()I

    move-result v0

    return v0
.end method

.method static synthetic 癤욱븳援(Lqp;)Llx;
    .locals 1

    iget-object v0, p0, Lqp;->대쫫:Llx;

    return-object v0
.end method

.method public static 癤욱븳援(Llx;Lmb;Landroid/net/Uri;)Lqp;
    .locals 3

    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lqp;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, Lqp;-><init>(Llx;Lmb;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "filter"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lqp;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lqp;-><init>(Llx;Lmb;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lqp;-><init>(Llx;Lmb;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/content/Context;Landroid/view/View;Lqt;Landroid/graphics/drawable/Drawable;Z)V
    .locals 13

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lqp;->癤욱븳援(Lqt;)I

    move-result v10

    const/4 v1, 0x1

    if-ne v10, v1, :cond_5

    const/4 v7, 0x1

    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p3 .. p3}, Lqt;->궗()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p3

    iget v1, v0, Lqt;->뚮Ц:I

    if-gtz v1, :cond_6

    const/4 v1, 0x0

    move-object v4, v1

    :goto_1
    sget v1, Lno;->playTime:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lno;->secondary:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_2
    if-eqz p5, :cond_1

    sget v1, Lno;->thumb:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget v1, Lno;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v1, v0, Lqt;->붿슧:[Ljava/io/File;

    if-eqz v1, :cond_2

    move-object/from16 v0, p3

    iget-object v11, v0, Lqt;->붿슧:[Ljava/io/File;

    array-length v12, v11

    const/4 v1, 0x0

    move v9, v1

    :goto_3
    if-lt v9, v12, :cond_8

    :cond_2
    move-object/from16 v0, p3

    iget-byte v1, v0, Lqt;->꾨뱾:B

    if-lez v1, :cond_3

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "Cap"

    sget v5, Lnk;->tagCCText:I

    sget v6, Lnk;->tagCC:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    :cond_3
    sget-wide v1, Lcom/mxtech/videoplayer/ActivityVideoList;->꾨뱾:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_4

    move-object/from16 v0, p3

    iget-object v1, v0, Lqt;->대쫫:Ljava/lang/Long;

    if-nez v1, :cond_4

    move-object/from16 v0, p3

    iget-object v1, v0, Lqt;->쇰뒗:Ljava/lang/Long;

    if-nez v1, :cond_4

    move-object/from16 v0, p3

    iget-wide v1, v0, Lqt;->洹:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p3

    iget-wide v4, v0, Lqt;->洹:J

    sget-wide v11, Lcom/mxtech/videoplayer/ActivityVideoList;->꾨뱾:J

    add-long/2addr v4, v11

    cmp-long v1, v1, v4

    if-gez v1, :cond_4

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "New"

    sget v5, Lnk;->tagNewText:I

    sget v6, Lnk;->tagNew:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    :cond_4
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    invoke-virtual {v1, v10}, Lmb;->癤욱븳援(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lqp;->대쫫:Llx;

    check-cast p2, Lcom/mxtech/widget/ListRow;

    invoke-interface {v1, p2}, Llx;->癤욱븳援(Lcom/mxtech/widget/ListRow;)V

    return-void

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget v2, v0, Lqt;->뚮Ц:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    invoke-static {v1, v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_1

    :cond_7
    if-eqz v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    sget v5, Lnt;->detail_playtime:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    aget-object v1, v11, v9

    invoke-static {v1}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_9
    :goto_4
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "SRT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "SRT"

    sget v5, Lnk;->tagSrtText:I

    sget v6, Lnk;->tagSrt:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto :goto_4

    :cond_a
    const-string v2, "SUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "SUB"

    sget v5, Lnk;->tagSubText:I

    sget v6, Lnk;->tagSub:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto :goto_4

    :cond_b
    const-string v2, "SMI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "SMI"

    sget v5, Lnk;->tagSmiText:I

    sget v6, Lnk;->tagSmi:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto :goto_4

    :cond_c
    const-string v2, "SAMI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "SAMI"

    sget v5, Lnk;->tagSamiText:I

    sget v6, Lnk;->tagSami:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto :goto_4

    :cond_d
    const-string v2, "SSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "SSA"

    sget v5, Lnk;->tagSsaText:I

    sget v6, Lnk;->tagSsa:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto :goto_4

    :sswitch_1
    const-string v2, "TXT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "TXT"

    sget v5, Lnk;->tagTxtText:I

    sget v6, Lnk;->tagTxt:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto/16 :goto_4

    :sswitch_2
    const-string v2, "ASS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "ASS"

    sget v5, Lnk;->tagAssText:I

    sget v6, Lnk;->tagAss:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto/16 :goto_4

    :sswitch_3
    const-string v2, "MPL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "MPL"

    sget v5, Lnk;->tagMplText:I

    sget v6, Lnk;->tagMpl:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto/16 :goto_4

    :sswitch_4
    const-string v2, "PSB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lqp;->쇰뒗:Lmb;

    const-string v4, "PSB"

    sget v5, Lnk;->tagPsbText:I

    sget v6, Lnk;->tagPsb:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto/16 :goto_4

    nop

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

.method static synthetic 癤욱븳援(Lqp;[Lqt;)V
    .locals 0

    iput-object p1, p0, Lqp;->먮:[Lqt;

    return-void
.end method

.method public static 癤욱븳援(Landroid/content/Context;Lql;)[Ljava/io/File;
    .locals 9

    const/4 v1, 0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v8, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v8, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p1, v1}, Lql;->궗(Z)[Ljava/util/Map$Entry;

    move-result-object v2

    array-length v3, v2

    move v1, v6

    :goto_0
    if-lt v1, v3, :cond_5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lms;->먯꽌(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7

    sget-object v2, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is registred on media store but skipped as it is not located on the video folder."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0

    :cond_5
    aget-object v0, v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lms;->먯꽌(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_6

    sget-object v4, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is a legitimate video directory stored on the video database, but skipped as it is not located on the video folder."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v8, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    :try_start_3
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lms;->앸ぐ:Z

    if-nez v4, :cond_9

    invoke-static {v0}, Lcom/mxtech/FileUtils;->ㅼ꽑嫄(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_9
    sget-boolean v4, Lms;->ㅼ꽑嫄곗쓽:Z

    if-eqz v4, :cond_a

    const-string v4, ".nomedia"

    invoke-static {v0, v4, v1}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lms;->꾩:Ljava/io/FileFilter;

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v4, v3

    move v0, v6

    :goto_5
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method static synthetic 궗(Lqp;)[Lqt;
    .locals 1

    iget-object v0, p0, Lqp;->먮:[Lqt;

    return-object v0
.end method

.method private 꾨뱾()V
    .locals 17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v10, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v11, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v11, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v12, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v12, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v13, v1, Ljava/io/File;

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    if-eqz v13, :cond_b

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lqs;

    invoke-direct {v3, v1, v10}, Lqs;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->뚮Ц:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->뚮Ц:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->뚮Ц:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->뚮Ц:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const/4 v1, 0x0

    invoke-static {}, Lms;->붿슧()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2e

    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_17

    move-object v4, v1

    :goto_2
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_7
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v10, v14, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Lql;->쇰뒗()I

    move-result v6

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v13, :cond_29

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "SELECT Id, FileName, Size, LastModified, NoThumbnail, Read, VideoTrackCount, AudioTrackCount, SubtitleTrackCount, Duration, LastWatchTime, FinishTime FROM VideoFile WHERE Directory="

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lql;->癤욱븳援(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    move v7, v2

    :goto_6
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lqp;->癤욱븳援(Lql;Ljava/io/File;Landroid/database/Cursor;Ljava/util/Map;I)I

    move-result v1

    add-int/2addr v1, v7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_2c

    :goto_7
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_8
    if-lez v1, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lql;->먯꽌(Z)V

    invoke-virtual {v14}, Lql;->궗()V

    :cond_8
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lqt;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lqt;

    move-object/from16 v0, p0

    iput-object v1, v0, Lqp;->먮:[Lqt;

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->먮:[Lqt;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buildList(video) - end ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v14}, Lql;->먯꽌()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_a
    :goto_9
    return-void

    :cond_b
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {v14, v1}, Lql;->궗(Z)[Ljava/util/Map$Entry;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lms;->먯꽌(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_c

    sget-object v5, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is a legitimate video directory stored on the video database, but skipped because it is not located on the video folder."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    :cond_c
    new-instance v5, Lqs;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v10}, Lqs;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-interface {v12, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v1

    :try_start_8
    invoke-virtual {v14}, Lql;->먯꽌()V

    throw v1
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v1, v1, [Lqt;

    move-object/from16 v0, p0

    iput-object v1, v0, Lqp;->먮:[Lqt;

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->대쫫:Llx;

    invoke-interface {v1}, Llx;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->대쫫:Llx;

    invoke-interface {v1}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    sget v2, Lnt;->error_database:I

    invoke-static {v1, v2}, Lfn;->癤욱븳援(Lcom/mxtech/app/ActivityBase;I)Landroid/app/AlertDialog;

    goto :goto_9

    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->뚮Ц:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lms;->먯꽌(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_e

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is registred on media store but skipped since it is not located on the video folder."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lms;->앸ぐ:Z

    if-nez v1, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_f
    invoke-static {v2}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {v1}, Lms;->ㅼ꽑嫄(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " does not have supported video extension."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not a normal file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is regisred on media storage but not exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->뚮Ц:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lqp;->뚮Ц:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-gtz v6, :cond_15

    :cond_14
    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is registered on media storage but not recognized."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_15
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqs;

    if-nez v1, :cond_2f

    if-eqz v13, :cond_16

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected media file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    new-instance v1, Lqs;

    invoke-direct {v1, v3, v10}, Lqs;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v1

    :goto_c
    iget-boolean v1, v7, Lqs;->궗:Z

    if-nez v1, :cond_2

    new-instance v1, Lqt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lqp;->뚮Ц:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lqt;-><init>(Ljava/io/File;IJI)V

    invoke-interface {v11, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v1}, Lqs;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_17
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_19

    :cond_18
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_19
    invoke-static {v6}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_18

    invoke-static {v7}, Lht;->癤욱븳援(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Lfq;->癤욱븳援(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_1a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqs;

    iget-boolean v2, v1, Lqs;->궗:Z

    if-eqz v2, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_3

    :cond_1b
    iget-object v2, v1, Lqs;->癤욱븳援:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_3

    :cond_1c
    new-instance v7, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v7, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    array-length v10, v3

    const/4 v2, 0x0

    :goto_e
    if-lt v2, v10, :cond_1e

    invoke-virtual {v1}, Lqs;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1d
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lqt;

    move-object v3, v0

    iget-object v2, v3, Lqt;->궗:Ljava/io/File;

    invoke-static {v2}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_23

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/io/File;

    iput-object v2, v3, Lqt;->붿슧:[Ljava/io/File;

    :goto_10
    if-eqz v4, :cond_1d

    iget-object v2, v1, Lqs;->癤욱븳援:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v3, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v12, v3, Lqt;->붿슧:[Ljava/io/File;

    invoke-static {v2}, Lfq;->癤욱븳援(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    invoke-static {v12, v2}, Lel;->癤욱븳援([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    iput-object v2, v3, Lqt;->붿슧:[Ljava/io/File;

    goto :goto_f

    :cond_1e
    aget-object v12, v3, v2

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_20

    :cond_1f
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    sget-boolean v15, Lms;->앸ぐ:Z

    if-nez v15, :cond_21

    invoke-virtual {v12}, Ljava/io/File;->isHidden()Z

    move-result v15

    if-nez v15, :cond_1f

    :cond_21
    invoke-static {v12}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1f

    invoke-static {v15}, Lms;->ㅼ꽑嫄(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_22

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f

    new-instance v15, Lqt;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v12, v0}, Lqt;-><init>(Ljava/io/File;I)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v15}, Lqs;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_22
    invoke-static {v15}, Lht;->癤욱븳援(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-static {v12}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15, v12}, Lfq;->癤욱븳援(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    :cond_23
    invoke-static {v2}, Lfq;->癤욱븳援(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    iput-object v2, v3, Lqt;->붿슧:[Ljava/io/File;

    goto/16 :goto_10

    :cond_24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lqp;->弱밧:Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    goto/16 :goto_4

    :cond_26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_27

    move-object/from16 v0, p0

    iput-object v4, v0, Lqp;->弱밧:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_b
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_29
    :try_start_c
    const-string v1, "SELECT f.Id, d.Path || \'/\' || f.FileName, f.Size, f.LastModified, f.NoThumbnail, f.Read, f.VideoTrackCount, f.AudioTrackCount, f.SubtitleTrackCount, f.Duration, f.LastWatchTime, f.FinishTime FROM VideoDirectory d INNER JOIN VideoFile f ON d.Id = f.Directory"

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v4

    :try_start_d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2b

    move v7, v2

    :goto_12
    new-instance v3, Ljava/io/File;

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lqp;->癤욱븳援(Lql;Ljava/io/File;Landroid/database/Cursor;Ljava/util/Map;I)I

    move-result v1

    add-int/2addr v1, v7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result v2

    if-nez v2, :cond_2a

    :goto_13
    :try_start_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    :catchall_3
    move-exception v1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_2a
    move v7, v1

    goto :goto_12

    :cond_2b
    move v1, v2

    goto :goto_13

    :cond_2c
    move v7, v1

    goto/16 :goto_6

    :cond_2d
    move v1, v2

    goto/16 :goto_7

    :cond_2e
    move-object v4, v1

    goto/16 :goto_2

    :cond_2f
    move-object v7, v1

    goto/16 :goto_c
.end method

.method private 뚮Ц()V
    .locals 2

    iget-object v0, p0, Lqp;->먯껜蹂대떎:Llc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llc;->癤욱븳援(Z)V

    return-void
.end method

.method private 먯껜蹂대떎()V
    .locals 6

    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/app/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lqp;->ㅼ꽑嫄:[Ljava/lang/String;

    const-string v4, "_data"

    iget-object v3, p0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Led;->癤욱븳援(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    :goto_1
    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    iget-object v1, p0, Lqp;->洹:Lqv;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    iget-object v1, p0, Lqp;->몃Ъ:Lqu;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/app/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lqp;->ㅼ꽑嫄:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic 먯꽌(Lqp;)Landroid/database/DataSetObservable;
    .locals 1

    iget-object v0, p0, Lqp;->붿슧:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method private 붿슧()V
    .locals 1

    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lqp;->먮:[Lqt;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqp;->먮:[Lqt;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v7, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "thumbnail"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p2, :cond_8

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    if-eqz v0, :cond_1

    sget v0, Lnp;->video_list_row:I

    :goto_0
    invoke-virtual {v2, v0, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_1
    iget-object v0, p0, Lqp;->먮:[Lqt;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_0
    :goto_2
    return-object v2

    :cond_1
    sget v0, Lnp;->video_list_row_nothumb:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lqp;->먮:[Lqt;

    aget-object v3, v0, p1

    sget v0, Lno;->thumb:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-wide v8, v3, Lqt;->洹:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gez v0, :cond_3

    iget-object v0, v3, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, v3, Lqt;->洹:J

    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v6, :cond_5

    iget-object v0, v3, Lqt;->먮:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lqt;->먮:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    :goto_3
    if-eqz v6, :cond_6

    if-nez v4, :cond_6

    move v6, v5

    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqp;->癤욱븳援(Landroid/content/Context;Landroid/view/View;Lqt;Landroid/graphics/drawable/Drawable;Z)V

    iget-boolean v0, v3, Lqt;->먯껜蹂대떎:Z

    if-nez v0, :cond_7

    iget v0, v3, Lqt;->弱밧:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    move v0, v5

    :goto_5
    if-eqz v6, :cond_4

    iget-boolean v1, v3, Lqt;->몃Ъ:Z

    if-nez v1, :cond_4

    iget v1, v3, Lqt;->弱밧:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    or-int/lit8 v0, v0, 0x2

    :cond_4
    if-eqz v0, :cond_0

    iget-object v1, p0, Lqp;->먯껜蹂대떎:Llc;

    iget v4, v3, Lqt;->먯꽌:I

    iget-object v5, v3, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v1, v0, v4, v5, p1}, Llc;->癤욱븳援(IILjava/io/File;I)V

    iget v1, v3, Lqt;->弱밧:I

    or-int/2addr v0, v1

    iput v0, v3, Lqt;->弱밧:I

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    move v6, v7

    goto :goto_4

    :cond_7
    move v0, v7

    goto :goto_5

    :cond_8
    move-object v2, p2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lqp;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lqp;->붿슧:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lqp;->붿슧:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public ㅼ꽑嫄()V
    .locals 0

    invoke-super {p0}, Lma;->ㅼ꽑嫄()V

    invoke-direct {p0}, Lqp;->뚮Ц()V

    invoke-direct {p0}, Lqp;->붿슧()V

    return-void
.end method

.method public 弱밧()Landroid/net/Uri;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "filter"

    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public 洹()V
    .locals 1

    iget-object v0, p0, Lqp;->붿슧:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public 癤욱븳援(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "thumbnail"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v0, Lnp;->video_list_view:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    if-nez v0, :cond_1

    sget v0, Lnt;->no_videos_at_all:I

    move v1, v0

    :goto_1
    const v0, 0x1020004

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    sget v0, Lnp;->video_list_view_nothumb:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_2

    sget v0, Lnt;->no_videos_in_this_folder:I

    move v1, v0

    goto :goto_1

    :cond_2
    sget v0, Lnt;->no_videos_in_search_result:I

    move v1, v0

    goto :goto_1
.end method

.method public 癤욱븳援(Landroid/widget/ListView;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lqp;->꾨뱾:Landroid/widget/ListView;

    return-object p0
.end method

.method public 癤욱븳援(Lgo;)Lgo;
    .locals 1

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0, p1}, Llx;->癤욱븳援(Lgo;)Lgo;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lqp;->대쫫:Llx;

    iget-object v1, p0, Lqp;->대쫫:Llx;

    invoke-interface {v1}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    sget v2, Lnt;->title_video_list:I

    invoke-virtual {v1, v2}, Lcom/mxtech/app/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Llx;->癤욱븳援(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lqp;->먯껜蹂대떎()V

    invoke-direct {p0}, Lqp;->꾨뱾()V

    iget-object v0, p0, Lqp;->붿슧:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_1
    iget-object v0, p0, Lqp;->꾨뱾:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void

    :cond_2
    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lqp;->대쫫:Llx;

    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgm;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Llx;->癤욱븳援(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lqp;->대쫫:Llx;

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v2

    sget v3, Lnt;->title_search_result:I

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/mxtech/app/ActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Llx;->癤욱븳援(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public 癤욱븳援(JI)V
    .locals 5

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lqp;->먮:[Lqt;

    array-length v1, v1

    if-ge p3, v1, :cond_0

    iget-object v1, p0, Lqp;->먮:[Lqt;

    aget-object v1, v1, p3

    iget-object v2, v1, Lqt;->붿슧:[Ljava/io/File;

    if-nez v2, :cond_2

    new-instance v2, Lht;

    invoke-direct {v2}, Lht;-><init>()V

    iget-object v3, v1, Lqt;->궗:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lht;->癤욱븳援(Ljava/io/File;Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    iput-object v2, v1, Lqt;->붿슧:[Ljava/io/File;

    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, v1, Lqt;->궗:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lqp;->대쫫:Llx;

    invoke-interface {v2}, Llx;->꾨뱾()Lfm;

    move-result-object v2

    iget-object v3, v1, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lqx;

    invoke-direct {v4, p0, v1}, Lqx;-><init>(Lqp;Lqt;)V

    sget v1, Lnt;->edit_rename_to:I

    invoke-static {v0, v2, v3, v4, v1}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public 癤욱븳援(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqt;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lqp;->뚮젮議뚮떎怨:Lqt;

    invoke-virtual {v0}, Lqt;->궗()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    sget v1, Liw;->弱밧:I

    add-int/lit8 v1, v1, -0x2

    sget v2, Lnt;->menu_play_using:I

    invoke-interface {p1, v5, v5, v1, v2}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    sget v2, Lnt;->decoder_hw:I

    sget v3, Lnt;->decoder_hw:I

    invoke-interface {v1, v5, v2, v5, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-static {}, Lms;->뚮벏()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lnt;->decoder_omx:I

    sget v3, Lnt;->decoder_omx:I

    invoke-interface {v1, v5, v2, v6, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    sget v2, Lnt;->decoder_sw:I

    const/4 v3, 0x2

    sget v4, Lnt;->decoder_sw:I

    invoke-interface {v1, v5, v2, v3, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lqp;->癤욱븳援(Lqt;)I

    move-result v0

    if-ne v0, v6, :cond_2

    sget v0, Lnt;->menu_not_finish:I

    sget v1, Liw;->弱밧:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Lnt;->menu_not_finish:I

    invoke-interface {p1, v5, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lnt;->menu_finish:I

    sget v1, Liw;->弱밧:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Lnt;->menu_finish:I

    invoke-interface {p1, v5, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public 癤욱븳援(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Landroid/view/View;JI)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lqp;->대쫫:Llx;

    invoke-interface {v1}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    iget-object v0, v0, Lqt;->癤욱븳援:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Landroid/content/Context;Landroid/net/Uri;B)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Llg;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v0, p1, Llg;->癤욱븳援:I

    iget-object v1, p0, Lqp;->먮:[Lqt;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lqp;->먮:[Lqt;

    aget-object v3, v1, v0

    iget-object v0, v3, Lqt;->궗:Ljava/io/File;

    iget-object v1, p1, Llg;->궗:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Lqt;->弱밧:I

    iget v1, p1, Llg;->먯꽌:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, v3, Lqt;->弱밧:I

    iget v0, p1, Llg;->먯꽌:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iput-boolean v5, v3, Lqt;->먯껜蹂대떎:Z

    iget-byte v0, p1, Llg;->대쫫:B

    iput-byte v0, v3, Lqt;->꾨뱾:B

    iget v0, p1, Llg;->ㅼ꽑嫄:I

    iput v0, v3, Lqt;->뚮Ц:I

    :cond_2
    iget v0, p1, Llg;->먯꽌:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Llg;->몃Ъ:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Llg;->洹:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    move v0, v5

    :goto_1
    iput-boolean v0, v3, Lqt;->몃Ъ:Z

    iget-object v0, p1, Llg;->洹:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    :cond_3
    :goto_2
    iget-object v0, p0, Lqp;->꾨뱾:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    if-eqz v4, :cond_6

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqp;->癤욱븳援(Landroid/content/Context;Landroid/view/View;Lqt;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/app/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p1, Llg;->洹:Landroid/graphics/Bitmap;

    invoke-direct {v4, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v3, Lqt;->먮:Ljava/lang/ref/SoftReference;

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3
.end method

.method public 癤욱븳援([J[I)V
    .locals 12

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v5, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lnt;->menu_delete:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v5, Lqr;

    invoke-direct {v5, p0, v3, v4}, Lqr;-><init>(Lqp;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lnp;->delete_confirm:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lno;->message:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lnt;->edit_inquire_delete_file:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lno;->content:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v3, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->꾨뱾()Lfm;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    aget v0, p2, v1

    iget-object v6, p0, Lqp;->먮:[Lqt;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lqp;->먮:[Lqt;

    aget-object v6, v6, v0

    iget-object v0, v6, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v6, Lqt;->붿슧:[Ljava/io/File;

    if-nez v0, :cond_2

    new-instance v0, Lht;

    invoke-direct {v0}, Lht;-><init>()V

    iget-object v8, v6, Lqt;->궗:Ljava/io/File;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lht;->癤욱븳援(Ljava/io/File;Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, v6, Lqt;->붿슧:[Ljava/io/File;

    :cond_2
    iget-object v0, v6, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lqt;->붿슧:[Ljava/io/File;

    array-length v9, v8

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v9, :cond_4

    iget v0, v6, Lqt;->먯꽌:I

    if-eqz v0, :cond_3

    iget v0, v6, Lqt;->먯꽌:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_4
    aget-object v10, v8, v0

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    sget-object v5, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    sget-object v5, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    sget-object v5, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public 癤욱븳援(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lqp;->뚮젮議뚮떎怨:Lqt;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v3, p0, Lqp;->대쫫:Llx;

    invoke-interface {v3}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v3

    sget v4, Lnt;->decoder_hw:I

    if-ne v2, v4, :cond_2

    iget-object v0, p0, Lqp;->뚮젮議뚮떎怨:Lqt;

    iget-object v0, v0, Lqt;->癤욱븳援:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Landroid/content/Context;Landroid/net/Uri;B)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget v4, Lnt;->decoder_omx:I

    if-ne v2, v4, :cond_3

    iget-object v0, p0, Lqp;->뚮젮議뚮떎怨:Lqt;

    iget-object v0, v0, Lqt;->癤욱븳援:Landroid/net/Uri;

    const/4 v2, 0x4

    invoke-static {v3, v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Landroid/content/Context;Landroid/net/Uri;B)V

    move v0, v1

    goto :goto_0

    :cond_3
    sget v4, Lnt;->decoder_sw:I

    if-ne v2, v4, :cond_4

    iget-object v0, p0, Lqp;->뚮젮議뚮떎怨:Lqt;

    iget-object v0, v0, Lqt;->癤욱븳援:Landroid/net/Uri;

    invoke-static {v3, v0, v5}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Landroid/content/Context;Landroid/net/Uri;B)V

    move v0, v1

    goto :goto_0

    :cond_4
    sget v3, Lnt;->menu_finish:I

    if-eq v2, v3, :cond_5

    sget v3, Lnt;->menu_not_finish:I

    if-ne v2, v3, :cond_0

    :cond_5
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sget v4, Lnt;->menu_finish:I

    if-ne v2, v4, :cond_6

    const-string v2, "FinishTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    iget-object v2, p0, Lqp;->뚮젮議뚮떎怨:Lqt;

    iget-object v2, v2, Lqt;->궗:Ljava/io/File;

    invoke-virtual {v3, v2, v0}, Lql;->癤욱븳援(Ljava/io/File;Landroid/content/ContentValues;)I

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->붿슧()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lql;->먯꽌()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_6
    :try_start_3
    const-string v2, "FinishTime"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Lql;->먯꽌()V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public 궗()V
    .locals 0

    return-void
.end method

.method public 궗(JI)V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lqp;->먮:[Lqt;

    array-length v0, v0

    if-ge p3, v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :try_start_1
    iget-object v0, p0, Lqp;->먮:[Lqt;

    aget-object v6, v0, p3

    iget-object v0, v6, Lqt;->붿슧:[Ljava/io/File;

    if-nez v0, :cond_2

    new-instance v0, Lht;

    invoke-direct {v0}, Lht;-><init>()V

    iget-object v2, v6, Lqt;->궗:Ljava/io/File;

    invoke-static {}, Lms;->붿슧()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lht;->癤욱븳援(Ljava/io/File;Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, v6, Lqt;->붿슧:[Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    :try_start_2
    iget-object v0, p0, Lqp;->대쫫:Llx;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Llx;->癤욱븳援(Lgo;)Lgo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    if-nez v2, :cond_4

    :try_start_3
    iget-object v0, p0, Lqp;->대쫫:Llx;

    new-instance v4, Lqq;

    invoke-direct {v4, p0, p1, p2, p3}, Lqq;-><init>(Lqp;JI)V

    invoke-interface {v0, v4}, Llx;->癤욱븳援(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v2, :cond_3

    :try_start_4
    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0, v2}, Llx;->궗(Lgo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :try_start_5
    invoke-virtual {v5}, Lql;->먯꽌()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :try_start_6
    new-instance v4, Lgb;

    iget-object v0, v6, Lqt;->癤욱븳援:Landroid/net/Uri;

    invoke-direct {v4, v2, v0}, Lgb;-><init>(Lgo;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v7, v2

    move-object v3, v4

    :goto_1
    :try_start_7
    new-instance v0, Lqy;

    iget-object v2, v6, Lqt;->癤욱븳援:Landroid/net/Uri;

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lqy;-><init>(Landroid/content/Context;Landroid/net/Uri;Lgf;Lgg;Lql;I)V

    iget-object v2, p0, Lqp;->대쫫:Llx;

    invoke-interface {v2}, Llx;->꾨뱾()Lfm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v2}, Lqy;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v2, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4}, Lqy;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lqy;->show()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {v3}, Lgf;->癤욱븳援()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_5

    :try_start_9
    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0, v7}, Llx;->궗(Lgo;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_5
    :try_start_a
    invoke-virtual {v5}, Lql;->먯꽌()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_b
    sget-object v4, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Lqw;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lqw;-><init>(Lqw;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v7, v2

    move-object v8, v3

    move-object v3, v4

    move-object v4, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_c
    invoke-interface {v3}, Lgf;->癤욱븳援()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v7

    :goto_3
    if-eqz v2, :cond_6

    :try_start_d
    iget-object v1, p0, Lqp;->대쫫:Llx;

    invoke-interface {v1, v2}, Llx;->궗(Lgo;)V

    :cond_6
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_e
    invoke-virtual {v5}, Lql;->먯꽌()V

    throw v0
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_4
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public 궗(Lgo;)V
    .locals 1

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0, p1}, Llx;->궗(Lgo;)V

    return-void
.end method

.method public 대쫫()V
    .locals 1

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->먮()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->洹()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lqp;->꾨뱾()V

    iget-object v0, p0, Lqp;->붿슧:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public 먯꽌()V
    .locals 1

    invoke-super {p0}, Lma;->먯꽌()V

    iget-object v0, p0, Lqp;->대쫫:Llx;

    invoke-interface {v0}, Llx;->몃Ъ()Lma;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lqp;->뚮Ц:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lqp;->먯껜蹂대떎()V

    invoke-direct {p0}, Lqp;->꾨뱾()V

    iget-object v0, p0, Lqp;->붿슧:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public 몃Ъ()V
    .locals 0

    invoke-direct {p0}, Lqp;->뚮Ц()V

    invoke-direct {p0}, Lqp;->붿슧()V

    return-void
.end method

.method public 쇰뒗()I
    .locals 1

    iget-object v0, p0, Lqp;->弱밧:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
