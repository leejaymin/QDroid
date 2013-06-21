.class public final Lmv;
.super Ljava/lang/Object;


# static fields
.field public static final 癤욱븳援:Ljava/lang/String;


# instance fields
.field private final ㅼ꽑嫄:Z

.field private final 弱밧:Landroid/net/Uri;

.field private final 洹:Ljava/util/List;

.field private final 궗:Landroid/content/Context;

.field private 꾨뱾:[Landroid/net/Uri;

.field private 대쫫:[Lna;

.field private 뚮Ц:Lmx;

.field private final 뚮젮議뚮떎怨:Ljava/util/Map;

.field private 먮:Lmw;

.field private 먯껜蹂대떎:Ljava/util/Random;

.field private final 먯꽌:Z

.field private 몃Ъ:Ljava/util/Set;

.field private 붿슧:Lmz;

.field private 쇰뒗:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".PlayLister"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmv;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;[Landroid/net/Uri;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmv;->洹:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmv;->뚮젮議뚮떎怨:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmv;->궗:Landroid/content/Context;

    iput-boolean p5, p0, Lmv;->ㅼ꽑嫄:Z

    iput-object p3, p0, Lmv;->弱밧:Landroid/net/Uri;

    if-eqz p4, :cond_0

    iput-boolean v1, p0, Lmv;->먯꽌:Z

    invoke-static {p4}, Lna;->癤욱븳援([Landroid/net/Uri;)[Lna;

    move-result-object v0

    iput-object v0, p0, Lmv;->대쫫:[Lna;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmv;->먯꽌:Z

    invoke-direct {p0, v1, p2}, Lmv;->癤욱븳援(ZLandroid/net/Uri;)V

    goto :goto_0
.end method

.method static synthetic ㅼ꽑嫄(Lmv;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lmv;->뚮젮議뚮떎怨:Ljava/util/Map;

    return-object v0
.end method

.method private 弱밧()[Lna;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lmv;->궗:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Lna;

    move v1, v6

    :goto_0
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lna;

    new-instance v5, Ljava/io/File;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/mxtech/FileUtils;->먯꽌(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Lna;-><init>(Landroid/net/Uri;)V

    aput-object v4, v0, v1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lmv;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_2
    new-array v0, v6, [Lna;

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private 癤욱븳援(Lna;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lmv;->대쫫:[Lna;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget-object v2, v3, v1

    invoke-virtual {v2, p1}, Lna;->癤욱븳援(Lna;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public static 癤욱븳援(Lmv;Landroid/content/Context;Landroid/net/Uri;[Landroid/net/Uri;Z)Lmv;
    .locals 6

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lmv;->먯꽌:Z

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lmv;->대쫫:[Lna;

    array-length v0, v0

    array-length v1, p3

    if-ne v0, v1, :cond_5

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    :goto_1
    return-object p0

    :cond_0
    iget-object v2, p0, Lmv;->대쫫:[Lna;

    aget-object v2, v2, v0

    aget-object v4, p3, v0

    invoke-virtual {v2, v4}, Lna;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lmv;->癤욱븳援()V

    :cond_2
    if-nez v3, :cond_3

    invoke-static {p2}, Lmv;->궗(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    :cond_3
    new-instance v0, Lmv;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmv;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;[Landroid/net/Uri;Z)V

    move-object p0, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lmv;->궗(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iget-boolean v0, p0, Lmv;->먯꽌:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    iget-object v0, p0, Lmv;->弱밧:Landroid/net/Uri;

    invoke-static {v0, v3}, Lmv;->癤욱븳援(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmv;->ㅼ꽑嫄:Z

    if-ne v0, p4, :cond_1

    goto :goto_1
.end method

.method static synthetic 癤욱븳援(Lmv;Lmw;)V
    .locals 0

    iput-object p1, p0, Lmv;->먮:Lmw;

    return-void
.end method

.method static synthetic 癤욱븳援(Lmv;Lmz;)V
    .locals 0

    iput-object p1, p0, Lmv;->붿슧:Lmz;

    return-void
.end method

.method static synthetic 癤욱븳援(Lmv;Z)V
    .locals 0

    iput-boolean p1, p0, Lmv;->쇰뒗:Z

    return-void
.end method

.method static synthetic 癤욱븳援(Lmv;[Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lmv;->꾨뱾:[Landroid/net/Uri;

    return-void
.end method

.method static synthetic 癤욱븳援(Lmv;[Lna;)V
    .locals 0

    iput-object p1, p0, Lmv;->대쫫:[Lna;

    return-void
.end method

.method private 癤욱븳援(ZLandroid/net/Uri;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lmv;->먯꽌:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmv;->弱밧:Landroid/net/Uri;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmv;->弱밧:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lmv;->ㅼ꽑嫄:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "group_by_folder"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lmv;->궗:Landroid/content/Context;

    invoke-static {v0, v1}, Lqp;->癤욱븳援(Landroid/content/Context;Lql;)[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lmv;->癤욱븳援([Ljava/io/File;Z)[Lna;

    move-result-object v0

    iput-object v0, p0, Lmv;->대쫫:[Lna;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lql;->먯꽌()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lmv;->대쫫:[Lna;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmv;->대쫫:[Lna;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lmv;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmv;->弱밧:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lms;->꾩:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lmv;->癤욱븳援([Ljava/io/File;Z)[Lna;

    move-result-object v0

    iput-object v0, p0, Lmv;->대쫫:[Lna;

    goto :goto_1

    :cond_4
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmv;->弱밧:Landroid/net/Uri;

    invoke-static {v0}, Lgm;->癤욱븳援(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lmv;->弱밧()[Lna;

    move-result-object v0

    iput-object v0, p0, Lmv;->대쫫:[Lna;

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmv;->붿슧:Lmz;

    if-nez v0, :cond_0

    new-instance v0, Lmz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmz;-><init>(Lmv;Lmz;)V

    iput-object v0, p0, Lmv;->붿슧:Lmz;

    iget-object v0, p0, Lmv;->붿슧:Lmz;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    iget-object v2, p0, Lmv;->弱밧:Landroid/net/Uri;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmz;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private static 癤욱븳援(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic 癤욱븳援(Lmv;)[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lmv;->꾨뱾:[Landroid/net/Uri;

    return-object v0
.end method

.method private 癤욱븳援([Ljava/io/File;Z)[Lna;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v3, p1

    new-array v1, v3, [Lna;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v4, Lna;

    if-eqz p2, :cond_2

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/mxtech/FileUtils;->먯꽌(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v4, v0}, Lna;-><init>(Landroid/net/Uri;)V

    aput-object v4, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    aget-object v0, p1, v2

    goto :goto_2
.end method

.method private static 궗(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private 궗(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lmv;->먯꽌(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmv;->뚮젮議뚮떎怨:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic 궗(Lmv;)Lmx;
    .locals 1

    iget-object v0, p0, Lmv;->뚮Ц:Lmx;

    return-object v0
.end method

.method private 먯꽌(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 13

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/16 v10, 0x2f

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v6, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v2, v3

    move v0, v3

    :goto_1
    if-gez v4, :cond_1

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eqz v0, :cond_b

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_a

    add-int v2, v8, p2

    int-to-char v2, v2

    if-ge v2, v11, :cond_3

    invoke-virtual {v7, v4, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v2, v1

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    if-le v2, v12, :cond_4

    invoke-virtual {v7, v4, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v2, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v4, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "://"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    move v1, v3

    :goto_4
    add-int/lit8 v0, v6, -0x1

    if-lt v1, v0, :cond_9

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    const/16 v0, 0x3f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v8, :cond_8

    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_b
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    move v0, v1

    goto/16 :goto_3
.end method

.method static synthetic 먯꽌(Lmv;)Lmw;
    .locals 1

    iget-object v0, p0, Lmv;->먮:Lmw;

    return-object v0
.end method


# virtual methods
.method public ㅼ꽑嫄()[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lmv;->꾨뱾:[Landroid/net/Uri;

    return-object v0
.end method

.method public 癤욱븳援(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmv;->癤욱븳援(Landroid/net/Uri;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援(Landroid/net/Uri;IZ)Landroid/net/Uri;
    .locals 3

    new-instance v1, Lna;

    invoke-direct {v1, p1}, Lna;-><init>(Landroid/net/Uri;)V

    iget-object v0, p0, Lmv;->洹:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez p2, :cond_0

    if-lez v0, :cond_2

    iget-object v1, p0, Lmv;->洹:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    iget-object v0, v0, Lna;->癤욱븳援:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p3, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lmv;->洹:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    invoke-virtual {v1, v0}, Lna;->癤욱븳援(Lna;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmv;->洹:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, v1, p2}, Lmv;->癤욱븳援(Lna;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public 癤욱븳援(Lna;I)Landroid/net/Uri;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lmv;->癤욱븳援(ZLandroid/net/Uri;)V

    if-nez p2, :cond_e

    iget-object v0, p0, Lmv;->대쫫:[Lna;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmv;->대쫫:[Lna;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lna;->癤욱븳援:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmv;->궗(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmv;->몃Ъ:Ljava/util/Set;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lmv;->몃Ъ:Ljava/util/Set;

    :cond_2
    iget-object v0, p0, Lmv;->몃Ъ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmv;->대쫫:[Lna;

    array-length v5, v4

    move v3, v1

    move v0, v1

    :goto_1
    if-lt v3, v5, :cond_3

    if-nez v0, :cond_8

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "loop"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_3
    aget-object v6, v4, v3

    iget-object v7, p0, Lmv;->몃Ъ:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmv;->몃Ъ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lmv;->몃Ъ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmv;->대쫫:[Lna;

    array-length v5, v4

    move v3, v1

    move v0, v1

    :goto_2
    if-lt v3, v5, :cond_6

    if-nez v0, :cond_8

    move-object v0, v2

    goto :goto_0

    :cond_6
    aget-object v6, v4, v3

    invoke-virtual {p1, v6}, Lna;->癤욱븳援(Lna;)Z

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lmv;->먯껜蹂대떎:Ljava/util/Random;

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lmv;->먯껜蹂대떎:Ljava/util/Random;

    :cond_9
    iget-object v2, p0, Lmv;->먯껜蹂대떎:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v4, p0, Lmv;->대쫫:[Lna;

    array-length v5, v4

    move v3, v1

    move v2, v1

    move v1, v0

    :goto_3
    if-lt v3, v5, :cond_b

    move v0, v2

    :cond_a
    :goto_4
    iget-object v1, p0, Lmv;->대쫫:[Lna;

    aget-object v0, v1, v0

    iget-object v0, v0, Lna;->癤욱븳援:Landroid/net/Uri;

    goto :goto_0

    :cond_b
    aget-object v0, v4, v3

    iget-object v6, p0, Lmv;->몃Ъ:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    add-int/lit8 v0, v1, -0x1

    if-nez v1, :cond_d

    move v0, v2

    goto :goto_4

    :cond_c
    move v0, v1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lmv;->대쫫:[Lna;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmv;->대쫫:[Lna;

    array-length v0, v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, p1, Lna;->癤욱븳援:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Lmv;->궗(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0, p1}, Lmv;->癤욱븳援(Lna;)I

    move-result v0

    if-gez v0, :cond_11

    sget-object v0, Lmv;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current video not found from the list. Current="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lna;->궗:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " List="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmv;->대쫫:[Lna;

    aget-object v1, v3, v1

    iget-object v1, v1, Lna;->궗:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmv;->대쫫:[Lna;

    iget-object v3, p0, Lmv;->대쫫:[Lna;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lna;->궗:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmv;->대쫫:[Lna;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lna;->癤욱븳援:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Lmv;->궗(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    add-int/2addr v0, p2

    if-ltz v0, :cond_12

    iget-object v3, p0, Lmv;->대쫫:[Lna;

    array-length v3, v3

    if-lt v0, v3, :cond_a

    :cond_12
    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "loop"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    if-gez v0, :cond_13

    iget-object v0, p0, Lmv;->대쫫:[Lna;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    :cond_13
    move v0, v1

    goto/16 :goto_4

    :cond_14
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public 癤욱븳援()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lmv;->붿슧:Lmz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmv;->붿슧:Lmz;

    invoke-virtual {v0, v1}, Lmz;->cancel(Z)Z

    :cond_0
    iput-object v2, p0, Lmv;->뚮Ц:Lmx;

    iget-object v0, p0, Lmv;->먮:Lmw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmv;->먮:Lmw;

    invoke-virtual {v0, v1}, Lmw;->cancel(Z)Z

    iput-object v2, p0, Lmv;->먮:Lmw;

    :cond_1
    return-void
.end method

.method public 癤욱븳援(Landroid/net/Uri;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lmv;->궗()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmv;->먯꽌()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmv;->먮:Lmw;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmv;->뚮젮議뚮떎怨:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {v3}, Lem;->궗(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lmv;->먯꽌(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, p1, v1}, Lmv;->먯꽌(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    if-eqz v4, :cond_7

    iget-object v0, p0, Lmv;->뚮젮議뚮떎怨:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmv;->뚮젮議뚮떎怨:Ljava/util/Map;

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    :goto_1
    if-eqz v5, :cond_6

    iget-object v0, p0, Lmv;->뚮젮議뚮떎怨:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmv;->뚮젮議뚮떎怨:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_2
    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    new-instance v6, Lmw;

    invoke-direct {v6, p0, v7}, Lmw;-><init>(Lmv;Lmw;)V

    iput-object v6, p0, Lmv;->먮:Lmw;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmv;->먮:Lmw;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/net/Uri;

    aput-object v4, v3, v2

    aput-object v5, v3, v1

    invoke-virtual {v0, v3}, Lmw;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    iget-object v0, p0, Lmv;->먮:Lmw;

    new-array v1, v1, [Landroid/net/Uri;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lmw;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmv;->먮:Lmw;

    new-array v1, v1, [Landroid/net/Uri;

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Lmw;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_1
.end method

.method public 癤욱븳援(Lmx;)V
    .locals 0

    iput-object p1, p0, Lmv;->뚮Ц:Lmx;

    return-void
.end method

.method public 궗()Z
    .locals 1

    iget-object v0, p0, Lmv;->붿슧:Lmz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 먯꽌()Z
    .locals 1

    iget-boolean v0, p0, Lmv;->쇰뒗:Z

    return v0
.end method
