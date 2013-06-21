.class public Lorg/mozilla/javascript/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Parser$1;,
        Lorg/mozilla/javascript/Parser$PerFunctionVariables;,
        Lorg/mozilla/javascript/Parser$ConditionData;,
        Lorg/mozilla/javascript/Parser$ParserException;
    }
.end annotation


# static fields
.field public static final ARGC_LIMIT:I = 0x10000

.field static final CLEAR_TI_MASK:I = 0xffff

.field static final TI_AFTER_EOL:I = 0x10000

.field static final TI_CHECK_LABEL:I = 0x20000


# instance fields
.field calledByCompileFunction:Z

.field compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private currentFlaggedToken:I

.field private currentJsDocComment:Ljava/lang/String;

.field private currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

.field currentScope:Lorg/mozilla/javascript/ast/Scope;

.field currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private currentToken:I

.field private endFlags:I

.field private errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private inDestructuringAssignment:Z

.field private inForInit:Z

.field protected inUseStrictDirective:Z

.field private labelSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/ast/LabeledStatement;",
            ">;"
        }
    .end annotation
.end field

.field private loopAndSwitchSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Jump;",
            ">;"
        }
    .end annotation
.end field

.field private loopSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Loop;",
            ">;"
        }
    .end annotation
.end field

.field protected nestingOfFunction:I

.field nestingOfWith:I

.field private parseFinished:Z

.field private prevNameTokenLineno:I

.field private prevNameTokenStart:I

.field private prevNameTokenString:Ljava/lang/String;

