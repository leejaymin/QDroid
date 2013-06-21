.class public Lcom/wolfram/android/alpha/FavoritesRecord;
.super Ljava/lang/Object;
.source "FavoritesRecord.java"


# static fields
.field private static final EMPTY_LONG_ARRAY:[J

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field public assumptions:[Ljava/lang/String;

.field public assumptions_labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public input:Ljava/lang/String;

.field public podStateIDs:[J

.field public podStateInputs:[Ljava/lang/String;

.field public query:Lcom/wolfram/alpha/WAQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 28
    new-array v0, v1, [J

    sput-object v0, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_LONG_ARRAY:[J

    .line 30
    const-string v0, "com.wolfram.android.alpha.FavoritesRecord"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/FavoritesRecord;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wolfram/alpha/WAQuery;)V
    .locals 7
    .parameter "query"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    .line 35
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQuery;->getAssumptions()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/wolfram/android/alpha/WolframAlphaApplication;->assumptions_text:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions_labels:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->query:Lcom/wolfram/alpha/WAQuery;

    .line 38
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQuery;->getPodStates()[Lcom/wolfram/alpha/WAPodState;

    move-result-object v2

    .line 39
    .local v2, podstates:[Lcom/wolfram/alpha/WAPodState;
    array-length v1, v2

    .line 40
    .local v1, numPodStates:I
    if-lez v1, :cond_0

    new-array v4, v1, [Ljava/lang/String;

    :goto_0
    iput-object v4, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    .line 41
    if-lez v1, :cond_1

    new-array v4, v1, [J

    :goto_1
    iput-object v4, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateIDs:[J

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 43
    aget-object v3, v2, v0

    .line 44
    .local v3, state:Lcom/wolfram/alpha/WAPodState;
    iget-object v4, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPodState;->getInputs()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPodState;->getCurrentIndex()I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v4, v0

    .line 45
    iget-object v4, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateIDs:[J

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPodState;->getID()J

    move-result-wide v5

    aput-wide v5, v4, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40
    .end local v0           #i:I
    .end local v3           #state:Lcom/wolfram/alpha/WAPodState;
    :cond_0
    sget-object v4, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_1
    sget-object v4, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_LONG_ARRAY:[J

    goto :goto_1

    .line 47
    .restart local v0       #i:I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "com.wolframalpha.help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateIDs:[J

    .line 57
    :cond_0
    return-void
.end method

.method public static createFromStream(Ljava/io/DataInputStream;)Lcom/wolfram/android/alpha/FavoritesRecord;
    .locals 8
    .parameter "inputStream"

    .prologue
    .line 66
    :try_start_0
    new-instance v2, Lcom/wolfram/android/alpha/FavoritesRecord;

    invoke-direct {v2}, Lcom/wolfram/android/alpha/FavoritesRecord;-><init>()V

    .line 67
    .local v2, newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 69
    .local v3, numAssumptions:I
    if-nez v3, :cond_2

    .line 70
    sget-object v5, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 77
    .local v4, numPodStates:I
    if-nez v4, :cond_3

    .line 78
    sget-object v5, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    .line 79
    sget-object v5, Lcom/wolfram/android/alpha/FavoritesRecord;->EMPTY_LONG_ARRAY:[J

    iput-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateIDs:[J

    :cond_1
    move-object v5, v2

    .line 90
    .end local v2           #newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    .end local v3           #numAssumptions:I
    .end local v4           #numPodStates:I
    :goto_0
    return-object v5

    .line 72
    .restart local v2       #newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    .restart local v3       #numAssumptions:I
    :cond_2
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 74
    iget-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    .end local v1           #i:I
    .restart local v4       #numPodStates:I
    :cond_3
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    .line 82
    new-array v5, v4, [J

    iput-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateIDs:[J

    .line 83
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v4, :cond_1

    .line 84
    iget-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 85
    iget-object v5, v2, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateIDs:[J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    aput-wide v6, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 89
    .end local v1           #i:I
    .end local v2           #newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    .end local v3           #numAssumptions:I
    .end local v4           #numPodStates:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 90
    .local v0, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 8
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v6, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 99
    iget-object v1, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 100
    .local v0, a:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v0           #a:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    array-length v5, v6

    .line 102
    .local v5, numPodStates:I
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 103
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 104
    iget-object v6, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateInputs:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lcom/wolfram/android/alpha/FavoritesRecord;->podStateIDs:[J

    aget-wide v6, v6, v2

    invoke-virtual {p1, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_1
    return-void
.end method
