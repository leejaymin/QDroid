.class public final Llp;
.super Lma;


# static fields
.field private static final 궗:[Ljava/lang/String;


# instance fields
.field private final ㅼ꽑嫄:Lmb;

.field private final 弱밧:Llv;

.field private 洹:Landroid/database/Cursor;

.field private 대쫫:Landroid/widget/ListView;

.field private 먯껜蹂대떎:[Llr;

.field private final 먯꽌:Llx;

.field private final 몃Ъ:Landroid/database/DataSetObservable;

.field private final 쇰뒗:Llu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Llp;->궗:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Llx;Lmb;)V
    .locals 2

    invoke-direct {p0}, Lma;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Llp;->몃Ъ:Landroid/database/DataSetObservable;

    iput-object p2, p0, Llp;->ㅼ꽑嫄:Lmb;

    iput-object p1, p0, Llp;->먯꽌:Llx;

    new-instance v0, Llv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llv;-><init>(Llp;Llv;)V

    iput-object v0, p0, Llp;->弱밧:Llv;

    new-instance v0, Llu;

    invoke-direct {v0, p0}, Llu;-><init>(Llp;)V

    iput-object v0, p0, Llp;->쇰뒗:Llu;

    invoke-direct {p0}, Llp;->먯껜蹂대떎()V

    invoke-direct {p0}, Llp;->꾨뱾()V

    return-void
.end method

.method static synthetic ㅼ꽑嫄(Llp;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic 弱밧(Llp;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Llp;->대쫫:Landroid/widget/ListView;

    return-object v0
.end method

.method private 癤욱븳援(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Llp;->洹:Landroid/database/Cursor;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    sget-object v3, Lms;->꾩:Ljava/io/FileFilter;

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic 癤욱븳援(Llp;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    invoke-direct {p0, p1}, Llp;->癤욱븳援(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic 癤욱븳援(Llp;)Llx;
    .locals 1

    iget-object v0, p0, Llp;->먯꽌:Llx;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Llp;[Llr;)V
    .locals 0

    iput-object p1, p0, Llp;->먯껜蹂대떎:[Llr;

    return-void
.end method

.method private 癤욱븳援(Llr;Z)V
    .locals 7

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v2, v1, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p1, Llr;->궗:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    if-eqz p2, :cond_0

    const-string v4, "FinishTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    invoke-direct {p0, v0}, Llp;->癤욱븳援(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Llp;->먯꽌:Llx;

    invoke-interface {v0}, Llx;->붿슧()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Lql;->먯꽌()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    return-void

    :cond_0
    :try_start_5
    const-string v4, "FinishTime"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    :try_start_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget v5, p1, Llr;->癤욱븳援:I

    invoke-virtual {v1, v5, v0, v3}, Lql;->癤욱븳援(ILjava/io/File;Landroid/content/ContentValues;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method private 癤욱븳援(Lql;Ljava/util/Map;Landroid/util/SparseArray;ILjava/io/File;J)V
    .locals 7

    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr;

    if-nez v0, :cond_7

    new-instance v0, Llr;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lql;->癤욱븳援(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2, v1}, Llr;-><init>(ILjava/io/File;)V

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_1
    :try_start_0
    iget v0, v2, Llr;->癤욱븳援:I

    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lql;->癤욱븳援(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lls;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v3, v2, Llr;->쇰뒗:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Llr;->쇰뒗:I

    iget-wide v3, v2, Llr;->대쫫:J

    add-long/2addr v3, p6

    iput-wide v3, v2, Llr;->대쫫:J

    if-ne v1, p4, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, v0, Lls;->궗:Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lls;->癤욱븳援:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lls;->궗:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v0, Lls;->癤욱븳援:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v2, Llr;->弱밧:Z

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, v0, Lls;->癤욱븳援:Ljava/lang/Long;

    if-nez v1, :cond_5

    iget-object v1, v0, Lls;->궗:Ljava/lang/Long;

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p5}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, v2, Llr;->ㅼ꽑嫄:J

    cmp-long v1, v5, v3

    if-gez v1, :cond_5

    iput-wide v3, v2, Llr;->ㅼ꽑嫄:J

    :cond_5
    iget-boolean v1, v2, Llr;->먯꽌:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lls;->궗:Ljava/lang/Long;

    if-nez v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, v2, Llr;->먯꽌:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const/high16 v1, -0x8000

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    move-object v2, v0

    goto :goto_1
.end method

.method static synthetic 궗(Llp;)[Llr;
    .locals 1

    iget-object v0, p0, Llp;->먯껜蹂대떎:[Llr;

    return-object v0
.end method

.method private 꾨뱾()V
    .locals 17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    new-instance v12, Ljava/util/TreeSet;

    sget-object v1, Lcom/mxtech/FileUtils;->癤욱븳援:Ljava/util/Comparator;

    invoke-direct {v12, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/TreeMap;

    sget-object v1, Lcom/mxtech/FileUtils;->癤욱븳援:Ljava/util/Comparator;

    invoke-direct {v3, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v1, v2, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT Id, LastWatchTime, FinishTime FROM VideoFile WHERE LastWatchTime IS NOT NULL OR FinishTime IS NOT NULL"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v6, Lls;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lls;-><init>(Lls;)V

    const/4 v1, 0x1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v6, Lls;->癤욱븳援:Ljava/lang/Long;

    const/4 v1, 0x2

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    :goto_1
    iput-object v1, v6, Lls;->궗:Ljava/lang/Long;

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v1, v7

    invoke-virtual {v4, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Lql;->쇰뒗()I

    move-result v5

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lql;->궗(Z)[Ljava/util/Map$Entry;

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_2
    if-lt v6, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Llp;->洹:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Llp;->洹:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Llp;->洹:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Llp;->洹:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    new-instance v13, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v13, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v1

    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    new-array v1, v5, [Llr;

    move-object/from16 v0, p0

    iput-object v1, v0, Llp;->먯껜蹂대떎:[Llr;

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Llp;->먯껜蹂대떎:[Llr;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buildList(folder) "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Llp;->먯껜蹂대떎:[Llr;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - end ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Lql;->먯꽌()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    :goto_7
    return-void

    :cond_8
    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x2

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v2}, Lql;->먯꽌()V

    throw v1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v1, v1, [Llr;

    move-object/from16 v0, p0

    iput-object v1, v0, Llp;->먯껜蹂대떎:[Llr;

    move-object/from16 v0, p0

    iget-object v1, v0, Llp;->먯꽌:Llx;

    invoke-interface {v1}, Llx;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Llp;->먯꽌:Llx;

    invoke-interface {v1}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    sget v2, Lnt;->error_database:I

    invoke-static {v1, v2}, Lfn;->癤욱븳援(Lcom/mxtech/app/ActivityBase;I)Landroid/app/AlertDialog;

    goto :goto_7

    :cond_a
    :try_start_8
    aget-object v9, v7, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lms;->먯꽌(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_b

    sget-object v9, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is a registered video directory stored on the database, but skipped since it\'s not located on the video scan roots."

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_2

    :cond_b
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Llr;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v14, v1, v13}, Llr;-><init>(ILjava/io/File;)V

    invoke-virtual {v3, v13, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Llp;->洹:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lms;->먯꽌(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_d

    sget-object v6, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is registred on media store but skipped as it is not located on the video folder."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_e

    sget-object v6, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is not a normal file."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    sget-boolean v7, Lms;->앸ぐ:Z

    if-nez v7, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v6, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is a hidden file."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_f
    invoke-static {v6}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-static {v7}, Lms;->ㅼ꽑嫄(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    :cond_10
    sget-object v6, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " does not have supported video extension."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v12, v6}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v13, 0x0

    cmp-long v1, v7, v13

    if-lez v1, :cond_3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Llp;->癤욱븳援(Lql;Ljava/util/Map;Landroid/util/SparseArray;ILjava/io/File;J)V

    invoke-virtual {v12, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_12
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lms;->앸ぐ:Z

    if-nez v7, :cond_13

    invoke-static {v6}, Lcom/mxtech/FileUtils;->ㅼ꽑嫄(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " is hidden."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    :cond_13
    sget-boolean v7, Lms;->ㅼ꽑嫄곗쓽:Z

    if-eqz v7, :cond_14

    const-string v7, ".nomedia"

    invoke-static {v6, v7, v13}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_14

    sget-object v1, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " is removed since this or its upper directories contains .nomedia file."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    :cond_14
    sget-object v6, Lms;->꾩:Ljava/io/FileFilter;

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_5

    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_9
    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    aget-object v6, v15, v9

    invoke-virtual {v12, v6}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Llp;->癤욱븳援(Lql;Ljava/util/Map;Landroid/util/SparseArray;ILjava/io/File;J)V

    invoke-virtual {v12, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_9

    :cond_16
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llr;

    iget v1, v1, Llr;->쇰뒗:I

    if-lez v1, :cond_6

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_5

    :cond_17
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llr;

    iget v5, v1, Llr;->쇰뒗:I

    if-lez v5, :cond_18

    move-object/from16 v0, p0

    iget-object v7, v0, Llp;->먯껜蹂대떎:[Llr;

    add-int/lit8 v5, v4, 0x1

    aput-object v1, v7, v4

    move v4, v5

    goto/16 :goto_6

    :cond_18
    sget-object v5, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v1, v1, Llr;->궗:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is ignored since media files are not found."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_6
.end method

.method private 뚮Ц()V
    .locals 1

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method private 먯껜蹂대떎()V
    .locals 6

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Llp;->먯꽌:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/app/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Llp;->궗:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    iget-object v1, p0, Llp;->弱밧:Llv;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    iget-object v1, p0, Llp;->쇰뒗:Llu;

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
.end method

.method static synthetic 먯꽌(Llp;)Landroid/database/DataSetObservable;
    .locals 1

    iget-object v0, p0, Llp;->몃Ъ:Landroid/database/DataSetObservable;

    return-object v0
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

    iget-object v0, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llp;->먯껜蹂대떎:[Llr;

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

    iget-object v0, p0, Llp;->먯꽌:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    if-nez p2, :cond_5

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lnp;->folder_list_row:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    :goto_0
    iget-object v0, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    :goto_1
    return-object v8

    :cond_0
    sget v0, Lno;->name:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    sget v0, Lno;->secondary:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Llp;->먯껜蹂대떎:[Llr;

    aget-object v9, v2, p1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, v9, Llr;->궗:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgm;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnr;->number_of_video:I

    iget v5, v9, Llr;->쇰뒗:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v9, Llr;->쇰뒗:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget-wide v3, Lcom/mxtech/videoplayer/ActivityVideoList;->꾨뱾:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v9, Llr;->ㅼ꽑嫄:J

    sget-wide v10, Lcom/mxtech/videoplayer/ActivityVideoList;->꾨뱾:J

    add-long/2addr v5, v10

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    iget-object v0, p0, Llp;->ㅼ꽑嫄:Lmb;

    const-string v3, "New"

    sget v4, Lnk;->tagNewText:I

    sget v5, Lnk;->tagNew:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lmb;->癤욱븳援(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    :cond_1
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v9, Llr;->弱밧:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Llp;->ㅼ꽑嫄:Lmb;

    iget-object v0, v0, Lmb;->먯꽌:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_3
    iget-object v1, p0, Llp;->먯꽌:Llx;

    move-object v0, v8

    check-cast v0, Lcom/mxtech/widget/ListRow;

    invoke-interface {v1, v0}, Llx;->癤욱븳援(Lcom/mxtech/widget/ListRow;)V

    goto :goto_1

    :cond_2
    const-string v0, " ("

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget v3, v9, Llr;->쇰뒗:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_3
    iget-boolean v0, v9, Llr;->먯꽌:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Llp;->ㅼ꽑嫄:Lmb;

    iget-object v0, v0, Lmb;->궗:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Llp;->ㅼ꽑嫄:Lmb;

    iget-object v0, v0, Lmb;->癤욱븳援:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_5
    move-object v8, p2

    goto/16 :goto_0
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

    iget-object v0, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v0, v0

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

    iget-object v0, p0, Llp;->몃Ъ:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Llp;->몃Ъ:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public ㅼ꽑嫄()V
    .locals 0

    invoke-super {p0}, Lma;->ㅼ꽑嫄()V

    invoke-direct {p0}, Llp;->뚮Ц()V

    return-void
.end method

.method public 弱밧()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 洹()V
    .locals 1

    iget-object v0, p0, Llp;->몃Ъ:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public 癤욱븳援(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->folder_list_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援(Landroid/widget/ListView;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Llp;->대쫫:Landroid/widget/ListView;

    return-object p0
.end method

.method public 癤욱븳援()V
    .locals 3

    iget-object v0, p0, Llp;->먯꽌:Llx;

    iget-object v1, p0, Llp;->먯꽌:Llx;

    invoke-interface {v1}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    sget v2, Lnt;->title_folder_list:I

    invoke-virtual {v1, v2}, Lcom/mxtech/app/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Llx;->癤욱븳援(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Llp;->먯껜蹂대떎()V

    invoke-direct {p0}, Llp;->꾨뱾()V

    iget-object v0, p0, Llp;->몃Ъ:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_0
    iget-object v0, p0, Llp;->대쫫:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method public 癤욱븳援(JI)V
    .locals 5

    iget-object v0, p0, Llp;->먯꽌:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v1, v1

    if-ge p3, v1, :cond_0

    iget-object v1, p0, Llp;->먯껜蹂대떎:[Llr;

    aget-object v1, v1, p3

    iget-object v2, p0, Llp;->먯꽌:Llx;

    invoke-interface {v2}, Llx;->꾨뱾()Lfm;

    move-result-object v2

    iget-object v3, v1, Llr;->궗:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Llw;

    iget-object v1, v1, Llr;->궗:Ljava/io/File;

    invoke-direct {v4, p0, v1}, Llw;-><init>(Llp;Ljava/io/File;)V

    sget v1, Lnt;->edit_rename_to:I

    invoke-static {v0, v2, v3, v4, v1}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public 癤욱븳援(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v1, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Llp;->먯껜蹂대떎:[Llr;

    aget-object v0, v1, v0

    iget-object v1, v0, Llr;->궗:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgm;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-boolean v1, v0, Llr;->弱밧:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Llr;->먯꽌:Z

    if-eqz v0, :cond_1

    sget v0, Lnt;->menu_not_finish_all:I

    sget v1, Liw;->弱밧:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Lnt;->menu_not_finish_all:I

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    sget v0, Lnt;->menu_finish_all:I

    sget v1, Liw;->弱밧:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Lnt;->menu_finish_all:I

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public 癤욱븳援(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Landroid/view/View;JI)V
    .locals 2

    iget-object v0, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v0, v0

    if-lt p4, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Llp;->먯꽌:Llx;

    iget-object v1, p0, Llp;->먯껜蹂대떎:[Llr;

    aget-object v1, v1, p4

    iget-object v1, v1, Llr;->궗:Ljava/io/File;

    invoke-interface {v0, v1}, Llx;->癤욱븳援(Ljava/io/File;)V

    goto :goto_0
.end method

.method public 癤욱븳援([J[I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Llp;->먯꽌:Llx;

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

    array-length v4, p2

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lnt;->menu_delete:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v4, Llq;

    invoke-direct {v4, p0, v3}, Llq;-><init>(Llp;Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    invoke-virtual {v1, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v2, Lnp;->delete_confirm:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lno;->message:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lnt;->edit_inquire_delete_folder:I

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

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Llp;->먯꽌:Llx;

    invoke-interface {v1}, Llx;->꾨뱾()Lfm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    aget v5, p2, v0

    iget-object v6, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Llp;->먯껜蹂대떎:[Llr;

    aget-object v5, v6, v5

    iget-object v5, v5, Llr;->궗:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    sget-object v4, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    sget-object v4, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    sget-object v4, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public 癤욱븳援(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v3, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Llp;->먯껜蹂대떎:[Llr;

    aget-object v0, v3, v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lnt;->menu_finish_all:I

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v0, v1}, Llp;->癤욱븳援(Llr;Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lnt;->menu_not_finish_all:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v0, v2}, Llp;->癤욱븳援(Llr;Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public 궗()V
    .locals 0

    return-void
.end method

.method public 궗(JI)V
    .locals 5

    iget-object v0, p0, Llp;->먯꽌:Llx;

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Llp;->먯껜蹂대떎:[Llr;

    array-length v1, v1

    if-ge p3, v1, :cond_0

    iget-object v1, p0, Llp;->먯껜蹂대떎:[Llr;

    aget-object v1, v1, p3

    new-instance v2, Llt;

    invoke-direct {v2, p0, v0, v1}, Llt;-><init>(Llp;Landroid/content/Context;Llr;)V

    iget-object v1, p0, Llp;->먯꽌:Llx;

    invoke-interface {v1}, Llx;->꾨뱾()Lfm;

    move-result-object v1

    invoke-virtual {v1, v2}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Llt;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v1}, Llt;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Llt;->show()V

    goto :goto_0
.end method

.method public 대쫫()V
    .locals 1

    iget-object v0, p0, Llp;->먯꽌:Llx;

    invoke-interface {v0}, Llx;->먮()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llp;->먯꽌:Llx;

    invoke-interface {v0}, Llx;->洹()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Llp;->꾨뱾()V

    iget-object v0, p0, Llp;->몃Ъ:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public 먯꽌()V
    .locals 1

    invoke-super {p0}, Lma;->먯꽌()V

    iget-object v0, p0, Llp;->먯꽌:Llx;

    invoke-interface {v0}, Llx;->몃Ъ()Lma;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Llp;->洹:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Llp;->먯껜蹂대떎()V

    invoke-direct {p0}, Llp;->꾨뱾()V

    iget-object v0, p0, Llp;->몃Ъ:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public 몃Ъ()V
    .locals 0

    invoke-direct {p0}, Llp;->뚮Ц()V

    return-void
.end method

.method public 쇰뒗()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
