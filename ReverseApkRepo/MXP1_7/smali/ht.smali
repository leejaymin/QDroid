.class public final Lht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final 癤욱븳援:[Ljava/lang/String;


# instance fields
.field private 궗:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "srt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "txt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "smi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sami"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ssa"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ass"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mpl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "psb"

    aput-object v2, v0, v1

    sput-object v0, Lht;->癤욱븳援:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static 癤욱븳援(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    const-string v0, "SAMI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    const-string v0, "SRT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    const-string v0, "SUB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_4
    const-string v0, "SMI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_5
    const-string v0, "SSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_6
    const-string v0, "TXT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_7
    const-string v0, "ASS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_8
    const-string v0, "MPL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_9
    const-string v0, "PSB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x4d -> :sswitch_8
        0x50 -> :sswitch_9
        0x53 -> :sswitch_0
        0x54 -> :sswitch_6
        0x61 -> :sswitch_7
        0x6d -> :sswitch_8
        0x70 -> :sswitch_9
        0x73 -> :sswitch_0
        0x74 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_1
        0x4d -> :sswitch_4
        0x52 -> :sswitch_2
        0x53 -> :sswitch_5
        0x55 -> :sswitch_3
        0x61 -> :sswitch_1
        0x6d -> :sswitch_4
        0x72 -> :sswitch_2
        0x73 -> :sswitch_5
        0x75 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lht;->궗:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lht;->癤욱븳援(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public 癤욱븳援(Ljava/io/File;Ljava/io/File;)[Ljava/io/File;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/io/File;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lht;->궗:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_1
    iput-object v2, p0, Lht;->궗:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/io/File;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lht;->궗:Ljava/lang/String;

    throw v0

    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v1, v0}, Lel;->癤욱븳援([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    goto :goto_0
.end method
