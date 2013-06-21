.class public Lorg/mozilla/javascript/ast/Comment;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Comment.java"


# instance fields
.field private commentType:Lorg/mozilla/javascript/Token$CommentType;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 79
    const/16 v0, 0xa1

    iput v0, p0, Lorg/mozilla/javascript/ast/Comment;->type:I

    .line 91
    iput-object p3, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 92
    iput-object p4, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentType(Lorg/mozilla/javascript/Token$CommentType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 108
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 109
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Comment;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Comment;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 132
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    .line 133
    return-void
.end method
