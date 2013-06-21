.class public Lorg/mozilla/javascript/ast/Jump;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Jump.java"


# instance fields
.field private jumpNode:Lorg/mozilla/javascript/ast/Jump;

.field public target:Lorg/mozilla/javascript/Node;

.field private target2:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "nodeType"

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 66
    iput p1, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "type"
    .parameter "lineno"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 71
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/Jump;->setLineno(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;)V
    .locals 0
    .parameter "type"
    .parameter "child"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 76
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 77
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;I)V
    .locals 0
    .parameter "type"
    .parameter "child"
    .parameter "lineno"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 81
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/Jump;->setLineno(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public getContinue()Lorg/mozilla/javascript/Node;
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getDefault()Lorg/mozilla/javascript/Node;
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x72

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getFinally()Lorg/mozilla/javascript/Node;
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getJumpStatement()Lorg/mozilla/javascript/ast/Jump;
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-object v0
.end method

.method public getLoop()Lorg/mozilla/javascript/ast/Jump;
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-object v0
.end method

.method public setContinue(Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "continueTarget"

    .prologue
    .line 148
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 149
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x83

    if-eq v0, v1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 151
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    .line 152
    return-void
.end method

.method public setDefault(Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "defaultTarget"

    .prologue
    .line 106
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x72

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 107
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x83

    if-eq v0, v1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 108
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 109
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    .line 110
    return-void
.end method

.method public setFinally(Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "finallyTarget"

    .prologue
    .line 120
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 121
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x83

    if-eq v0, v1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 123
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    .line 124
    return-void
.end method

.method public setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 2
    .parameter "jumpStatement"

    .prologue
    .line 92
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 93
    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 95
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    .line 96
    return-void
.end method

.method public setLoop(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 2
    .parameter "loop"

    .prologue
    .line 134
    iget v0, p0, Lorg/mozilla/javascript/ast/Jump;->type:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 135
    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ast/Jump;->codeBug()Ljava/lang/RuntimeException;

    .line 137
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    .line 138
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Jump;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 2
    .parameter "visitor"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Jump;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
