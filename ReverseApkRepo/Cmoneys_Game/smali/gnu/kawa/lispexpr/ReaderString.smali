.class public Lgnu/kawa/lispexpr/ReaderString;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderString.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 10
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
    const/16 v9, 0xa

    .line 13
    iget v5, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 14
    .local v5, startPos:I
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v2

    .line 15
    .local v2, port:Lgnu/text/LineBufferedReader;
    const/4 v4, 0x0

    .line 16
    .local v4, saveReadState:C
    move v1, p2

    .line 18
    .local v1, c:I
    instance-of v6, v2, Lgnu/mapping/InPort;

    if-eqz v6, :cond_0

    .line 20
    move-object v0, v2

    check-cast v0, Lgnu/mapping/InPort;

    move-object v6, v0

    iget-char v4, v6, Lgnu/mapping/InPort;->readState:C

    .line 21
    move-object v0, v2

    check-cast v0, Lgnu/mapping/InPort;

    move-object v6, v0

    int-to-char v7, p2

    iput-char v7, v6, Lgnu/mapping/InPort;->readState:C

    .line 29
    :cond_0
    :goto_0
    move v3, v1

    .line 32
    .local v3, prev:I
    const/16 v6, 0xd

    if-ne v3, v6, :cond_2

    .line 34
    :try_start_0
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 35
    if-eq v1, v9, :cond_0

    .line 42
    :goto_1
    if-ne v1, p2, :cond_4

    .line 70
    new-instance v6, Ljava/lang/String;

    iget-object v7, p1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v8, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v8, v5

    invoke-direct {v6, v7, v5, v8}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iput v5, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 80
    instance-of v7, v2, Lgnu/mapping/InPort;

    if-eqz v7, :cond_1

    .line 81
    check-cast v2, Lgnu/mapping/InPort;

    .end local v2           #port:Lgnu/text/LineBufferedReader;
    iput-char v4, v2, Lgnu/mapping/InPort;->readState:C

    :cond_1
    return-object v6

    .line 38
    .restart local v2       #port:Lgnu/text/LineBufferedReader;
    :cond_2
    :try_start_1
    iget v6, v2, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, v2, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v6, v7, :cond_3

    if-eq v3, v9, :cond_3

    .line 39
    iget-object v6, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v7, v2, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v2, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v1, v6, v7

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    goto :goto_1

    .line 46
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 63
    :cond_5
    if-gez v1, :cond_6

    .line 64
    const-string v6, "unexpected EOF in string literal"

    invoke-virtual {p1, v6}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 65
    :cond_6
    invoke-virtual {p1, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v6

    iput v5, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 80
    instance-of v7, v2, Lgnu/mapping/InPort;

    if-eqz v7, :cond_7

    .line 81
    check-cast v2, Lgnu/mapping/InPort;

    .end local v2           #port:Lgnu/text/LineBufferedReader;
    iput-char v4, v2, Lgnu/mapping/InPort;->readState:C

    :cond_7
    throw v6

    .line 49
    .restart local v2       #port:Lgnu/text/LineBufferedReader;
    :sswitch_0
    const/16 v6, 0xa

    :try_start_2
    invoke-virtual {p1, v6}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_0

    .line 52
    :sswitch_1
    instance-of v6, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v6, :cond_8

    .line 53
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v1

    .line 56
    :goto_2
    const/4 v6, -0x2

    if-ne v1, v6, :cond_5

    .line 58
    const/16 v1, 0xa

    .line 59
    goto :goto_0

    .line 55
    :cond_8
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_2

    .line 46
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method
