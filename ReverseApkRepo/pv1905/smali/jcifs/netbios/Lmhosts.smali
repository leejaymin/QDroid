.class public Ljcifs/netbios/Lmhosts;
.super Ljava/lang/Object;
.source "Lmhosts.java"


# static fields
.field private static final FILENAME:Ljava/lang/String;

.field private static final TAB:Ljava/util/Hashtable;

.field private static alt:I

.field private static lastModified:J

.field private static log:Ljcifs/util/LogStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "jcifs.netbios.lmhosts"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    .line 38
    const-wide/16 v0, 0x1

    sput-wide v0, Ljcifs/netbios/Lmhosts;->lastModified:J

    .line 40
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;
    .locals 4
    .parameter "host"

    .prologue
    .line 50
    const-class v1, Ljcifs/netbios/Lmhosts;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljcifs/netbios/Name;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;
    .locals 11
    .parameter "name"

    .prologue
    .line 54
    const-class v8, Ljcifs/netbios/Lmhosts;

    monitor-enter v8

    const/4 v6, 0x0

    .line 57
    .local v6, result:Ljcifs/netbios/NbtAddress;
    :try_start_0
    sget-object v7, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 58
    new-instance v1, Ljava/io/File;

    sget-object v7, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .local v4, lm:J
    sget-wide v9, Ljcifs/netbios/Lmhosts;->lastModified:J

    cmp-long v7, v4, v9

    if-lez v7, :cond_0

    .line 62
    sput-wide v4, Ljcifs/netbios/Lmhosts;->lastModified:J

    .line 63
    sget-object v7, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->clear()V

    .line 64
    const/4 v7, 0x0

    sput v7, Ljcifs/netbios/Lmhosts;->alt:I

    .line 65
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V

    .line 67
    :cond_0
    sget-object v7, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    invoke-virtual {v7, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljcifs/netbios/NbtAddress;

    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .end local v1           #f:Ljava/io/File;
    .end local v4           #lm:J
    :cond_1
    :goto_0
    monitor-exit v8

    return-object v6

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, fnfe:Ljava/io/FileNotFoundException;
    :try_start_1
    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x1

    if-le v7, v9, :cond_1

    .line 71
    sget-object v7, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "lmhosts file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljcifs/netbios/Lmhosts;->FILENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 72
    sget-object v7, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v7}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v2           #fnfe:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 74
    :catch_1
    move-exception v3

    .line 75
    .local v3, ioe:Ljava/io/IOException;
    :try_start_2
    sget v7, Ljcifs/util/LogStream;->level:I

    if-lez v7, :cond_1

    .line 76
    sget-object v7, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static populate(Ljava/io/Reader;)V
    .locals 22
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v14, Ljava/io/BufferedReader;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .local v14, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, line:Ljava/lang/String;
    if-nez v20, :cond_1

    .line 155
    return-void

    .line 86
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 87
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_6

    .line 90
    const-string v6, "#INCLUDE "

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    const/16 v6, 0x5c

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "smb:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x5c

    const/16 v8, 0x2f

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 94
    .local v21, url:Ljava/lang/String;
    sget v6, Ljcifs/netbios/Lmhosts;->alt:I

    if-lez v6, :cond_3

    .line 96
    :try_start_0
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljcifs/smb/SmbFileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v6}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    sget v6, Ljcifs/netbios/Lmhosts;->alt:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Ljcifs/netbios/Lmhosts;->alt:I

    .line 108
    :cond_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 109
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 110
    const-string v6, "#END_ALTERNATE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v18

    .line 98
    .local v18, ioe:Ljava/io/IOException;
    sget-object v6, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lmhosts URL: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v6, Ljcifs/netbios/Lmhosts;->log:Ljcifs/util/LogStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_0

    .line 115
    .end local v18           #ioe:Ljava/io/IOException;
    :cond_3
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljcifs/smb/SmbFileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v6}, Ljcifs/netbios/Lmhosts;->populate(Ljava/io/Reader;)V

    goto/16 :goto_0

    .line 117
    .end local v21           #url:Ljava/lang/String;
    :cond_4
    const-string v6, "#BEGIN_ALTERNATE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    sget v6, Ljcifs/netbios/Lmhosts;->alt:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Ljcifs/netbios/Lmhosts;->alt:I

    goto/16 :goto_0

    .line 119
    :cond_5
    const-string v6, "#END_ALTERNATE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Ljcifs/netbios/Lmhosts;->alt:I

    if-lez v6, :cond_0

    .line 120
    sget v6, Ljcifs/netbios/Lmhosts;->alt:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Ljcifs/netbios/Lmhosts;->alt:I

    .line 121
    new-instance v6, Ljava/io/IOException;

    const-string v7, "no lmhosts alternate includes loaded"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 123
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    .line 130
    .local v16, data:[C
    const/16 v15, 0x2e

    .line 131
    .local v15, c:C
    const/16 v17, 0x0

    .local v17, i:I
    move/from16 v5, v17

    .line 132
    .local v5, ip:I
    :goto_1
    move-object/from16 v0, v16

    array-length v6, v0

    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    const/16 v6, 0x2e

    if-eq v15, v6, :cond_a

    .line 140
    :cond_7
    :goto_2
    move-object/from16 v0, v16

    array-length v6, v0

    move/from16 v0, v17

    if-ge v0, v6, :cond_8

    aget-char v6, v16, v17

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_d

    .line 143
    :cond_8
    move/from16 v19, v17

    .line 144
    .local v19, j:I
    :goto_3
    move-object/from16 v0, v16

    array-length v6, v0

    move/from16 v0, v19

    if-ge v0, v6, :cond_9

    aget-char v6, v16, v19

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 148
    :cond_9
    new-instance v4, Ljcifs/netbios/Name;

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    .local v4, name:Ljcifs/netbios/Name;
    new-instance v3, Ljcifs/netbios/NbtAddress;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 150
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 151
    sget-object v12, Ljcifs/netbios/NbtAddress;->UNKNOWN_MAC_ADDRESS:[B

    .line 149
    invoke-direct/range {v3 .. v12}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZIZZZZ[B)V

    .line 152
    .local v3, addr:Ljcifs/netbios/NbtAddress;
    sget-object v6, Ljcifs/netbios/Lmhosts;->TAB:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 133
    .end local v3           #addr:Ljcifs/netbios/NbtAddress;
    .end local v4           #name:Ljcifs/netbios/Name;
    .end local v19           #j:I
    :cond_a
    const/4 v13, 0x0

    .line 135
    .local v13, b:I
    :goto_4
    move-object/from16 v0, v16

    array-length v6, v0

    move/from16 v0, v17

    if-ge v0, v6, :cond_b

    aget-char v15, v16, v17

    const/16 v6, 0x30

    if-lt v15, v6, :cond_b

    const/16 v6, 0x39

    if-le v15, v6, :cond_c

    .line 138
    :cond_b
    shl-int/lit8 v6, v5, 0x8

    add-int v5, v6, v13

    .line 132
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 136
    :cond_c
    mul-int/lit8 v6, v13, 0xa

    add-int/2addr v6, v15

    add-int/lit8 v13, v6, -0x30

    .line 135
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 141
    .end local v13           #b:I
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 145
    .restart local v19       #j:I
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_3
.end method
