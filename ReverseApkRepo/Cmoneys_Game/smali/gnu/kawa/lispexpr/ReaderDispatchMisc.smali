.class public Lgnu/kawa/lispexpr/ReaderDispatchMisc;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatchMisc.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;


# instance fields
.field protected code:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 31
    iput p1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 32
    return-void
.end method

.method public static getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-object v0
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 21
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 37
    move-object/from16 v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v15, v0

    .line 38
    .local v15, reader:Lgnu/kawa/lispexpr/LispReader;
    const/16 v16, 0x0

    .line 42
    .local v16, saveReadState:C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    move/from16 v18, v0

    if-ltz v18, :cond_0

    .line 43
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    move/from16 p2, v0

    .line 44
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 169
    const-string v18, "An invalid #-construct was read."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 170
    sget-object v18, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v18

    .line 49
    :sswitch_0
    move-object v0, v15

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v17, v0

    .line 50
    .local v17, startPos:I
    invoke-virtual {v15}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v18

    const/16 v19, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v20

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 51
    move-object v0, v15

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v18, v0

    sub-int v8, v18, v17

    .line 52
    .local v8, length:I
    new-instance v10, Ljava/lang/String;

    move-object v0, v15

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v17

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 53
    .local v10, name:Ljava/lang/String;
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 54
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v18

    goto :goto_0

    .line 56
    .end local v8           #length:I
    .end local v10           #name:Ljava/lang/String;
    .end local v17           #startPos:I
    :sswitch_1
    invoke-static {v15}, Lgnu/kawa/lispexpr/LispReader;->readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_0

    .line 58
    :sswitch_2
    invoke-static {v15}, Lgnu/kawa/lispexpr/LispReader;->readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_0

    .line 60
    :sswitch_3
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 62
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lgnu/text/Lexer;->peek()I

    move-result p2

    .line 63
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 64
    const/16 v18, 0x46

    move-object v0, v15

    move/from16 v1, v18

    invoke-static {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object v18

    goto :goto_0

    .line 65
    :cond_1
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 68
    :sswitch_5
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move-object v0, v15

    move/from16 v1, v18

    invoke-static {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object v18

    goto :goto_0

    .line 70
    :sswitch_6
    const/16 v18, 0x24

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 72
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "the radix "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is too big (max is 36)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 73
    const/16 p3, 0x24

    .line 75
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object v1, v15

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    .line 77
    :sswitch_7
    const/16 v18, 0x0

    const/16 v19, 0x10

    move/from16 v0, v18

    move-object v1, v15

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    .line 79
    :sswitch_8
    const/16 v18, 0x0

    const/16 v19, 0xa

    move/from16 v0, v18

    move-object v1, v15

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    .line 81
    :sswitch_9
    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move-object v1, v15

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    .line 83
    :sswitch_a
    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v18

    move-object v1, v15

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    .line 86
    :sswitch_b
    const/16 v18, 0x23

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 87
    move-object v0, v15

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 88
    const/16 v18, 0x2

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object v1, v15

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    .line 90
    :sswitch_c
    invoke-virtual {v15}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v13

    .line 91
    .local v13, port:Lgnu/text/LineBufferedReader;
    move-object v0, v13

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 93
    move-object v0, v13

    check-cast v0, Lgnu/mapping/InPort;

    move-object v14, v0

    move-object v0, v14

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    move/from16 v16, v0

    .line 94
    move-object v0, v13

    check-cast v0, Lgnu/mapping/InPort;

    move-object v14, v0

    const/16 v18, 0x7c

    move/from16 v0, v18

    move-object v1, v14

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 98
    :cond_3
    const/16 v18, 0x23

    const/16 v19, 0x7c

    :try_start_0
    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    move-object v0, v13

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 103
    check-cast v13, Lgnu/mapping/InPort;

    .end local v13           #port:Lgnu/text/LineBufferedReader;
    move/from16 v0, v16

    move-object v1, v13

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 105
    :cond_4
    sget-object v18, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_0

    .line 102
    .restart local v13       #port:Lgnu/text/LineBufferedReader;
    :catchall_0
    move-exception v18

    move-object v0, v13

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 103
    check-cast v13, Lgnu/mapping/InPort;

    .end local v13           #port:Lgnu/text/LineBufferedReader;
    move/from16 v0, v16

    move-object v1, v13

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    :cond_5
    throw v18

    .line 107
    :sswitch_d
    invoke-virtual {v15}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v13

    .line 108
    .restart local v13       #port:Lgnu/text/LineBufferedReader;
    move-object v0, v13

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 110
    move-object v0, v13

    check-cast v0, Lgnu/mapping/InPort;

    move-object v14, v0

    move-object v0, v14

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    move/from16 v16, v0

    .line 111
    move-object v0, v13

    check-cast v0, Lgnu/mapping/InPort;

    move-object v14, v0

    const/16 v18, 0x3b

    move/from16 v0, v18

    move-object v1, v14

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 115
    :cond_6
    :try_start_1
    invoke-virtual {v15}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    move-object v0, v13

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 120
    check-cast v13, Lgnu/mapping/InPort;

    .end local v13           #port:Lgnu/text/LineBufferedReader;
    move/from16 v0, v16

    move-object v1, v13

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 122
    :cond_7
    sget-object v18, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_0

    .line 119
    .restart local v13       #port:Lgnu/text/LineBufferedReader;
    :catchall_1
    move-exception v18

    move-object v0, v13

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 120
    check-cast v13, Lgnu/mapping/InPort;

    .end local v13           #port:Lgnu/text/LineBufferedReader;
    move/from16 v0, v16

    move-object v1, v13

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    :cond_8
    throw v18

    .line 124
    :sswitch_e
    invoke-virtual {v15}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v13

    .line 126
    .restart local v13       #port:Lgnu/text/LineBufferedReader;
    invoke-virtual {v13}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v18

    const/16 v19, 0x28

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    invoke-virtual {v15}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v9

    .local v9, list:Ljava/lang/Object;
    const/16 v18, 0x0

    move-object v0, v9

    move/from16 v1, v18

    invoke-static {v0, v1}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v8

    .restart local v8       #length:I
    if-lez v8, :cond_e

    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 132
    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 133
    .restart local v10       #name:Ljava/lang/String;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 134
    .local v14, proc:Ljava/lang/Object;
    if-nez v14, :cond_9

    .line 135
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown reader constructor "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 167
    .end local v8           #length:I
    .end local v9           #list:Ljava/lang/Object;
    .end local v10           #name:Ljava/lang/String;
    .end local v14           #proc:Ljava/lang/Object;
    :goto_1
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 136
    .restart local v8       #length:I
    .restart local v9       #list:Ljava/lang/Object;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v14       #proc:Ljava/lang/Object;
    :cond_9
    move-object v0, v14

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v18, v0

    if-nez v18, :cond_a

    move-object v0, v14

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 137
    const-string v18, "reader constructor must be procedure or type name"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_a
    add-int/lit8 v8, v8, -0x1

    .line 141
    move-object v0, v14

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    move/from16 v12, v18

    .line 142
    .local v12, parg:I
    :goto_2
    add-int v18, v12, v8

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 143
    .local v5, args:[Ljava/lang/Object;
    check-cast v9, Lgnu/lists/Pair;

    .end local v9           #list:Ljava/lang/Object;
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 144
    .local v4, argList:Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v8, :cond_c

    .line 146
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object v11, v0

    .line 147
    .local v11, pair:Lgnu/lists/Pair;
    add-int v18, v12, v7

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v5, v18

    .line 148
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 144
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 141
    .end local v4           #argList:Ljava/lang/Object;
    .end local v5           #args:[Ljava/lang/Object;
    .end local v7           #i:I
    .end local v11           #pair:Lgnu/lists/Pair;
    .end local v12           #parg:I
    .restart local v9       #list:Ljava/lang/Object;
    :cond_b
    const/16 v18, 0x0

    move/from16 v12, v18

    goto :goto_2

    .line 152
    .end local v9           #list:Ljava/lang/Object;
    .restart local v4       #argList:Ljava/lang/Object;
    .restart local v5       #args:[Ljava/lang/Object;
    .restart local v7       #i:I
    .restart local v12       #parg:I
    :cond_c
    if-lez v12, :cond_d

    .line 154
    const/16 v18, 0x0

    :try_start_2
    aput-object v14, v5, v18

    .line 155
    sget-object v18, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    .line 157
    :cond_d
    check-cast v14, Lgnu/mapping/Procedure;

    .end local v14           #proc:Ljava/lang/Object;
    invoke-virtual {v14, v5}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v18

    move-object/from16 v6, v18

    .line 161
    .local v6, ex:Ljava/lang/Throwable;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "caught "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " applying reader constructor "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 166
    .end local v4           #argList:Ljava/lang/Object;
    .end local v5           #args:[Ljava/lang/Object;
    .end local v6           #ex:Ljava/lang/Throwable;
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #parg:I
    :cond_e
    const-string v18, "a non-empty list starting with a symbol must follow #,"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x2c -> :sswitch_e
        0x3a -> :sswitch_0
        0x3b -> :sswitch_d
        0x42 -> :sswitch_a
        0x44 -> :sswitch_8
        0x45 -> :sswitch_b
        0x46 -> :sswitch_4
        0x49 -> :sswitch_b
        0x4f -> :sswitch_9
        0x52 -> :sswitch_6
        0x53 -> :sswitch_5
        0x54 -> :sswitch_3
        0x55 -> :sswitch_5
        0x58 -> :sswitch_7
        0x5c -> :sswitch_1
        0x7c -> :sswitch_c
    .end sparse-switch
.end method
