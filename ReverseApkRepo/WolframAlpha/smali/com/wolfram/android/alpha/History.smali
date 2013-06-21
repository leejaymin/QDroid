.class public Lcom/wolfram/android/alpha/History;
.super Ljava/lang/Object;
.source "History.java"


# static fields
.field private static final EMPTY_ARRAY:[Lcom/wolfram/android/alpha/HistoryRecord; = null

.field private static final HISTORY_FILE:Ljava/lang/String; = "history"

.field public static HistoryRecordList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIALIZATION_CODE:I = 0x1

.field private static final TODAYS_HISTORY_FILE:Ljava/lang/String; = "history_today"

.field private static historyTestData:[[Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field private dayOfTodaysHistory:I

.field private todaysHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private yearOfTodaysHistory:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    new-array v0, v4, [Lcom/wolfram/android/alpha/HistoryRecord;

    sput-object v0, Lcom/wolfram/android/alpha/History;->EMPTY_ARRAY:[Lcom/wolfram/android/alpha/HistoryRecord;

    .line 285
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "January 10, 2009"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, "1:45 AM January 10, 2009"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "January 10, 2009"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, "2:00 PM January 10, 2009"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "January 10, 2009"

    aput-object v2, v1, v4

    const-string v2, "a"

    aput-object v2, v1, v5

    const-string v2, "2:00 PM January 10, 2009"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "January 15, 2009"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, "6:00 PM January 15, 2009"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "February 10, 2009"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "7:00 PM February 10, 2009"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "February 10, 2009"

    aput-object v3, v2, v4

    const-string v3, "aa"

    aput-object v3, v2, v5

    const-string v3, "7:00 PM February 10, 2009"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "March 20, 2009"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "8:00 PM March 20, 2009"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "April 1, 2009"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "7:00 PM April 1, 2009"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "July, 2009"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "11:30 AM July 22, 2009"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "December 31, 2009"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "11:59 PM December 31, 2009"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "January 1, 2010"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "12:00 AM January 1, 2010"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/wolfram/android/alpha/History;->historyTestData:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/History;->context:Landroid/content/Context;

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 62
    .local v11, rightNow:Ljava/util/Calendar;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/History;->yearOfTodaysHistory:I

    .line 63
    const/4 v14, 0x6

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/History;->dayOfTodaysHistory:I

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/History;->readTodaysHistory()[Lcom/wolfram/android/alpha/HistoryRecord;

    move-result-object v13

    .line 68
    .local v13, todaysHistoryArray:[Lcom/wolfram/android/alpha/HistoryRecord;
    array-length v14, v13

    if-lez v14, :cond_1

    .line 69
    const/4 v14, 0x0

    aget-object v5, v13, v14

    .line 70
    .local v5, h:Lcom/wolfram/android/alpha/HistoryRecord;
    if-eqz v5, :cond_1

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 72
    .local v12, storedDate:Ljava/util/Calendar;
    iget v14, v5, Lcom/wolfram/android/alpha/HistoryRecord;->dateInSeconds:I

    int-to-long v14, v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/History;->yearOfTodaysHistory:I

    move v14, v0

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/History;->dayOfTodaysHistory:I

    move v14, v0

    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-eq v14, v15, :cond_1

    .line 74
    :cond_0
    sget-object v13, Lcom/wolfram/android/alpha/History;->EMPTY_ARRAY:[Lcom/wolfram/android/alpha/HistoryRecord;

    .line 78
    .end local v5           #h:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v12           #storedDate:Ljava/util/Calendar;
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    const/16 v15, 0x1e

    invoke-direct {v14, v15}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    .line 79
    move-object v3, v13

    .local v3, arr$:[Lcom/wolfram/android/alpha/HistoryRecord;
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v3           #arr$:[Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_4

    aget-object v5, v3, v7

    .line 80
    .restart local v5       #h:Lcom/wolfram/android/alpha/HistoryRecord;
    if-eqz v5, :cond_3

    .line 81
    iget-object v8, v5, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    .line 82
    .local v8, key:Ljava/lang/String;
    iget-object v4, v5, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_1
    if-ge v6, v10, :cond_2

    aget-object v2, v4, v6

    .line 83
    .local v2, a:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 84
    .end local v2           #a:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #len$:I
    :cond_3
    add-int/lit8 v6, v7, 0x1

    .restart local v6       #i$:I
    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_0

    .line 87
    .end local v5           #h:Lcom/wolfram/android/alpha/HistoryRecord;
    :cond_4
    return-void
.end method

.method private declared-synchronized appendTodaysHistoryToFull()V
    .locals 5

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v2, p0, Lcom/wolfram/android/alpha/History;->context:Landroid/content/Context;

    const-string v3, "history"

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wolfram/android/alpha/History;->write(Ljava/io/FileOutputStream;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 227
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v2, "Wolfram|Alpha"

    const-string v3, "appendTodaysHistoryToFull"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static createFromStream(Ljava/io/FileInputStream;)V
    .locals 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0           #in:Ljava/io/ObjectInputStream;
    .local v1, in:Ljava/io/ObjectInputStream;
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    sput-object p0, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    move-object v0, v1

    .line 269
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v0       #in:Ljava/io/ObjectInputStream;
    :cond_1
    :goto_0
    return-void

    .line 264
    .restart local p0
    :catch_0
    move-exception v2

    .line 267
    .end local p0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    .restart local p0
    :catchall_0
    move-exception v2

    .end local p0
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v2

    .end local v0           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v0       #in:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 264
    .end local v0           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v0       #in:Ljava/io/ObjectInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :cond_3
    move-object v0, v1

    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v0       #in:Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method private declared-synchronized readTodaysHistory()[Lcom/wolfram/android/alpha/HistoryRecord;
    .locals 10

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/wolfram/android/alpha/History;->EMPTY_ARRAY:[Lcom/wolfram/android/alpha/HistoryRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    .local v4, historyArray:[Lcom/wolfram/android/alpha/HistoryRecord;
    const/4 v0, 0x0

    .line 188
    .local v0, dataIn:Ljava/io/DataInputStream;
    :try_start_1
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isFirstTime()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 189
    iget-object v8, p0, Lcom/wolfram/android/alpha/History;->context:Landroid/content/Context;

    const-string v9, "history_today"

    invoke-virtual {v8, v9}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 190
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setFirstTime(Z)V

    .line 192
    :cond_0
    iget-object v8, p0, Lcom/wolfram/android/alpha/History;->context:Landroid/content/Context;

    const-string v9, "history_today"

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 193
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 194
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .local v1, dataIn:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 195
    .local v7, serCode:I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 196
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 197
    .local v6, numRecs:I
    new-array v4, v6, [Lcom/wolfram/android/alpha/HistoryRecord;

    .line 198
    invoke-static {v3}, Lcom/wolfram/android/alpha/History;->createFromStream(Ljava/io/FileInputStream;)V

    .line 199
    sget-object v8, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    if-nez v8, :cond_2

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Could not read history record"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 202
    .end local v6           #numRecs:I
    .end local v7           #serCode:I
    :catch_0
    move-exception v8

    move-object v0, v1

    .line 208
    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    :goto_0
    if-eqz v0, :cond_1

    .line 210
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 214
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v4

    .line 200
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v6       #numRecs:I
    .restart local v7       #serCode:I
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    :try_start_4
    sget-object v8, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    sget-object v8, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wolfram/android/alpha/HistoryRecord;

    aput-object v8, v4, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 208
    .end local v5           #i:I
    .end local v6           #numRecs:I
    :cond_3
    if-eqz v1, :cond_5

    .line 210
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    .line 211
    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_1

    .line 204
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #serCode:I
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 206
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v8, "Wolfram|Alpha"

    const-string v9, "readTodaysHistory"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 208
    if-eqz v0, :cond_1

    .line 210
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 211
    :catch_3
    move-exception v8

    goto :goto_1

    .line 208
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_4

    .line 210
    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 211
    :cond_4
    :goto_5
    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 184
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .end local v4           #historyArray:[Lcom/wolfram/android/alpha/HistoryRecord;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 211
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    .restart local v4       #historyArray:[Lcom/wolfram/android/alpha/HistoryRecord;
    :catch_4
    move-exception v8

    goto :goto_1

    :catch_5
    move-exception v9

    goto :goto_5

    .line 208
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_4

    .line 204
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    :catch_6
    move-exception v8

    move-object v2, v8

    move-object v0, v1

    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_3

    .line 202
    .end local v3           #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    goto :goto_0

    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v7       #serCode:I
    :cond_5
    move-object v0, v1

    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public static testHistory()V
    .locals 11

    .prologue
    .line 301
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "h:mm aa MMMM d, yyyy"

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 302
    .local v4, dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getHistory()Lcom/wolfram/android/alpha/History;

    move-result-object v5

    .line 303
    .local v5, history:Lcom/wolfram/android/alpha/History;
    invoke-virtual {v5}, Lcom/wolfram/android/alpha/History;->clear()V

    .line 305
    sget-object v1, Lcom/wolfram/android/alpha/History;->historyTestData:[[Ljava/lang/String;

    .local v1, arr$:[[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v7, v0

    .end local v0           #i$:I
    .end local v1           #arr$:[[Ljava/lang/String;
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v9, v1, v7

    .line 306
    .local v9, rec:[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v6, v9, v0

    .line 307
    .local v6, input:Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 308
    .local v3, numAssumptions:I
    new-array v0, v3, [Ljava/lang/String;

    .line 309
    .local v0, assumptions:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 310
    const-string v10, "*C.pi-_*Movie-"

    aput-object v10, v0, v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    aget-object v2, v9, v2

    .end local v2           #i:I
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, d:Ljava/util/Date;
    move-object v3, v2

    .line 318
    .end local v2           #d:Ljava/util/Date;
    .local v3, d:Ljava/util/Date;
    :goto_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v10

    .line 319
    .local v10, query:Lcom/wolfram/alpha/WAQuery;
    move-object v2, v0

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v0, 0x0

    .end local v7           #i$:I
    .local v0, i$:I
    move v6, v0

    .end local v0           #i$:I
    .local v6, i$:I
    :goto_3
    if-ge v6, v9, :cond_1

    aget-object v0, v2, v6

    .line 320
    .local v0, a:Ljava/lang/String;
    invoke-interface {v10, v0}, Lcom/wolfram/alpha/WAQuery;->addAssumption(Ljava/lang/String;)V

    .line 319
    add-int/lit8 v0, v6, 0x1

    .end local v6           #i$:I
    .local v0, i$:I
    move v6, v0

    .end local v0           #i$:I
    .restart local v6       #i$:I
    goto :goto_3

    .line 314
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v10           #query:Lcom/wolfram/alpha/WAQuery;
    .local v0, assumptions:[Ljava/lang/String;
    .local v3, numAssumptions:I
    .local v6, input:Ljava/lang/String;
    .restart local v7       #i$:I
    .local v9, rec:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 316
    .local v2, e:Ljava/lang/Exception;
    new-instance v2, Ljava/util/Date;

    .end local v2           #e:Ljava/lang/Exception;
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .local v2, d:Ljava/util/Date;
    move-object v3, v2

    .end local v2           #d:Ljava/util/Date;
    .local v3, d:Ljava/util/Date;
    goto :goto_2

    .line 321
    .end local v0           #assumptions:[Ljava/lang/String;
    .end local v7           #i$:I
    .local v2, arr$:[Ljava/lang/String;
    .local v6, i$:I
    .local v9, len$:I
    .restart local v10       #query:Lcom/wolfram/alpha/WAQuery;
    :cond_1
    invoke-virtual {v5, v10, v3}, Lcom/wolfram/android/alpha/History;->add(Lcom/wolfram/alpha/WAQuery;Ljava/util/Date;)V

    .line 305
    add-int/lit8 v0, v7, 0x1

    .end local v6           #i$:I
    .local v0, i$:I
    move v7, v0

    .end local v0           #i$:I
    .restart local v7       #i$:I
    goto :goto_0

    .line 323
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #d:Ljava/util/Date;
    .end local v9           #len$:I
    .end local v10           #query:Lcom/wolfram/alpha/WAQuery;
    :cond_2
    return-void
.end method

.method private declared-synchronized write(Ljava/io/FileOutputStream;Ljava/util/Collection;)V
    .locals 7
    .parameter "fos"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileOutputStream;",
            "Ljava/util/Collection",
            "<",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, history:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 237
    .local v0, dataOut:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 238
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .local v1, dataOut:Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 239
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 240
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    .line 241
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wolfram/android/alpha/HistoryRecord;

    .local v3, h:Lcom/wolfram/android/alpha/HistoryRecord;
    sget-object v5, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 243
    .end local v3           #h:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v2, v5

    move-object v0, v1

    .line 244
    .end local v1           #dataOut:Ljava/io/DataOutputStream;
    .restart local v0       #dataOut:Ljava/io/DataOutputStream;
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v5, "Wolfram|Alpha"

    const-string v6, "write"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    if-eqz v0, :cond_0

    .line 248
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 249
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 253
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 242
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .restart local v1       #dataOut:Ljava/io/DataOutputStream;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/History;->writeToStream(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 246
    if-eqz v1, :cond_3

    .line 248
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 249
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    .line 250
    .end local v1           #dataOut:Ljava/io/DataOutputStream;
    .restart local v0       #dataOut:Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .restart local v1       #dataOut:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1           #dataOut:Ljava/io/DataOutputStream;
    .restart local v0       #dataOut:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 246
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_2

    .line 248
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 249
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 250
    :cond_2
    :goto_4
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 235
    :catchall_1
    move-exception v5

    :goto_5
    monitor-exit p0

    throw v5

    .line 250
    :catch_2
    move-exception v6

    goto :goto_4

    .line 246
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .restart local v1       #dataOut:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1           #dataOut:Ljava/io/DataOutputStream;
    .restart local v0       #dataOut:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 250
    .restart local v2       #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_2

    .line 243
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    move-object v2, v5

    goto :goto_1

    .line 235
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .restart local v1       #dataOut:Ljava/io/DataOutputStream;
    .restart local v4       #i$:Ljava/util/Iterator;
    :catchall_3
    move-exception v5

    move-object v0, v1

    .end local v1           #dataOut:Ljava/io/DataOutputStream;
    .restart local v0       #dataOut:Ljava/io/DataOutputStream;
    goto :goto_5

    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .restart local v1       #dataOut:Ljava/io/DataOutputStream;
    :cond_3
    move-object v0, v1

    .end local v1           #dataOut:Ljava/io/DataOutputStream;
    .restart local v0       #dataOut:Ljava/io/DataOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized add(Lcom/wolfram/alpha/WAQuery;Ljava/util/Date;)V
    .locals 6
    .parameter "query"
    .parameter "pretendItsThisDay"

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 329
    .local v3, rightNow:Ljava/util/Calendar;
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 332
    iget v4, p0, Lcom/wolfram/android/alpha/History;->dayOfTodaysHistory:I

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/wolfram/android/alpha/History;->yearOfTodaysHistory:I

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/wolfram/android/alpha/History;->appendTodaysHistoryToFull()V

    .line 334
    iget-object v4, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 335
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/wolfram/android/alpha/History;->dayOfTodaysHistory:I

    .line 336
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/wolfram/android/alpha/History;->yearOfTodaysHistory:I

    .line 338
    :cond_1
    new-instance v1, Lcom/wolfram/android/alpha/HistoryRecord;

    invoke-direct {v1, p1, p2}, Lcom/wolfram/android/alpha/HistoryRecord;-><init>(Lcom/wolfram/alpha/WAQuery;Ljava/util/Date;)V

    .line 339
    .local v1, hr:Lcom/wolfram/android/alpha/HistoryRecord;
    invoke-virtual {v1}, Lcom/wolfram/android/alpha/HistoryRecord;->createKey()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/HistoryRecord;

    .line 344
    .local v0, existingRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    if-eqz v0, :cond_2

    .line 345
    iget-object v4, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_2
    iget-object v4, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 328
    .end local v0           #existingRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v1           #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #rightNow:Ljava/util/Calendar;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized add(Lcom/wolfram/alpha/WAQueryResult;Lcom/wolfram/alpha/WAQuery;)V
    .locals 6
    .parameter "queryResult"
    .parameter "query"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 95
    .local v3, rightNow:Ljava/util/Calendar;
    iget v4, p0, Lcom/wolfram/android/alpha/History;->dayOfTodaysHistory:I

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/wolfram/android/alpha/History;->yearOfTodaysHistory:I

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/wolfram/android/alpha/History;->appendTodaysHistoryToFull()V

    .line 97
    iget-object v4, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 98
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/wolfram/android/alpha/History;->dayOfTodaysHistory:I

    .line 99
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/wolfram/android/alpha/History;->yearOfTodaysHistory:I

    .line 101
    :cond_1
    new-instance v1, Lcom/wolfram/android/alpha/HistoryRecord;

    invoke-direct {v1, p1, p2}, Lcom/wolfram/android/alpha/HistoryRecord;-><init>(Lcom/wolfram/alpha/WAQueryResult;Lcom/wolfram/alpha/WAQuery;)V

    .line 102
    .local v1, hr:Lcom/wolfram/android/alpha/HistoryRecord;
    invoke-virtual {v1}, Lcom/wolfram/android/alpha/HistoryRecord;->createKey()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/HistoryRecord;

    .line 107
    .local v0, existingRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    if-eqz v0, :cond_2

    .line 108
    iget-object v4, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_2
    iget-object v4, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 93
    .end local v0           #existingRecord:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v1           #hr:Lcom/wolfram/android/alpha/HistoryRecord;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #rightNow:Ljava/util/Calendar;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    iget-object v2, p0, Lcom/wolfram/android/alpha/History;->context:Landroid/content/Context;

    const-string v3, "history"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 172
    .local v1, fos:Ljava/io/FileOutputStream;
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "Wolfram|Alpha"

    const-string v3, "clear"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFullHistory()[Lcom/wolfram/android/alpha/HistoryRecord;
    .locals 8

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    .local v4, historyRecs:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    const/4 v0, 0x0

    .line 133
    .local v0, dataIn:Ljava/io/DataInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/wolfram/android/alpha/History;->context:Landroid/content/Context;

    const-string v7, "history"

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 134
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 135
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .local v1, dataIn:Ljava/io/DataInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-lez v6, :cond_1

    .line 136
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 137
    .local v5, serCode:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 138
    invoke-static {v3}, Lcom/wolfram/android/alpha/History;->createFromStream(Ljava/io/FileInputStream;)V

    .line 140
    sget-object v6, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 147
    .end local v5           #serCode:I
    :catch_0
    move-exception v6

    move-object v0, v1

    .line 153
    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    :goto_1
    if-eqz v0, :cond_0

    .line 155
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 160
    :cond_0
    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    new-instance v6, Lcom/wolfram/android/alpha/HistoryRecord$HistoryRecordComparator;

    invoke-direct {v6}, Lcom/wolfram/android/alpha/HistoryRecord$HistoryRecordComparator;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/wolfram/android/alpha/HistoryRecord;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/wolfram/android/alpha/HistoryRecord;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v6

    .line 153
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_1
    if-eqz v1, :cond_3

    .line 155
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    .line 156
    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_2

    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    :catch_1
    move-exception v6

    move-object v0, v1

    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_2

    .line 149
    .end local v3           #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 151
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v6, "Wolfram|Alpha"

    const-string v7, "getFullHistory"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    if-eqz v0, :cond_0

    .line 155
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 156
    :catch_3
    move-exception v6

    goto :goto_2

    .line 153
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_2

    .line 155
    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 156
    :cond_2
    :goto_5
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 129
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .end local v4           #historyRecs:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 156
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    .restart local v4       #historyRecs:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    :catch_4
    move-exception v6

    goto :goto_2

    :catch_5
    move-exception v7

    goto :goto_5

    .line 153
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_4

    .line 149
    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    :catch_6
    move-exception v6

    move-object v2, v6

    move-object v0, v1

    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_3

    .line 147
    .end local v3           #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    goto :goto_1

    .end local v0           #dataIn:Ljava/io/DataInputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_3
    move-object v0, v1

    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .restart local v0       #dataIn:Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public writeToStream(Ljava/io/FileOutputStream;)V
    .locals 3
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, out:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v0           #out:Ljava/io/ObjectOutputStream;
    .local v1, out:Ljava/io/ObjectOutputStream;
    :try_start_1
    sget-object v2, Lcom/wolfram/android/alpha/History;->HistoryRecordList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    move-object v0, v1

    .line 281
    .end local v1           #out:Ljava/io/ObjectOutputStream;
    .restart local v0       #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v2

    .line 279
    :goto_1
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    throw v2

    .end local v0           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #out:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #out:Ljava/io/ObjectOutputStream;
    .restart local v0       #out:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 277
    .end local v0           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #out:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #out:Ljava/io/ObjectOutputStream;
    .restart local v0       #out:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public declared-synchronized writeTodaysHistory()V
    .locals 5

    .prologue
    .line 115
    monitor-enter p0

    const/4 v1, 0x0

    .line 117
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/History;->context:Landroid/content/Context;

    const-string v3, "history_today"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/wolfram/android/alpha/History;->todaysHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/wolfram/android/alpha/History;->write(Ljava/io/FileOutputStream;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 120
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v2, "Wolfram|Alpha"

    const-string v3, "writeTodaysHistory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