.field private scannedComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private sourceChars:[C

.field private sourceURI:Ljava/lang/String;

.field private syntaxErrorCount:I

.field private ts:Lorg/mozilla/javascript/TokenStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 1
    .parameter "compilerEnv"

    .prologue
    .line 149
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1
    .parameter "compilerEnv"
    .parameter "errorReporter"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 154
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    .line 155
    instance-of v0, p2, Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz v0, :cond_0

    .line 156
    check-cast p2, Lorg/mozilla/javascript/ast/IdeErrorReporter;

    .end local p2
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lorg/mozilla/javascript/Parser;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lorg/mozilla/javascript/Parser;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lorg/mozilla/javascript/Parser;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lorg/mozilla/javascript/Parser;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lorg/mozilla/javascript/Parser;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lorg/mozilla/javascript/Parser;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lorg/mozilla/javascript/Parser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    return v0
.end method

.method static synthetic access$502(Lorg/mozilla/javascript/Parser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    return p1
.end method

.method static synthetic access$600(Lorg/mozilla/javascript/Parser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return v0
.end method

.method static synthetic access$602(Lorg/mozilla/javascript/Parser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return p1
.end method

.method private addExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2281
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mulExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2283
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    .local v4, tt:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2284
    .local v1, opPos:I
    const/16 v5, 0x15

    if-eq v4, v5, :cond_0

    const/16 v5, 0x16

    if-ne v4, v5, :cond_1

    .line 2285
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2286
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2287
    .local v0, lineno:I
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mulExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2288
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2289
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2293
    .end local v0           #lineno:I
    :cond_1
    return-object v2
.end method

.method private andExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x69

    .line 2151
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitOrExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2152
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2153
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2154
    .local v1, opPos:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2155
    .local v0, lineno:I
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->andExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v5, v2, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2156
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2158
    .end local v0           #lineno:I
    .end local v1           #opPos:I
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    :cond_0
    return-object v2
.end method

.method private argumentList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x58

    .line 2434
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2435
    const/4 v2, 0x0

    .line 2451
    :goto_0
    return-object v2

    .line 2437
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2438
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    iget-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2439
    .local v1, wasInForInit:Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2442
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    const/16 v3, 0x48

    if-ne v2, v3, :cond_2

    .line 2443
    const-string v2, "msg.yield.parenthesized"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2444
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2445
    const/16 v2, 0x59

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 2447
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2450
    const-string v2, "msg.no.paren.arg"

    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-object v2, v0

    .line 2451
    goto :goto_0

    .line 2447
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw v2
.end method

.method private arrayComprehension(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .parameter "result"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2991
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2993
    .local v2, loops:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;>;"
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x77

    if-ne v4, v5, :cond_0

    .line 2994
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->arrayComprehensionLoop()Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2996
    :cond_0
    const/4 v1, -0x1

    .line 2997
    .local v1, ifPos:I
    const/4 v0, 0x0

    .line 2998
    .local v0, data:Lorg/mozilla/javascript/Parser$ConditionData;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x70

    if-ne v4, v5, :cond_1

    .line 2999
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3000
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v1, v4, p2

    .line 3001
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v0

    .line 3003
    :cond_1
    const/16 v4, 0x54

    const-string v5, "msg.no.bracket.arg"

    invoke-direct {p0, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 3004
    new-instance v3, Lorg/mozilla/javascript/ast/ArrayComprehension;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v4, p2

    invoke-direct {v3, p2, v4}, Lorg/mozilla/javascript/ast/ArrayComprehension;-><init>(II)V

    .line 3005
    .local v3, pn:Lorg/mozilla/javascript/ast/ArrayComprehension;
    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setResult(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3006
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setLoops(Ljava/util/List;)V

    .line 3007
    if-eqz v0, :cond_2

    .line 3008
    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setIfPosition(I)V

    .line 3009
    iget-object v4, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilter(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3010
    iget v4, v0, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v4, p2

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilterLp(I)V

    .line 3011
    iget v4, v0, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v4, p2

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilterRp(I)V

    .line 3013
    :cond_2
    return-object v3
.end method

.method private arrayComprehensionLoop()Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x27

    const/4 v11, 0x1

    const-string v8, "msg.no.paren.for"

    .line 3019
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v8

    const/16 v9, 0x77

    if-eq v8, v9, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 3020
    :cond_0
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3021
    .local v6, pos:I
    const/4 v0, -0x1

    .local v0, eachPos:I
    const/4 v3, -0x1

    .local v3, lp:I
    const/4 v7, -0x1

    .local v7, rp:I
    const/4 v1, -0x1

    .line 3022
    .local v1, inPos:I
    new-instance v5, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;-><init>(I)V

    .line 3024
    .local v5, pn:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 3026
    const/16 v8, 0x27

    :try_start_0
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3027
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "each"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3028
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v0, v8, v6

    .line 3033
    :cond_1
    :goto_0
    const/16 v8, 0x57

    const-string v9, "msg.no.paren.for"

    invoke-direct {p0, v8, v9}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3034
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v3, v8, v6

    .line 3037
    :cond_2
    const/4 v2, 0x0

    .line 3038
    .local v2, iter:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 3050
    const-string v8, "msg.bad.var"

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3055
    :goto_1
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 3056
    const/16 v8, 0x99

    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v9}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 3059
    :cond_3
    const/16 v8, 0x34

    const-string v9, "msg.in.after.for.name"

    invoke-direct {p0, v8, v9}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3060
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v1, v8, v6

    .line 3061
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 3062
    .local v4, obj:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v8, 0x58

    const-string v9, "msg.no.paren.for.ctrl"

    invoke-direct {p0, v8, v9}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3063
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v7, v8, v6

    .line 3065
    :cond_5
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v8, v6

    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->setLength(I)V

    .line 3066
    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3067
    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3068
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->setInPosition(I)V

    .line 3069
    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->setEachPosition(I)V

    .line 3070
    const/4 v8, -0x1

    if-eq v0, v8, :cond_7

    move v8, v11

    :goto_2
    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->setIsForEach(Z)V

    .line 3071
    invoke-virtual {v5, v3, v7}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->setParens(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3074
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v5

    .line 3030
    .end local v2           #iter:Lorg/mozilla/javascript/ast/AstNode;
    .end local v4           #obj:Lorg/mozilla/javascript/ast/AstNode;
    :cond_6
    :try_start_1
    const-string v8, "msg.no.paren.for"

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3074
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v8

    .line 3042
    .restart local v2       #iter:Lorg/mozilla/javascript/ast/AstNode;
    :sswitch_0
    :try_start_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 3043
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    .line 3046
    :sswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3047
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 3048
    goto :goto_1

    .line 3070
    .restart local v4       #obj:Lorg/mozilla/javascript/ast/AstNode;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 3038
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x53 -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method private arrayLiteral()Lorg/mozilla/javascript/ast/AstNode;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string v14, "msg.no.bracket.arg"

    .line 2928
    iget v10, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v11, 0x53

    if-eq v10, v11, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2929
    :cond_0
    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v10, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v7, pos:I
    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v10, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2930
    .local v4, end:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2931
    .local v3, elements:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    new-instance v6, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-direct {v6, v7}, Lorg/mozilla/javascript/ast/ArrayLiteral;-><init>(I)V

    .line 2932
    .local v6, pn:Lorg/mozilla/javascript/ast/ArrayLiteral;
    const/4 v1, 0x1

    .line 2933
    .local v1, after_lb_or_comma:Z
    const/4 v0, -0x1

    .line 2934
    .local v0, afterComma:I
    const/4 v8, 0x0

    .line 2936
    .local v8, skipCount:I
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v9

    .line 2937
    .local v9, tt:I
    const/16 v10, 0x59

    if-ne v9, v10, :cond_2

    .line 2938
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2939
    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v10, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2940
    if-nez v1, :cond_1

    .line 2941
    const/4 v1, 0x1

    goto :goto_0

    .line 2943
    :cond_1
    new-instance v10, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v10, v11, v12}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2944
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2946
    :cond_2
    const/16 v10, 0x54

    if-ne v9, v10, :cond_5

    .line 2947
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2953
    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v10, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2954
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v1, :cond_4

    move v11, v12

    :goto_1
    add-int/2addr v10, v11

    invoke-virtual {v6, v10}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setDestructuringLength(I)V

    .line 2956
    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setSkipCount(I)V

    .line 2957
    const/4 v10, -0x1

    if-eq v0, v10, :cond_3

    .line 2958
    const-string v10, "msg.array.trailing.comma"

    invoke-direct {p0, v10, v7, v3, v0}, Lorg/mozilla/javascript/Parser;->warnTrailingComma(Ljava/lang/String;ILjava/util/List;I)V

    .line 2975
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    .line 2976
    .local v2, e:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/ast/ArrayLiteral;->addElement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_2

    .end local v2           #e:Lorg/mozilla/javascript/ast/AstNode;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    move v11, v13

    .line 2954
    goto :goto_1

    .line 2961
    :cond_5
    const/16 v10, 0x77

    if-ne v9, v10, :cond_6

    if-nez v1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v12, :cond_6

    .line 2963
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v10, v7}, Lorg/mozilla/javascript/Parser;->arrayComprehension(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    .line 2979
    :goto_3
    return-object v10

    .line 2964
    :cond_6
    if-nez v9, :cond_7

    .line 2965
    const-string v10, "msg.no.bracket.arg"

    invoke-virtual {p0, v14}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 2967
    :cond_7
    if-nez v1, :cond_8

    .line 2968
    const-string v10, "msg.no.bracket.arg"

    invoke-virtual {p0, v14}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2970
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2971
    const/4 v1, 0x0

    .line 2972
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 2978
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    sub-int v10, v4, v7

    invoke-virtual {v6, v10}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setLength(I)V

    move-object v10, v6

    .line 2979
    goto :goto_3
.end method

.method private assignExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2079
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    .line 2080
    .local v5, tt:I
    const/16 v6, 0x48

    if-ne v5, v6, :cond_0

    .line 2081
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2108
    :goto_0
    return-object v6

    .line 2083
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 2084
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    .line 2085
    const/16 v6, 0x5a

    if-gt v6, v5, :cond_3

    const/16 v6, 0x65

    if-gt v5, v6, :cond_3

    .line 2086
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2089
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v0

    .line 2091
    .local v0, jsdoc:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2092
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2093
    .local v2, opPos:I
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v1

    .line 2095
    .local v1, opLineno:I
    new-instance v4, Lorg/mozilla/javascript/ast/Assignment;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6, v2}, Lorg/mozilla/javascript/ast/Assignment;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2097
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v4, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    .line 2098
    if-eqz v0, :cond_1

    .line 2099
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/AstNode;->setJsDoc(Ljava/lang/String;)V

    :cond_1
    move-object v3, v4

    .end local v0           #jsdoc:Ljava/lang/String;
    .end local v1           #opLineno:I
    .end local v2           #opPos:I
    .end local v4           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v3       #pn:Lorg/mozilla/javascript/ast/AstNode;
    :cond_2
    :goto_1
    move-object v6, v3

    .line 2108
    goto :goto_0

    .line 2101
    :cond_3
    const/16 v6, 0x52

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v6

    const/16 v7, 0x21

    if-ne v6, v7, :cond_2

    .line 2104
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2105
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/AstNode;->setJsDoc(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private attributeAccess()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "*"

    .line 2679
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v1

    .local v1, tt:I
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2681
    .local v0, atPos:I
    sparse-switch v1, :sswitch_data_0

    .line 2696
    const-string v2, "msg.no.name.after.xmlAttr"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2697
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v2

    :goto_0
    return-object v2

    .line 2684
    :sswitch_0
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lorg/mozilla/javascript/Parser;->propertyName(ILjava/lang/String;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    goto :goto_0

    .line 2688
    :sswitch_1
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const-string v3, "*"

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v2, v5, v3}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    .line 2689
    const-string v2, "*"

    invoke-direct {p0, v0, v5, v4}, Lorg/mozilla/javascript/Parser;->propertyName(ILjava/lang/String;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    goto :goto_0

    .line 2693
    :sswitch_2
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v0, v2, v3}, Lorg/mozilla/javascript/Parser;->xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;

    move-result-object v2

    goto :goto_0

    .line 2681
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x27 -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method private autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 3
    .parameter "pn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1099
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekFlaggedToken()I

    move-result v1

    .line 1100
    .local v1, ttFlagged:I
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    .line 1101
    .local v0, pos:I
    const v2, 0xffff

    and-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 1115
    const/high16 v2, 0x1

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    .line 1117
    const-string v2, "msg.no.semi.stmt"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1123
    :goto_0
    return-void

    .line 1104
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1106
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    goto :goto_0

    .line 1112
    :sswitch_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/Parser;->warnMissingSemi(II)V

    goto :goto_0

    .line 1119
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/Parser;->warnMissingSemi(II)V

    goto :goto_0

    .line 1101
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_1
        0x52 -> :sswitch_0
        0x56 -> :sswitch_1
    .end sparse-switch
.end method

.method private bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xb

    .line 2190
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->eqExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2191
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2192
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2193
    .local v1, opPos:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2194
    .local v0, lineno:I
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->eqExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v5, v2, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2195
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2196
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2197
    .end local v0           #lineno:I
    .end local v1           #opPos:I
    :cond_0
    return-object v2
.end method

.method private bitOrExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    .line 2164
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2165
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2166
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2167
    .local v1, opPos:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2168
    .local v0, lineno:I
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v5, v2, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2169
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2170
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2171
    .end local v0           #lineno:I
    .end local v1           #opPos:I
    :cond_0
    return-object v2
.end method

.method private bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 2177
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2178
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2179
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2180
    .local v1, opPos:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2181
    .local v0, lineno:I
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v5, v2, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2182
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2183
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2184
    .end local v0           #lineno:I
    .end local v1           #opPos:I
    :cond_0
    return-object v2
.end method

.method private block()Lorg/mozilla/javascript/ast/AstNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1734
    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1735
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1736
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1737
    .local v1, pos:I
    new-instance v0, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    .line 1738
    .local v0, block:Lorg/mozilla/javascript/ast/Scope;
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/Scope;->setLineno(I)V

    .line 1739
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 1741
    :try_start_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    .line 1742
    const/16 v2, 0x56

    const-string v3, "msg.no.brace.block"

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1743
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/Scope;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1746
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v2
.end method

.method private breakStatement()Lorg/mozilla/javascript/ast/BreakStatement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1544
    iget v7, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v8, 0x78

    if-eq v7, v8, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1545
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1546
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v7, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .local v4, lineno:I
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v6, pos:I
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v7, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1547
    .local v2, end:I
    const/4 v0, 0x0

    .line 1548
    .local v0, breakLabel:Lorg/mozilla/javascript/ast/Name;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_1

    .line 1549
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    .line 1550
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    .line 1554
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;

    move-result-object v3

    .line 1556
    .local v3, labels:Lorg/mozilla/javascript/ast/LabeledStatement;
    if-nez v3, :cond_5

    const/4 v7, 0x0

    move-object v1, v7

    .line 1558
    .local v1, breakTarget:Lorg/mozilla/javascript/ast/Jump;
    :goto_0
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 1559
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 1560
    :cond_2
    if-nez v0, :cond_3

    .line 1561
    const-string v7, "msg.bad.break"

    sub-int v8, v2, v6

    invoke-virtual {p0, v7, v6, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 1568
    :cond_3
    :goto_1
    new-instance v5, Lorg/mozilla/javascript/ast/BreakStatement;

    sub-int v7, v2, v6

    invoke-direct {v5, v6, v7}, Lorg/mozilla/javascript/ast/BreakStatement;-><init>(II)V

    .line 1569
    .local v5, pn:Lorg/mozilla/javascript/ast/BreakStatement;
    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/BreakStatement;->setBreakLabel(Lorg/mozilla/javascript/ast/Name;)V

    .line 1571
    if-eqz v1, :cond_4

    .line 1572
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/BreakStatement;->setBreakTarget(Lorg/mozilla/javascript/ast/Jump;)V

    .line 1573
    :cond_4
    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/BreakStatement;->setLineno(I)V

    .line 1574
    return-object v5

    .line 1556
    .end local v1           #breakTarget:Lorg/mozilla/javascript/ast/Jump;
    .end local v5           #pn:Lorg/mozilla/javascript/ast/BreakStatement;
    :cond_5
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 1564
    .restart local v1       #breakTarget:Lorg/mozilla/javascript/ast/Jump;
    :cond_6
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #breakTarget:Lorg/mozilla/javascript/ast/Jump;
    check-cast v1, Lorg/mozilla/javascript/ast/Jump;

    .restart local v1       #breakTarget:Lorg/mozilla/javascript/ast/Jump;
    goto :goto_1
.end method

.method private checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V
    .locals 4
    .parameter "expr"

    .prologue
    .line 3308
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 3309
    .local v0, op:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v1

    .line 3310
    .local v1, tt:I
    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    const/16 v2, 0x21

    if-eq v1, v2, :cond_0

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    const/16 v2, 0x43

    if-eq v1, v2, :cond_0

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    .line 3315
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getType()I

    move-result v2

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_1

    const-string v2, "msg.bad.incr"

    :goto_0
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3318
    :cond_0
    return-void

    .line 3315
    :cond_1
    const-string v2, "msg.bad.decr"

    goto :goto_0
.end method

.method private checkCallRequiresActivation(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 4
    .parameter "pn"

    .prologue
    const-string v3, "eval"

    .line 3294
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    const-string v1, "eval"

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_2

    const-string v1, "eval"

    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3298
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 3299
    :cond_2
    return-void
.end method

.method private codeBug()Ljava/lang/RuntimeException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 3757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ts.cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ts.tokenBeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private condExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2114
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->orExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    .line 2115
    .local v7, pn:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v9, 0x66

    invoke-direct {p0, v9}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2116
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v9, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2117
    .local v6, line:I
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v8, qmarkPos:I
    const/4 v2, -0x1

    .line 2118
    .local v2, colonPos:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 2119
    .local v4, ifTrue:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v9, 0x67

    const-string v10, "msg.no.colon.cond"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2120
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2121
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 2122
    .local v3, ifFalse:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    .local v0, beg:I
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v9

    sub-int v5, v9, v0

    .line 2123
    .local v5, len:I
    new-instance v1, Lorg/mozilla/javascript/ast/ConditionalExpression;

    invoke-direct {v1, v0, v5}, Lorg/mozilla/javascript/ast/ConditionalExpression;-><init>(II)V

    .line 2124
    .local v1, ce:Lorg/mozilla/javascript/ast/ConditionalExpression;
    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setLineno(I)V

    .line 2125
    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setTestExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2126
    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setTrueExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2127
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setFalseExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2128
    sub-int v9, v8, v0

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setQuestionMarkPosition(I)V

    .line 2129
    sub-int v9, v2, v0

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setColonPosition(I)V

    .line 2130
    move-object v7, v1

    .line 2132
    .end local v0           #beg:I
    .end local v1           #ce:Lorg/mozilla/javascript/ast/ConditionalExpression;
    .end local v2           #colonPos:I
    .end local v3           #ifFalse:Lorg/mozilla/javascript/ast/AstNode;
    .end local v4           #ifTrue:Lorg/mozilla/javascript/ast/AstNode;
    .end local v5           #len:I
    .end local v6           #line:I
    .end local v8           #qmarkPos:I
    :cond_1
    return-object v7
.end method

.method private condition()Lorg/mozilla/javascript/Parser$ConditionData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    new-instance v0, Lorg/mozilla/javascript/Parser$ConditionData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser$ConditionData;-><init>(Lorg/mozilla/javascript/Parser$1;)V

    .line 928
    .local v0, data:Lorg/mozilla/javascript/Parser$ConditionData;
    const/16 v1, 0x57

    const-string v2, "msg.no.paren.cond"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    .line 931
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    .line 933
    const/16 v1, 0x58

    const-string v2, "msg.no.paren.after.cond"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    .line 938
    :cond_1
    iget-object v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v1, v1, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v1, :cond_2

    .line 939
    const-string v1, "msg.equal.as.assign"

    const-string v2, ""

    iget-object v3, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v3

    iget-object v4, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 943
    :cond_2
    return-object v0
.end method

.method private consumeToken()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 358
    return-void
.end method

.method private continueStatement()Lorg/mozilla/javascript/ast/ContinueStatement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1580
    iget v7, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v8, 0x79

    if-eq v7, v8, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1581
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1582
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v7, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .local v3, lineno:I
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v5, pos:I
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v7, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1583
    .local v0, end:I
    const/4 v1, 0x0

    .line 1584
    .local v1, label:Lorg/mozilla/javascript/ast/Name;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_1

    .line 1585
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    .line 1586
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v0

    .line 1590
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;

    move-result-object v2

    .line 1591
    .local v2, labels:Lorg/mozilla/javascript/ast/LabeledStatement;
    const/4 v6, 0x0

    .line 1592
    .local v6, target:Lorg/mozilla/javascript/ast/Loop;
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    .line 1593
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 1594
    :cond_2
    const-string v7, "msg.continue.outside"

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1605
    .end local p0
    :goto_0
    new-instance v4, Lorg/mozilla/javascript/ast/ContinueStatement;

    sub-int v7, v0, v5

    invoke-direct {v4, v5, v7}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    .line 1606
    .local v4, pn:Lorg/mozilla/javascript/ast/ContinueStatement;
    if-eqz v6, :cond_3

    .line 1607
    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/ast/ContinueStatement;->setTarget(Lorg/mozilla/javascript/ast/Loop;)V

    .line 1608
    :cond_3
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    .line 1609
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLineno(I)V

    .line 1610
    return-object v4

    .line 1596
    .end local v4           #pn:Lorg/mozilla/javascript/ast/ContinueStatement;
    .restart local p0
    :cond_4
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #target:Lorg/mozilla/javascript/ast/Loop;
    check-cast v6, Lorg/mozilla/javascript/ast/Loop;

    .restart local v6       #target:Lorg/mozilla/javascript/ast/Loop;
    goto :goto_0

    .line 1599
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    instance-of v7, v7, Lorg/mozilla/javascript/ast/Loop;

    if-nez v7, :cond_7

    .line 1600
    :cond_6
    const-string v7, "msg.continue.nonloop"

    sub-int v8, v0, v5

    invoke-virtual {p0, v7, v5, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 1602
    :cond_7
    if-nez v2, :cond_8

    const/4 v7, 0x0

    move-object v6, v7

    .end local p0
    :goto_1
    goto :goto_0

    .restart local p0
    :cond_8
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/Loop;

    move-object v6, p0

    goto :goto_1
.end method

.method private createNameNode()Lorg/mozilla/javascript/ast/Name;
    .locals 2

    .prologue
    .line 3218
    const/4 v0, 0x0

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    return-object v0
.end method

.method private createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;
    .locals 7
    .parameter "checkActivation"
    .parameter "token"

    .prologue
    const/4 v5, 0x0

    const-string v6, ""

    .line 3229
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 3230
    .local v0, beg:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v3

    .line 3231
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 3232
    .local v1, lineno:I
    const-string v4, ""

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3233
    iget v0, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    .line 3234
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    .line 3235
    iget v1, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    .line 3236
    iput v5, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    .line 3237
    const-string v4, ""

    iput-object v6, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    .line 3238
    iput v5, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    .line 3240
    :cond_0
    if-nez v3, :cond_1

    .line 3241
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3242
    const-string v3, ""

    .line 3247
    :cond_1
    :goto_0
    new-instance v2, Lorg/mozilla/javascript/ast/Name;

    invoke-direct {v2, v0, v3}, Lorg/mozilla/javascript/ast/Name;-><init>(ILjava/lang/String;)V

    .line 3248
    .local v2, name:Lorg/mozilla/javascript/ast/Name;
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/Name;->setLineno(I)V

    .line 3249
    if-eqz p1, :cond_2

    .line 3250
    invoke-virtual {p0, v3, p2}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    .line 3252
    :cond_2
    return-object v2

    .line 3244
    .end local v2           #name:Lorg/mozilla/javascript/ast/Name;
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method private createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;
    .locals 4

    .prologue
    .line 3256
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v1, pos:I
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 3257
    .local v0, end:I
    new-instance v2, Lorg/mozilla/javascript/ast/StringLiteral;

    sub-int v3, v0, v1

    invoke-direct {v2, v1, v3}, Lorg/mozilla/javascript/ast/StringLiteral;-><init>(II)V

    .line 3258
    .local v2, s:Lorg/mozilla/javascript/ast/StringLiteral;
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/StringLiteral;->setLineno(I)V

    .line 3259
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/StringLiteral;->setValue(Ljava/lang/String;)V

    .line 3260
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getQuoteChar()C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/StringLiteral;->setQuoteCharacter(C)V

    .line 3261
    return-object v2
.end method

.method private defaultXmlNamespace()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x27

    const-string v7, "msg.bad.namespace"

    .line 1753
    iget v5, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v6, 0x74

    if-eq v5, v6, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1754
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1755
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    .line 1756
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 1757
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .local v3, lineno:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1759
    .local v4, pos:I
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "xml"

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1760
    :cond_1
    const-string v5, "msg.bad.namespace"

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1762
    :cond_2
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "namespace"

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1763
    :cond_3
    const-string v5, "msg.bad.namespace"

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1765
    :cond_4
    const/16 v5, 0x5a

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1766
    const-string v5, "msg.bad.namespace"

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1769
    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 1770
    .local v1, e:Lorg/mozilla/javascript/ast/AstNode;
    new-instance v0, Lorg/mozilla/javascript/ast/UnaryExpression;

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    sub-int/2addr v5, v4

    invoke-direct {v0, v4, v5}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(II)V

    .line 1771
    .local v0, dxmln:Lorg/mozilla/javascript/ast/UnaryExpression;
    const/16 v5, 0x4a

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperator(I)V

    .line 1772
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperand(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1773
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/UnaryExpression;->setLineno(I)V

    .line 1775
    new-instance v2, Lorg/mozilla/javascript/ast/ExpressionStatement;

    const/4 v5, 0x1

    invoke-direct {v2, v0, v5}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 1776
    .local v2, es:Lorg/mozilla/javascript/ast/ExpressionStatement;
    return-object v2
.end method

.method private destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/mozilla/javascript/Parser$ParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2790
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    .line 2791
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->primaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2793
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    throw v0
.end method

.method private doLoop()Lorg/mozilla/javascript/ast/DoLoop;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    iget v5, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v6, 0x76

    if-eq v5, v6, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1247
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1248
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1249
    .local v4, pos:I
    new-instance v3, Lorg/mozilla/javascript/ast/DoLoop;

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/ast/DoLoop;-><init>(I)V

    .line 1250
    .local v3, pn:Lorg/mozilla/javascript/ast/DoLoop;
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/DoLoop;->setLineno(I)V

    .line 1251
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V

    .line 1253
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 1254
    .local v0, body:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v5, 0x75

    const-string v6, "msg.no.while.do"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1255
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/DoLoop;->setWhilePosition(I)V

    .line 1256
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v1

    .line 1257
    .local v1, data:Lorg/mozilla/javascript/Parser$ConditionData;
    iget-object v5, v1, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/DoLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1258
    iget v5, v1, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v5, v4

    iget v6, v1, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Lorg/mozilla/javascript/ast/DoLoop;->setParens(II)V

    .line 1259
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    .line 1260
    .local v2, end:I
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/DoLoop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    .line 1267
    const/16 v5, 0x52

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1268
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1270
    :cond_1
    sub-int v5, v2, v4

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/DoLoop;->setLength(I)V

    .line 1271
    return-object v3

    .line 1262
    .end local v0           #body:Lorg/mozilla/javascript/ast/AstNode;
    .end local v1           #data:Lorg/mozilla/javascript/Parser$ConditionData;
    .end local v2           #end:I
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v5
.end method

.method private enterLoop(Lorg/mozilla/javascript/ast/Loop;)V
    .locals 1
    .parameter "loop"

    .prologue
    .line 452
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    .line 454
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-nez v0, :cond_1

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    .line 457
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 459
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 461
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Label;->setLoop(Lorg/mozilla/javascript/ast/Jump;)V

    .line 466
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getPosition()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/Loop;->setRelative(I)V

    .line 468
    :cond_2
    return-void
.end method

.method private enterSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 480
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    return-void
.end method

.method private eqExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2203
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->relExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 2205
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    .local v5, tt:I
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2206
    .local v1, opPos:I
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v6, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2207
    .local v0, lineno:I
    sparse-switch v5, :sswitch_data_0

    .line 2227
    return-object v3

    .line 2212
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2213
    move v2, v5

    .line 2214
    .local v2, parseToken:I
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v6}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_0

    .line 2216
    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 2217
    const/16 v2, 0x2e

    .line 2221
    :cond_0
    :goto_1
    new-instance v4, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->relExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-direct {v4, v2, v3, v6, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2222
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v4, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v3, v4

    .line 2223
    .end local v4           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v3       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2218
    :cond_1
    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    .line 2219
    const/16 v2, 0x2f

    goto :goto_1

    .line 2207
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private exitLoop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 471
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Loop;

    .line 472
    .local v0, loop:Lorg/mozilla/javascript/ast/Loop;
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 473
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Loop;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Loop;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Loop;->setRelative(I)V

    .line 476
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 477
    return-void
.end method

.method private exitSwitch()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method private expr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x59

    .line 2060
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2061
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v4

    .line 2062
    .local v4, pos:I
    :goto_0
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2063
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2064
    .local v0, lineno:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2065
    .local v1, opPos:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2066
    const-string v5, "msg.no.side.effects"

    const-string v6, ""

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p0, v5, v6, v4, v7}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2068
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x48

    if-ne v5, v6, :cond_1

    .line 2069
    const-string v5, "msg.yield.parenthesized"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2070
    :cond_1
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v3, v8, v2, v5, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2071
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2072
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2073
    .end local v0           #lineno:I
    .end local v1           #opPos:I
    :cond_2
    return-object v2
.end method

.method private forLoop()Lorg/mozilla/javascript/ast/Loop;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/Parser;->currentToken:I

    move/from16 v23, v0

    const/16 v24, 0x77

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1278
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v9, v0

    .local v9, forPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move/from16 v16, v0

    .line 1280
    .local v16, lineno:I
    const/4 v14, 0x0

    .local v14, isForEach:Z
    const/4 v15, 0x0

    .line 1281
    .local v15, isForIn:Z
    const/4 v6, -0x1

    .local v6, eachPos:I
    const/4 v10, -0x1

    .local v10, inPos:I
    const/16 v17, -0x1

    .local v17, lp:I
    const/16 v19, -0x1

    .line 1282
    .local v19, rp:I
    const/4 v13, 0x0

    .line 1283
    .local v13, init:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v4, 0x0

    .line 1284
    .local v4, cond:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v11, 0x0

    .line 1285
    .local v11, incr:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v18, 0x0

    .line 1287
    .local v18, pn:Lorg/mozilla/javascript/ast/Loop;
    new-instance v20, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct/range {v20 .. v20}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    .line 1288
    .local v20, tempScope:Lorg/mozilla/javascript/ast/Scope;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 1291
    const/16 v23, 0x27

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1292
    const-string v23, "each"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1293
    const/4 v14, 0x1

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v23, v0

    sub-int v6, v23, v9

    .line 1300
    :cond_1
    :goto_0
    const/16 v23, 0x57

    const-string v24, "msg.no.paren.for"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v23, v0

    sub-int v17, v23, v9

    .line 1302
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v22

    .line 1304
    .local v22, tt:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->forLoopInit(I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    .line 1306
    const/16 v23, 0x34

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1307
    const/4 v15, 0x1

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v23, v0

    sub-int v10, v23, v9

    .line 1309
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1330
    :goto_1
    const/16 v23, 0x58

    const-string v24, "msg.no.paren.for.ctrl"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v23, v0

    sub-int v19, v23, v9

    .line 1333
    :cond_3
    if-eqz v15, :cond_b

    .line 1334
    new-instance v7, Lorg/mozilla/javascript/ast/ForInLoop;

    invoke-direct {v7, v9}, Lorg/mozilla/javascript/ast/ForInLoop;-><init>(I)V

    .line 1335
    .local v7, fis:Lorg/mozilla/javascript/ast/ForInLoop;
    move-object v0, v13

    instance-of v0, v0, Lorg/mozilla/javascript/ast/VariableDeclaration;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1337
    move-object v0, v13

    check-cast v0, Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    .line 1338
    const-string v23, "msg.mult.index"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1341
    :cond_4
    invoke-virtual {v7, v13}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1342
    invoke-virtual {v7, v4}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1343
    invoke-virtual {v7, v10}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    .line 1344
    invoke-virtual {v7, v14}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForEach(Z)V

    .line 1345
    invoke-virtual {v7, v6}, Lorg/mozilla/javascript/ast/ForInLoop;->setEachPosition(I)V

    .line 1346
    move-object/from16 v18, v7

    .line 1356
    .end local v7           #fis:Lorg/mozilla/javascript/ast/ForInLoop;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->replaceWith(Lorg/mozilla/javascript/ast/Scope;)V

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 1362
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 1365
    .local v3, body:Lorg/mozilla/javascript/ast/AstNode;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v23

    sub-int v23, v23, v9

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Loop;->setLength(I)V

    .line 1366
    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1368
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 1376
    :cond_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    .line 1377
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Loop;->setLineno(I)V

    .line 1378
    return-object v18

    .line 1296
    .end local v3           #body:Lorg/mozilla/javascript/ast/AstNode;
    .end local v22           #tt:I
    :cond_6
    :try_start_3
    const-string v23, "msg.no.paren.for"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1372
    :catchall_0
    move-exception v23

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_7
    throw v23

    .line 1311
    .restart local v22       #tt:I
    :cond_8
    const/16 v23, 0x52

    :try_start_4
    const-string v24, "msg.no.semi.for"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1312
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v23

    const/16 v24, 0x52

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1314
    new-instance v5, Lorg/mozilla/javascript/ast/EmptyExpression;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1315
    .end local v4           #cond:Lorg/mozilla/javascript/ast/AstNode;
    .local v5, cond:Lorg/mozilla/javascript/ast/AstNode;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move/from16 v23, v0

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v4, v5

    .line 1320
    .end local v5           #cond:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v4       #cond:Lorg/mozilla/javascript/ast/AstNode;
    :goto_4
    const/16 v23, 0x52

    :try_start_6
    const-string v24, "msg.no.semi.for.cond"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move/from16 v21, v0

    .line 1322
    .local v21, tmpPos:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v23

    const/16 v24, 0x58

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 1323
    new-instance v12, Lorg/mozilla/javascript/ast/EmptyExpression;

    const/16 v23, 0x1

    move-object v0, v12

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1324
    .end local v11           #incr:Lorg/mozilla/javascript/ast/AstNode;
    .local v12, incr:Lorg/mozilla/javascript/ast/AstNode;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move/from16 v23, v0

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v11, v12

    .end local v12           #incr:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v11       #incr:Lorg/mozilla/javascript/ast/AstNode;
    goto/16 :goto_1

    .line 1317
    .end local v21           #tmpPos:I
    :cond_9
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    goto :goto_4

    .line 1326
    .restart local v21       #tmpPos:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v11

    goto/16 :goto_1

    .line 1348
    .end local v21           #tmpPos:I
    :cond_b
    new-instance v8, Lorg/mozilla/javascript/ast/ForLoop;

    invoke-direct {v8, v9}, Lorg/mozilla/javascript/ast/ForLoop;-><init>(I)V

    .line 1349
    .local v8, fl:Lorg/mozilla/javascript/ast/ForLoop;
    invoke-virtual {v8, v13}, Lorg/mozilla/javascript/ast/ForLoop;->setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1350
    invoke-virtual {v8, v4}, Lorg/mozilla/javascript/ast/ForLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1351
    invoke-virtual {v8, v11}, Lorg/mozilla/javascript/ast/ForLoop;->setIncrement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1352
    move-object/from16 v18, v8

    goto/16 :goto_2

    .line 1368
    .end local v8           #fl:Lorg/mozilla/javascript/ast/ForLoop;
    :catchall_1
    move-exception v23

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1372
    .end local v4           #cond:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v5       #cond:Lorg/mozilla/javascript/ast/AstNode;
    :catchall_2
    move-exception v23

    move-object v4, v5

    .end local v5           #cond:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v4       #cond:Lorg/mozilla/javascript/ast/AstNode;
    goto/16 :goto_3

    .end local v11           #incr:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v12       #incr:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v21       #tmpPos:I
    :catchall_3
    move-exception v23

    move-object v11, v12

    .end local v12           #incr:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v11       #incr:Lorg/mozilla/javascript/ast/AstNode;
    goto/16 :goto_3
.end method

.method private forLoopInit(I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 4
    .parameter "tt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1383
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 1384
    const/4 v0, 0x0

    .line 1385
    .local v0, init:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 1386
    new-instance v0, Lorg/mozilla/javascript/ast/EmptyExpression;

    .end local v0           #init:Lorg/mozilla/javascript/ast/AstNode;
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    .line 1387
    .restart local v0       #init:Lorg/mozilla/javascript/ast/AstNode;
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    :goto_0
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v0

    .line 1388
    :cond_0
    const/16 v1, 0x7a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x99

    if-ne p1, v1, :cond_2

    .line 1389
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1390
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/Parser;->variables(II)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v0

    goto :goto_0

    .line 1392
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 1393
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1397
    .end local v0           #init:Lorg/mozilla/javascript/ast/AstNode;
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw v1
.end method

.method private function(I)Lorg/mozilla/javascript/ast/FunctionNode;
    .locals 13
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    move v10, p1

    .line 774
    .local v10, syntheticType:I
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v11, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 775
    .local v0, baseLineno:I
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 776
    .local v2, functionSourceStart:I
    const/4 v8, 0x0

    .line 777
    .local v8, name:Lorg/mozilla/javascript/ast/Name;
    const/4 v6, 0x0

    .line 779
    .local v6, memberExprNode:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v11, 0x27

    invoke-direct {p0, v11}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 780
    const/4 v11, 0x1

    const/16 v12, 0x27

    invoke-direct {p0, v11, v12}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v8

    .line 781
    iget-boolean v11, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v11, :cond_1

    .line 782
    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, id:Ljava/lang/String;
    const-string v11, "eval"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "arguments"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 784
    :cond_0
    const-string v11, "msg.bad.id.strict"

    invoke-virtual {p0, v11, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .end local v3           #id:Ljava/lang/String;
    :cond_1
    const/16 v11, 0x57

    invoke-direct {p0, v11}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 788
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v11}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowMemberExprAsFunctionName()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 789
    move-object v5, v8

    .line 790
    .local v5, memberExprHead:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v8, 0x0

    .line 791
    const/4 v11, 0x0

    invoke-direct {p0, v11, v5}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 793
    .end local v5           #memberExprHead:Lorg/mozilla/javascript/ast/AstNode;
    :cond_2
    const/16 v11, 0x57

    const-string v12, "msg.no.paren.parms"

    invoke-direct {p0, v11, v12}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 806
    :cond_3
    :goto_0
    iget v11, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v12, 0x57

    if-ne v11, v12, :cond_f

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v4, v11

    .line 808
    .local v4, lpPos:I
    :goto_1
    if-eqz v6, :cond_4

    .line 809
    const/4 v10, 0x2

    .line 812
    :cond_4
    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 815
    const/16 v11, 0x6d

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    .line 818
    :cond_5
    new-instance v1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v1, v2, v8}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>(ILorg/mozilla/javascript/ast/Name;)V

    .line 819
    .local v1, fnNode:Lorg/mozilla/javascript/ast/FunctionNode;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    .line 820
    const/4 v11, -0x1

    if-eq v4, v11, :cond_6

    .line 821
    sub-int v11, v4, v2

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/ast/FunctionNode;->setLp(I)V

    .line 823
    :cond_6
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v11

    if-nez v11, :cond_7

    iget v11, p0, Lorg/mozilla/javascript/Parser;->nestingOfWith:I

    if-lez v11, :cond_8

    .line 829
    :cond_7
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setIgnoreDynamicScope()V

    .line 832
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/ast/FunctionNode;->setJsDoc(Ljava/lang/String;)V

    .line 834
    new-instance v9, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v9, p0, v1}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    .line 836
    .local v9, savedVars:Lorg/mozilla/javascript/Parser$PerFunctionVariables;
    :try_start_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->parseFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;)V

    .line 837
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parseFunctionBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/ast/FunctionNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 838
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v1, v2, v11}, Lorg/mozilla/javascript/ast/FunctionNode;->setEncodedSourceBounds(II)V

    .line 839
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v11, v2

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/ast/FunctionNode;->setLength(I)V

    .line 841
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v11}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v11

    invoke-virtual {v11}, Lorg/mozilla/javascript/ast/AstNode;->hasConsistentReturnUsage()Z

    move-result v11

    if-nez v11, :cond_9

    .line 843
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v11

    if-lez v11, :cond_10

    const-string v11, "msg.no.return.value"

    move-object v7, v11

    .line 846
    .local v7, msg:Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_11

    const-string v11, ""

    :goto_3
    invoke-virtual {p0, v7, v11}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .end local v7           #msg:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v11

    if-lez v11, :cond_a

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v11

    if-nez v11, :cond_a

    .line 854
    const/16 v11, 0x6d

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    :cond_a
    invoke-virtual {v9}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    .line 860
    if-eqz v6, :cond_b

    .line 862
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 863
    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/FunctionNode;->setMemberExprNode(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 875
    :cond_b
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/ast/FunctionNode;->setSourceName(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setBaseLineno(I)V

    .line 877
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/ast/FunctionNode;->setEndLineno(I)V

    .line 883
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v11}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 884
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/ast/FunctionNode;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 886
    :cond_c
    return-object v1

    .line 795
    .end local v1           #fnNode:Lorg/mozilla/javascript/ast/FunctionNode;
    .end local v4           #lpPos:I
    .end local v9           #savedVars:Lorg/mozilla/javascript/Parser$PerFunctionVariables;
    :cond_d
    const/16 v11, 0x57

    invoke-direct {p0, v11}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 798
    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v11}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowMemberExprAsFunctionName()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 802
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 804
    :cond_e
    const/16 v11, 0x57

    const-string v12, "msg.no.paren.parms"

    invoke-direct {p0, v11, v12}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 806
    :cond_f
    const/4 v11, -0x1

    move v4, v11

    goto/16 :goto_1

    .line 843
    .restart local v1       #fnNode:Lorg/mozilla/javascript/ast/FunctionNode;
    .restart local v4       #lpPos:I
    .restart local v9       #savedVars:Lorg/mozilla/javascript/Parser$PerFunctionVariables;
    :cond_10
    :try_start_1
    const-string v11, "msg.anon.no.return.value"

    move-object v7, v11

    goto :goto_2

    .line 846
    .restart local v7       #msg:Ljava/lang/String;
    :cond_11
    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    goto :goto_3

    .line 857
    .end local v7           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-virtual {v9}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw v11
.end method

.method private getAndResetJsDoc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Ljava/lang/String;

    .line 298
    .local v0, saved:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Ljava/lang/String;

    .line 299
    return-object v0
.end method

.method private getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 681
    instance-of v1, p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v1, :cond_0

    .line 682
    check-cast p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 683
    .local v0, e:Lorg/mozilla/javascript/ast/AstNode;
    instance-of v1, v0, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v1, :cond_0

    .line 684
    check-cast v0, Lorg/mozilla/javascript/ast/StringLiteral;

    .end local v0           #e:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 687
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I
    .locals 2
    .parameter "n"

    .prologue
    .line 276
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getterSetterProperty(ILorg/mozilla/javascript/ast/AstNode;Z)Lorg/mozilla/javascript/ast/ObjectProperty;
    .locals 5
    .parameter "pos"
    .parameter "propName"
    .parameter "isGetter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3198
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    .line 3200
    .local v1, fn:Lorg/mozilla/javascript/ast/FunctionNode;
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    .line 3201
    .local v2, name:Lorg/mozilla/javascript/ast/Name;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 3202
    const-string v4, "msg.bad.prop"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3204
    :cond_0
    new-instance v3, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v3, p1}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>(I)V

    .line 3205
    .local v3, pn:Lorg/mozilla/javascript/ast/ObjectProperty;
    if-eqz p3, :cond_1

    .line 3206
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsGetter()V

    .line 3210
    :goto_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v0

    .line 3211
    .local v0, end:I
    invoke-virtual {v3, p2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3212
    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/ObjectProperty;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3213
    sub-int v4, v0, p1

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ObjectProperty;->setLength(I)V

    .line 3214
    return-object v3

    .line 3208
    .end local v0           #end:I
    :cond_1
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsSetter()V

    goto :goto_0
.end method

.method private ifStatement()Lorg/mozilla/javascript/ast/IfStatement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1128
    iget v8, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v9, 0x70

    if-eq v8, v9, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1129
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1130
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v7, pos:I
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v8, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .local v5, lineno:I
    const/4 v1, -0x1

    .line 1131
    .local v1, elsePos:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v0

    .line 1132
    .local v0, data:Lorg/mozilla/javascript/Parser$ConditionData;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .local v4, ifTrue:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v3, 0x0

    .line 1133
    .local v3, ifFalse:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v8, 0x71

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1134
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v1, v8, v7

    .line 1135
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 1137
    :cond_1
    if-eqz v3, :cond_2

    move-object v8, v3

    :goto_0
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    .line 1138
    .local v2, end:I
    new-instance v6, Lorg/mozilla/javascript/ast/IfStatement;

    sub-int v8, v2, v7

    invoke-direct {v6, v7, v8}, Lorg/mozilla/javascript/ast/IfStatement;-><init>(II)V

    .line 1139
    .local v6, pn:Lorg/mozilla/javascript/ast/IfStatement;
    iget-object v8, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/ast/IfStatement;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1140
    iget v8, v0, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v8, v7

    iget v9, v0, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v9, v7

    invoke-virtual {v6, v8, v9}, Lorg/mozilla/javascript/ast/IfStatement;->setParens(II)V

    .line 1141
    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/IfStatement;->setThenPart(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1142
    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/ast/IfStatement;->setElsePart(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1143
    invoke-virtual {v6, v1}, Lorg/mozilla/javascript/ast/IfStatement;->setElsePosition(I)V

    .line 1144
    invoke-virtual {v6, v5}, Lorg/mozilla/javascript/ast/IfStatement;->setLineno(I)V

    .line 1145
    return-object v6

    .end local v2           #end:I
    .end local v6           #pn:Lorg/mozilla/javascript/ast/IfStatement;
    :cond_2
    move-object v8, v4

    .line 1137
    goto :goto_0
.end method

.method private let(ZI)Lorg/mozilla/javascript/ast/AstNode;
    .locals 8
    .parameter "isStatement"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1949
    new-instance v3, Lorg/mozilla/javascript/ast/LetNode;

    invoke-direct {v3, p2}, Lorg/mozilla/javascript/ast/LetNode;-><init>(I)V

    .line 1950
    .local v3, pn:Lorg/mozilla/javascript/ast/LetNode;
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/LetNode;->setLineno(I)V

    .line 1951
    const/16 v6, 0x57

    const-string v7, "msg.no.paren.after.let"

    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1952
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v6, p2

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/LetNode;->setLp(I)V

    .line 1953
    :cond_0
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 1955
    const/16 v6, 0x99

    :try_start_0
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/Parser;->variables(II)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v5

    .line 1956
    .local v5, vars:Lorg/mozilla/javascript/ast/VariableDeclaration;
    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/LetNode;->setVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)V

    .line 1957
    const/16 v6, 0x58

    const-string v7, "msg.no.paren.let"

    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1958
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v6, p2

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/LetNode;->setRp(I)V

    .line 1960
    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v7, 0x55

    if-ne v6, v7, :cond_3

    .line 1962
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1963
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1964
    .local v0, beg:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statements()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1965
    .local v4, stmt:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v6, 0x56

    const-string v7, "msg.no.curly.let"

    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1966
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, v0

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 1967
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, p2

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/LetNode;->setLength(I)V

    .line 1968
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/LetNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1969
    const/16 v6, 0x99

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/LetNode;->setType(I)Lorg/mozilla/javascript/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1984
    .end local v0           #beg:I
    .end local v4           #stmt:Lorg/mozilla/javascript/ast/AstNode;
    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    move-object v6, v3

    .line 1986
    :goto_0
    return-object v6

    .line 1972
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 1973
    .local v2, expr:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, p2

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/LetNode;->setLength(I)V

    .line 1974
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/LetNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1975
    if-eqz p1, :cond_2

    .line 1977
    new-instance v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-direct {v1, v3, v6}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 1979
    .local v1, es:Lorg/mozilla/javascript/ast/ExpressionStatement;
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/LetNode;->getLineno()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/ExpressionStatement;->setLineno(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1984
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    move-object v6, v1

    goto :goto_0

    .line 1977
    .end local v1           #es:Lorg/mozilla/javascript/ast/ExpressionStatement;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1984
    .end local v2           #expr:Lorg/mozilla/javascript/ast/AstNode;
    .end local v5           #vars:Lorg/mozilla/javascript/ast/VariableDeclaration;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v6
.end method

.method private letStatement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x99

    .line 1647
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    if-eq v3, v5, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1648
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1649
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .local v0, lineno:I
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1651
    .local v2, pos:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0x57

    if-ne v3, v4, :cond_1

    .line 1652
    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/Parser;->let(ZI)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 1656
    .local v1, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    .line 1657
    return-object v1

    .line 1654
    .end local v1           #pn:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    invoke-direct {p0, v5, v2}, Lorg/mozilla/javascript/Parser;->variables(II)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v1

    .restart local v1       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0
.end method

.method private lineBeginningFor(I)I
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 3351
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    if-nez v2, :cond_0

    .line 3352
    const/4 v2, -0x1

    .line 3367
    :goto_0
    return v2

    .line 3354
    :cond_0
    if-gtz p1, :cond_1

    move v2, v4

    .line 3355
    goto :goto_0

    .line 3357
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    .line 3358
    .local v0, buf:[C
    array-length v2, v0

    if-lt p1, v2, :cond_2

    .line 3359
    array-length v2, v0

    const/4 v3, 0x1

    sub-int p1, v2, v3

    .line 3361
    :cond_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    .line 3362
    aget-char v1, v0, p1

    .line 3363
    .local v1, c:C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 3364
    :cond_3
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .end local v1           #c:C
    :cond_4
    move v2, v4

    .line 3367
    goto :goto_0
.end method

.method private makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;
    .locals 4

    .prologue
    .line 3321
    new-instance v0, Lorg/mozilla/javascript/ast/ErrorNode;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/ErrorNode;-><init>(II)V

    .line 3322
    .local v0, pn:Lorg/mozilla/javascript/ast/ErrorNode;
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ErrorNode;->setLineno(I)V

    .line 3323
    return-object v0
.end method

.method private matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1526
    const/4 v0, 0x0

    .line 1528
    .local v0, label:Lorg/mozilla/javascript/ast/LabeledStatement;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_1

    .line 1529
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1530
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1531
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #label:Lorg/mozilla/javascript/ast/LabeledStatement;
    check-cast v0, Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 1533
    .restart local v0       #label:Lorg/mozilla/javascript/ast/LabeledStatement;
    :cond_0
    if-nez v0, :cond_1

    .line 1534
    const-string v1, "msg.undef.label"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1538
    :cond_1
    return-object v0
.end method

.method private matchToken(I)Z
    .locals 1
    .parameter "toMatch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    .line 383
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 384
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;
    .locals 14
    .parameter "allowCallSyntax"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2462
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v11

    .local v11, tt:I
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v12, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2465
    .local v3, lineno:I
    const/16 v12, 0x1e

    if-eq v11, v12, :cond_0

    .line 2466
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->primaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2501
    .local v6, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    .line 2502
    invoke-direct {p0, p1, v6}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    .line 2503
    .local v9, tail:Lorg/mozilla/javascript/ast/AstNode;
    return-object v9

    .line 2468
    .end local v6           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .end local v9           #tail:Lorg/mozilla/javascript/ast/AstNode;
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2469
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v12, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2470
    .local v7, pos:I
    new-instance v5, Lorg/mozilla/javascript/ast/NewExpression;

    invoke-direct {v5, v7}, Lorg/mozilla/javascript/ast/NewExpression;-><init>(I)V

    .line 2472
    .local v5, nx:Lorg/mozilla/javascript/ast/NewExpression;
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    .line 2473
    .local v10, target:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v1

    .line 2474
    .local v1, end:I
    invoke-virtual {v5, v10}, Lorg/mozilla/javascript/ast/NewExpression;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2476
    const/4 v4, -0x1

    .line 2477
    .local v4, lp:I
    const/16 v12, 0x57

    invoke-direct {p0, v12}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2478
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v12, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2479
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->argumentList()Ljava/util/List;

    move-result-object v0

    .line 2480
    .local v0, args:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/high16 v13, 0x1

    if-le v12, v13, :cond_1

    .line 2481
    const-string v12, "msg.too.many.constructor.args"

    invoke-virtual {p0, v12}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2482
    :cond_1
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v12, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2483
    .local v8, rp:I
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v12, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2484
    if-eqz v0, :cond_2

    .line 2485
    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/NewExpression;->setArguments(Ljava/util/List;)V

    .line 2486
    :cond_2
    sub-int v12, v4, v7

    sub-int v13, v8, v7

    invoke-virtual {v5, v12, v13}, Lorg/mozilla/javascript/ast/NewExpression;->setParens(II)V

    .line 2493
    .end local v0           #args:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    .end local v8           #rp:I
    :cond_3
    const/16 v12, 0x55

    invoke-direct {p0, v12}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2494
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v2

    .line 2495
    .local v2, initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v1

    .line 2496
    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/ast/NewExpression;->setInitializer(Lorg/mozilla/javascript/ast/ObjectLiteral;)V

    .line 2498
    .end local v2           #initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;
    :cond_4
    sub-int v12, v1, v7

    invoke-virtual {v5, v12}, Lorg/mozilla/javascript/ast/NewExpression;->setLength(I)V

    .line 2499
    move-object v6, v5

    .restart local v6       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0
.end method

.method private memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 19
    .parameter "allowCallSyntax"
    .parameter "pn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2517
    if-nez p2, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2518
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v12

    .line 2522
    .local v12, pos:I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v16

    .line 2523
    .local v16, tt:I
    sparse-switch v16, :sswitch_data_0

    .line 2596
    :cond_1
    return-object p2

    .line 2526
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move v10, v0

    .line 2527
    .local v10, lineno:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->propertyAccess(ILorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    .line 2528
    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    goto :goto_0

    .line 2532
    .end local v10           #lineno:I
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v11, v0

    .local v11, opPos:I
    const/4 v15, -0x1

    .line 2534
    .local v15, rp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move v10, v0

    .line 2535
    .restart local v10       #lineno:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    .line 2536
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 2537
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    .line 2538
    .local v7, filter:Lorg/mozilla/javascript/ast/AstNode;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    .line 2539
    .local v4, end:I
    const/16 v17, 0x58

    const-string v18, "msg.no.paren"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v15, v0

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v4, v0

    .line 2543
    :cond_2
    new-instance v13, Lorg/mozilla/javascript/ast/XmlDotQuery;

    sub-int v17, v4, v12

    move-object v0, v13

    move v1, v12

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/XmlDotQuery;-><init>(II)V

    .line 2544
    .local v13, q:Lorg/mozilla/javascript/ast/XmlDotQuery;
    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/XmlDotQuery;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2545
    invoke-virtual {v13, v7}, Lorg/mozilla/javascript/ast/XmlDotQuery;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2546
    invoke-virtual {v13, v11}, Lorg/mozilla/javascript/ast/XmlDotQuery;->setOperatorPosition(I)V

    .line 2547
    sub-int v17, v15, v12

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/XmlDotQuery;->setRp(I)V

    .line 2548
    invoke-virtual {v13, v10}, Lorg/mozilla/javascript/ast/XmlDotQuery;->setLineno(I)V

    .line 2549
    move-object/from16 p2, v13

    .line 2550
    goto/16 :goto_0

    .line 2553
    .end local v4           #end:I
    .end local v7           #filter:Lorg/mozilla/javascript/ast/AstNode;
    .end local v10           #lineno:I
    .end local v11           #opPos:I
    .end local v13           #q:Lorg/mozilla/javascript/ast/XmlDotQuery;
    .end local v15           #rp:I
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v9, v0

    .local v9, lb:I
    const/4 v14, -0x1

    .line 2555
    .local v14, rb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move v10, v0

    .line 2556
    .restart local v10       #lineno:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    .line 2557
    .local v5, expr:Lorg/mozilla/javascript/ast/AstNode;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    .line 2558
    .restart local v4       #end:I
    const/16 v17, 0x54

    const-string v18, "msg.no.bracket.index"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v14, v0

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v4, v0

    .line 2562
    :cond_3
    new-instance v8, Lorg/mozilla/javascript/ast/ElementGet;

    sub-int v17, v4, v12

    move-object v0, v8

    move v1, v12

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/ElementGet;-><init>(II)V

    .line 2563
    .local v8, g:Lorg/mozilla/javascript/ast/ElementGet;
    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ElementGet;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2564
    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/ast/ElementGet;->setElement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2565
    invoke-virtual {v8, v9, v14}, Lorg/mozilla/javascript/ast/ElementGet;->setParens(II)V

    .line 2566
    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/ast/ElementGet;->setLineno(I)V

    .line 2567
    move-object/from16 p2, v8

    .line 2568
    goto/16 :goto_0

    .line 2571
    .end local v4           #end:I
    .end local v5           #expr:Lorg/mozilla/javascript/ast/AstNode;
    .end local v8           #g:Lorg/mozilla/javascript/ast/ElementGet;
    .end local v9           #lb:I
    .end local v10           #lineno:I
    .end local v14           #rb:I
    :sswitch_3
    if-eqz p1, :cond_1

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move v10, v0

    .line 2575
    .restart local v10       #lineno:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2576
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->checkCallRequiresActivation(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2577
    new-instance v6, Lorg/mozilla/javascript/ast/FunctionCall;

    invoke-direct {v6, v12}, Lorg/mozilla/javascript/ast/FunctionCall;-><init>(I)V

    .line 2578
    .local v6, f:Lorg/mozilla/javascript/ast/FunctionCall;
    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionCall;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2581
    invoke-virtual {v6, v10}, Lorg/mozilla/javascript/ast/FunctionCall;->setLineno(I)V

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v17, v0

    sub-int v17, v17, v12

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionCall;->setLp(I)V

    .line 2583
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->argumentList()Ljava/util/List;

    move-result-object v3

    .line 2584
    .local v3, args:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    const/high16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 2585
    const-string v17, "msg.too.many.function.args"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2586
    :cond_4
    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/ast/FunctionCall;->setArguments(Ljava/util/List;)V

    .line 2587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v17, v0

    sub-int v17, v17, v12

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionCall;->setRp(I)V

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move/from16 v17, v0

    sub-int v17, v17, v12

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionCall;->setLength(I)V

    .line 2589
    move-object/from16 p2, v6

    .line 2590
    goto/16 :goto_0

    .line 2523
    :sswitch_data_0
    .sparse-switch
        0x53 -> :sswitch_2
        0x57 -> :sswitch_3
        0x6c -> :sswitch_0
        0x8f -> :sswitch_0
        0x92 -> :sswitch_1
    .end sparse-switch
.end method

.method private mulExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2299
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2301
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    .local v4, tt:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2302
    .local v1, opPos:I
    packed-switch v4, :pswitch_data_0

    .line 2314
    return-object v2

    .line 2306
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2307
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2308
    .local v0, line:I
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2309
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2310
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2302
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private mustHaveXML()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const-string v0, "msg.XML.not.available"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 424
    :cond_0
    return-void
.end method

.method private mustMatchToken(ILjava/lang/String;)Z
    .locals 3
    .parameter "toMatch"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private mustMatchToken(ILjava/lang/String;II)Z
    .locals 1
    .parameter "toMatch"
    .parameter "msgId"
    .parameter "pos"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    .line 416
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 417
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private name(II)Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .parameter "ttFlagged"
    .parameter "tt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2900
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v3

    .line 2901
    .local v3, nameString:Ljava/lang/String;
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v2, namePos:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2902
    .local v1, nameLineno:I
    const/high16 v4, 0x2

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x67

    if-ne v4, v5, :cond_0

    .line 2905
    new-instance v0, Lorg/mozilla/javascript/ast/Label;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v4, v2

    invoke-direct {v0, v2, v4}, Lorg/mozilla/javascript/ast/Label;-><init>(II)V

    .line 2906
    .local v0, label:Lorg/mozilla/javascript/ast/Label;
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/Label;->setName(Ljava/lang/String;)V

    .line 2907
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/Label;->setLineno(I)V

    move-object v4, v0

    .line 2918
    .end local v0           #label:Lorg/mozilla/javascript/ast/Label;
    :goto_0
    return-object v4

    .line 2913
    :cond_0
    invoke-direct {p0, v2, v3, v1}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    .line 2915
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2916
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lorg/mozilla/javascript/Parser;->propertyName(ILjava/lang/String;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    goto :goto_0

    .line 2918
    :cond_1
    const/4 v4, 0x1

    const/16 v5, 0x27

    invoke-direct {p0, v4, v5}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v4

    goto :goto_0
.end method

.method private nameOrLabel()Lorg/mozilla/javascript/ast/AstNode;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v13, 0x2

    const/16 v12, 0x82

    const/16 v11, 0x27

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1813
    iget v8, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    if-eq v8, v11, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 1814
    :cond_0
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1817
    .local v6, pos:I
    iget v8, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    or-int/2addr v8, v13

    iput v8, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 1818
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 1820
    .local v2, expr:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v8

    if-eq v8, v12, :cond_2

    .line 1821
    new-instance v5, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v10

    :goto_0
    invoke-direct {v5, v2, v8}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 1822
    .local v5, n:Lorg/mozilla/javascript/ast/AstNode;
    iget v8, v2, Lorg/mozilla/javascript/ast/AstNode;->lineno:I

    iput v8, v5, Lorg/mozilla/javascript/ast/AstNode;->lineno:I

    move-object v8, v5

    .line 1858
    .end local v5           #n:Lorg/mozilla/javascript/ast/AstNode;
    :goto_1
    return-object v8

    :cond_1
    move v8, v9

    .line 1821
    goto :goto_0

    .line 1826
    :cond_2
    new-instance v1, Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/ast/LabeledStatement;-><init>(I)V

    .line 1827
    .local v1, bundle:Lorg/mozilla/javascript/ast/LabeledStatement;
    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/ast/Label;

    move-object v8, v0

    invoke-direct {p0, v8, v1}, Lorg/mozilla/javascript/Parser;->recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V

    .line 1828
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/ast/LabeledStatement;->setLineno(I)V

    .line 1830
    const/4 v7, 0x0

    .line 1831
    .local v7, stmt:Lorg/mozilla/javascript/ast/AstNode;
    :goto_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 1832
    iget v8, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    or-int/2addr v8, v13

    iput v8, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 1833
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 1834
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v8

    if-eq v8, v12, :cond_6

    .line 1835
    new-instance v7, Lorg/mozilla/javascript/ast/ExpressionStatement;

    .end local v7           #stmt:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v10

    :goto_3
    invoke-direct {v7, v2, v8}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 1836
    .restart local v7       #stmt:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1844
    :cond_3
    :try_start_0
    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 1845
    if-nez v7, :cond_4

    .line 1846
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statementHelper()Lorg/mozilla/javascript/ast/AstNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1849
    :cond_4
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 1851
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Label;

    .line 1852
    .local v4, lb:Lorg/mozilla/javascript/ast/Label;
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #lb:Lorg/mozilla/javascript/ast/Label;
    .end local v7           #stmt:Lorg/mozilla/javascript/ast/AstNode;
    :cond_5
    move v8, v9

    .line 1835
    goto :goto_3

    .line 1839
    .restart local v7       #stmt:Lorg/mozilla/javascript/ast/AstNode;
    :cond_6
    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/ast/Label;

    move-object v8, v0

    invoke-direct {p0, v8, v1}, Lorg/mozilla/javascript/Parser;->recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V

    goto :goto_2

    .line 1849
    :catchall_0
    move-exception v8

    const/4 v9, 0x0

    iput-object v9, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 1851
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Label;

    .line 1852
    .restart local v4       #lb:Lorg/mozilla/javascript/ast/Label;
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .end local v4           #lb:Lorg/mozilla/javascript/ast/Label;
    :cond_7
    throw v8

    .line 1856
    :cond_8
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/ast/LabeledStatement;->setLength(I)V

    .line 1857
    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ast/LabeledStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    move-object v8, v1

    .line 1858
    goto/16 :goto_1
.end method

.method private nextFlaggedToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    .line 372
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 373
    .local v0, ttFlagged:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 374
    return v0
.end method

.method private nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    .line 364
    .local v0, tt:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 365
    return v0
.end method

.method private nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I
    .locals 2
    .parameter "node"

    .prologue
    .line 3328
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static final nowAllSet(III)Z
    .locals 1
    .parameter "before"
    .parameter "after"
    .parameter "mask"

    .prologue
    .line 1669
    and-int v0, p0, p2

    if-eq v0, p2, :cond_0

    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v14, v0

    .local v14, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move v8, v0

    .line 3082
    .local v8, lineno:I
    const/4 v5, -0x1

    .line 3083
    .local v5, afterComma:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3084
    .local v6, elems:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/ObjectProperty;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 3088
    .local v17, propertyNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    const/16 v16, 0x0

    .line 3089
    .local v16, propertyName:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v19

    .line 3090
    .local v19, tt:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v7

    .line 3091
    .local v7, jsdoc:Ljava/lang/String;
    sparse-switch v19, :sswitch_data_0

    .line 3141
    const-string v20, "msg.bad.prop"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3145
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3146
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 3147
    const-string v20, "msg.dup.obj.lit.prop.strict"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3153
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    .line 3154
    const/4 v7, 0x0

    .line 3156
    const/16 v20, 0x59

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 3157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v5, v0

    .line 3161
    goto :goto_0

    .line 3094
    :sswitch_0
    const/4 v5, -0x1

    .line 3095
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    .line 3096
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3097
    const/16 v18, 0x0

    .line 3098
    .local v18, stringProp:Lorg/mozilla/javascript/ast/StringLiteral;
    const/16 v20, 0x29

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 3099
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;

    move-result-object v18

    .line 3101
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v9

    .line 3102
    .local v9, name:Lorg/mozilla/javascript/ast/Name;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v16

    .line 3103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v15, v0

    .line 3105
    .local v15, ppos:I
    const/16 v20, 0x27

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v20

    const/16 v21, 0x27

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const-string v20, "get"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "set"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 3109
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3110
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v9

    .line 3111
    invoke-virtual {v9, v7}, Lorg/mozilla/javascript/ast/Name;->setJsDoc(Ljava/lang/String;)V

    .line 3112
    const-string v20, "get"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v9

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->getterSetterProperty(ILorg/mozilla/javascript/ast/AstNode;Z)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v11

    .line 3114
    .local v11, objectProp:Lorg/mozilla/javascript/ast/ObjectProperty;
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3115
    invoke-virtual {v11}, Lorg/mozilla/javascript/ast/ObjectProperty;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/mozilla/javascript/ast/AstNode;->getString()Ljava/lang/String;

    move-result-object v16

    .line 3116
    goto/16 :goto_1

    .line 3117
    .end local v11           #objectProp:Lorg/mozilla/javascript/ast/ObjectProperty;
    :cond_4
    if-eqz v18, :cond_5

    move-object/from16 v13, v18

    .line 3118
    .local v13, pname:Lorg/mozilla/javascript/ast/AstNode;
    :goto_2
    invoke-virtual {v13, v7}, Lorg/mozilla/javascript/ast/AstNode;->setJsDoc(Ljava/lang/String;)V

    .line 3119
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v13           #pname:Lorg/mozilla/javascript/ast/AstNode;
    :cond_5
    move-object v13, v9

    .line 3117
    goto :goto_2

    .line 3124
    .end local v9           #name:Lorg/mozilla/javascript/ast/Name;
    .end local v15           #ppos:I
    .end local v18           #stringProp:Lorg/mozilla/javascript/ast/StringLiteral;
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 3125
    const/4 v5, -0x1

    .line 3126
    new-instance v10, Lorg/mozilla/javascript/ast/NumberLiteral;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/mozilla/javascript/TokenStream;->getNumber()D

    move-result-wide v22

    move-object v0, v10

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>(ILjava/lang/String;D)V

    .line 3129
    .local v10, nl:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v10, v7}, Lorg/mozilla/javascript/ast/AstNode;->setJsDoc(Ljava/lang/String;)V

    .line 3130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v16

    .line 3131
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3135
    .end local v10           #nl:Lorg/mozilla/javascript/ast/AstNode;
    :sswitch_2
    const/16 v20, -0x1

    move v0, v5

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/mozilla/javascript/CompilerEnvirons;->getWarnTrailingComma()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 3136
    const-string v20, "msg.extra.trailing.comma"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v14

    move-object v3, v6

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->warnTrailingComma(Ljava/lang/String;ILjava/util/List;I)V

    .line 3163
    :cond_6
    const/16 v20, 0x56

    const-string v21, "msg.no.brace.prop"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 3164
    new-instance v12, Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move/from16 v20, v0

    sub-int v20, v20, v14

    move-object v0, v12

    move v1, v14

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/ObjectLiteral;-><init>(II)V

    .line 3165
    .local v12, pn:Lorg/mozilla/javascript/ast/ObjectLiteral;
    invoke-virtual {v12, v6}, Lorg/mozilla/javascript/ast/ObjectLiteral;->setElements(Ljava/util/List;)V

    .line 3166
    invoke-virtual {v12, v8}, Lorg/mozilla/javascript/ast/ObjectLiteral;->setLineno(I)V

    .line 3167
    return-object v12

    .line 3091
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x28 -> :sswitch_1
        0x29 -> :sswitch_0
        0x56 -> :sswitch_2
    .end sparse-switch
.end method

.method private orExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x68

    .line 2138
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->andExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2139
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2140
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2141
    .local v1, opPos:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2142
    .local v0, lineno:I
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->orExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v5, v2, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2143
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2145
    .end local v0           #lineno:I
    .end local v1           #opPos:I
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    :cond_0
    return-object v2
.end method

.method private parenExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2877
    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2878
    .local v4, wasInForInit:Z
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    .line 2880
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v1

    .line 2881
    .local v1, jsdoc:Ljava/lang/String;
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2882
    .local v2, lineno:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 2883
    .local v0, e:Lorg/mozilla/javascript/ast/AstNode;
    new-instance v3, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-direct {v3, v0}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;-><init>(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2884
    .local v3, pn:Lorg/mozilla/javascript/ast/ParenthesizedExpression;
    if-nez v1, :cond_0

    .line 2885
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v1

    .line 2887
    :cond_0
    if-eqz v1, :cond_1

    .line 2888
    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->setJsDoc(Ljava/lang/String;)V

    .line 2890
    :cond_1
    const/16 v5, 0x58

    const-string v6, "msg.no.paren"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 2891
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getPosition()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->setLength(I)V

    .line 2892
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->setLineno(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2895
    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v3

    .end local v0           #e:Lorg/mozilla/javascript/ast/AstNode;
    .end local v1           #jsdoc:Ljava/lang/String;
    .end local v2           #lineno:I
    .end local v3           #pn:Lorg/mozilla/javascript/ast/ParenthesizedExpression;
    :catchall_0
    move-exception v5

    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw v5
.end method

.method private parse()Lorg/mozilla/javascript/ast/AstRoot;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    const/16 v18, 0x0

    .line 539
    .local v18, pos:I
    new-instance v19, Lorg/mozilla/javascript/ast/AstRoot;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;-><init>(I)V

    .line 540
    .local v19, root:Lorg/mozilla/javascript/ast/AstRoot;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object v3, v0

    iget v6, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 543
    .local v6, baseLineno:I
    move/from16 v12, v18

    .line 545
    .local v12, end:I
    const/4 v15, 0x1

    .line 546
    .local v15, inDirectivePrologue:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    move/from16 v20, v0

    .line 548
    .local v20, savedStrictMode:Z
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 552
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 553
    .local v21, tt:I
    if-gtz v21, :cond_0

    .line 590
    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 593
    .end local v21           #tt:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    move v3, v0

    if-eqz v3, :cond_6

    .line 594
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    move v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, msg:Ljava/lang/String;
    const-string v3, "msg.got.syntax.errors"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v3

    if-nez v3, :cond_6

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/mozilla/javascript/ErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v3

    throw v3

    .line 558
    .end local v4           #msg:Ljava/lang/String;
    .restart local v21       #tt:I
    :cond_0
    const/16 v3, 0x6d

    move/from16 v0, v21

    move v1, v3

    if-ne v0, v1, :cond_3

    .line 559
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_0

    .line 561
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/Parser;->calledByCompileFunction:Z

    move v3, v0

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    :goto_3
    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v17

    .line 580
    .local v17, n:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v12

    .line 581
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 582
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 584
    .end local v17           #n:Lorg/mozilla/javascript/ast/AstNode;
    .end local v21           #tt:I
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 585
    .local v13, ex:Ljava/lang/StackOverflowError;
    :try_start_4
    const-string v3, "msg.too.deep.parser.recursion"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 586
    .restart local v4       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object v5, v0

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v3, v5, v6, v7}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    .end local v6           #baseLineno:I
    move-result-object v3

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 590
    .end local v4           #msg:Ljava/lang/String;
    .end local v13           #ex:Ljava/lang/StackOverflowError;
    :catchall_0
    move-exception v3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    throw v3

    .line 561
    .restart local v6       #baseLineno:I
    .restart local v21       #tt:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_3

    .line 564
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 565
    .local v11, e:Lorg/mozilla/javascript/Parser$ParserException;
    goto/16 :goto_1

    .line 568
    .end local v11           #e:Lorg/mozilla/javascript/Parser$ParserException;
    :cond_3
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v17

    .line 569
    .restart local v17       #n:Lorg/mozilla/javascript/ast/AstNode;
    if-eqz v15, :cond_1

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, directive:Ljava/lang/String;
    if-nez v10, :cond_4

    .line 572
    const/4 v15, 0x0

    goto :goto_4

    .line 573
    :cond_4
    const-string v3, "use strict"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 575
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;->setInStrictMode(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 590
    .end local v10           #directive:Ljava/lang/String;
    .end local v17           #n:Lorg/mozilla/javascript/ast/AstNode;
    .end local v21           #tt:I
    .restart local v4       #msg:Ljava/lang/String;
    .restart local v13       #ex:Ljava/lang/StackOverflowError;
    :cond_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    goto/16 :goto_2

    .line 602
    .end local v4           #msg:Ljava/lang/String;
    .end local v13           #ex:Ljava/lang/StackOverflowError;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v16, v3, v4

    .line 606
    .local v16, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mozilla/javascript/ast/Comment;

    .line 608
    .local v9, c:Lorg/mozilla/javascript/ast/Comment;
    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;->addComment(Lorg/mozilla/javascript/ast/Comment;)V

    goto :goto_5

    .line 612
    .end local v9           #c:Lorg/mozilla/javascript/ast/Comment;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #last:I
    :cond_7
    sub-int v3, v12, v18

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;->setLength(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;->setSourceName(Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;->setBaseLineno(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object v3, v0

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;->setEndLineno(I)V

    .line 616
    return-object v19
.end method

.method private parseFunctionBody()Lorg/mozilla/javascript/ast/AstNode;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 622
    const/16 v8, 0x55

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 623
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v8

    const/16 v9, 0xb4

    if-ge v8, v9, :cond_0

    .line 624
    const-string v8, "msg.no.brace.body"

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 626
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parseFunctionBodyExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    .line 677
    :goto_0
    return-object v8

    .line 628
    :cond_1
    iget v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 629
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 630
    .local v5, pos:I
    new-instance v4, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v4, v5}, Lorg/mozilla/javascript/ast/Block;-><init>(I)V

    .line 632
    .local v4, pn:Lorg/mozilla/javascript/ast/Block;
    const/4 v2, 0x1

    .line 633
    .local v2, inDirectivePrologue:Z
    iget-boolean v6, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 636
    .local v6, savedStrictMode:Z
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v4, v8}, Lorg/mozilla/javascript/ast/Block;->setLineno(I)V

    .line 640
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v7

    .line 641
    .local v7, tt:I
    sparse-switch v7, :sswitch_data_0

    .line 652
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 653
    .local v3, n:Lorg/mozilla/javascript/ast/AstNode;
    if-eqz v2, :cond_2

    .line 654
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, directive:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 656
    const/4 v2, 0x0

    .line 663
    .end local v0           #directive:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/Block;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 665
    .end local v3           #n:Lorg/mozilla/javascript/ast/AstNode;
    .end local v7           #tt:I
    :catch_0
    move-exception v8

    .line 668
    iget v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr v8, v10

    iput v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 669
    iput-boolean v6, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 672
    :goto_3
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v8, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 673
    .local v1, end:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    .line 674
    const/16 v8, 0x56

    const-string v9, "msg.no.brace.after.body"

    invoke-direct {p0, v8, v9}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 675
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v8, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 676
    :cond_3
    sub-int v8, v1, v5

    invoke-virtual {v4, v8}, Lorg/mozilla/javascript/ast/Block;->setLength(I)V

    move-object v8, v4

    .line 677
    goto :goto_0

    .line 648
    .end local v1           #end:I
    .restart local v7       #tt:I
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 649
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v3

    .line 650
    .restart local v3       #n:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_2

    .line 657
    .restart local v0       #directive:Ljava/lang/String;
    :cond_4
    const-string v8, "use strict"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 658
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 668
    .end local v0           #directive:Ljava/lang/String;
    .end local v3           #n:Lorg/mozilla/javascript/ast/AstNode;
    .end local v7           #tt:I
    :catchall_0
    move-exception v8

    iget v9, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr v9, v10

    iput v9, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 669
    iput-boolean v6, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    throw v8

    .line 668
    .restart local v7       #tt:I
    :sswitch_1
    iget v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr v8, v10

    iput v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 669
    iput-boolean v6, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    goto :goto_3

    .line 641
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_1
        0x56 -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method private parseFunctionBodyExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 758
    iget v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 759
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v0

    .line 760
    .local v0, lineno:I
    new-instance v1, Lorg/mozilla/javascript/ast/ReturnStatement;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/ReturnStatement;-><init>(I)V

    .line 761
    .local v1, n:Lorg/mozilla/javascript/ast/ReturnStatement;
    const/16 v2, 0x19

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/ast/ReturnStatement;->putProp(ILjava/lang/Object;)V

    .line 763
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/ReturnStatement;->setReturnValue(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    iget v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    .line 767
    return-object v1

    .line 765
    :catchall_0
    move-exception v2

    iget v3, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    throw v2
.end method

.method private parseFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;)V
    .locals 12
    .parameter "fnNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    const/16 v10, 0x58

    invoke-direct {p0, v10}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 694
    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v10, v10, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getPosition()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p1, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->setRp(I)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    const/4 v1, 0x0

    .line 700
    .local v1, destructuring:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/Node;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 702
    .local v7, paramNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v9

    .line 703
    .local v9, tt:I
    const/16 v10, 0x53

    if-eq v9, v10, :cond_3

    const/16 v10, 0x55

    if-ne v9, v10, :cond_6

    .line 704
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 705
    .local v3, expr:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 706
    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 710
    if-nez v1, :cond_4

    .line 711
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #destructuring:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/Node;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 713
    .restart local v1       #destructuring:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/Node;>;"
    :cond_4
    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v10}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, pname:Ljava/lang/String;
    const/16 v10, 0x57

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v8, v11}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 715
    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .end local v3           #expr:Lorg/mozilla/javascript/ast/AstNode;
    .end local v8           #pname:Ljava/lang/String;
    :cond_5
    :goto_1
    const/16 v10, 0x59

    invoke-direct {p0, v10}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 737
    if-eqz v1, :cond_c

    .line 738
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v10, 0x59

    invoke-direct {v2, v10}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 740
    .local v2, destructuringNode:Lorg/mozilla/javascript/Node;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1           #destructuring:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/Node;>;"
    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 741
    .local v5, param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/javascript/Node;>;"
    const/16 v10, 0x7a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Node;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-virtual {p0, v10, v0, v11}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 743
    .local v0, assign:Lorg/mozilla/javascript/Node;
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 717
    .end local v0           #assign:Lorg/mozilla/javascript/Node;
    .end local v2           #destructuringNode:Lorg/mozilla/javascript/Node;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #param:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/javascript/Node;>;"
    .restart local v1       #destructuring:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/Node;>;"
    :cond_6
    const/16 v10, 0x27

    const-string v11, "msg.no.parm"

    invoke-direct {p0, v10, v11}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 718
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v10

    invoke-virtual {p1, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 719
    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v10}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v6

    .line 720
    .local v6, paramName:Ljava/lang/String;
    const/16 v10, 0x57

    invoke-virtual {p0, v10, v6}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    .line 721
    iget-boolean v10, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v10, :cond_5

    .line 722
    const-string v10, "eval"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "arguments"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 725
    :cond_7
    const-string v10, "msg.bad.id.strict"

    invoke-virtual {p0, v10, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_8
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 728
    const-string v10, "msg.dup.param.strict"

    invoke-virtual {p0, v10, v6}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_9
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 732
    .end local v6           #paramName:Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v10

    invoke-virtual {p1, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    goto/16 :goto_1

    .line 746
    .end local v1           #destructuring:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/Node;>;"
    .restart local v2       #destructuringNode:Lorg/mozilla/javascript/Node;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_b
    const/16 v10, 0x17

    invoke-virtual {p1, v10, v2}, Lorg/mozilla/javascript/ast/FunctionNode;->putProp(ILjava/lang/Object;)V

    .line 749
    .end local v2           #destructuringNode:Lorg/mozilla/javascript/Node;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_c
    const/16 v10, 0x58

    const-string v11, "msg.no.paren.after.parms"

    invoke-direct {p0, v10, v11}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 750
    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v10, v10, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getPosition()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p1, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->setRp(I)V

    goto/16 :goto_0
.end method

.method private peekFlaggedToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    .line 353
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return v0
.end method

.method private peekToken()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 322
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    if-eqz v3, :cond_0

    .line 323
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    .line 346
    :goto_0
    return v3

    .line 326
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v0

    .line 327
    .local v0, lineno:I
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v2

    .line 328
    .local v2, tt:I
    const/4 v1, 0x0

    .line 331
    .local v1, sawEOL:Z
    :goto_1
    if-eq v2, v4, :cond_1

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_4

    .line 332
    :cond_1
    if-ne v2, v4, :cond_3

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 334
    const/4 v1, 0x1

    .line 341
    :cond_2
    :goto_2
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v2

    goto :goto_1

    .line 336
    :cond_3
    const/4 v1, 0x0

    .line 337
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->recordComment(I)V

    goto :goto_2

    .line 344
    :cond_4
    iput v2, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    .line 345
    if-eqz v1, :cond_5

    const/high16 v3, 0x1

    :goto_3
    or-int/2addr v3, v2

    iput v3, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    .line 346
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    goto :goto_0

    .line 345
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private peekTokenOrEOL()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    .line 397
    .local v0, tt:I
    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 400
    :cond_0
    return v0
.end method

.method private plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;
    .locals 5
    .parameter "property"
    .parameter "ptt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3175
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    .line 3176
    .local v2, tt:I
    const/16 v3, 0x59

    if-eq v2, v3, :cond_0

    const/16 v3, 0x56

    if-ne v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x27

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xb4

    if-lt v3, v4, :cond_2

    .line 3178
    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    if-nez v3, :cond_1

    .line 3179
    const-string v3, "msg.bad.object.init"

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3181
    :cond_1
    new-instance v0, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/mozilla/javascript/ast/Name;-><init>(ILjava/lang/String;)V

    .line 3182
    .local v0, nn:Lorg/mozilla/javascript/ast/AstNode;
    new-instance v1, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v1}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    .line 3183
    .local v1, pn:Lorg/mozilla/javascript/ast/ObjectProperty;
    const/16 v3, 0x1a

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lorg/mozilla/javascript/ast/ObjectProperty;->putProp(ILjava/lang/Object;)V

    .line 3184
    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ast/ObjectProperty;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 3191
    .end local v0           #nn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    return-object v1

    .line 3187
    .end local v1           #pn:Lorg/mozilla/javascript/ast/ObjectProperty;
    :cond_2
    const/16 v3, 0x67

    const-string v4, "msg.no.colon.prop"

    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 3188
    new-instance v1, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v1}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    .line 3189
    .restart local v1       #pn:Lorg/mozilla/javascript/ast/ObjectProperty;
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->setOperatorPosition(I)V

    .line 3190
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_0
.end method

.method private primaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2800
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextFlaggedToken()I

    move-result v5

    .line 2801
    .local v5, ttFlagged:I
    const v6, 0xffff

    and-int v4, v5, v6

    .line 2803
    .local v4, tt:I
    sparse-switch v4, :sswitch_data_0

    .line 2869
    const-string v6, "msg.syntax"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2873
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v6

    :goto_1
    return-object v6

    .line 2805
    :sswitch_1
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v6

    goto :goto_1

    .line 2808
    :sswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->arrayLiteral()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    goto :goto_1

    .line 2811
    :sswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v6

    goto :goto_1

    .line 2814
    :sswitch_4
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/Parser;->let(ZI)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    goto :goto_1

    .line 2817
    :sswitch_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parenExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    goto :goto_1

    .line 2820
    :sswitch_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    .line 2821
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->attributeAccess()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    goto :goto_1

    .line 2824
    :sswitch_7
    invoke-direct {p0, v5, v4}, Lorg/mozilla/javascript/Parser;->name(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    goto :goto_1

    .line 2827
    :sswitch_8
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v3

    .line 2828
    .local v3, s:Ljava/lang/String;
    iget-boolean v6, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->isNumberOctal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2829
    const-string v6, "msg.no.octal.strict"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2831
    :cond_0
    new-instance v6, Lorg/mozilla/javascript/ast/NumberLiteral;

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getNumber()D

    move-result-wide v8

    invoke-direct {v6, v7, v3, v8, v9}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>(ILjava/lang/String;D)V

    goto :goto_1

    .line 2837
    .end local v3           #s:Ljava/lang/String;
    :sswitch_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;

    move-result-object v6

    goto :goto_1

    .line 2842
    :sswitch_a
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/TokenStream;->readRegExp(I)V

    .line 2843
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v1, pos:I
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2844
    .local v0, end:I
    new-instance v2, Lorg/mozilla/javascript/ast/RegExpLiteral;

    sub-int v6, v0, v1

    invoke-direct {v2, v1, v6}, Lorg/mozilla/javascript/ast/RegExpLiteral;-><init>(II)V

    .line 2845
    .local v2, re:Lorg/mozilla/javascript/ast/RegExpLiteral;
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ast/RegExpLiteral;->setValue(Ljava/lang/String;)V

    .line 2846
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->readAndClearRegExpFlags()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ast/RegExpLiteral;->setFlags(Ljava/lang/String;)V

    move-object v6, v2

    .line 2847
    goto :goto_1

    .line 2853
    .end local v0           #end:I
    .end local v1           #pos:I
    .end local v2           #re:Lorg/mozilla/javascript/ast/RegExpLiteral;
    :sswitch_b
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .restart local v1       #pos:I
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2854
    .restart local v0       #end:I
    new-instance v6, Lorg/mozilla/javascript/ast/KeywordLiteral;

    sub-int v7, v0, v1

    invoke-direct {v6, v1, v7, v4}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    goto/16 :goto_1

    .line 2857
    .end local v0           #end:I
    .end local v1           #pos:I
    :sswitch_c
    const-string v6, "msg.reserved.id"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2865
    :sswitch_d
    const-string v6, "msg.unexpected.eof"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2803
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_d
        0x18 -> :sswitch_a
        0x27 -> :sswitch_7
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x2a -> :sswitch_b
        0x2b -> :sswitch_b
        0x2c -> :sswitch_b
        0x2d -> :sswitch_b
        0x53 -> :sswitch_2
        0x55 -> :sswitch_3
        0x57 -> :sswitch_5
        0x64 -> :sswitch_a
        0x6d -> :sswitch_1
        0x7f -> :sswitch_c
        0x93 -> :sswitch_6
        0x99 -> :sswitch_4
    .end sparse-switch
.end method

.method private propertyAccess(ILorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 12
    .parameter "tt"
    .parameter "pn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2607
    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2608
    :cond_0
    const/4 v2, 0x0

    .local v2, memberTypeFlags:I
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v9, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .local v1, lineno:I
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2609
    .local v0, dotPos:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2611
    const/16 v9, 0x8f

    if-ne p1, v9, :cond_1

    .line 2612
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    .line 2613
    const/4 v2, 0x4

    .line 2616
    :cond_1
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v9}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2617
    const/16 v9, 0x27

    const-string v10, "msg.no.name.after.dot"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 2618
    const/4 v9, 0x1

    const/16 v10, 0x21

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v3

    .line 2619
    .local v3, name:Lorg/mozilla/javascript/ast/Name;
    new-instance v4, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {v4, p2, v3, v0}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/Name;I)V

    .line 2620
    .local v4, pg:Lorg/mozilla/javascript/ast/PropertyGet;
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/ast/PropertyGet;->setLineno(I)V

    move-object v9, v4

    .line 2666
    .end local v3           #name:Lorg/mozilla/javascript/ast/Name;
    .end local v4           #pg:Lorg/mozilla/javascript/ast/PropertyGet;
    :goto_0
    return-object v9

    .line 2624
    :cond_2
    const/4 v6, 0x0

    .line 2626
    .local v6, ref:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 2651
    const-string v9, "msg.no.name.after.dot"

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2652
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v9

    goto :goto_0

    .line 2629
    :sswitch_0
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const-string v10, "throw"

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v9, v10, v11}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    .line 2630
    const/4 v9, -0x1

    const-string v10, "throw"

    invoke-direct {p0, v9, v10, v2}, Lorg/mozilla/javascript/Parser;->propertyName(ILjava/lang/String;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2655
    :goto_1
    instance-of v8, v6, Lorg/mozilla/javascript/ast/XmlRef;

    .line 2656
    .local v8, xml:Z
    if-eqz v8, :cond_4

    new-instance v9, Lorg/mozilla/javascript/ast/XmlMemberGet;

    invoke-direct {v9}, Lorg/mozilla/javascript/ast/XmlMemberGet;-><init>()V

    move-object v7, v9

    .line 2657
    .local v7, result:Lorg/mozilla/javascript/ast/InfixExpression;
    :goto_2
    if-eqz v8, :cond_3

    const/16 v9, 0x6c

    if-ne p1, v9, :cond_3

    .line 2658
    const/16 v9, 0x6c

    invoke-virtual {v7, v9}, Lorg/mozilla/javascript/ast/InfixExpression;->setType(I)Lorg/mozilla/javascript/Node;

    .line 2659
    :cond_3
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v5

    .line 2660
    .local v5, pos:I
    invoke-virtual {v7, v5}, Lorg/mozilla/javascript/ast/InfixExpression;->setPosition(I)V

    .line 2661
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v9}, Lorg/mozilla/javascript/ast/InfixExpression;->setLength(I)V

    .line 2662
    sub-int v9, v0, v5

    invoke-virtual {v7, v9}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    .line 2663
    invoke-virtual {v7, v1}, Lorg/mozilla/javascript/ast/InfixExpression;->setLineno(I)V

    .line 2664
    invoke-virtual {v7, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2665
    invoke-virtual {v7, v6}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    move-object v9, v7

    .line 2666
    goto :goto_0

    .line 2635
    .end local v5           #pos:I
    .end local v7           #result:Lorg/mozilla/javascript/ast/InfixExpression;
    .end local v8           #xml:Z
    :sswitch_1
    const/4 v9, -0x1

    iget-object v10, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v10}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10, v2}, Lorg/mozilla/javascript/Parser;->propertyName(ILjava/lang/String;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2636
    goto :goto_1

    .line 2640
    :sswitch_2
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const-string v10, "*"

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v9, v10, v11}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    .line 2641
    const/4 v9, -0x1

    const-string v10, "*"

    invoke-direct {p0, v9, v10, v2}, Lorg/mozilla/javascript/Parser;->propertyName(ILjava/lang/String;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2642
    goto :goto_1

    .line 2647
    :sswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->attributeAccess()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    .line 2648
    goto :goto_1

    .line 2656
    .restart local v8       #xml:Z
    :cond_4
    new-instance v9, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {v9}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>()V

    move-object v7, v9

    goto :goto_2

    .line 2626
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x27 -> :sswitch_1
        0x32 -> :sswitch_0
        0x93 -> :sswitch_3
    .end sparse-switch
.end method

.method private propertyName(ILjava/lang/String;I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 10
    .parameter "atPos"
    .parameter "s"
    .parameter "memberTypeFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 2719
    if-eq p1, v9, :cond_0

    move v4, p1

    .local v4, pos:I
    :goto_0
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v6, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2720
    .local v1, lineno:I
    const/4 v0, -0x1

    .line 2721
    .local v0, colonPos:I
    const/4 v6, 0x1

    iget v7, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    .line 2722
    .local v2, name:Lorg/mozilla/javascript/ast/Name;
    const/4 v3, 0x0

    .line 2724
    .local v3, ns:Lorg/mozilla/javascript/ast/Name;
    const/16 v6, 0x90

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2725
    move-object v3, v2

    .line 2726
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2728
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 2745
    const-string v6, "msg.no.name.after.coloncolon"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2746
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v6

    .line 2760
    :goto_1
    return-object v6

    .line 2719
    .end local v0           #colonPos:I
    .end local v1           #lineno:I
    .end local v2           #name:Lorg/mozilla/javascript/ast/Name;
    .end local v3           #ns:Lorg/mozilla/javascript/ast/Name;
    .end local v4           #pos:I
    :cond_0
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v4, v6

    goto :goto_0

    .line 2731
    .restart local v0       #colonPos:I
    .restart local v1       #lineno:I
    .restart local v2       #name:Lorg/mozilla/javascript/ast/Name;
    .restart local v3       #ns:Lorg/mozilla/javascript/ast/Name;
    .restart local v4       #pos:I
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    .line 2750
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    if-nez p3, :cond_2

    if-ne p1, v9, :cond_2

    move-object v6, v2

    .line 2751
    goto :goto_1

    .line 2736
    :sswitch_1
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const-string v7, "*"

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v6, v7, v8}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    .line 2737
    const/4 v6, 0x0

    invoke-direct {p0, v6, v9}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    .line 2738
    goto :goto_2

    .line 2742
    :sswitch_2
    invoke-direct {p0, p1, v3, v0}, Lorg/mozilla/javascript/Parser;->xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;

    move-result-object v6

    goto :goto_1

    .line 2754
    :cond_2
    new-instance v5, Lorg/mozilla/javascript/ast/XmlPropRef;

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v4

    invoke-direct {v5, v4, v6}, Lorg/mozilla/javascript/ast/XmlPropRef;-><init>(II)V

    .line 2755
    .local v5, ref:Lorg/mozilla/javascript/ast/XmlPropRef;
    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/XmlPropRef;->setAtPos(I)V

    .line 2756
    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/XmlPropRef;->setNamespace(Lorg/mozilla/javascript/ast/Name;)V

    .line 2757
    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/XmlPropRef;->setColonPos(I)V

    .line 2758
    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/ast/XmlPropRef;->setPropName(Lorg/mozilla/javascript/ast/Name;)V

    .line 2759
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/XmlPropRef;->setLineno(I)V

    move-object v6, v5

    .line 2760
    goto :goto_1

    .line 2728
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x27 -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method private readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 6
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3397
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3399
    .local v2, in:Ljava/io/BufferedReader;
    const/16 v4, 0x400

    :try_start_0
    new-array v1, v4, [C

    .line 3400
    .local v1, cbuf:[C
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3402
    .local v3, sb:Ljava/lang/StringBuilder;
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v1, v4, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v0

    .local v0, bytes_read:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 3403
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3407
    .end local v0           #bytes_read:I
    .end local v1           #cbuf:[C
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v4

    .line 3405
    .restart local v0       #bytes_read:I
    .restart local v1       #cbuf:[C
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 3407
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v4
.end method

.method private recordComment(I)V
    .locals 5
    .parameter "lineno"

    .prologue
    .line 280
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    if-nez v2, :cond_0

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    .line 283
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getAndResetCurrentComment()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, comment:Ljava/lang/String;
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v2, v2, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    sget-object v3, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingLocalJsDocComments()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Ljava/lang/String;

    .line 288
    :cond_1
    new-instance v1, Lorg/mozilla/javascript/ast/Comment;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v4, v4, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mozilla/javascript/ast/Comment;-><init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V

    .line 292
    .local v1, commentNode:Lorg/mozilla/javascript/ast/Comment;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/Comment;->setLineno(I)V

    .line 293
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method private recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V
    .locals 6
    .parameter "label"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "msg.dup.label"

    .line 1783
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0x67

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1784
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1785
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1786
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 1787
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    .line 1800
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->addLabel(Lorg/mozilla/javascript/ast/Label;)V

    .line 1801
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    return-void

    .line 1789
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 1790
    .local v1, ls:Lorg/mozilla/javascript/ast/LabeledStatement;
    if-eqz v1, :cond_1

    .line 1791
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1792
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabelByName(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Label;

    move-result-object v0

    .line 1793
    .local v0, dup:Lorg/mozilla/javascript/ast/Label;
    const-string v3, "msg.dup.label"

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Label;->getAbsolutePosition()I

    move-result v3

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Label;->getLength()I

    move-result v4

    invoke-virtual {p0, v5, v3, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 1796
    .end local v0           #dup:Lorg/mozilla/javascript/ast/Label;
    :cond_3
    const-string v3, "msg.dup.label"

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Label;->getPosition()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Label;->getLength()I

    move-result v4

    invoke-virtual {p0, v5, v3, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private relExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2233
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->shiftExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2235
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    .local v4, tt:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2236
    .local v1, opPos:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2237
    .local v0, line:I
    sparse-switch v4, :sswitch_data_0

    .line 2254
    :cond_0
    return-object v2

    .line 2239
    :sswitch_0
    iget-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    if-nez v5, :cond_0

    .line 2247
    :sswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2248
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->shiftExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2249
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2250
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2237
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x34 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method private returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;
    .locals 12
    .parameter "tt"
    .parameter "exprContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const-string v11, "msg.bad.yield"

    const-string v10, ""

    .line 1675
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1676
    if-ne p1, v9, :cond_5

    const-string v8, "msg.bad.return"

    :goto_0
    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1679
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1680
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v8, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .local v3, lineno:I
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v5, pos:I
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v8, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1682
    .local v2, end:I
    const/4 v1, 0x0

    .line 1684
    .local v1, e:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1689
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 1690
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    .line 1693
    :sswitch_0
    iget v0, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    .line 1696
    .local v0, before:I
    if-ne p1, v9, :cond_6

    .line 1697
    iget v8, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    if-nez v1, :cond_1

    const/4 v9, 0x2

    :cond_1
    or-int/2addr v8, v9

    iput v8, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    .line 1698
    new-instance v6, Lorg/mozilla/javascript/ast/ReturnStatement;

    sub-int v8, v2, v5

    invoke-direct {v6, v5, v8, v1}, Lorg/mozilla/javascript/ast/ReturnStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 1701
    .local v6, ret:Lorg/mozilla/javascript/ast/AstNode;
    iget v8, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const/4 v9, 0x6

    invoke-static {v0, v8, v9}, Lorg/mozilla/javascript/Parser;->nowAllSet(III)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1703
    const-string v8, "msg.return.inconsistent"

    const-string v9, ""

    sub-int v9, v2, v5

    invoke-virtual {p0, v8, v10, v5, v9}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1717
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const/16 v9, 0xc

    invoke-static {v0, v8, v9}, Lorg/mozilla/javascript/Parser;->nowAllSet(III)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1720
    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v8, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v4

    .line 1721
    .local v4, name:Lorg/mozilla/javascript/ast/Name;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v8

    if-nez v8, :cond_8

    .line 1722
    :cond_3
    const-string v8, "msg.anon.generator.returns"

    const-string v9, ""

    invoke-virtual {p0, v8, v10}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    .end local v4           #name:Lorg/mozilla/javascript/ast/Name;
    :cond_4
    :goto_2
    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    .line 1728
    return-object v6

    .line 1676
    .end local v0           #before:I
    .end local v1           #e:Lorg/mozilla/javascript/ast/AstNode;
    .end local v2           #end:I
    .end local v3           #lineno:I
    .end local v5           #pos:I
    .end local v6           #ret:Lorg/mozilla/javascript/ast/AstNode;
    :cond_5
    const-string v8, "msg.bad.yield"

    move-object v8, v11

    goto :goto_0

    .line 1705
    .restart local v0       #before:I
    .restart local v1       #e:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #end:I
    .restart local v3       #lineno:I
    .restart local v5       #pos:I
    :cond_6
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1706
    const-string v8, "msg.bad.yield"

    invoke-virtual {p0, v11}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1707
    :cond_7
    iget v8, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    .line 1708
    new-instance v6, Lorg/mozilla/javascript/ast/Yield;

    sub-int v8, v2, v5

    invoke-direct {v6, v5, v8, v1}, Lorg/mozilla/javascript/ast/Yield;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 1709
    .restart local v6       #ret:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    .line 1710
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setIsGenerator()V

    .line 1711
    if-nez p2, :cond_2

    .line 1712
    new-instance v7, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {v7, v6}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;)V

    .end local v6           #ret:Lorg/mozilla/javascript/ast/AstNode;
    .local v7, ret:Lorg/mozilla/javascript/ast/AstNode;
    move-object v6, v7

    .end local v7           #ret:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v6       #ret:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_1

    .line 1724
    .restart local v4       #name:Lorg/mozilla/javascript/ast/Name;
    :cond_8
    const-string v8, "msg.generator.returns"

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1684
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x48 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0x56 -> :sswitch_0
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method private saveNameTokenData(ILjava/lang/String;I)V
    .locals 0
    .parameter "pos"
    .parameter "name"
    .parameter "lineno"

    .prologue
    .line 3332
    iput p1, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    .line 3333
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    .line 3334
    iput p3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    .line 3335
    return-void
.end method

.method private shiftExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2260
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->addExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    .line 2262
    .local v2, pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    .local v4, tt:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2263
    .local v1, opPos:I
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2264
    .local v0, lineno:I
    packed-switch v4, :pswitch_data_0

    .line 2275
    return-object v2

    .line 2268
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2269
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->addExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 2270
    .end local v2           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v2, v3

    .line 2271
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #pn:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 2264
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private statement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 951
    .local v2, pos:I
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statementHelper()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 952
    .local v1, pn:Lorg/mozilla/javascript/ast/AstNode;
    if-eqz v1, :cond_2

    .line 953
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v4

    if-nez v4, :cond_0

    .line 954
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    .line 955
    .local v0, beg:I
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 956
    instance-of v4, v1, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-eqz v4, :cond_1

    const-string v4, "msg.extra.trailing.semi"

    :goto_0
    const-string v5, ""

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {p0, v4, v5, v0, v6}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .end local v0           #beg:I
    :cond_0
    move-object v4, v1

    .line 982
    .end local v1           #pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_1
    return-object v4

    .line 956
    .restart local v0       #beg:I
    .restart local v1       #pn:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    const-string v4, "msg.no.side.effects"
    :try_end_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 969
    .end local v0           #beg:I
    .end local v1           #pn:Lorg/mozilla/javascript/ast/AstNode;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v3

    .line 970
    .local v3, tt:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 971
    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 982
    :sswitch_0
    new-instance v4, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v2

    invoke-direct {v4, v2, v5}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    goto :goto_1

    .line 963
    .end local v3           #tt:I
    :catch_0
    move-exception v4

    goto :goto_2

    .line 971
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method private statementHelper()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 989
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 990
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 992
    :cond_0
    const/4 v1, 0x0

    .line 993
    .local v1, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    .local v3, tt:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 995
    .local v2, pos:I
    sparse-switch v3, :sswitch_data_0

    .line 1088
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 1089
    .local v0, lineno:I
    new-instance v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    .end local v1           #pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-direct {v1, v4, v5}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 1090
    .restart local v1       #pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    .line 1094
    .end local v0           #lineno:I
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V

    move-object v4, v1

    .line 1095
    :goto_2
    return-object v4

    .line 997
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->ifStatement()Lorg/mozilla/javascript/ast/IfStatement;

    move-result-object v4

    goto :goto_2

    .line 1000
    :sswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->switchStatement()Lorg/mozilla/javascript/ast/SwitchStatement;

    move-result-object v4

    goto :goto_2

    .line 1003
    :sswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->whileLoop()Lorg/mozilla/javascript/ast/WhileLoop;

    move-result-object v4

    goto :goto_2

    .line 1006
    :sswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->doLoop()Lorg/mozilla/javascript/ast/DoLoop;

    move-result-object v4

    goto :goto_2

    .line 1009
    :sswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->forLoop()Lorg/mozilla/javascript/ast/Loop;

    move-result-object v4

    goto :goto_2

    .line 1012
    :sswitch_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->tryStatement()Lorg/mozilla/javascript/ast/TryStatement;

    move-result-object v4

    goto :goto_2

    .line 1015
    :sswitch_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->throwStatement()Lorg/mozilla/javascript/ast/ThrowStatement;

    move-result-object v1

    .line 1016
    goto :goto_1

    .line 1019
    :sswitch_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->breakStatement()Lorg/mozilla/javascript/ast/BreakStatement;

    move-result-object v1

    .line 1020
    goto :goto_1

    .line 1023
    :sswitch_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->continueStatement()Lorg/mozilla/javascript/ast/ContinueStatement;

    move-result-object v1

    .line 1024
    goto :goto_1

    .line 1027
    :sswitch_9
    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v4, :cond_2

    .line 1028
    const-string v4, "msg.no.with.strict"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1030
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->withStatement()Lorg/mozilla/javascript/ast/WithStatement;

    move-result-object v4

    goto :goto_2

    .line 1034
    :sswitch_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1035
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 1036
    .restart local v0       #lineno:I
    iget v4, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v4, v5}, Lorg/mozilla/javascript/Parser;->variables(II)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v1

    .line 1037
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    goto :goto_1

    .line 1041
    .end local v0           #lineno:I
    :sswitch_b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->letStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 1042
    instance-of v4, v1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x52

    if-eq v4, v5, :cond_1

    :cond_3
    move-object v4, v1

    .line 1045
    goto :goto_2

    .line 1049
    :sswitch_c
    invoke-direct {p0, v3, v6}, Lorg/mozilla/javascript/Parser;->returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 1050
    goto :goto_1

    .line 1053
    :sswitch_d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1054
    new-instance v1, Lorg/mozilla/javascript/ast/KeywordLiteral;

    .end local v1           #pn:Lorg/mozilla/javascript/ast/AstNode;
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v4, v5, v3}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    .line 1056
    .restart local v1       #pn:Lorg/mozilla/javascript/ast/AstNode;
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    goto/16 :goto_1

    .line 1060
    :sswitch_e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->block()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    goto/16 :goto_2

    .line 1063
    :sswitch_f
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1064
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v4

    goto/16 :goto_2

    .line 1067
    :sswitch_10
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1068
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1069
    new-instance v1, Lorg/mozilla/javascript/ast/EmptyExpression;

    .end local v1           #pn:Lorg/mozilla/javascript/ast/AstNode;
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v4, v2

    invoke-direct {v1, v2, v4}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    .line 1070
    .restart local v1       #pn:Lorg/mozilla/javascript/ast/AstNode;
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v4, v1

    .line 1071
    goto/16 :goto_2

    .line 1074
    :sswitch_11
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1075
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v4

    goto/16 :goto_2

    .line 1078
    :sswitch_12
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->defaultXmlNamespace()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 1079
    goto/16 :goto_1

    .line 1082
    :sswitch_13
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nameOrLabel()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 1083
    instance-of v4, v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-nez v4, :cond_1

    move-object v4, v1

    .line 1085
    goto/16 :goto_2

    .end local v1           #pn:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v0       #lineno:I
    :cond_4
    move v5, v6

    .line 1089
    goto/16 :goto_0

    .line 995
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_f
        0x4 -> :sswitch_c
        0x27 -> :sswitch_13
        0x32 -> :sswitch_6
        0x48 -> :sswitch_c
        0x51 -> :sswitch_5
        0x52 -> :sswitch_10
        0x55 -> :sswitch_e
        0x6d -> :sswitch_11
        0x70 -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_12
        0x75 -> :sswitch_2
        0x76 -> :sswitch_3
        0x77 -> :sswitch_4
        0x78 -> :sswitch_7
        0x79 -> :sswitch_8
        0x7a -> :sswitch_a
        0x7b -> :sswitch_9
        0x99 -> :sswitch_b
        0x9a -> :sswitch_a
        0xa0 -> :sswitch_d
    .end sparse-switch
.end method

.method private statements()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method private statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 5
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v4, 0x55

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 899
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 900
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 901
    .local v1, pos:I
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 902
    .local v0, block:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    .line 905
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    .local v2, tt:I
    if-lez v2, :cond_2

    const/16 v3, 0x56

    if-eq v2, v3, :cond_2

    .line 906
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/AstNode;->addChild(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    .line 901
    .end local v0           #block:Lorg/mozilla/javascript/ast/AstNode;
    .end local v2           #tt:I
    :cond_1
    new-instance v3, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/ast/Block;-><init>(I)V

    move-object v0, v3

    goto :goto_0

    .line 908
    .restart local v0       #block:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v2       #tt:I
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 909
    return-object v0
.end method

.method private switchStatement()Lorg/mozilla/javascript/ast/SwitchStatement;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, "msg.no.colon.case"

    .line 1151
    iget v9, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v10, 0x72

    if-eq v9, v10, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1152
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1153
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1155
    .local v7, pos:I
    new-instance v6, Lorg/mozilla/javascript/ast/SwitchStatement;

    invoke-direct {v6, v7}, Lorg/mozilla/javascript/ast/SwitchStatement;-><init>(I)V

    .line 1156
    .local v6, pn:Lorg/mozilla/javascript/ast/SwitchStatement;
    const/16 v9, 0x57

    const-string v10, "msg.no.paren.switch"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1157
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v9, v7

    invoke-virtual {v6, v9}, Lorg/mozilla/javascript/ast/SwitchStatement;->setLp(I)V

    .line 1158
    :cond_1
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v6, v9}, Lorg/mozilla/javascript/ast/SwitchStatement;->setLineno(I)V

    .line 1160
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1161
    .local v4, discriminant:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/SwitchStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1162
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->enterSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)V

    .line 1165
    const/16 v9, 0x58

    :try_start_0
    const-string v10, "msg.no.paren.after.switch"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1166
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v9, v7

    invoke-virtual {v6, v9}, Lorg/mozilla/javascript/ast/SwitchStatement;->setRp(I)V

    .line 1168
    :cond_2
    const/16 v9, 0x55

    const-string v10, "msg.no.brace.switch"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1170
    const/4 v5, 0x0

    .line 1173
    .local v5, hasDefault:Z
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v8

    .line 1174
    .local v8, tt:I
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1175
    .local v3, casePos:I
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v9, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 1176
    .local v1, caseLineno:I
    const/4 v0, 0x0

    .line 1177
    .local v0, caseExpression:Lorg/mozilla/javascript/ast/AstNode;
    sparse-switch v8, :sswitch_data_0

    .line 1197
    const-string v9, "msg.bad.switch"

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitSwitch()V

    .line 1218
    return-object v6

    .line 1179
    :sswitch_0
    :try_start_1
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v9, v7

    invoke-virtual {v6, v9}, Lorg/mozilla/javascript/ast/SwitchStatement;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1216
    .end local v0           #caseExpression:Lorg/mozilla/javascript/ast/AstNode;
    .end local v1           #caseLineno:I
    .end local v3           #casePos:I
    .end local v5           #hasDefault:Z
    .end local v8           #tt:I
    :catchall_0
    move-exception v9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitSwitch()V

    throw v9

    .line 1183
    .restart local v0       #caseExpression:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v1       #caseLineno:I
    .restart local v3       #casePos:I
    .restart local v5       #hasDefault:Z
    .restart local v8       #tt:I
    :sswitch_1
    :try_start_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 1184
    const/16 v9, 0x67

    const-string v10, "msg.no.colon.case"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1201
    :goto_2
    new-instance v2, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/ast/SwitchCase;-><init>(I)V

    .line 1202
    .local v2, caseNode:Lorg/mozilla/javascript/ast/SwitchCase;
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/SwitchCase;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1203
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v9, v7

    invoke-virtual {v2, v9}, Lorg/mozilla/javascript/ast/SwitchCase;->setLength(I)V

    .line 1204
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/SwitchCase;->setLineno(I)V

    .line 1209
    :goto_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v8

    const/16 v9, 0x56

    if-eq v8, v9, :cond_4

    const/16 v9, 0x73

    if-eq v8, v9, :cond_4

    const/16 v9, 0x74

    if-eq v8, v9, :cond_4

    if-eqz v8, :cond_4

    .line 1211
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/mozilla/javascript/ast/SwitchCase;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_3

    .line 1188
    .end local v2           #caseNode:Lorg/mozilla/javascript/ast/SwitchCase;
    :sswitch_2
    if-eqz v5, :cond_3

    .line 1189
    const-string v9, "msg.double.switch.default"

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1191
    :cond_3
    const/4 v5, 0x1

    .line 1192
    const/4 v0, 0x0

    .line 1193
    const/16 v9, 0x67

    const-string v10, "msg.no.colon.case"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    goto :goto_2

    .line 1213
    .restart local v2       #caseNode:Lorg/mozilla/javascript/ast/SwitchCase;
    :cond_4
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/ast/SwitchStatement;->addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1177
    :sswitch_data_0
    .sparse-switch
        0x56 -> :sswitch_0
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method private throwStatement()Lorg/mozilla/javascript/ast/ThrowStatement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1503
    iget v4, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v5, 0x32

    if-eq v4, v5, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1504
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1505
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v3, pos:I
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 1506
    .local v1, lineno:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1509
    const-string v4, "msg.bad.throw.eol"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1511
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 1512
    .local v0, expr:Lorg/mozilla/javascript/ast/AstNode;
    new-instance v2, Lorg/mozilla/javascript/ast/ThrowStatement;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lorg/mozilla/javascript/ast/ThrowStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 1513
    .local v2, pn:Lorg/mozilla/javascript/ast/ThrowStatement;
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ThrowStatement;->setLineno(I)V

    .line 1514
    return-object v2
.end method

.method private tryStatement()Lorg/mozilla/javascript/ast/TryStatement;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1404
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/Parser;->currentToken:I

    move/from16 v24, v0

    const/16 v25, 0x51

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1405
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1408
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v12

    .line 1410
    .local v12, jsdoc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v21, v0

    .local v21, tryPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move v13, v0

    .local v13, lineno:I
    const/4 v10, -0x1

    .line 1411
    .local v10, finallyPos:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v24

    const/16 v25, 0x55

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 1412
    const-string v24, "msg.no.brace.try"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1414
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v19

    .line 1415
    .local v19, tryBlock:Lorg/mozilla/javascript/ast/AstNode;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v20

    .line 1417
    .local v20, tryEnd:I
    const/4 v8, 0x0

    .line 1419
    .local v8, clauses:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/CatchClause;>;"
    const/16 v18, 0x0

    .line 1420
    .local v18, sawDefaultCatch:Z
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v15

    .line 1421
    .local v15, peek:I
    const/16 v24, 0x7c

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 1422
    :goto_0
    const/16 v24, 0x7c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move v5, v0

    .line 1424
    .local v5, catchLineNum:I
    if-eqz v18, :cond_2

    .line 1425
    const-string v24, "msg.catch.unreachable"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1427
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v7, v0

    .local v7, catchPos:I
    const/4 v14, -0x1

    .local v14, lp:I
    const/16 v17, -0x1

    .local v17, rp:I
    const/4 v11, -0x1

    .line 1428
    .local v11, guardPos:I
    const/16 v24, 0x57

    const-string v25, "msg.no.paren.catch"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v14, v0

    .line 1431
    :cond_3
    const/16 v24, 0x27

    const-string v25, "msg.bad.catchcond"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1432
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v22

    .line 1433
    .local v22, varName:Lorg/mozilla/javascript/ast/Name;
    invoke-virtual/range {v22 .. v22}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v23

    .line 1434
    .local v23, varNameString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1435
    const-string v24, "eval"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "arguments"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1438
    :cond_4
    const-string v24, "msg.bad.id.strict"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_5
    const/4 v4, 0x0

    .line 1443
    .local v4, catchCond:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v24, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v11, v0

    .line 1445
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1450
    :goto_1
    const/16 v24, 0x58

    const-string v25, "msg.bad.catchcond"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move/from16 v17, v0

    .line 1452
    :cond_6
    const/16 v24, 0x55

    const-string v25, "msg.no.brace.catchblock"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1454
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statements()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/Block;

    .line 1455
    .local v3, catchBlock:Lorg/mozilla/javascript/ast/Block;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v20

    .line 1456
    new-instance v6, Lorg/mozilla/javascript/ast/CatchClause;

    invoke-direct {v6, v7}, Lorg/mozilla/javascript/ast/CatchClause;-><init>(I)V

    .line 1457
    .local v6, catchNode:Lorg/mozilla/javascript/ast/CatchClause;
    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/CatchClause;->setVarName(Lorg/mozilla/javascript/ast/Name;)V

    .line 1458
    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/CatchClause;->setCatchCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1459
    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/ast/CatchClause;->setBody(Lorg/mozilla/javascript/ast/Block;)V

    .line 1460
    const/16 v24, -0x1

    move v0, v11

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 1461
    sub-int v24, v11, v7

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/CatchClause;->setIfPosition(I)V

    .line 1463
    :cond_7
    move-object v0, v6

    move v1, v14

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ast/CatchClause;->setParens(II)V

    .line 1464
    invoke-virtual {v6, v5}, Lorg/mozilla/javascript/ast/CatchClause;->setLineno(I)V

    .line 1466
    const/16 v24, 0x56

    const-string v25, "msg.no.brace.after.body"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move/from16 v20, v0

    .line 1468
    :cond_8
    sub-int v24, v20, v7

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/CatchClause;->setLength(I)V

    .line 1469
    if-nez v8, :cond_9

    .line 1470
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #clauses:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/CatchClause;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1471
    .restart local v8       #clauses:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/CatchClause;>;"
    :cond_9
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1447
    .end local v3           #catchBlock:Lorg/mozilla/javascript/ast/Block;
    .end local v6           #catchNode:Lorg/mozilla/javascript/ast/CatchClause;
    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1473
    .end local v4           #catchCond:Lorg/mozilla/javascript/ast/AstNode;
    .end local v5           #catchLineNum:I
    .end local v7           #catchPos:I
    .end local v11           #guardPos:I
    .end local v14           #lp:I
    .end local v17           #rp:I
    .end local v22           #varName:Lorg/mozilla/javascript/ast/Name;
    .end local v23           #varNameString:Ljava/lang/String;
    :cond_b
    const/16 v24, 0x7d

    move v0, v15

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 1474
    const/16 v24, 0x7d

    const-string v25, "msg.try.no.catchfinally"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1477
    :cond_c
    const/4 v9, 0x0

    .line 1478
    .local v9, finallyBlock:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v24, 0x7d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v10, v0

    .line 1480
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    .line 1481
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v20

    .line 1484
    :cond_d
    new-instance v16, Lorg/mozilla/javascript/ast/TryStatement;

    sub-int v24, v20, v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/TryStatement;-><init>(II)V

    .line 1485
    .local v16, pn:Lorg/mozilla/javascript/ast/TryStatement;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/TryStatement;->setTryBlock(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1486
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/TryStatement;->setCatchClauses(Ljava/util/List;)V

    .line 1487
    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/TryStatement;->setFinallyBlock(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1488
    const/16 v24, -0x1

    move v0, v10

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    .line 1489
    sub-int v24, v10, v21

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/TryStatement;->setFinallyPosition(I)V

    .line 1491
    :cond_e
    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/TryStatement;->setLineno(I)V

    .line 1493
    if-eqz v12, :cond_f

    .line 1494
    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/TryStatement;->setJsDoc(Ljava/lang/String;)V

    .line 1497
    :cond_f
    return-object v16
.end method

.method private unaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2321
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    .line 2322
    .local v4, tt:I
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v6, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2324
    .local v1, line:I
    sparse-switch v4, :sswitch_data_0

    .line 2376
    :cond_0
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 2378
    .local v3, pn:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v4

    .line 2379
    const/16 v6, 0x6a

    if-eq v4, v6, :cond_1

    const/16 v6, 0x6b

    if-eq v4, v6, :cond_1

    move-object v6, v3

    .line 2387
    .end local v3           #pn:Lorg/mozilla/javascript/ast/AstNode;
    :goto_0
    return-object v6

    .line 2329
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2330
    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-direct {v2, v4, v6, v7}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2331
    .local v2, node:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v6, v2

    .line 2332
    goto :goto_0

    .line 2335
    .end local v2           #node:Lorg/mozilla/javascript/ast/AstNode;
    :sswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2337
    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    const/16 v6, 0x1c

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2338
    .restart local v2       #node:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v6, v2

    .line 2339
    goto :goto_0

    .line 2342
    .end local v2           #node:Lorg/mozilla/javascript/ast/AstNode;
    :sswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2344
    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    const/16 v6, 0x1d

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2345
    .restart local v2       #node:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v6, v2

    .line 2346
    goto :goto_0

    .line 2350
    .end local v2           #node:Lorg/mozilla/javascript/ast/AstNode;
    :sswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2351
    new-instance v0, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-direct {v0, v4, v6, v7}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2353
    .local v0, expr:Lorg/mozilla/javascript/ast/UnaryExpression;
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/UnaryExpression;->setLineno(I)V

    .line 2354
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V

    move-object v6, v0

    .line 2355
    goto :goto_0

    .line 2358
    .end local v0           #expr:Lorg/mozilla/javascript/ast/UnaryExpression;
    :sswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2359
    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-direct {v2, v4, v6, v7}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 2360
    .restart local v2       #node:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLineno(I)V

    move-object v6, v2

    .line 2361
    goto :goto_0

    .line 2364
    .end local v2           #node:Lorg/mozilla/javascript/ast/AstNode;
    :sswitch_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2365
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v6

    goto :goto_0

    .line 2369
    :sswitch_6
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v6}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2370
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2371
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->xmlInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    goto/16 :goto_0

    .line 2382
    .restart local v3       #pn:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 2383
    new-instance v5, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v5, v4, v6, v3, v7}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    .line 2385
    .local v5, uexpr:Lorg/mozilla/javascript/ast/UnaryExpression;
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/UnaryExpression;->setLineno(I)V

    .line 2386
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V

    move-object v6, v5

    .line 2387
    goto/16 :goto_0

    .line 2324
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0xe -> :sswitch_6
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1f -> :sswitch_4
        0x20 -> :sswitch_0
        0x6a -> :sswitch_3
        0x6b -> :sswitch_3
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private variables(II)Lorg/mozilla/javascript/ast/VariableDeclaration;
    .locals 18
    .parameter "declType"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1875
    new-instance v12, Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-object v0, v12

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/VariableDeclaration;-><init>(I)V

    .line 1876
    .local v12, pn:Lorg/mozilla/javascript/ast/VariableDeclaration;
    move-object v0, v12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setType(I)Lorg/mozilla/javascript/Node;

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move/from16 v16, v0

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setLineno(I)V

    .line 1878
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v14

    .line 1879
    .local v14, varjsdoc:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 1880
    invoke-virtual {v12, v14}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setJsDoc(Ljava/lang/String;)V

    .line 1886
    :cond_0
    const/4 v4, 0x0

    .line 1887
    .local v4, destructuring:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v11, 0x0

    .line 1888
    .local v11, name:Lorg/mozilla/javascript/ast/Name;
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v13

    .local v13, tt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    move v9, v0

    .line 1889
    .local v9, kidPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v5, v0

    .line 1891
    .local v5, end:I
    const/16 v16, 0x53

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    const/16 v16, 0x55

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 1893
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1894
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    .line 1895
    move-object v0, v4

    instance-of v0, v0, Lorg/mozilla/javascript/ast/DestructuringForm;

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 1896
    const-string v16, "msg.bad.assign.left"

    sub-int v17, v5, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v9

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 1897
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1913
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    move v10, v0

    .line 1915
    .local v10, lineno:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v8

    .line 1917
    .local v8, jsdoc:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1918
    .local v7, init:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v16, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1919
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    .line 1920
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    .line 1923
    :cond_3
    new-instance v15, Lorg/mozilla/javascript/ast/VariableInitializer;

    sub-int v16, v5, v9

    move-object v0, v15

    move v1, v9

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/VariableInitializer;-><init>(II)V

    .line 1924
    .local v15, vi:Lorg/mozilla/javascript/ast/VariableInitializer;
    if-eqz v4, :cond_8

    .line 1925
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 1926
    const-string v16, "msg.destruct.assign.no.init"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1928
    :cond_4
    invoke-virtual {v15, v4}, Lorg/mozilla/javascript/ast/VariableInitializer;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1932
    :goto_1
    invoke-virtual {v15, v7}, Lorg/mozilla/javascript/ast/VariableInitializer;->setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1933
    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->setType(I)Lorg/mozilla/javascript/Node;

    .line 1934
    invoke-virtual {v15, v8}, Lorg/mozilla/javascript/ast/VariableInitializer;->setJsDoc(Ljava/lang/String;)V

    .line 1935
    invoke-virtual {v15, v10}, Lorg/mozilla/javascript/ast/VariableInitializer;->setLineno(I)V

    .line 1936
    invoke-virtual {v12, v15}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addVariable(Lorg/mozilla/javascript/ast/VariableInitializer;)V

    .line 1938
    const/16 v16, 0x59

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(I)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1941
    sub-int v16, v5, p2

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setLength(I)V

    .line 1942
    return-object v12

    .line 1900
    .end local v7           #init:Lorg/mozilla/javascript/ast/AstNode;
    .end local v8           #jsdoc:Ljava/lang/String;
    .end local v10           #lineno:I
    .end local v15           #vi:Lorg/mozilla/javascript/ast/VariableInitializer;
    :cond_5
    const/16 v16, 0x27

    const-string v17, "msg.bad.var"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 1901
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v11

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v16

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Name;->setLineno(I)V

    .line 1903
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1905
    .local v6, id:Ljava/lang/String;
    const-string v16, "eval"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, "arguments"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1907
    :cond_6
    const-string v16, "msg.bad.id.strict"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    .end local v6           #id:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 1930
    .restart local v7       #init:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v8       #jsdoc:Ljava/lang/String;
    .restart local v10       #lineno:I
    .restart local v15       #vi:Lorg/mozilla/javascript/ast/VariableInitializer;
    :cond_8
    invoke-virtual {v15, v11}, Lorg/mozilla/javascript/ast/VariableInitializer;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    goto/16 :goto_1
.end method

.method private warnMissingSemi(II)V
    .locals 4
    .parameter "pos"
    .parameter "end"

    .prologue
    .line 3374
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3375
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3376
    .local v0, beg:I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 3377
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, v1, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 3378
    :cond_0
    const-string v1, "msg.missing.semi"

    const-string v2, ""

    sub-int v3, p2, v0

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3381
    .end local v0           #beg:I
    :cond_1
    return-void
.end method

.method private warnTrailingComma(Ljava/lang/String;ILjava/util/List;I)V
    .locals 2
    .parameter "messageId"
    .parameter "pos"
    .parameter
    .parameter "commaPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 3385
    .local p3, elems:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getWarnTrailingComma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3387
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3388
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p2

    .line 3390
    :cond_0
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3391
    const-string v0, "msg.extra.trailing.comma"

    sub-int v1, p4, p2

    invoke-virtual {p0, v0, p2, v1}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;II)V

    .line 3393
    :cond_1
    return-void
.end method

.method private whileLoop()Lorg/mozilla/javascript/ast/WhileLoop;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    iget v4, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v5, 0x75

    if-eq v4, v5, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1225
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1226
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1227
    .local v3, pos:I
    new-instance v2, Lorg/mozilla/javascript/ast/WhileLoop;

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/ast/WhileLoop;-><init>(I)V

    .line 1228
    .local v2, pn:Lorg/mozilla/javascript/ast/WhileLoop;
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/WhileLoop;->setLineno(I)V

    .line 1229
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V

    .line 1231
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v1

    .line 1232
    .local v1, data:Lorg/mozilla/javascript/Parser$ConditionData;
    iget-object v4, v1, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/WhileLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1233
    iget v4, v1, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v4, v3

    iget v5, v1, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Lorg/mozilla/javascript/ast/WhileLoop;->setParens(II)V

    .line 1234
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 1235
    .local v0, body:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/WhileLoop;->setLength(I)V

    .line 1236
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/WhileLoop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    .line 1240
    return-object v2

    .line 1238
    .end local v0           #body:Lorg/mozilla/javascript/ast/AstNode;
    .end local v1           #data:Lorg/mozilla/javascript/Parser$ConditionData;
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v4
.end method

.method private withStatement()Lorg/mozilla/javascript/ast/WithStatement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1616
    iget v7, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 1617
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 1618
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v7, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .local v1, lineno:I
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v5, pos:I
    const/4 v2, -0x1

    .local v2, lp:I
    const/4 v6, -0x1

    .line 1619
    .local v6, rp:I
    const/16 v7, 0x57

    const-string v8, "msg.no.paren.with"

    invoke-direct {p0, v7, v8}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1620
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1622
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 1624
    .local v3, obj:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v7, 0x58

    const-string v8, "msg.no.paren.after.with"

    invoke-direct {p0, v7, v8}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1625
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1627
    :cond_2
    iget v7, p0, Lorg/mozilla/javascript/Parser;->nestingOfWith:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/mozilla/javascript/Parser;->nestingOfWith:I

    .line 1630
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1632
    .local v0, body:Lorg/mozilla/javascript/ast/AstNode;
    iget v7, p0, Lorg/mozilla/javascript/Parser;->nestingOfWith:I

    sub-int/2addr v7, v9

    iput v7, p0, Lorg/mozilla/javascript/Parser;->nestingOfWith:I

    .line 1635
    new-instance v4, Lorg/mozilla/javascript/ast/WithStatement;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v7

    sub-int/2addr v7, v5

    invoke-direct {v4, v5, v7}, Lorg/mozilla/javascript/ast/WithStatement;-><init>(II)V

    .line 1636
    .local v4, pn:Lorg/mozilla/javascript/ast/WithStatement;
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/mozilla/javascript/ast/WithStatement;->setJsDoc(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/WithStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1638
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/WithStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1639
    invoke-virtual {v4, v2, v6}, Lorg/mozilla/javascript/ast/WithStatement;->setParens(II)V

    .line 1640
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/ast/WithStatement;->setLineno(I)V

    .line 1641
    return-object v4

    .line 1632
    .end local v0           #body:Lorg/mozilla/javascript/ast/AstNode;
    .end local v4           #pn:Lorg/mozilla/javascript/ast/WithStatement;
    :catchall_0
    move-exception v7

    iget v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfWith:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfWith:I

    throw v7
.end method

.method private xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;
    .locals 8
    .parameter "atPos"
    .parameter "namespace"
    .parameter "colonPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2770
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v2, lb:I
    const/4 v4, -0x1

    .local v4, rb:I
    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    move v3, p1

    .line 2771
    .local v3, pos:I
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 2772
    .local v1, expr:Lorg/mozilla/javascript/ast/AstNode;
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v0

    .line 2773
    .local v0, end:I
    const/16 v6, 0x54

    const-string v7, "msg.no.bracket.index"

    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2774
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2775
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2777
    :cond_0
    new-instance v5, Lorg/mozilla/javascript/ast/XmlElemRef;

    sub-int v6, v0, v3

    invoke-direct {v5, v3, v6}, Lorg/mozilla/javascript/ast/XmlElemRef;-><init>(II)V

    .line 2778
    .local v5, ref:Lorg/mozilla/javascript/ast/XmlElemRef;
    invoke-virtual {v5, p2}, Lorg/mozilla/javascript/ast/XmlElemRef;->setNamespace(Lorg/mozilla/javascript/ast/Name;)V

    .line 2779
    invoke-virtual {v5, p3}, Lorg/mozilla/javascript/ast/XmlElemRef;->setColonPos(I)V

    .line 2780
    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/XmlElemRef;->setAtPos(I)V

    .line 2781
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/XmlElemRef;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2782
    invoke-virtual {v5, v2, v4}, Lorg/mozilla/javascript/ast/XmlElemRef;->setBrackets(II)V

    .line 2783
    return-object v5

    .end local v0           #end:I
    .end local v1           #expr:Lorg/mozilla/javascript/ast/AstNode;
    .end local v3           #pos:I
    .end local v5           #ref:Lorg/mozilla/javascript/ast/XmlElemRef;
    :cond_1
    move v3, v2

    .line 2770
    goto :goto_0
.end method

.method private xmlInitializer()Lorg/mozilla/javascript/ast/AstNode;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x56

    const-string v9, "msg.syntax"

    .line 2394
    iget v6, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v7, 0xe

    if-eq v6, v7, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2395
    :cond_0
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .local v3, pos:I
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getFirstXMLToken()I

    move-result v4

    .line 2396
    .local v4, tt:I
    const/16 v6, 0x91

    if-eq v4, v6, :cond_1

    const/16 v6, 0x94

    if-eq v4, v6, :cond_1

    .line 2397
    const-string v6, "msg.syntax"

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2398
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v6

    .line 2426
    :goto_0
    return-object v6

    .line 2401
    :cond_1
    new-instance v2, Lorg/mozilla/javascript/ast/XmlLiteral;

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/ast/XmlLiteral;-><init>(I)V

    .line 2402
    .local v2, pn:Lorg/mozilla/javascript/ast/XmlLiteral;
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ast/XmlLiteral;->setLineno(I)V

    .line 2405
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 2425
    :pswitch_0
    const-string v6, "msg.syntax"

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 2426
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v6

    goto :goto_0

    .line 2407
    :pswitch_1
    new-instance v6, Lorg/mozilla/javascript/ast/XmlString;

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/mozilla/javascript/ast/XmlString;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    .line 2408
    const/16 v6, 0x55

    const-string v7, "msg.syntax"

    invoke-direct {p0, v6, v9}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 2409
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2410
    .local v0, beg:I
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    if-ne v6, v10, :cond_2

    new-instance v6, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v7, v0

    invoke-direct {v6, v0, v7}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    move-object v1, v6

    .line 2413
    .local v1, expr:Lorg/mozilla/javascript/ast/AstNode;
    :goto_2
    const-string v6, "msg.syntax"

    invoke-direct {p0, v10, v9}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;)Z

    .line 2414
    new-instance v5, Lorg/mozilla/javascript/ast/XmlExpression;

    invoke-direct {v5, v0, v1}, Lorg/mozilla/javascript/ast/XmlExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;)V

    .line 2415
    .local v5, xexpr:Lorg/mozilla/javascript/ast/XmlExpression;
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->isXMLAttribute()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/XmlExpression;->setIsXmlAttribute(Z)V

    .line 2416
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/XmlExpression;->setLength(I)V

    .line 2417
    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    .line 2404
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v4

    goto :goto_1

    .line 2410
    .end local v1           #expr:Lorg/mozilla/javascript/ast/AstNode;
    .end local v5           #xexpr:Lorg/mozilla/javascript/ast/XmlExpression;
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    move-object v1, v6

    goto :goto_2

    .line 2421
    .end local v0           #beg:I
    :pswitch_2
    new-instance v6, Lorg/mozilla/javascript/ast/XmlString;

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/mozilla/javascript/ast/XmlString;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    move-object v6, v2

    .line 2422
    goto/16 :goto_0

    .line 2405
    :pswitch_data_0
    .packed-switch 0x91
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method addError(Ljava/lang/String;)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 204
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;II)V

    .line 205
    return-void
.end method

.method addError(Ljava/lang/String;II)V
    .locals 1
    .parameter "messageId"
    .parameter "position"
    .parameter "length"

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    .line 209
    return-void
.end method

.method addError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "messageId"
    .parameter "messageArg"

    .prologue
    .line 212
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    .line 214
    return-void
.end method

.method addError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "messageId"
    .parameter "messageArg"
    .parameter "position"
    .parameter "length"

    .prologue
    .line 218
    iget v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    .line 219
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, message:Ljava/lang/String;
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v3, 0x1

    .local v3, lineno:I
    const/4 v5, 0x1

    .line 224
    .local v5, offset:I
    const-string v4, ""

    .line 225
    .local v4, line:Ljava/lang/String;
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v3

    .line 227
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object v4

    .line 228
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getOffset()I

    move-result v5

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "messageId"
    .parameter "messageArg"

    .prologue
    .line 162
    const/4 v0, -0x1

    .local v0, beg:I
    const/4 v1, -0x1

    .line 163
    .local v1, end:I
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 165
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v1, v2, v3

    .line 167
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 168
    return-void
.end method

.method addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter "messageId"
    .parameter "messageArg"
    .parameter "position"
    .parameter "length"

    .prologue
    .line 172
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 174
    :cond_0
    return-void
.end method

.method addWarning(Ljava/lang/String;II)V
    .locals 1
    .parameter "messageId"
    .parameter "position"
    .parameter "length"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 187
    return-void
.end method

.method addWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "messageId"
    .parameter "messageArg"

    .prologue
    .line 177
    const/4 v0, -0x1

    .local v0, beg:I
    const/4 v1, -0x1

    .line 178
    .local v1, end:I
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 180
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v1, v2, v3

    .line 182
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 183
    return-void
.end method

.method addWarning(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "messageId"
    .parameter "messageArg"
    .parameter "position"
    .parameter "length"

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, message:Ljava/lang/String;
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->reportWarningAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v5}, Lorg/mozilla/javascript/TokenStream;->getOffset()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method protected checkActivationName(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "token"

    .prologue
    .line 3265
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3285
    :cond_0
    :goto_0
    return-void

    .line 3268
    :cond_1
    const/4 v0, 0x0

    .line 3269
    .local v0, activation:Z
    const-string v1, "arguments"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getActivationNames()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getActivationNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3273
    :cond_2
    const/4 v0, 0x1

    .line 3282
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 3283
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    goto :goto_0

    .line 3274
    :cond_4
    const-string v1, "length"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3275
    const/16 v1, 0x21

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_3

    .line 3279
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected checkMutableReference(Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "n"

    .prologue
    .line 3731
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    .line 3732
    .local v0, memberTypeFlags:I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 3733
    const-string v1, "msg.bad.assign.left"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3735
    :cond_0
    return-void
.end method

.method createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "type"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 3475
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v2

    .line 3476
    .local v2, tempName:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 3478
    .local v1, result:Lorg/mozilla/javascript/Node;
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 3479
    .local v0, comma:Lorg/mozilla/javascript/Node;
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 3480
    return-object v1
.end method

.method protected createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "type"
    .parameter "name"
    .parameter "child"

    .prologue
    .line 3627
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 3628
    .local v0, result:Lorg/mozilla/javascript/Node;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 3629
    if-eqz p3, :cond_0

    .line 3630
    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 3631
    :cond_0
    return-object v0
.end method

.method protected createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "name"

    .prologue
    const/16 v0, 0x27

    .line 3622
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    .line 3623
    invoke-static {v0, p1}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method protected createNumber(D)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "number"

    .prologue
    .line 3635
    invoke-static {p1, p2}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method protected createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;
    .locals 1
    .parameter "token"
    .parameter "lineno"

    .prologue
    .line 3647
    new-instance v0, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    .line 3648
    .local v0, scope:Lorg/mozilla/javascript/ast/Scope;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Scope;->setType(I)Lorg/mozilla/javascript/Node;

    .line 3649
    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/Scope;->setLineno(I)V

    .line 3650
    return-object v0
.end method

.method defineSymbol(ILjava/lang/String;)V
    .locals 1
    .parameter "declType"
    .parameter "name"

    .prologue
    .line 1990
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 1991
    return-void
.end method

.method defineSymbol(ILjava/lang/String;Z)V
    .locals 8
    .parameter "declType"
    .parameter "name"
    .parameter "ignoreNotInBlock"

    .prologue
    const/16 v6, 0x99

    const/16 v5, 0x7a

    const/16 v4, 0x9a

    const-string v7, "msg.var.redecl"

    .line 1994
    if-nez p2, :cond_2

    .line 1995
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 1998
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 2001
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v3, p2}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 2002
    .local v0, definingScope:Lorg/mozilla/javascript/ast/Scope;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v3

    move-object v2, v3

    .line 2005
    .local v2, symbol:Lorg/mozilla/javascript/ast/Symbol;
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Symbol;->getDeclType()I

    move-result v3

    move v1, v3

    .line 2006
    .local v1, symDeclType:I
    :goto_2
    if-eqz v2, :cond_a

    if-eq v1, v4, :cond_3

    if-eq p1, v4, :cond_3

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v0, v3, :cond_a

    if-ne v1, v6, :cond_a

    .line 2011
    :cond_3
    if-ne v1, v4, :cond_6

    const-string v3, "msg.const.redecl"

    :goto_3
    invoke-virtual {p0, v3, p2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2002
    .end local v1           #symDeclType:I
    .end local v2           #symbol:Lorg/mozilla/javascript/ast/Symbol;
    :cond_4
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_1

    .line 2005
    .restart local v2       #symbol:Lorg/mozilla/javascript/ast/Symbol;
    :cond_5
    const/4 v3, -0x1

    move v1, v3

    goto :goto_2

    .line 2011
    .restart local v1       #symDeclType:I
    :cond_6
    if-ne v1, v6, :cond_7

    const-string v3, "msg.let.redecl"

    goto :goto_3

    :cond_7
    if-ne v1, v5, :cond_8

    const-string v3, "msg.var.redecl"

    move-object v3, v7

    goto :goto_3

    :cond_8
    const/16 v3, 0x6d

    if-ne v1, v3, :cond_9

    const-string v3, "msg.fn.redecl"

    goto :goto_3

    :cond_9
    const-string v3, "msg.parm.redecl"

    goto :goto_3

    .line 2018
    :cond_a
    sparse-switch p1, :sswitch_data_0

    .line 2053
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2020
    :sswitch_0
    if-nez p3, :cond_c

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Scope;->getType()I

    move-result v3

    const/16 v4, 0x70

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    instance-of v3, v3, Lorg/mozilla/javascript/ast/Loop;

    if-eqz v3, :cond_c

    .line 2023
    :cond_b
    const-string v3, "msg.let.decl.not.in.block"

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 2026
    :cond_c
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    new-instance v4, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v4, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    goto :goto_0

    .line 2032
    :sswitch_1
    if-eqz v2, :cond_e

    .line 2033
    if-ne v1, v5, :cond_d

    .line 2034
    const-string v3, "msg.var.redecl"

    invoke-virtual {p0, v7, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2035
    :cond_d
    const/16 v3, 0x57

    if-ne v1, v3, :cond_0

    .line 2036
    const-string v3, "msg.var.hides.arg"

    invoke-virtual {p0, v3, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2039
    :cond_e
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v4, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v4, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    goto/16 :goto_0

    .line 2044
    :sswitch_2
    if-eqz v2, :cond_f

    .line 2047
    const-string v3, "msg.dup.parms"

    invoke-virtual {p0, v3, p2}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :cond_f
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v4, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v4, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    goto/16 :goto_0

    .line 2018
    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_2
        0x6d -> :sswitch_1
        0x7a -> :sswitch_1
        0x99 -> :sswitch_0
        0x9a -> :sswitch_1
    .end sparse-switch
.end method

.method destructuringArray(Lorg/mozilla/javascript/ast/ArrayLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z
    .locals 13
    .parameter "array"
    .parameter "variableType"
    .parameter "tempName"
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ast/ArrayLiteral;",
            "I",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3531
    .local p5, destructuringNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 3532
    .local v2, empty:Z
    const/16 v9, 0x9a

    if-ne p2, v9, :cond_0

    const/16 v9, 0x9b

    move v8, v9

    .line 3534
    .local v8, setOp:I
    :goto_0
    const/4 v4, 0x0

    .line 3535
    .local v4, index:I
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    .line 3536
    .local v5, n:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v9

    const/16 v10, 0x80

    if-ne v9, v10, :cond_1

    .line 3537
    add-int/lit8 v4, v4, 0x1

    .line 3538
    goto :goto_1

    .line 3532
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v5           #n:Lorg/mozilla/javascript/ast/AstNode;
    .end local v8           #setOp:I
    :cond_0
    const/16 v9, 0x8

    move v8, v9

    goto :goto_0

    .line 3540
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #index:I
    .restart local v5       #n:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v8       #setOp:I
    :cond_1
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v9, 0x24

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    int-to-double v11, v4

    invoke-virtual {p0, v11, v12}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-direct {v7, v9, v10, v11}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3543
    .local v7, rightElem:Lorg/mozilla/javascript/Node;
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_3

    .line 3544
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstNode;->getString()Ljava/lang/String;

    move-result-object v6

    .line 3545
    .local v6, name:Ljava/lang/String;
    new-instance v9, Lorg/mozilla/javascript/Node;

    const/16 v10, 0x31

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v6, v11}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    invoke-direct {v9, v8, v10, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p4

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 3549
    const/4 v9, -0x1

    if-eq p2, v9, :cond_2

    .line 3550
    const/4 v9, 0x1

    invoke-virtual {p0, p2, v6, v9}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 3551
    move-object/from16 v0, p5

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3560
    .end local v6           #name:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 3561
    const/4 v2, 0x0

    .line 3562
    goto :goto_1

    .line 3554
    :cond_3
    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p2, v5, v7, v9}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    move-object/from16 v0, p4

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 3563
    .end local v5           #n:Lorg/mozilla/javascript/ast/AstNode;
    .end local v7           #rightElem:Lorg/mozilla/javascript/Node;
    :cond_4
    return v2
.end method

.method destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 9
    .parameter "variableType"
    .parameter "left"
    .parameter "right"
    .parameter "tempName"

    .prologue
    const/16 v3, 0x99

    .line 3486
    const/16 v1, 0x9e

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v8

    .line 3487
    .local v8, result:Lorg/mozilla/javascript/ast/Scope;
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x27

    invoke-virtual {p0, v2, p4, p3}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v8, v1}, Lorg/mozilla/javascript/ast/Scope;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 3490
    :try_start_0
    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 3491
    const/16 v1, 0x99

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p4, v2}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3493
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    .line 3495
    new-instance v5, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x59

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 3496
    .local v5, comma:Lorg/mozilla/javascript/Node;
    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/ast/Scope;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 3497
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3498
    .local v6, destructuringNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 3499
    .local v7, empty:Z
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3515
    const-string v1, "msg.bad.assign.left"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 3517
    :goto_0
    if-eqz v7, :cond_0

    .line 3519
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 3521
    :cond_0
    const/16 v1, 0x16

    invoke-virtual {v8, v1, v6}, Lorg/mozilla/javascript/ast/Scope;->putProp(ILjava/lang/Object;)V

    .line 3522
    return-object v8

    .line 3493
    .end local v5           #comma:Lorg/mozilla/javascript/Node;
    .end local v6           #destructuringNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #empty:Z
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v1

    .line 3501
    .restart local v5       #comma:Lorg/mozilla/javascript/Node;
    .restart local v6       #destructuringNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #empty:Z
    :sswitch_0
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ast/ArrayLiteral;

    move-object v2, v0

    move-object v1, p0

    move v3, p1

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Parser;->destructuringArray(Lorg/mozilla/javascript/ast/ArrayLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z

    move-result v7

    .line 3504
    goto :goto_0

    .line 3506
    :sswitch_1
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-object v2, v0

    move-object v1, p0

    move v3, p1

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Parser;->destructuringObject(Lorg/mozilla/javascript/ast/ObjectLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z

    move-result v7

    .line 3509
    goto :goto_0

    .line 3512
    :sswitch_2
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 3499
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x24 -> :sswitch_2
        0x41 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method destructuringObject(Lorg/mozilla/javascript/ast/ObjectLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z
    .locals 18
    .parameter "node"
    .parameter "variableType"
    .parameter "tempName"
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ast/ObjectLiteral;",
            "I",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3572
    .local p5, destructuringNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 3573
    .local v5, empty:Z
    const/16 v15, 0x9a

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_2

    const/16 v15, 0x9b

    move v13, v15

    .line 3576
    .local v13, setOp:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mozilla/javascript/ast/ObjectProperty;

    .line 3577
    .local v10, prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    const/4 v8, 0x0

    .line 3581
    .local v8, lineno:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object v15, v0

    if-eqz v15, :cond_0

    .line 3582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    move-object v15, v0

    iget v8, v15, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 3584
    :cond_0
    invoke-virtual {v10}, Lorg/mozilla/javascript/ast/ObjectProperty;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    .line 3585
    .local v7, id:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v11, 0x0

    .line 3586
    .local v11, rightElem:Lorg/mozilla/javascript/Node;
    instance-of v15, v7, Lorg/mozilla/javascript/ast/Name;

    if-eqz v15, :cond_3

    .line 3587
    check-cast v7, Lorg/mozilla/javascript/ast/Name;

    .end local v7           #id:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    .line 3588
    .local v12, s:Lorg/mozilla/javascript/Node;
    new-instance v11, Lorg/mozilla/javascript/Node;

    .end local v11           #rightElem:Lorg/mozilla/javascript/Node;
    const/16 v15, 0x21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v16

    move-object v0, v11

    move v1, v15

    move-object/from16 v2, v16

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3598
    .restart local v11       #rightElem:Lorg/mozilla/javascript/Node;
    :goto_2
    invoke-virtual {v11, v8}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 3599
    invoke-virtual {v10}, Lorg/mozilla/javascript/ast/ObjectProperty;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v14

    .line 3600
    .local v14, value:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v14}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v15

    const/16 v16, 0x27

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 3601
    check-cast v14, Lorg/mozilla/javascript/ast/Name;

    .end local v14           #value:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v14}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 3602
    .local v9, name:Ljava/lang/String;
    new-instance v15, Lorg/mozilla/javascript/Node;

    const/16 v16, 0x31

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v9

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v16

    move-object v0, v15

    move v1, v13

    move-object/from16 v2, v16

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p4

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 3606
    const/4 v15, -0x1

    move/from16 v0, p2

    move v1, v15

    if-eq v0, v1, :cond_1

    .line 3607
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v9

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    .line 3608
    move-object/from16 v0, p5

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3616
    .end local v9           #name:Ljava/lang/String;
    :cond_1
    :goto_3
    const/4 v5, 0x0

    .line 3617
    goto/16 :goto_1

    .line 3573
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #lineno:I
    .end local v10           #prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    .end local v11           #rightElem:Lorg/mozilla/javascript/Node;
    .end local v12           #s:Lorg/mozilla/javascript/Node;
    .end local v13           #setOp:I
    :cond_2
    const/16 v15, 0x8

    move v13, v15

    goto/16 :goto_0

    .line 3589
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #id:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v8       #lineno:I
    .restart local v10       #prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    .restart local v11       #rightElem:Lorg/mozilla/javascript/Node;
    .restart local v13       #setOp:I
    :cond_3
    instance-of v15, v7, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v15, :cond_4

    .line 3590
    check-cast v7, Lorg/mozilla/javascript/ast/StringLiteral;

    .end local v7           #id:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    .line 3591
    .restart local v12       #s:Lorg/mozilla/javascript/Node;
    new-instance v11, Lorg/mozilla/javascript/Node;

    .end local v11           #rightElem:Lorg/mozilla/javascript/Node;
    const/16 v15, 0x21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v16

    move-object v0, v11

    move v1, v15

    move-object/from16 v2, v16

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3592
    .restart local v11       #rightElem:Lorg/mozilla/javascript/Node;
    goto :goto_2

    .end local v12           #s:Lorg/mozilla/javascript/Node;
    .restart local v7       #id:Lorg/mozilla/javascript/ast/AstNode;
    :cond_4
    instance-of v15, v7, Lorg/mozilla/javascript/ast/NumberLiteral;

    if-eqz v15, :cond_5

    .line 3593
    check-cast v7, Lorg/mozilla/javascript/ast/NumberLiteral;

    .end local v7           #id:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v15

    double-to-int v15, v15

    int-to-double v15, v15

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v12

    .line 3594
    .restart local v12       #s:Lorg/mozilla/javascript/Node;
    new-instance v11, Lorg/mozilla/javascript/Node;

    .end local v11           #rightElem:Lorg/mozilla/javascript/Node;
    const/16 v15, 0x24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v16

    move-object v0, v11

    move v1, v15

    move-object/from16 v2, v16

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3595
    .restart local v11       #rightElem:Lorg/mozilla/javascript/Node;
    goto/16 :goto_2

    .line 3596
    .end local v12           #s:Lorg/mozilla/javascript/Node;
    .restart local v7       #id:Lorg/mozilla/javascript/ast/AstNode;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v15

    throw v15

    .line 3611
    .end local v7           #id:Lorg/mozilla/javascript/ast/AstNode;
    .restart local v12       #s:Lorg/mozilla/javascript/Node;
    .restart local v14       #value:Lorg/mozilla/javascript/ast/AstNode;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v14

    move-object v3, v11

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    move-object/from16 v0, p4

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    .line 3618
    .end local v8           #lineno:I
    .end local v10           #prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    .end local v11           #rightElem:Lorg/mozilla/javascript/Node;
    .end local v12           #s:Lorg/mozilla/javascript/Node;
    .end local v14           #value:Lorg/mozilla/javascript/ast/AstNode;
    :cond_7
    return v5
.end method

.method public eof()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->eof()Z

    move-result v0

    return v0
.end method

.method insideFunction()Z
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "messageId"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "messageId"
    .parameter "messageArg"

    .prologue
    .line 239
    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 3746
    instance-of v0, p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-eqz v0, :cond_1

    .line 3747
    check-cast p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    .end local p1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/ast/DestructuringForm;->setIsDestructuring(Z)V

    .line 3751
    :cond_0
    :goto_0
    return-void

    .line 3748
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_0

    .line 3749
    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_0
.end method

.method public parse(Ljava/io/Reader;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    .locals 3
    .parameter "sourceReader"
    .parameter "sourceURI"
    .parameter "lineno"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 523
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "parser reused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Parser;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 528
    :cond_1
    :try_start_0
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    .line 529
    new-instance v0, Lorg/mozilla/javascript/TokenStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p3}, Lorg/mozilla/javascript/TokenStream;-><init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 530
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parse()Lorg/mozilla/javascript/ast/AstRoot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 532
    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    .locals 4
    .parameter "sourceString"
    .parameter "sourceURI"
    .parameter "lineno"

    .prologue
    const/4 v3, 0x1

    .line 499
    iget-boolean v1, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "parser reused"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    .line 501
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    .line 504
    :cond_1
    new-instance v1, Lorg/mozilla/javascript/TokenStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p3}, Lorg/mozilla/javascript/TokenStream;-><init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 506
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parse()Lorg/mozilla/javascript/ast/AstRoot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 511
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    return-object v1

    .line 507
    :catch_0
    move-exception v0

    .line 509
    .local v0, iox:Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    .end local v0           #iox:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    throw v1
.end method

.method popScope()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 449
    return-void
.end method

.method pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 2
    .parameter "scope"

    .prologue
    .line 435
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 438
    .local v0, parent:Lorg/mozilla/javascript/ast/Scope;
    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-eq v0, v1, :cond_0

    .line 440
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 444
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 445
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/Scope;->addChildScope(Lorg/mozilla/javascript/ast/Scope;)V

    goto :goto_0
.end method

.method protected removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 1
    .parameter "node"

    .prologue
    .line 3739
    :goto_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_0

    .line 3740
    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    .restart local p1
    goto :goto_0

    .line 3742
    :cond_0
    return-object p1
.end method

.method reportError(Ljava/lang/String;)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method reportError(Ljava/lang/String;II)V
    .locals 1
    .parameter "messageId"
    .parameter "position"
    .parameter "length"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    .line 260
    return-void
.end method

.method reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "messageId"
    .parameter "messageArg"

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0, p1, p2, v1, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method reportError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "messageId"
    .parameter "messageArg"
    .parameter "position"
    .parameter "length"

    .prologue
    .line 265
    invoke-virtual {p0, p1, p3, p4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;II)V

    .line 267
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lorg/mozilla/javascript/Parser$ParserException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser$ParserException;-><init>(Lorg/mozilla/javascript/Parser$1;)V

    throw v0

    .line 270
    :cond_0
    return-void
.end method

.method protected setIsGenerator()V
    .locals 1

    .prologue
    .line 3302
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3303
    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsGenerator()V

    .line 3305
    :cond_0
    return-void
.end method

.method protected setRequiresActivation()V
    .locals 1

    .prologue
    .line 3288
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3289
    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    .line 3291
    :cond_0
    return-void
.end method

.method protected simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 8
    .parameter "left"
    .parameter "right"

    .prologue
    .line 3676
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    .line 3677
    .local v2, nodeType:I
    sparse-switch v2, :sswitch_data_0

    .line 3727
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 3679
    :sswitch_0
    iget-boolean v6, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v6, :cond_0

    const-string v7, "eval"

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3682
    const-string v7, "msg.bad.id.strict"

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    :cond_0
    const/16 v6, 0x31

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 3686
    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x8

    invoke-direct {v6, v7, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3723
    .end local p1
    :goto_0
    return-object v6

    .line 3695
    .restart local p1
    :sswitch_1
    instance-of v6, p1, Lorg/mozilla/javascript/ast/PropertyGet;

    if-eqz v6, :cond_1

    .line 3696
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/PropertyGet;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 3697
    .local v3, obj:Lorg/mozilla/javascript/Node;
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    .line 3707
    .local v1, id:Lorg/mozilla/javascript/Node;
    :goto_1
    const/16 v6, 0x21

    if-ne v2, v6, :cond_3

    .line 3708
    const/16 v5, 0x23

    .line 3714
    .local v5, type:I
    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 3718
    :goto_2
    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v5, v3, v1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 3698
    .end local v1           #id:Lorg/mozilla/javascript/Node;
    .end local v3           #obj:Lorg/mozilla/javascript/Node;
    .end local v5           #type:I
    .restart local p1
    :cond_1
    instance-of v6, p1, Lorg/mozilla/javascript/ast/ElementGet;

    if-eqz v6, :cond_2

    .line 3699
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/ElementGet;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 3700
    .restart local v3       #obj:Lorg/mozilla/javascript/Node;
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .restart local v1       #id:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .line 3703
    .end local v1           #id:Lorg/mozilla/javascript/Node;
    .end local v3           #obj:Lorg/mozilla/javascript/Node;
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 3704
    .restart local v3       #obj:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .restart local v1       #id:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .line 3716
    .end local p1
    :cond_3
    const/16 v5, 0x25

    .restart local v5       #type:I
    goto :goto_2

    .line 3721
    .end local v1           #id:Lorg/mozilla/javascript/Node;
    .end local v3           #obj:Lorg/mozilla/javascript/Node;
    .end local v5           #type:I
    .restart local p1
    :sswitch_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 3722
    .local v4, ref:Lorg/mozilla/javascript/Node;
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->checkMutableReference(Lorg/mozilla/javascript/Node;)V

    .line 3723
    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x44

    invoke-direct {v6, v7, v4, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 3677
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
        0x43 -> :sswitch_2
    .end sparse-switch
.end method
