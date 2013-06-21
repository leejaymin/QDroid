.class public Lkawa/lang/SyntaxForm;
.super Ljava/lang/Object;
.source "SyntaxForm.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public form:Ljava/lang/Object;

.field public scope:Lkawa/lang/TemplateScope;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static freeIdentifierEquals(Lkawa/lang/SyntaxForm;Lkawa/lang/SyntaxForm;)Z
    .locals 5
    .parameter "id1"
    .parameter "id2"

    .prologue
    const/4 v4, -0x1

    .line 103
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 104
    .local v0, tr:Lkawa/lang/Translator;
    iget-object v1, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    iget-object v2, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v1

    iget-object v2, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    iget-object v3, p1, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static make(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Lkawa/lang/SyntaxForm;
    .locals 1
    .parameter "form"
    .parameter "scope"

    .prologue
    .line 27
    new-instance v0, Lkawa/lang/SyntaxForm;

    invoke-direct {v0}, Lkawa/lang/SyntaxForm;-><init>()V

    .line 28
    .local v0, sf:Lkawa/lang/SyntaxForm;
    iput-object p0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .line 29
    iput-object p1, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    .line 30
    return-object v0
.end method

.method public static makeWithTemplate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "template"
    .parameter "form"

    .prologue
    .line 62
    instance-of v2, p1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_0

    .line 63
    check-cast p1, Lkawa/lang/SyntaxForm;

    .end local p1
    move-object v2, p1

    .line 71
    :goto_0
    return-object v2

    .line 64
    .restart local p1
    :cond_0
    instance-of v2, p0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_2

    .line 66
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v1, v0

    .line 67
    .local v1, sform:Lkawa/lang/SyntaxForm;
    iget-object v2, v1, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    move-object v2, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v1, p1}, Lkawa/lang/SyntaxForm;->fromDatum(Ljava/lang/Object;)Lkawa/lang/SyntaxForm;

    move-result-object v2

    goto :goto_0

    .end local v1           #sform:Lkawa/lang/SyntaxForm;
    :cond_2
    move-object v2, p1

    .line 71
    goto :goto_0
.end method

.method public static rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 2
    .parameter "x"

    .prologue
    .line 86
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 87
    .local v0, tr:Lkawa/lang/Translator;
    invoke-virtual {v0, p0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method public static rewriteBody(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 2
    .parameter "x"

    .prologue
    .line 92
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 93
    .local v0, tr:Lkawa/lang/Translator;
    invoke-virtual {v0, p0}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public fromDatum(Ljava/lang/Object;)Lkawa/lang/SyntaxForm;
    .locals 1
    .parameter "form"

    .prologue
    .line 50
    iget-object v0, p0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-static {p1, v0}, Lkawa/lang/SyntaxForm;->make(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Lkawa/lang/SyntaxForm;

    move-result-object v0

    return-object v0
.end method

.method public fromDatumIfNeeded(Ljava/lang/Object;)Lkawa/lang/SyntaxForm;
    .locals 1
    .parameter "form"

    .prologue
    .line 76
    iget-object v0, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 81
    .end local p1
    :goto_0
    return-object v0

    .line 78
    .restart local p1
    :cond_0
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_1

    .line 79
    check-cast p1, Lkawa/lang/SyntaxForm;

    .end local p1
    move-object v0, p1

    goto :goto_0

    .line 81
    .restart local p1
    :cond_1
    invoke-virtual {p0, p1}, Lkawa/lang/SyntaxForm;->fromDatum(Ljava/lang/Object;)Lkawa/lang/SyntaxForm;

    move-result-object v0

    goto :goto_0
.end method

.method public isIdentifier()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkawa/lang/TemplateScope;

    iput-object v0, p0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<syntax "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    iget v1, v1, Lkawa/lang/TemplateScope;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 111
    return-void
.end method
