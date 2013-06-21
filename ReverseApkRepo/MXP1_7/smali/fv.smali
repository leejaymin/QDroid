.class public Lfv;
.super Ljava/lang/Object;

# interfaces
.implements Lgf;


# static fields
.field public static final 癤욱븳援:[Ljava/lang/String;


# instance fields
.field private final ㅼ꽑嫄:Z

.field private 弱밧:Ld;

.field private 洹:I

.field private final 궗:Landroid/content/Context;

.field private 대쫫:I

.field private final 먯꽌:Landroid/net/Uri;

.field private 쇰뒗:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lfv;->癤욱븳援:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lfv;->대쫫:I

    iput v0, p0, Lfv;->洹:I

    iput-object p1, p0, Lfv;->궗:Landroid/content/Context;

    iput-object p2, p0, Lfv;->먯꽌:Landroid/net/Uri;

    invoke-static {p2}, Lgm;->癤욱븳援(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lfv;->ㅼ꽑嫄:Z

    return-void
.end method

.method private 癤욱븳援(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfv;->弱밧:Ld;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lfv;->紐낆옱()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfv;->弱밧:Ld;

    invoke-virtual {v0, p1}, Ld;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lfv;->궗:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lfv;->먯꽌:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Video;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private 癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lfv;->ㅼ꽑嫄:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lfv;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ltz p2, :cond_1

    invoke-direct {p0, p2}, Lfv;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private 롩퐢()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lfv;->대쫫:I

    iput v0, p0, Lfv;->洹:I

    const-string v0, "resolution"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "(\\d+)\\s*x\\s*(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lfv;->대쫫:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfv;->洹:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private 紐낆옱()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lfv;->쇰뒗:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v1, p0, Lfv;->쇰뒗:Z

    iget-object v2, p0, Lfv;->먯꽌:Landroid/net/Uri;

    invoke-static {v2}, Lgm;->궗(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfv;->먯꽌:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v3, Ld;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ld;-><init>(I)V

    iput-object v3, p0, Lfv;->弱밧:Ld;

    iget-object v3, p0, Lfv;->弱밧:Ld;

    invoke-virtual {v3, v2}, Ld;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lfv;->弱밧:Ld;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfv;->弱밧:Ld;

    invoke-virtual {v1}, Ld;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lfv;->弱밧:Ld;

    goto :goto_0
.end method


# virtual methods
.method public ㅼ꽑嫄()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 寃껋씠()I
    .locals 1

    iget v0, p0, Lfv;->대쫫:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lfv;->롩퐢()V

    :cond_0
    iget v0, p0, Lfv;->대쫫:I

    return v0
.end method

.method public 弱밧()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 洹()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援()V
    .locals 1

    iget-object v0, p0, Lfv;->弱밧:Ld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfv;->弱밧:Ld;

    invoke-virtual {v0}, Ld;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfv;->弱밧:Ld;

    :cond_0
    return-void
.end method

.method public 궗()Ljava/lang/String;
    .locals 2

    const-string v0, "album"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 꾨뱾()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 2

    const-string v0, "mime_type"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 덉쓣()I
    .locals 3

    :try_start_0
    const-string v0, "duration"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 뚮Ц()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 뚮벏()I
    .locals 1

    iget v0, p0, Lfv;->洹:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lfv;->롩퐢()V

    :cond_0
    iget v0, p0, Lfv;->洹:I

    return v0
.end method

.method public 뚮젮議뚮떎怨()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public 먮()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public 먯껜蹂대떎()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 먯꽌()Ljava/lang/String;
    .locals 2

    const-string v0, "artist"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public 몃Ъ()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 붿슧()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 쇰뒗()Ljava/lang/String;
    .locals 2

    const-string v0, "title"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 留먰븷()Ljava/lang/String;
    .locals 2

    const-string v0, "language"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lfv;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
