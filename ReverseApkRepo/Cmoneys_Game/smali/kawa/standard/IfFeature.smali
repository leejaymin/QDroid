.class public Lkawa/standard/IfFeature;
.super Ljava/lang/Object;
.source "IfFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    .line 22
    const-string v3, "kawa"

    if-ne p0, v3, :cond_0

    move v3, v5

    .line 59
    :goto_0
    return v3

    .line 24
    :cond_0
    const-string v3, "srfi-0"

    if-ne p0, v3, :cond_1

    move v3, v5

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    const-string v3, "srfi-4"

    if-ne p0, v3, :cond_2

    move v3, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string v3, "srfi-6"

    if-ne p0, v3, :cond_3

    move v3, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const-string v3, "srfi-8"

    if-ne p0, v3, :cond_4

    move v3, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_4
    const-string v3, "srfi-9"

    if-ne p0, v3, :cond_5

    move v3, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_5
    const-string v3, "srfi-11"

    if-ne p0, v3, :cond_6

    move v3, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_6
    const-string v3, "srfi-16"

    if-ne p0, v3, :cond_7

    move v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_7
    const-string v3, "srfi-17"

    if-ne p0, v3, :cond_8

    move v3, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_8
    const-string v3, "srfi-23"

    if-ne p0, v3, :cond_9

    move v3, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_9
    const-string v3, "srfi-25"

    if-ne p0, v3, :cond_a

    move v3, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_a
    const-string v3, "srfi-26"

    if-ne p0, v3, :cond_b

    move v3, v5

    .line 46
    goto :goto_0

    .line 47
    :cond_b
    const-string v3, "srfi-28"

    if-ne p0, v3, :cond_c

    move v3, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_c
    const-string v3, "srfi-30"

    if-ne p0, v3, :cond_d

    move v3, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_d
    const-string v3, "srfi-39"

    if-ne p0, v3, :cond_e

    move v3, v5

    .line 52
    goto :goto_0

    .line 54
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%provide%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, provide_name:Ljava/lang/String;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    .line 56
    .local v0, comp:Lgnu/expr/Compilation;
    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Compilation;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v1

    .line 57
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_f

    const/high16 v3, 0x1

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static testFeature(Ljava/lang/Object;)Z
    .locals 3
    .parameter "form"

    .prologue
    .line 10
    instance-of v2, p0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_0

    .line 12
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v1, v0

    .line 13
    .local v1, sf:Lkawa/lang/SyntaxForm;
    iget-object p0, v1, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .line 15
    .end local v1           #sf:Lkawa/lang/SyntaxForm;
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/standard/IfFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    .line 17
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
