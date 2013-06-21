.class public Lgnu/q2/lang/Q2Read;
.super Lgnu/kawa/lispexpr/LispReader;
.source "Q2Read.java"


# instance fields
.field expressionStartColumn:I

.field expressionStartFile:Ljava/lang/String;

.field expressionStartLine:I


# direct methods
.method public constructor <init>(Lgnu/mapping/InPort;)V
    .locals 0
    .parameter "port"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lgnu/kawa/lispexpr/LispReader;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 22
    invoke-virtual {p0}, Lgnu/q2/lang/Q2Read;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)V
    .locals 0
    .parameter "port"
    .parameter "messages"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lgnu/kawa/lispexpr/LispReader;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 28
    invoke-virtual {p0}, Lgnu/q2/lang/Q2Read;->init()V

    .line 29
    return-void
.end method

.method public static readObject(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 1
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lgnu/q2/lang/Q2Read;

    invoke-direct {v0, p0}, Lgnu/q2/lang/Q2Read;-><init>(Lgnu/mapping/InPort;)V

    invoke-virtual {v0}, Lgnu/q2/lang/Q2Read;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method init()V
    .locals 1

    .prologue
    .line 16
    iget-object p0, p0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    .end local p0
    check-cast p0, Lgnu/mapping/InPort;

    const/16 v0, 0x20

    iput-char v0, p0, Lgnu/mapping/InPort;->readState:C

    .line 17
    return-void
.end method

.method public readCommand()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/q2/lang/Q2Read;->readCommand(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readCommand(Z)Ljava/lang/Object;
    .locals 25
    .parameter "forceList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v11

    .line 67
    .local v11, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v20

    .line 68
    .local v20, startColumn:I
    move/from16 v10, v20

    .line 69
    .local v10, lastColumn:I
    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 70
    .local v16, obj:Lgnu/lists/LList;
    const/16 v19, 0x0

    .local v19, pair:Lgnu/lists/PairWithPosition;
    const/4 v9, 0x0

    .local v9, last:Lgnu/lists/PairWithPosition;
    move-object/from16 v21, v16

    .line 73
    .end local v16           #obj:Lgnu/lists/LList;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->read()I

    move-result v5

    .line 74
    .local v5, ch:I
    if-gez v5, :cond_3

    .line 155
    :cond_1
    if-nez p1, :cond_2

    .line 157
    move-object/from16 v0, v21

    move-object v1, v9

    if-ne v0, v1, :cond_11

    .line 158
    invoke-virtual {v9}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v16

    .local v16, obj:Ljava/lang/Object;
    move-object/from16 v21, v16

    .line 162
    .end local v16           #obj:Ljava/lang/Object;
    :cond_2
    :goto_1
    return-object v21

    .line 76
    :cond_3
    const/16 v22, 0x20

    move v0, v5

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x9

    move v0, v5

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 78
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->unread()V

    .line 79
    const/16 v22, 0x29

    move v0, v5

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v11

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v6

    .line 83
    .local v6, column:I
    :cond_4
    const/16 v22, 0xd

    move v0, v5

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/16 v22, 0xa

    move v0, v5

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 85
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->singleLine()Z

    move-result v22

    if-nez v22, :cond_2

    .line 87
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->read()I

    move-result v5

    .line 88
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->skipIndentation()I

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v6

    .line 90
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->peek()I

    move-result v5

    .line 91
    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 94
    :cond_6
    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_7

    if-nez v9, :cond_1

    .line 97
    :cond_7
    if-ne v6, v10, :cond_8

    if-eqz v9, :cond_8

    .line 98
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->readCommand()Ljava/lang/Object;

    move-result-object v14

    .line 133
    .local v14, next:Ljava/lang/Object;
    :goto_2
    sget-object v22, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 135
    move v10, v6

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, filename:Ljava/lang/String;
    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    add-int/lit8 v23, v11, 0x1

    add-int/lit8 v24, v6, 0x1

    move-object v0, v14

    move-object/from16 v1, v22

    move-object v2, v8

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v7

    .line 139
    .local v7, cur:Lgnu/lists/PairWithPosition;
    if-nez v9, :cond_f

    .line 141
    move-object/from16 v19, v7

    .line 142
    move-object/from16 v16, v7

    .local v16, obj:Lgnu/lists/PairWithPosition;
    move-object/from16 v21, v16

    .line 153
    .end local v16           #obj:Lgnu/lists/PairWithPosition;
    :goto_3
    move-object v9, v7

    .line 154
    goto/16 :goto_0

    .line 99
    .end local v7           #cur:Lgnu/lists/PairWithPosition;
    .end local v8           #filename:Ljava/lang/String;
    .end local v14           #next:Ljava/lang/Object;
    :cond_8
    if-ge v6, v10, :cond_e

    if-eqz v9, :cond_e

    .line 101
    move-object/from16 v17, v19

    .line 104
    .local v17, p:Lgnu/lists/PairWithPosition;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v12

    .line 105
    .local v12, n:Ljava/lang/Object;
    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v12

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 129
    :cond_9
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->readCommand()Ljava/lang/Object;

    move-result-object v14

    .line 130
    .restart local v14       #next:Ljava/lang/Object;
    goto :goto_2

    .line 107
    .end local v14           #next:Ljava/lang/Object;
    :cond_a
    move-object v0, v12

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v15, v0

    .line 108
    .local v15, np:Lgnu/lists/PairWithPosition;
    invoke-virtual {v15}, Lgnu/lists/PairWithPosition;->getColumnNumber()I

    move-result v22

    const/16 v23, 0x1

    sub-int v18, v22, v23

    .line 109
    .local v18, pColumn:I
    move/from16 v0, v18

    move v1, v6

    if-lt v0, v1, :cond_d

    .line 111
    move/from16 v0, v18

    move v1, v6

    if-le v0, v1, :cond_b

    .line 112
    const/16 v22, 0x65

    const-string v23, "some tokens on previous line indented more than current line"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/q2/lang/Q2Read;->error(CLjava/lang/String;)V

    .line 113
    :cond_b
    invoke-virtual {v15}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v12

    .line 114
    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v12

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 116
    move-object v0, v12

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/lists/PairWithPosition;->getColumnNumber()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_c

    .line 118
    move-object v0, v12

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object/from16 v17, v0

    .line 119
    goto :goto_4

    .line 121
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v22

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v22

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lgnu/q2/lang/Q2Read;->makePair(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #last:Lgnu/lists/PairWithPosition;
    check-cast v9, Lgnu/lists/PairWithPosition;

    .line 123
    .restart local v9       #last:Lgnu/lists/PairWithPosition;
    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/lists/PairWithPosition;->setCdr(Ljava/lang/Object;)V

    goto :goto_5

    .line 127
    :cond_d
    move-object/from16 v17, v15

    .line 128
    goto :goto_4

    .line 132
    .end local v12           #n:Ljava/lang/Object;
    .end local v15           #np:Lgnu/lists/PairWithPosition;
    .end local v17           #p:Lgnu/lists/PairWithPosition;
    .end local v18           #pColumn:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lgnu/q2/lang/Q2Read;->readObject()Ljava/lang/Object;

    move-result-object v14

    .restart local v14       #next:Ljava/lang/Object;
    goto/16 :goto_2

    .line 144
    .restart local v7       #cur:Lgnu/lists/PairWithPosition;
    .restart local v8       #filename:Ljava/lang/String;
    :cond_f
    invoke-virtual {v9}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 146
    new-instance v13, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ch:I
    check-cast v5, Lgnu/expr/Keyword;

    invoke-virtual {v5}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v22

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 147
    .local v13, name:Lgnu/expr/QuoteExp;
    new-instance v22, Lgnu/lists/PairWithPosition;

    sget-object v23, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    new-instance v24, Lgnu/lists/PairWithPosition;

    move-object/from16 v0, v24

    move-object v1, v9

    move-object v2, v13

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v22

    move-object v1, v9

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/lists/PairWithPosition;->setCar(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 152
    .end local v13           #name:Lgnu/expr/QuoteExp;
    .restart local v5       #ch:I
    :cond_10
    invoke-virtual {v9, v7}, Lgnu/lists/PairWithPosition;->setCdr(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 159
    .end local v6           #column:I
    .end local v7           #cur:Lgnu/lists/PairWithPosition;
    .end local v8           #filename:Ljava/lang/String;
    .end local v14           #next:Ljava/lang/Object;
    :cond_11
    if-nez v9, :cond_2

    .line 160
    sget-object v16, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .local v16, obj:Lgnu/expr/QuoteExp;
    move-object/from16 v21, v16

    goto/16 :goto_1
.end method

.method saveExpressionStartPosition()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/q2/lang/Q2Read;->expressionStartFile:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    iput v0, p0, Lgnu/q2/lang/Q2Read;->expressionStartLine:I

    .line 180
    iget-object v0, p0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lgnu/q2/lang/Q2Read;->expressionStartColumn:I

    .line 181
    return-void
.end method

.method singleLine()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lgnu/q2/lang/Q2Read;->interactive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/q2/lang/Q2Read;->nesting:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method skipIndentation()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v2, 0x0

    .local v2, numTabs:I
    const/4 v1, 0x0

    .line 35
    .local v1, numSpaces:I
    iget-object v3, p0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 36
    .local v0, ch:I
    :goto_0
    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    iget-object v3, p0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    goto :goto_0

    .line 41
    :cond_0
    :goto_1
    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    iget-object v3, p0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    goto :goto_1

    .line 46
    :cond_1
    if-gez v0, :cond_2

    .line 47
    const/4 v3, -0x1

    .line 49
    :goto_2
    return v3

    .line 48
    :cond_2
    iget-object v3, p0, Lgnu/q2/lang/Q2Read;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->unread()V

    .line 49
    shl-int/lit8 v3, v2, 0x10

    add-int/2addr v3, v1

    goto :goto_2
.end method
