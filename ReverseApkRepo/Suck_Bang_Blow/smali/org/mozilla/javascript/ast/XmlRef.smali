.class public abstract Lorg/mozilla/javascript/ast/XmlRef;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "XmlRef.java"


# instance fields
.field protected atPos:I

.field protected colonPos:I

.field protected namespace:Lorg/mozilla/javascript/ast/Name;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 69
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 70
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 76
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 69
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 70
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 69
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 70
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    .line 81
    return-void
.end method


# virtual methods
.method public getAtPos()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    return v0
.end method

.method public getColonPos()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    return v0
.end method

.method public getNamespace()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public isAttributeAccess()Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAtPos(I)V
    .locals 0
    .parameter "atPos"

    .prologue
    .line 119
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 120
    return-void
.end method

.method public setColonPos(I)V
    .locals 0
    .parameter "colonPos"

    .prologue
    .line 134
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    .line 135
    return-void
.end method

.method public setNamespace(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0
    .parameter "namespace"

    .prologue
    .line 95
    iput-object p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Name;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 98
    :cond_0
    return-void
.end method
