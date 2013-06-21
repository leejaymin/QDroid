.class public Lgnu/text/Lexer;
.super Ljava/io/Reader;
.source "Lexer.java"


# instance fields
.field protected interactive:Z

.field messages:Lgnu/text/SourceMessages;

.field protected nesting:I

.field protected port:Lgnu/text/LineBufferedReader;

.field private saveTokenBufferLength:I

.field public tokenBuffer:[C

.field public tokenBufferLength:I


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .locals 1
    .parameter "port"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 268
    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 19
    iput-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    .line 20
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .locals 1
    .parameter "port"
    .parameter "messages"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 268
    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 24
    iput-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    .line 25
    iput-object p2, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 26
    return-void
.end method

.method public static readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J
    .locals 14
    .parameter "port"
    .parameter "radix"

    .prologue
    const-wide/16 v12, 0x0

    .line 235
    const-wide/16 v3, 0x0

    .line 236
    .local v3, ival:J
    const/4 v7, 0x0

    .line 237
    .local v7, overflow:Z
    const-wide v8, 0x7fffffffffffffffL

    int-to-long v10, p1

    div-long v5, v8, v10

    .line 238
    .local v5, max_val:J
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 239
    .local v2, i:I
    iget v8, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v2, v8, :cond_0

    move-wide v8, v12

    .line 257
    :goto_0
    return-wide v8

    .line 243
    :cond_0
    iget-object v8, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v0, v8, v2

    .line 244
    .local v0, c:C
    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 245
    .local v1, dval:I
    if-gez v1, :cond_1

    .line 256
    :goto_1
    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 257
    if-eqz v7, :cond_4

    const-wide/16 v8, -0x1

    goto :goto_0

    .line 247
    :cond_1
    cmp-long v8, v3, v5

    if-lez v8, :cond_3

    .line 248
    const/4 v7, 0x1

    .line 251
    :goto_2
    cmp-long v8, v3, v12

    if-gez v8, :cond_2

    .line 252
    const/4 v7, 0x1

    .line 253
    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget v8, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v2, v8, :cond_0

    goto :goto_1

    .line 250
    :cond_3
    int-to-long v8, p1

    mul-long/2addr v8, v3

    int-to-long v10, v1

    add-long v3, v8, v10

    goto :goto_2

    :cond_4
    move-wide v8, v3

    .line 257
    goto :goto_0
.end method


# virtual methods
.method public checkErrors(Ljava/io/PrintWriter;I)Z
    .locals 1
    .parameter "out"
    .parameter "max"

    .prologue
    .line 132
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkNext(C)Z
    .locals 2
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 109
    .local v0, r:I
    if-ne v0, p1, :cond_0

    .line 110
    const/4 v1, 0x1

    .line 113
    :goto_0
    return v1

    .line 111
    :cond_0
    if-ltz v0, :cond_1

    .line 112
    iget-object v1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 113
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearErrors()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->clearErrors()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->close()V

    .line 60
    return-void
.end method

.method public eofError(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public eofError(Ljava/lang/String;II)V
    .locals 6
    .parameter "message"
    .parameter "startLine"
    .parameter "startColumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 178
    const/16 v1, 0x66

    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 179
    new-instance v0, Lgnu/text/SyntaxException;

    iget-object v1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-direct {v0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v0
.end method

.method public error(CLjava/lang/String;)V
    .locals 8
    .parameter "severity"
    .parameter "message"

    .prologue
    .line 153
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v7

    .line 154
    .local v7, line:I
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v6

    .line 155
    .local v6, column:I
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v7, 0x1

    if-ltz v6, :cond_0

    add-int/lit8 v0, v6, 0x1

    move v4, v0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 157
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;)V
    .locals 6
    .parameter "severity"
    .parameter "filename"
    .parameter "line"
    .parameter "column"
    .parameter "message"

    .prologue
    .line 146
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    iput-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 148
    :cond_0
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 149
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 161
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    .line 162
    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 166
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    .line 167
    new-instance v0, Lgnu/text/SyntaxException;

    iget-object v1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-direct {v0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getErrors()Lgnu/text/SourceError;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getErrors()Lgnu/text/SourceError;

    move-result-object v0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()Lgnu/text/LineBufferedReader;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    return-object v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lgnu/text/Lexer;->interactive:Z

    return v0
.end method

.method public mark()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    iget v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    if-ltz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: recursive call to mark not allowed"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 304
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 305
    return-void
.end method

.method public peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    return v0
.end method

.method public popNesting(C)V
    .locals 3
    .parameter "save"

    .prologue
    .line 48
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 49
    .local v0, port:Lgnu/text/LineBufferedReader;
    iput-char p1, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 50
    iget v1, p0, Lgnu/text/Lexer;->nesting:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/text/Lexer;->nesting:I

    .line 51
    return-void
.end method

.method public pushNesting(C)C
    .locals 3
    .parameter "promptChar"

    .prologue
    .line 36
    iget v2, p0, Lgnu/text/Lexer;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/text/Lexer;->nesting:I

    .line 37
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 38
    .local v0, port:Lgnu/text/LineBufferedReader;
    iget-char v1, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 39
    .local v1, save:C
    iput-char p1, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 40
    return v1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 1
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/LineBufferedReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public readOptionalExponent()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x2d

    .line 190
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v4

    .line 191
    .local v4, sign:I
    const/4 v3, 0x0

    .line 193
    .local v3, overflow:Z
    const/16 v6, 0x2b

    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_6

    .line 194
    :cond_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    .line 201
    .local v0, c:I
    :goto_0
    if-ltz v0, :cond_1

    int-to-char v6, v0

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .local v5, value:I
    if-gez v5, :cond_7

    .line 203
    .end local v5           #value:I
    :cond_1
    if-eqz v4, :cond_2

    .line 204
    const-string v6, "exponent sign not followed by digit"

    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 205
    :cond_2
    const/4 v5, 0x1

    .line 221
    .restart local v5       #value:I
    :cond_3
    if-ltz v0, :cond_4

    .line 222
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    .line 223
    :cond_4
    if-ne v4, v7, :cond_5

    .line 224
    neg-int v5, v5

    .line 225
    :cond_5
    if-eqz v3, :cond_a

    .line 226
    if-ne v4, v7, :cond_9

    const/high16 v6, -0x8000

    .line 227
    :goto_1
    return v6

    .line 197
    .end local v0           #c:I
    .end local v5           #value:I
    :cond_6
    move v0, v4

    .line 198
    .restart local v0       #c:I
    const/4 v4, 0x0

    goto :goto_0

    .line 209
    .restart local v5       #value:I
    :cond_7
    const v2, 0xccccccb

    .line 212
    .local v2, max:I
    :goto_2
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    .line 213
    int-to-char v6, v0

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 214
    .local v1, d:I
    if-ltz v1, :cond_3

    .line 216
    if-le v5, v2, :cond_8

    .line 217
    const/4 v3, 0x1

    .line 218
    :cond_8
    mul-int/lit8 v6, v5, 0xa

    add-int v5, v6, v1

    .line 219
    goto :goto_2

    .line 226
    .end local v1           #d:I
    .end local v2           #max:I
    :cond_9
    const v6, 0x7fffffff

    goto :goto_1

    :cond_a
    move v6, v5

    .line 227
    goto :goto_1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    if-gez v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: reset called without prior mark"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->reset()V

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 315
    return-void
.end method

.method public seenErrors()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 265
    iput-boolean p1, p0, Lgnu/text/Lexer;->interactive:Z

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0
    .parameter "messages"

    .prologue
    .line 125
    iput-object p1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public skip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip()V

    .line 87
    return-void
.end method

.method protected skip_quick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 119
    return-void
.end method

.method public tokenBufferAppend(I)V
    .locals 5
    .parameter "ch"

    .prologue
    const/high16 v2, 0x1

    const/4 v4, 0x0

    .line 276
    if-lt p1, v2, :cond_0

    .line 278
    sub-int v2, p1, v2

    shr-int/lit8 v2, v2, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 279
    and-int/lit16 v2, p1, 0x3ff

    const v3, 0xdc00

    add-int p1, v2, v3

    .line 282
    :cond_0
    iget v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    .local v1, len:I
    iget-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 284
    .local v0, buffer:[C
    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 286
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [C

    iput-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 287
    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iget-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 290
    :cond_1
    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 291
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 292
    return-void
.end method

.method protected unread()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread()V

    .line 92
    return-void
.end method

.method public unread(I)V
    .locals 1
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    if-ltz p1, :cond_0

    .line 76
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread()V

    .line 77
    :cond_0
    return-void
.end method

.method protected unread_quick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 97
    return-void
.end method
