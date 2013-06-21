.class Lorg/mozilla/javascript/DefaultErrorReporter;
.super Ljava/lang/Object;
.source "DefaultErrorReporter.java"

# interfaces
.implements Lorg/mozilla/javascript/ErrorReporter;


# static fields
.field static final instance:Lorg/mozilla/javascript/DefaultErrorReporter;


# instance fields
.field private chainedReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private forEval:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/mozilla/javascript/DefaultErrorReporter;

    invoke-direct {v0}, Lorg/mozilla/javascript/DefaultErrorReporter;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/DefaultErrorReporter;->instance:Lorg/mozilla/javascript/DefaultErrorReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forEval(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;
    .locals 2
    .parameter "reporter"

    .prologue
    .line 57
    new-instance v0, Lorg/mozilla/javascript/DefaultErrorReporter;

    invoke-direct {v0}, Lorg/mozilla/javascript/DefaultErrorReporter;-><init>()V

    .line 58
    .local v0, r:Lorg/mozilla/javascript/DefaultErrorReporter;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/mozilla/javascript/DefaultErrorReporter;->forEval:Z

    .line 59
    iput-object p0, v0, Lorg/mozilla/javascript/DefaultErrorReporter;->chainedReporter:Lorg/mozilla/javascript/ErrorReporter;

    .line 60
    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 10
    .parameter "message"
    .parameter "sourceURI"
    .parameter "line"
    .parameter "lineText"
    .parameter "lineOffset"

    .prologue
    const-string v2, "TypeError: "

    .line 77
    iget-boolean v1, p0, Lorg/mozilla/javascript/DefaultErrorReporter;->forEval:Z

    if-eqz v1, :cond_1

    .line 81
    const-string v0, "SyntaxError"

    .line 82
    .local v0, error:Ljava/lang/String;
    const-string v8, "TypeError"

    .line 83
    .local v8, TYPE_ERROR_NAME:Ljava/lang/String;
    const-string v7, ": "

    .line 84
    .local v7, DELIMETER:Ljava/lang/String;
    const-string v9, "TypeError: "

    .line 85
    .local v9, prefix:Ljava/lang/String;
    const-string v1, "TypeError: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v0, "TypeError"

    .line 87
    const-string v1, "TypeError: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 89
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    throw v1

    .line 92
    .end local v0           #error:Ljava/lang/String;
    .end local v7           #DELIMETER:Ljava/lang/String;
    .end local v8           #TYPE_ERROR_NAME:Ljava/lang/String;
    .end local v9           #prefix:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/DefaultErrorReporter;->chainedReporter:Lorg/mozilla/javascript/ErrorReporter;

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lorg/mozilla/javascript/DefaultErrorReporter;->chainedReporter:Lorg/mozilla/javascript/ErrorReporter;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 99
    return-void

    .line 96
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lorg/mozilla/javascript/DefaultErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1
.end method

.method public runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    .locals 6
    .parameter "message"
    .parameter "sourceURI"
    .parameter "line"
    .parameter "lineText"
    .parameter "lineOffset"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/mozilla/javascript/DefaultErrorReporter;->chainedReporter:Lorg/mozilla/javascript/ErrorReporter;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/mozilla/javascript/DefaultErrorReporter;->chainedReporter:Lorg/mozilla/javascript/ErrorReporter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/EvaluatorException;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .parameter "message"
    .parameter "sourceURI"
    .parameter "line"
    .parameter "lineText"
    .parameter "lineOffset"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/mozilla/javascript/DefaultErrorReporter;->chainedReporter:Lorg/mozilla/javascript/ErrorReporter;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/mozilla/javascript/DefaultErrorReporter;->chainedReporter:Lorg/mozilla/javascript/ErrorReporter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 72
    :cond_0
    return-void
.end method
