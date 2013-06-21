.class Lorg/jaxen/expr/DefaultNotEqualsExpr;
.super Lorg/jaxen/expr/DefaultEqualityExpr;
.source "DefaultNotEqualsExpr.java"


# static fields
.field private static final serialVersionUID:J = -0x6f0a364e5ade5ed0L


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultEqualityExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/jaxen/expr/DefaultNotEqualsExpr;->eitherIsNumber(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-static {v1}, Lorg/jaxen/function/NumberFunction;->isNaN(Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-static {v1}, Lorg/jaxen/function/NumberFunction;->isNaN(Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 87
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "!="

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(DefaultNotEqualsExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNotEqualsExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultNotEqualsExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
