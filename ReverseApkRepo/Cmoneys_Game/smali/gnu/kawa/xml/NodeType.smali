.class public Lgnu/kawa/xml/NodeType;
.super Lgnu/bytecode/ObjectType;
.source "NodeType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Lgnu/lists/NodePredicate;
.implements Ljava/io/Externalizable;


# static fields
.field public static final ATTRIBUTE_OK:I = 0x4

.field public static final COMMENT_OK:I = 0x10

.field public static final DOCUMENT_OK:I = 0x8

.field public static final ELEMENT_OK:I = 0x2

.field public static final PI_OK:I = 0x20

.field public static final TEXT_OK:I = 0x1

.field public static final anyNodeTest:Lgnu/kawa/xml/NodeType;

.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final commentNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final documentNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final nodeType:Lgnu/kawa/xml/NodeType;

.field public static final textNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final typeKNode:Lgnu/bytecode/ClassType;

.field public static final typeNodeType:Lgnu/bytecode/ClassType;


# instance fields
.field kinds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const-string v3, "gnu.kawa.xml.KNode"

    .line 177
    const-string v0, "gnu.kawa.xml.KNode"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->typeKNode:Lgnu/bytecode/ClassType;

    .line 178
    const-string v0, "gnu.kawa.xml.NodeType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->typeNodeType:Lgnu/bytecode/ClassType;

    .line 179
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "gnu.kawa.xml.KNode"

    invoke-direct {v0, v3}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->nodeType:Lgnu/kawa/xml/NodeType;

    .line 180
    sget-object v0, Lgnu/kawa/xml/NodeType;->typeNodeType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceForce"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->coerceMethod:Lgnu/bytecode/Method;

    .line 182
    sget-object v0, Lgnu/kawa/xml/NodeType;->typeNodeType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceOrNull"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    .line 211
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "document-node"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 213
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "text"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->textNodeTest:Lgnu/kawa/xml/NodeType;

    .line 215
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "comment"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->commentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 217
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "node"

    invoke-direct {v0, v1}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "kinds"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    .line 32
    iput p2, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    .line 33
    return-void
.end method

.method public static coerceForce(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;
    .locals 4
    .parameter "obj"
    .parameter "kinds"

    .prologue
    .line 119
    invoke-static {p0, p1}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 120
    .local v0, pos:Lgnu/kawa/xml/KNode;
    if-nez v0, :cond_0

    .line 121
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coerce from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    return-object v0
.end method

.method public static coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;
    .locals 5
    .parameter "obj"
    .parameter "kinds"

    .prologue
    const/4 v4, 0x0

    .line 128
    instance-of v2, p0, Lgnu/xml/NodeTree;

    if-eqz v2, :cond_0

    .line 129
    check-cast p0, Lgnu/xml/NodeTree;

    .end local p0
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v1

    .line 134
    .local v1, pos:Lgnu/kawa/xml/KNode;
    :goto_0
    iget-object v2, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v3, v1, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-static {v2, v3, p1}, Lgnu/kawa/xml/NodeType;->isInstance(Lgnu/lists/AbstractSequence;II)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .end local v1           #pos:Lgnu/kawa/xml/KNode;
    :goto_1
    return-object v2

    .line 130
    .restart local p0
    :cond_0
    instance-of v2, p0, Lgnu/kawa/xml/KNode;

    if-eqz v2, :cond_1

    .line 131
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    move-object v1, v0

    .restart local v1       #pos:Lgnu/kawa/xml/KNode;
    goto :goto_0

    .end local v1           #pos:Lgnu/kawa/xml/KNode;
    :cond_1
    move-object v2, v4

    .line 133
    goto :goto_1

    .end local p0
    .restart local v1       #pos:Lgnu/kawa/xml/KNode;
    :cond_2
    move-object v2, v4

    .line 134
    goto :goto_1
.end method

.method public static isInstance(Lgnu/lists/AbstractSequence;II)Z
    .locals 4
    .parameter "seq"
    .parameter "ipos"
    .parameter "kinds"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    .line 79
    .local v0, kind:I
    if-gez p2, :cond_1

    .line 80
    if-eqz v0, :cond_0

    move v1, v3

    .line 114
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 80
    goto :goto_0

    .line 83
    :cond_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v3

    .line 114
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 86
    goto :goto_0

    .line 101
    :pswitch_2
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 103
    :pswitch_3
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 105
    :pswitch_4
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 107
    :pswitch_5
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 109
    :pswitch_6
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0

    .line 111
    :pswitch_7
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 48
    iget v0, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-static {p1, v0}, Lgnu/kawa/xml/NodeType;->coerceForce(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 1
    .parameter "other"

    .prologue
    .line 58
    invoke-virtual {p0}, Lgnu/kawa/xml/NodeType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    return v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 42
    iget v0, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 43
    sget-object v0, Lgnu/kawa/xml/NodeType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 44
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "incoming"
    .parameter "comp"

    .prologue
    .line 140
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 141
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 143
    :cond_0
    iget v1, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 144
    sget-object v1, Lgnu/kawa/xml/NodeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 145
    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5
    .parameter "incoming"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 162
    instance-of v3, p3, Lgnu/expr/ConditionalTarget;

    if-eqz v3, :cond_1

    .line 164
    move-object v0, p3

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v2, v0

    .line 165
    .local v2, ctarget:Lgnu/expr/ConditionalTarget;
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/xml/NodeType;->emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V

    .line 166
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 167
    .local v1, code:Lgnu/bytecode/CodeAttr;
    iget-boolean v3, v2, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, v2, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    const/16 v4, 0xc6

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    .line 171
    :goto_0
    invoke-virtual {v2, v1}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    .line 175
    .end local v1           #code:Lgnu/bytecode/CodeAttr;
    .end local v2           #ctarget:Lgnu/expr/ConditionalTarget;
    :goto_1
    return-void

    .line 170
    .restart local v1       #code:Lgnu/bytecode/CodeAttr;
    .restart local v2       #ctarget:Lgnu/expr/ConditionalTarget;
    :cond_0
    iget-object v3, v2, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    const/16 v4, 0xc7

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    goto :goto_0

    .line 174
    .end local v1           #code:Lgnu/bytecode/CodeAttr;
    .end local v2           #ctarget:Lgnu/expr/ConditionalTarget;
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "incoming"
    .parameter "decl"
    .parameter "comp"

    .prologue
    .line 149
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 150
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0, p1, p3}, Lgnu/kawa/xml/NodeType;->emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V

    .line 151
    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 154
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 156
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    .line 157
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lgnu/kawa/xml/NodeType;->typeKNode:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 63
    instance-of v2, p1, Lgnu/kawa/xml/KNode;

    if-eqz v2, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/KNode;

    move-object v1, v0

    .line 66
    .local v1, pos:Lgnu/kawa/xml/KNode;
    iget-object v2, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v1}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/xml/NodeType;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v2

    .line 68
    .end local v1           #pos:Lgnu/kawa/xml/KNode;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 1
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 73
    iget v0, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-static {p1, p2, v0}, Lgnu/kawa/xml/NodeType;->isInstance(Lgnu/lists/AbstractSequence;II)Z

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 207
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/NodeType;->setName(Ljava/lang/String;)V

    .line 208
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/kawa/xml/NodeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lgnu/kawa/xml/NodeType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 199
    iget v1, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 200
    return-void

    :cond_0
    move-object v1, v0

    .line 198
    goto :goto_0
.end method
