.class public Lorg/mozilla/javascript/ast/Name;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Name.java"


# instance fields
.field private identifier:Ljava/lang/String;

.field private scope:Lorg/mozilla/javascript/ast/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 58
    const/16 v0, 0x27

    iput v0, p0, Lorg/mozilla/javascript/ast/Name;->type:I

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 58
    const/16 v0, 0x27

    iput v0, p0, Lorg/mozilla/javascript/ast/Name;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 58
    const/16 v0, 0x27

    iput v0, p0, Lorg/mozilla/javascript/ast/Name;->type:I

    .line 70
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "name"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 58
    const/16 v0, 0x27

    iput v0, p0, Lorg/mozilla/javascript/ast/Name;->type:I

    .line 80
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/Name;->setIdentifier(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "pos"
    .parameter "name"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 58
    const/16 v0, 0x27

    iput v0, p0, Lorg/mozilla/javascript/ast/Name;->type:I

    .line 85
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/Name;->setIdentifier(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/Name;->setLength(I)V

    .line 87
    return-void
.end method


# virtual methods
.method public getDefiningScope()Lorg/mozilla/javascript/ast/Scope;
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Name;->getEnclosingScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 138
    .local v0, enclosing:Lorg/mozilla/javascript/ast/Scope;
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, name:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v2

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Name;->scope:Lorg/mozilla/javascript/ast/Scope;

    return-object v0
.end method

.method public isLocalName()Z
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Name;->getDefiningScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 157
    .local v0, scope:Lorg/mozilla/javascript/ast/Scope;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 1
    .parameter "identifier"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Name;->assertNotNull(Ljava/lang/Object;)V

    .line 102
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/Name;->setLength(I)V

    .line 104
    return-void
.end method

.method public setScope(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 117
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Name;->scope:Lorg/mozilla/javascript/ast/Scope;

    .line 118
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Name;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Name;->identifier:Ljava/lang/String;

    goto :goto_0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 180
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    .line 181
    return-void
.end method
