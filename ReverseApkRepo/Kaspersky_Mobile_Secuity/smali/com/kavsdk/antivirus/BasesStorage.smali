.class public Lcom/kavsdk/antivirus/BasesStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/io/FilenameFilter;

.field private static final d:Ljava/io/FilenameFilter;

.field private static final e:Ljava/io/FilenameFilter;

.field private static f:Lcom/kavsdk/antivirus/BasesStorage;


# instance fields
.field private _basesReaderPtr:I

.field private volatile g:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ".avc"

    aput-object v1, v0, v2

    sput-object v0, Lcom/kavsdk/antivirus/BasesStorage;->a:[Ljava/lang/String;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".kdc"

    aput-object v1, v0, v2

    const-string v1, ".so"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, ".mft"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".kdl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kavsdk/antivirus/BasesStorage;->b:[Ljava/lang/String;

    .line 20
    new-instance v0, Lau;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lau;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/kavsdk/antivirus/BasesStorage;->c:Ljava/io/FilenameFilter;

    .line 21
    new-instance v0, Lau;

    sget-object v1, Lcom/kavsdk/antivirus/BasesStorage;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lau;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/kavsdk/antivirus/BasesStorage;->d:Ljava/io/FilenameFilter;

    .line 22
    new-instance v0, Lau;

    sget-object v1, Lcom/kavsdk/antivirus/BasesStorage;->b:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lau;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/kavsdk/antivirus/BasesStorage;->e:Ljava/io/FilenameFilter;

    .line 24
    new-instance v0, Lcom/kavsdk/antivirus/BasesStorage;

    invoke-direct {v0}, Lcom/kavsdk/antivirus/BasesStorage;-><init>()V

    sput-object v0, Lcom/kavsdk/antivirus/BasesStorage;->f:Lcom/kavsdk/antivirus/BasesStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/kavsdk/antivirus/BasesStorage;->_basesReaderPtr:I

    .line 36
    return-void
.end method

.method public static a()Lcom/kavsdk/antivirus/BasesStorage;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kavsdk/antivirus/BasesStorage;->f:Lcom/kavsdk/antivirus/BasesStorage;

    return-object v0
.end method

.method private a(Ljava/io/FilenameFilter;)V
    .locals 8
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 93
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "##"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 95
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 10
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 78
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "##"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 83
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 85
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method

.method private b(Ljava/io/FilenameFilter;)V
    .locals 4
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method private native getRecordsNumber()I
.end method

.method private native loadBases(Ljava/lang/String;J)I
.end method

.method private native processNewBases(Ljava/lang/String;J)I
.end method

.method private native releaseBasesReaderPtr()V
.end method


# virtual methods
.method public final a(Ljava/lang/String;LaB;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 110
    .line 111
    if-eqz p1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    if-nez v1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 116
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    :cond_1
    :goto_0
    return v0

    .line 120
    :cond_2
    invoke-direct {p0, v1}, Lcom/kavsdk/antivirus/BasesStorage;->b(Ljava/io/File;)V

    .line 122
    iget-object v0, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kavsdk/antivirus/BasesStorage;->d()Lav;

    move-result-object v1

    invoke-virtual {v1}, Lav;->b()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/kavsdk/antivirus/BasesStorage;->processNewBases(Ljava/lang/String;J)I

    move-result v0

    .line 124
    if-nez v0, :cond_3

    .line 126
    sget-object v1, Lcom/kavsdk/antivirus/BasesStorage;->c:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1}, Lcom/kavsdk/antivirus/BasesStorage;->b(Ljava/io/FilenameFilter;)V

    .line 152
    :goto_1
    if-eqz p2, :cond_1

    .line 154
    const/4 v1, 0x3

    invoke-interface {p2, v1, v0}, LaB;->a(II)Z

    goto :goto_0

    .line 130
    :cond_3
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 131
    if-eqz v1, :cond_4

    .line 133
    sget-object v1, Lcom/kavsdk/antivirus/BasesStorage;->e:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1}, Lcom/kavsdk/antivirus/BasesStorage;->a(Ljava/io/FilenameFilter;)V

    .line 134
    iget-object v1, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kavsdk/antivirus/BasesStorage;->d()Lav;

    move-result-object v2

    invoke-virtual {v2}, Lav;->b()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/kavsdk/antivirus/BasesStorage;->processNewBases(Ljava/lang/String;J)I

    .line 141
    :goto_2
    and-int/lit16 v1, v0, 0xff

    .line 142
    if-eqz v1, :cond_5

    .line 144
    sget-object v1, Lcom/kavsdk/antivirus/BasesStorage;->d:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1}, Lcom/kavsdk/antivirus/BasesStorage;->a(Ljava/io/FilenameFilter;)V

    goto :goto_1

    .line 138
    :cond_4
    sget-object v1, Lcom/kavsdk/antivirus/BasesStorage;->e:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1}, Lcom/kavsdk/antivirus/BasesStorage;->b(Ljava/io/FilenameFilter;)V

    goto :goto_2

    .line 148
    :cond_5
    sget-object v1, Lcom/kavsdk/antivirus/BasesStorage;->d:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1}, Lcom/kavsdk/antivirus/BasesStorage;->b(Ljava/io/FilenameFilter;)V

    goto :goto_1
.end method

.method public final a(Ljava/io/File;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return v0

    .line 45
    :cond_0
    monitor-enter p0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iput-object p1, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kavsdk/antivirus/BasesStorage;->d()Lav;

    move-result-object v2

    invoke-virtual {v2}, Lav;->b()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/kavsdk/antivirus/BasesStorage;->loadBases(Ljava/lang/String;J)I

    move-result v1

    .line 53
    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 64
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 61
    iput-object p1, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final b()Ljava/io/File;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    return-object v0
.end method

.method public final declared-synchronized c()I
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kavsdk/antivirus/BasesStorage;->_basesReaderPtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lav;
    .locals 7

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kavsdk/antivirus/BasesStorage;->g:Ljava/io/File;

    const-string v2, "index"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/updater/Index;

    .line 167
    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Lav;

    invoke-virtual {v0}, Lcom/kavsdk/updater/Index;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0}, Lcom/kavsdk/antivirus/BasesStorage;->getRecordsNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/kavsdk/updater/Index;->getSize()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lav;-><init>(Ljava/util/Date;IJ)V

    move-object v0, v1

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Lav;

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7dc

    const/4 v2, 0x4

    const/16 v3, 0xc

    const/16 v4, 0x11

    const/16 v5, 0x34

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0}, Lcom/kavsdk/antivirus/BasesStorage;->getRecordsNumber()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-direct {v6, v0, v1, v2, v3}, Lav;-><init>(Ljava/util/Date;IJ)V

    move-object v0, v6

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/kavsdk/antivirus/BasesStorage;->releaseBasesReaderPtr()V

    .line 219
    return-void
.end method
