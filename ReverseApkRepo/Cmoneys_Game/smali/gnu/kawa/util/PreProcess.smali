.class public Lgnu/kawa/util/PreProcess;
.super Ljava/lang/Object;
.source "PreProcess.java"


# static fields
.field static final JAVA4_FEATURES:Ljava/lang/String; = "+JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio"

.field static final JAVA5_FEATURES:Ljava/lang/String; = "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName"

.field static final NO_JAVA4_FEATURES:Ljava/lang/String; = "-use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android"

.field static version_features:[Ljava/lang/String;


# instance fields
.field filename:Ljava/lang/String;

.field keywords:Ljava/util/Hashtable;

.field lineno:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "java1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-JAVA2 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "java2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "+JAVA2 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "java4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAXP-QName -JAVA6 -use:java.text.Normalize -Android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "java4x"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 +use:javax.xml.transform -JAXP-QName -JAVA6 -use:java.text.Normalizer -Android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "java5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6 -use:java.text.Normalizer -Android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "java6"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 +use:java.text.Normalizer -Android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 -JAXP-QName -use:javax.xml.transform -JAVA6 -use:java.text.Normalizer +Android"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 330
    new-instance v0, Lgnu/kawa/util/PreProcess;

    invoke-direct {v0}, Lgnu/kawa/util/PreProcess;-><init>()V

    .line 332
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string v2, "true"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string v2, "false"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 336
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/kawa/util/PreProcess;->lineno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 39
    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 28
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    .line 44
    const/4 v5, 0x0

    .line 45
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    const/16 v7, 0x7d0

    new-array v7, v7, [B

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, -0x1

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 55
    const/4 v12, -0x1

    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v14, 0x0

    .line 60
    const/4 v15, 0x0

    .line 61
    const/16 v16, 0x0

    .line 62
    const/16 v17, 0x0

    move/from16 v22, v17

    move/from16 v17, v5

    move/from16 v5, v22

    move/from16 v23, v15

    move v15, v8

    move/from16 v8, v23

    move/from16 v24, v13

    move v13, v10

    move/from16 v10, v24

    move/from16 v25, v11

    move v11, v12

    move/from16 v12, v25

    move/from16 v26, v9

    move v9, v14

    move/from16 v14, v26

    move-object/from16 v27, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v27

    .line 65
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v18

    .line 66
    if-gez v18, :cond_2

    move v5, v15

    move-object/from16 v6, v16

    move/from16 v8, v17

    .line 253
    :goto_1
    if-eqz v9, :cond_0

    .line 255
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 256
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unterminated "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 258
    :cond_0
    if-eqz v8, :cond_1

    .line 260
    new-instance v7, Ljava/io/FileOutputStream;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 261
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 262
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 263
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pre-processed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    :cond_1
    return-void

    .line 68
    :cond_2
    add-int/lit8 v19, v15, 0xa

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 70
    mul-int/lit8 v19, v15, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 71
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v16, v19

    .line 74
    :cond_3
    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    if-lez v15, :cond_4

    const/16 v19, 0x1

    sub-int v19, v15, v19

    aget-byte v19, v16, v19

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 76
    add-int/lit8 v19, v15, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v15

    move/from16 v15, v19

    .line 77
    goto/16 :goto_0

    .line 79
    :cond_4
    if-ltz v11, :cond_6

    if-gez v13, :cond_6

    if-gtz v5, :cond_6

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    if-eq v11, v10, :cond_5

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 85
    :cond_5
    const/16 v19, 0x2f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 92
    const/16 v19, 0x64

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 93
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v19

    .line 94
    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 95
    const/16 v19, 0x0

    .line 103
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->reset()V

    .line 107
    :goto_3
    if-eqz v19, :cond_6

    .line 109
    add-int/lit8 v5, v15, 0x1

    const/16 v17, 0x2f

    aput-byte v17, v16, v15

    .line 110
    add-int/lit8 v15, v5, 0x1

    const/16 v17, 0x2f

    aput-byte v17, v16, v5

    .line 111
    add-int/lit8 v5, v15, 0x1

    const/16 v17, 0x20

    aput-byte v17, v16, v15

    .line 112
    const/4 v15, 0x1

    .line 113
    const/16 v17, 0x1

    move/from16 v22, v15

    move v15, v5

    move/from16 v5, v22

    .line 116
    :cond_6
    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_29

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_29

    if-gez v13, :cond_29

    .line 120
    if-lez v9, :cond_28

    if-eq v11, v10, :cond_28

    const/16 v13, 0x2f

    move/from16 v0, v18

    move v1, v13

    if-ne v0, v1, :cond_28

    .line 122
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v13

    .line 123
    if-gez v13, :cond_c

    move v5, v15

    move-object/from16 v6, v16

    move/from16 v8, v17

    .line 124
    goto/16 :goto_1

    .line 96
    :cond_7
    const/16 v20, 0x2a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 98
    :cond_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 99
    const/16 v20, 0x23

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v19, 0x1

    goto :goto_2

    :cond_9
    const/16 v19, 0x0

    goto :goto_2

    .line 102
    :cond_a
    const/16 v19, 0x1

    goto :goto_2

    .line 106
    :cond_b
    const/16 v19, 0x1

    goto :goto_3

    .line 125
    :cond_c
    const/16 v18, 0x2f

    move v0, v13

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 126
    add-int/lit8 v18, v15, 0x1

    const/16 v19, 0x2f

    aput-byte v19, v16, v15

    move/from16 v22, v13

    move v13, v5

    move/from16 v5, v22

    move/from16 v23, v18

    move/from16 v18, v17

    move/from16 v17, v23

    .line 143
    :goto_4
    move v0, v5

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v16, v17

    .line 144
    add-int/lit8 v17, v17, 0x1

    .line 145
    const/16 v19, 0xd

    move v0, v5

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    const/16 v19, 0xa

    move v0, v5

    move/from16 v1, v19

    if-ne v0, v1, :cond_22

    .line 147
    :cond_d
    const/4 v5, -0x1

    .line 148
    const/4 v13, 0x0

    move/from16 v22, v14

    move v14, v5

    move/from16 v5, v22

    .line 149
    :goto_5
    const/4 v15, 0x1

    sub-int v15, v17, v15

    if-ge v5, v15, :cond_12

    .line 151
    aget-byte v15, v16, v5

    const/16 v19, 0x20

    move v0, v15

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    aget-byte v15, v16, v5

    const/16 v19, 0x9

    move v0, v15

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 154
    if-gez v14, :cond_26

    move v13, v5

    move v14, v5

    .line 149
    :cond_e
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 129
    :cond_f
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .line 130
    if-gez v5, :cond_10

    move v5, v15

    move-object/from16 v6, v16

    move/from16 v8, v17

    .line 131
    goto/16 :goto_1

    .line 132
    :cond_10
    const/4 v13, -0x1

    .line 133
    const/16 v17, 0x1

    .line 134
    const/16 v18, 0x20

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_27

    .line 136
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .line 137
    const/16 v18, 0x20

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    const/16 v18, 0x9

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_27

    .line 138
    :cond_11
    const/16 v18, -0x1

    move/from16 v22, v18

    move/from16 v18, v17

    move/from16 v17, v15

    move/from16 v15, v22

    goto :goto_4

    .line 158
    :cond_12
    sub-int v5, v13, v14

    const/4 v15, 0x4

    if-lt v5, v15, :cond_25

    aget-byte v5, v16, v14

    const/16 v15, 0x2f

    if-ne v5, v15, :cond_25

    add-int/lit8 v5, v14, 0x1

    aget-byte v5, v16, v5

    const/16 v15, 0x2a

    if-ne v5, v15, :cond_25

    const/4 v5, 0x1

    sub-int v5, v13, v5

    aget-byte v5, v16, v5

    const/16 v15, 0x2a

    if-ne v5, v15, :cond_25

    aget-byte v5, v16, v13

    const/16 v15, 0x2f

    if-ne v5, v15, :cond_25

    .line 164
    add-int/lit8 v5, v14, 0x2

    .line 166
    :goto_7
    if-ge v5, v13, :cond_13

    aget-byte v14, v16, v5

    const/16 v15, 0x20

    if-ne v14, v15, :cond_13

    .line 167
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 168
    :cond_13
    add-int/lit8 v13, v13, -0x2

    .line 170
    :goto_8
    if-le v13, v5, :cond_14

    aget-byte v14, v16, v13

    const/16 v15, 0x20

    if-ne v14, v15, :cond_14

    .line 171
    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    .line 172
    :cond_14
    aget-byte v14, v16, v5

    const/16 v15, 0x23

    if-ne v14, v15, :cond_25

    .line 174
    new-instance v7, Ljava/lang/String;

    sub-int v12, v13, v5

    add-int/lit8 v12, v12, 0x1

    const-string v13, "ISO-8859-1"

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v5

    move v3, v12

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 177
    const/16 v5, 0x20

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move v12, v0

    .line 181
    if-lez v5, :cond_17

    .line 183
    const/4 v13, 0x0

    invoke-virtual {v7, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 184
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v22, v14

    move-object v14, v13

    move-object v13, v5

    move-object/from16 v5, v22

    .line 193
    :goto_9
    const-string v15, "#ifdef"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    const-string v15, "#ifndef"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 195
    :cond_15
    if-nez v5, :cond_16

    .line 197
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ":"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move v15, v0

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ": warning - undefined keyword: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 201
    :cond_16
    add-int/lit8 v7, v9, 0x1

    .line 202
    if-lez v8, :cond_18

    move-object v5, v14

    move v9, v10

    move v10, v12

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    .line 245
    :goto_a
    const/4 v11, -0x1

    .line 246
    const/4 v12, 0x0

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move v13, v0

    add-int/lit8 v13, v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 248
    const/4 v13, 0x0

    move/from16 v14, v17

    move-object/from16 v22, v5

    move v5, v13

    move v13, v11

    move v11, v9

    move v9, v8

    move v8, v7

    move-object/from16 v7, v22

    move/from16 v23, v12

    move v12, v10

    move/from16 v10, v23

    :goto_b
    move/from16 v15, v17

    move/from16 v17, v18

    .line 252
    goto/16 :goto_0

    .line 190
    :cond_17
    const-string v5, ""

    .line 191
    const/4 v13, 0x0

    move-object v14, v7

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto :goto_9

    .line 204
    :cond_18
    const/4 v9, 0x3

    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v13, 0x6e

    if-ne v9, v13, :cond_19

    const/4 v9, 0x1

    :goto_c
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v13, :cond_1a

    const/4 v5, 0x1

    :goto_d
    if-eq v9, v5, :cond_2c

    move-object v5, v14

    move v8, v7

    move v9, v10

    move v10, v12

    .line 208
    goto :goto_a

    .line 204
    :cond_19
    const/4 v9, 0x0

    goto :goto_c

    :cond_1a
    const/4 v5, 0x0

    goto :goto_d

    .line 211
    :cond_1b
    const-string v5, "#else"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 213
    if-nez v9, :cond_1c

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    move-object v5, v14

    move v7, v8

    move v10, v12

    move v8, v9

    move v9, v11

    goto :goto_a

    .line 215
    :cond_1c
    if-ne v9, v8, :cond_1d

    .line 217
    const/4 v5, -0x1

    .line 218
    const/4 v7, 0x0

    move v8, v9

    move v10, v12

    move v9, v5

    move-object v5, v14

    goto :goto_a

    .line 223
    :cond_1d
    if-nez v8, :cond_2b

    move-object v5, v14

    move v7, v9

    move v8, v9

    move v9, v10

    move v10, v12

    .line 224
    goto/16 :goto_a

    .line 227
    :cond_1e
    const-string v5, "#endif"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 229
    if-nez v9, :cond_1f

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 231
    :cond_1f
    if-ne v9, v8, :cond_20

    .line 233
    const/4 v5, 0x0

    .line 234
    const/4 v7, -0x1

    .line 238
    :goto_e
    add-int/lit8 v8, v9, -0x1

    move v9, v7

    move v10, v12

    move v7, v5

    move-object v5, v14

    goto/16 :goto_a

    .line 236
    :cond_20
    if-lez v8, :cond_2a

    move v5, v8

    move v7, v10

    .line 237
    goto :goto_e

    .line 241
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown command: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    move-object v5, v14

    move v7, v8

    move v10, v12

    move v8, v9

    move v9, v11

    goto/16 :goto_a

    .line 250
    :cond_22
    if-gez v15, :cond_24

    .line 251
    const/16 v19, 0x9

    move v0, v5

    move/from16 v1, v19

    if-ne v0, v1, :cond_23

    add-int/lit8 v5, v10, 0x8

    and-int/lit8 v5, v5, -0x8

    :goto_f
    move v10, v5

    move v5, v13

    move v13, v15

    goto/16 :goto_b

    :cond_23
    add-int/lit8 v5, v10, 0x1

    goto :goto_f

    :cond_24
    move v5, v13

    move v13, v15

    goto/16 :goto_b

    :cond_25
    move-object v5, v7

    move v10, v12

    move v7, v8

    move v8, v9

    move v9, v11

    goto/16 :goto_a

    :cond_26
    move v13, v5

    goto/16 :goto_6

    :cond_27
    move/from16 v18, v17

    move/from16 v17, v15

    goto/16 :goto_4

    :cond_28
    move v13, v5

    move/from16 v5, v18

    move/from16 v18, v17

    move/from16 v17, v15

    goto/16 :goto_4

    :cond_29
    move/from16 v22, v18

    move/from16 v18, v17

    move/from16 v17, v15

    move v15, v13

    move v13, v5

    move/from16 v5, v22

    goto/16 :goto_4

    :cond_2a
    move v5, v8

    move v7, v11

    goto :goto_e

    :cond_2b
    move-object v5, v14

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v12

    goto/16 :goto_a

    :cond_2c
    move-object v5, v14

    move v9, v11

    move v10, v12

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    goto/16 :goto_a
.end method

.method handleArg(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v4, 0x2d

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 269
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2

    .line 271
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 274
    :goto_0
    sget-object v2, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 276
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 279
    :cond_0
    sget-object v2, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    sget-object v2, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v2, v1

    .line 282
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(variant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " maps to: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 284
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_4

    .line 291
    iget-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_3
    :goto_2
    return-void

    .line 292
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_9

    .line 294
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 295
    if-le v0, v2, :cond_8

    .line 297
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_5

    const/4 v1, 0x2

    :goto_3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 299
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 301
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 302
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 308
    :goto_4
    iget-object v2, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move v1, v2

    .line 297
    goto :goto_3

    .line 303
    :cond_6
    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 305
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    :cond_7
    move-object v0, v2

    goto :goto_4

    .line 311
    :cond_8
    iget-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 317
    :cond_9
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 319
    :catch_0
    move-exception v0

    .line 321
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 323
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2
.end method
