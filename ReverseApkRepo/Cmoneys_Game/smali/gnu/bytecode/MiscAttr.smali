.class public Lgnu/bytecode/MiscAttr;
.super Lgnu/bytecode/Attribute;
.source "MiscAttr.java"


# instance fields
.field data:[B

.field length:I

.field offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "name"
    .parameter "data"

    .prologue
    .line 27
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .parameter "name"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    .line 21
    iput p3, p0, Lgnu/bytecode/MiscAttr;->offset:I

    .line 22
    iput p4, p0, Lgnu/bytecode/MiscAttr;->length:I

    .line 23
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lgnu/bytecode/MiscAttr;->length:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 6
    .parameter "dst"

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x10

    .line 40
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 41
    invoke-virtual {p0}, Lgnu/bytecode/MiscAttr;->getLength()I

    move-result v2

    .line 42
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_3

    .line 44
    iget-object v3, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v0, v3, v1

    .line 45
    .local v0, b:I
    rem-int/lit8 v3, v1, 0x14

    if-nez v3, :cond_1

    .line 46
    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 47
    :cond_1
    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 48
    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 49
    and-int/lit8 v3, v0, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    rem-int/lit8 v3, v1, 0x14

    if-eqz v3, :cond_2

    if-ne v1, v2, :cond_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    goto :goto_0

    .line 54
    .end local v0           #b:I
    :cond_3
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "dstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    iget v2, p0, Lgnu/bytecode/MiscAttr;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 36
    return-void
.end method
