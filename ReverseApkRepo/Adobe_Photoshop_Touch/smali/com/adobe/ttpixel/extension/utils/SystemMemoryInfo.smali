.class public Lcom/adobe/ttpixel/extension/utils/SystemMemoryInfo;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "Active"

.field public static final ACTIVE_ANON:Ljava/lang/String; = "Active(anon)"

.field public static final ACTIVE_FILE:Ljava/lang/String; = "Active(file)"

.field public static final ANON_PAGES:Ljava/lang/String; = "AnonPages"

.field public static final BOUNCE:Ljava/lang/String; = "Bounce"

.field public static final BUFFERS:Ljava/lang/String; = "Buffers"

.field public static final CACHED:Ljava/lang/String; = "Cached"

.field public static final COMMITTED_AS:Ljava/lang/String; = "Committed_AS"

.field public static final COMMIT_LIMIT:Ljava/lang/String; = "CommitLimit"

.field public static final DIRTY:Ljava/lang/String; = "Dirty"

.field public static final HIGH_FREE:Ljava/lang/String; = "HighFree"

.field public static final HIGH_TOTAL:Ljava/lang/String; = "HighTotal"

.field public static final INACTIVE:Ljava/lang/String; = "Inactive"

.field public static final INACTIVE_ANON:Ljava/lang/String; = "Inactive(anon)"

.field public static final INACTIVE_FILE:Ljava/lang/String; = "Inactive(file)"

.field public static final KERNEL_STACK:Ljava/lang/String; = "KernelStack"

.field public static final LOW_FREE:Ljava/lang/String; = "LowFree"

.field public static final LOW_TOTAL:Ljava/lang/String; = "LowTotal"

.field public static final MAPPED:Ljava/lang/String; = "Mapped"

.field private static final MEMINFO_PATH:Ljava/lang/String; = "/proc/meminfo"

.field public static final MEM_FREE:Ljava/lang/String; = "MemFree"

.field public static final MEM_TOTAL:Ljava/lang/String; = "MemTotal"

.field public static final MLOCKED:Ljava/lang/String; = "Mlocked"

.field public static final NFS_UNSTABLE:Ljava/lang/String; = "NFS_Unstable"

.field public static final PAGE_TABLES:Ljava/lang/String; = "PageTables"

.field public static final SHMEM:Ljava/lang/String; = "Shmem"

.field public static final SLAB:Ljava/lang/String; = "Slab"

.field public static final SRECLAIMABLE:Ljava/lang/String; = "SReclaimable"

.field public static final SUNRECLAIM:Ljava/lang/String; = "SUnreclaim"

.field public static final SWAP_CACHED:Ljava/lang/String; = "SwapCached"

.field public static final SWAP_FREE:Ljava/lang/String; = "SwapFree"

.field public static final SWAP_TOTAL:Ljava/lang/String; = "SwapTotal"

.field public static final UNEVICTABLE:Ljava/lang/String; = "Unevictable"

.field public static final VMALLOC_CHUNK:Ljava/lang/String; = "VmallocChunk"

.field public static final VMALLOC_TOTAL:Ljava/lang/String; = "VmallocTotal"

.field public static final VMALLOC_USED:Ljava/lang/String; = "VmallocUsed"

.field public static final WRITEBACK:Ljava/lang/String; = "Writeback"

.field public static final WRITEBACK_TMP:Ljava/lang/String; = "WritebackTmp"

.field private static cValues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/adobe/ttpixel/extension/utils/SystemMemoryInfo;->cValues:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/meminfo"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "^([^:]+):\\s*(\\d+) kB$"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/adobe/ttpixel/extension/utils/SystemMemoryInfo;->cValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/ttpixel/extension/utils/SystemMemoryInfo;->cValues:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amount(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/adobe/ttpixel/extension/utils/SystemMemoryInfo;->cValues:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adobe/ttpixel/extension/utils/SystemMemoryInfo;->cValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method
