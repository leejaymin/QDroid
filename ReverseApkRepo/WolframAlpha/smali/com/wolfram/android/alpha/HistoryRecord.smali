.class public Lcom/wolfram/android/alpha/HistoryRecord;
.super Ljava/lang/Object;
.source "HistoryRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/HistoryRecord$HistoryRecordComparator;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0xb8b6cfd90be28c1L


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

.field public dateInSeconds:I

.field public input:Ljava/lang/String;

.field public query:Lcom/wolfram/alpha/WAQuery;

.field public queryResult:Lcom/wolfram/alpha/WAQueryResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/wolfram/android/alpha/HistoryRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wolfram/alpha/WAQuery;Ljava/util/Date;)V
    .locals 4
    .parameter "query"
    .parameter "d"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQuery;->getAssumptions()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/wolfram/alpha/WAQueryResult;Lcom/wolfram/alpha/WAQuery;)V
    .locals 4
    .parameter "queryResult"
    .parameter "query"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-interface {p2}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    .line 37
    invoke-interface {p2}, Lcom/wolfram/alpha/WAQuery;->getAssumptions()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->assumptions_text:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions_labels:Ljava/util/List;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    .line 40
    iput-object p1, p0, Lcom/wolfram/android/alpha/HistoryRecord;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 41
    iput-object p2, p0, Lcom/wolfram/android/alpha/HistoryRecord;->query:Lcom/wolfram/alpha/WAQuery;

    .line 42
    return-void
.end method

.method public static createFromStream(Ljava/io/DataInputStream;)Lcom/wolfram/android/alpha/HistoryRecord;
    .locals 6
    .parameter "inputStream"

    .prologue
    .line 70
    :try_start_0
    new-instance v2, Lcom/wolfram/android/alpha/HistoryRecord;

    invoke-direct {v2}, Lcom/wolfram/android/alpha/HistoryRecord;-><init>()V

    .line 71
    .local v2, newRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 73
    .local v3, numAssumptions:I
    if-nez v3, :cond_1

    .line 74
    sget-object v4, Lcom/wolfram/android/alpha/HistoryRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, v2, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v2, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    move-object v4, v2

    .line 83
    .end local v2           #newRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v3           #numAssumptions:I
    :goto_0
    return-object v4

    .line 76
    .restart local v2       #newRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    .restart local v3       #numAssumptions:I
    :cond_1
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v2, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 78
    iget-object v4, v2, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    .end local v1           #i:I
    .end local v2           #newRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v3           #numAssumptions:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    iget-object v5, p0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    array-length v5, v5

    if-nez v5, :cond_0

    .line 57
    iget-object v5, p0, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    .line 62
    :goto_0
    return-object v5

    .line 59
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, key:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 61
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    .end local v0           #a:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v4, p0, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 91
    iget-object v4, p0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 92
    iget-object v1, p0, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 93
    .local v0, a:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0           #a:Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    return-void
.end method
