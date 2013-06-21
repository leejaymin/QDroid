.class public Lorg/mozilla/javascript/ast/ErrorCollector;
.super Ljava/lang/Object;
.source "ErrorCollector.java"

# interfaces
.implements Lorg/mozilla/javascript/ast/IdeErrorReporter;


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ParseProblem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ErrorCollector;->errors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "message"
    .parameter "sourceName"
    .parameter "fileOffset"
    .parameter "length"

    .prologue
    .line 95
    iget-object v6, p0, Lorg/mozilla/javascript/ast/ErrorCollector;->errors:Ljava/util/List;

    new-instance v0, Lorg/mozilla/javascript/ast/ParseProblem;

    sget-object v1, Lorg/mozilla/javascript/ast/ParseProblem$Type;->Error:Lorg/mozilla/javascript/ast/ParseProblem$Type;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ast/ParseProblem;-><init>(Lorg/mozilla/javascript/ast/ParseProblem$Type;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ParseProblem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ErrorCollector;->errors:Ljava/util/List;

    return-object v0
.end method

.method public runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    .locals 1
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/mozilla/javascript/ast/ErrorCollector;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ErrorCollector;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/ParseProblem;

    .line 121
    .local v1, pp:Lorg/mozilla/javascript/ast/ParseProblem;
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ParseProblem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    .end local v1           #pp:Lorg/mozilla/javascript/ast/ParseProblem;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "message"
    .parameter "sourceName"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 73
    iget-object v6, p0, Lorg/mozilla/javascript/ast/ErrorCollector;->errors:Ljava/util/List;

    new-instance v0, Lorg/mozilla/javascript/ast/ParseProblem;

    sget-object v1, Lorg/mozilla/javascript/ast/ParseProblem$Type;->Warning:Lorg/mozilla/javascript/ast/ParseProblem$Type;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ast/ParseProblem;-><init>(Lorg/mozilla/javascript/ast/ParseProblem$Type;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
