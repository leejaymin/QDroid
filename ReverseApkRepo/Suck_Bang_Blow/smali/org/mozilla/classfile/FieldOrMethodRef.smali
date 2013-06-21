.class final Lorg/mozilla/classfile/FieldOrMethodRef;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# instance fields
.field private className:Ljava/lang/String;

.field private hashCode:I

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "className"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 4731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4777
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->hashCode:I

    .line 4732
    iput-object p1, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->className:Ljava/lang/String;

    .line 4733
    iput-object p2, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->name:Ljava/lang/String;

    .line 4734
    iput-object p3, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->type:Ljava/lang/String;

    .line 4735
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 4755
    instance-of v2, p1, Lorg/mozilla/classfile/FieldOrMethodRef;

    if-nez v2, :cond_0

    move v2, v4

    .line 4757
    :goto_0
    return v2

    .line 4756
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/mozilla/classfile/FieldOrMethodRef;

    move-object v1, v0

    .line 4757
    .local v1, x:Lorg/mozilla/classfile/FieldOrMethodRef;
    iget-object v2, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->className:Ljava/lang/String;

    iget-object v3, v1, Lorg/mozilla/classfile/FieldOrMethodRef;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/mozilla/classfile/FieldOrMethodRef;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->type:Ljava/lang/String;

    iget-object v3, v1, Lorg/mozilla/classfile/FieldOrMethodRef;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4739
    iget-object v0, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4744
    iget-object v0, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4749
    iget-object v0, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 4765
    iget v3, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->hashCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 4766
    iget-object v3, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->className:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 4767
    .local v0, h1:I
    iget-object v3, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 4768
    .local v1, h2:I
    iget-object v3, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 4769
    .local v2, h3:I
    xor-int v3, v0, v1

    xor-int/2addr v3, v2

    iput v3, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->hashCode:I

    .line 4771
    .end local v0           #h1:I
    .end local v1           #h2:I
    .end local v2           #h3:I
    :cond_0
    iget v3, p0, Lorg/mozilla/classfile/FieldOrMethodRef;->hashCode:I

    return v3
.end method
