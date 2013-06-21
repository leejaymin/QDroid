.class Lorg/mozilla/javascript/optimizer/BodyCodegen;
.super Ljava/lang/Object;
.source "Codegen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    }
.end annotation


# static fields
.field private static final ECMAERROR_EXCEPTION:I = 0x2

.field private static final EVALUATOR_EXCEPTION:I = 0x1

.field static final GENERATOR_START:I = 0x0

.field static final GENERATOR_TERMINATE:I = -0x1

.field static final GENERATOR_YIELD_START:I = 0x1

.field private static final JAVASCRIPT_EXCEPTION:I = 0x0

.field private static final MAX_LOCALS:I = 0x100

.field private static final THROWABLE_EXCEPTION:I = 0x3


# instance fields
.field private argsLocal:S

.field cfw:Lorg/mozilla/classfile/ClassFileWriter;

.field codegen:Lorg/mozilla/javascript/optimizer/Codegen;

.field compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private contextLocal:S

.field private enterAreaStartLabel:I

.field private epilogueLabel:I

.field private finallys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/mozilla/javascript/Node;",
            "Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;",
            ">;"
        }
    .end annotation
.end field

.field private firstFreeLocal:S

.field private fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

.field private funObjLocal:S

.field private generatorStateLocal:S

.field private generatorSwitch:I

.field private hasVarsInRegs:Z

.field private inDirectCallFunction:Z

.field private isGenerator:Z

.field private isTopLevel:Z

.field private itsForcedObjectParameters:Z

.field private itsLineNumber:I

.field private itsOneArgArray:S

.field private itsZeroArgArray:S

.field private locals:[I

.field private localsMax:S

.field private maxLocals:I

.field private maxStack:I

.field private operationLocal:S

.field private popvLocal:S

.field private savedCodeOffset:I

.field scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field public scriptOrFnIndex:I

.field private scriptRegexpLocal:S

.field private thisObjLocal:S

.field private varRegisters:[S

.field private variableObjectLocal:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5096
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    .line 5097
    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    .line 5101
    return-void
.end method

.method private addDoubleWrap()V
    .locals 2

    .prologue
    .line 4938
    const-string v0, "wrapDouble"

    const-string v1, "(D)Ljava/lang/Double;"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4939
    return-void
.end method

.method private addGoto(Lorg/mozilla/javascript/Node;I)V
    .locals 2
    .parameter "target"
    .parameter "jumpcode"

    .prologue
    .line 4879
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 4880
    .local v0, targetLabel:I
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4881
    return-void
.end method

.method private addGotoWithReturn(Lorg/mozilla/javascript/Node;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 3140
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;

    .line 3141
    .local v0, ret:Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 3142
    const/16 v2, 0xa7

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 3143
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    .line 3144
    .local v1, retLabel:I
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 3145
    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3146
    return-void
.end method

.method private addInstructionCount()V
    .locals 3

    .prologue
    .line 3991
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result v1

    iget v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->savedCodeOffset:I

    sub-int v0, v1, v2

    .line 3992
    .local v0, count:I
    if-nez v0, :cond_0

    .line 3995
    :goto_0
    return-void

    .line 3994
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount(I)V

    goto :goto_0
.end method

.method private addInstructionCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 4006
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4007
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4008
    const-string v0, "addInstructionCount"

    const-string v1, "(Lorg/mozilla/javascript/Context;I)V"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    return-void
.end method

.method private addJumpedBooleanWrap(II)V
    .locals 7
    .parameter "trueLabel"
    .parameter "falseLabel"

    .prologue
    const/16 v4, 0xb2

    const-string v6, "java/lang/Boolean"

    const-string v5, "Ljava/lang/Boolean;"

    .line 4924
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4925
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 4926
    .local v0, skip:I
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v2, "java/lang/Boolean"

    const-string v2, "FALSE"

    const-string v3, "Ljava/lang/Boolean;"

    invoke-virtual {v1, v4, v6, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4928
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4929
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4930
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v2, "java/lang/Boolean"

    const-string v2, "TRUE"

    const-string v3, "Ljava/lang/Boolean;"

    invoke-virtual {v1, v4, v6, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4932
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4933
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop(I)V

    .line 4934
    return-void
.end method

.method private addNewObjectArray(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 4890
    if-nez p1, :cond_1

    .line 4891
    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:S

    if-ltz v0, :cond_0

    .line 4892
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4902
    :goto_0
    return-void

    .line 4894
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb2

    const-string v2, "org/mozilla/javascript/ScriptRuntime"

    const-string v3, "emptyArgs"

    const-string v4, "[Ljava/lang/Object;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4899
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4900
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xbd

    const-string v2, "java/lang/Object"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private addObjectToDouble()V
    .locals 2

    .prologue
    .line 4885
    const-string v0, "toNumber"

    const-string v1, "(Ljava/lang/Object;)D"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4886
    return-void
.end method

.method private addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "methodName"
    .parameter "methodSignature"

    .prologue
    .line 4916
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb8

    const-string v2, "org/mozilla/javascript/optimizer/OptRuntime"

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4920
    return-void
.end method

.method private addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "methodName"
    .parameter "methodSignature"

    .prologue
    .line 4907
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb8

    const-string v2, "org.mozilla.javascript.ScriptRuntime"

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    return-void
.end method

.method private dcpLoadAsNumber(I)V
    .locals 8
    .parameter "dcp_register"

    .prologue
    .line 4841
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4842
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xb2

    const-string v5, "java/lang/Void"

    const-string v6, "TYPE"

    const-string v7, "Ljava/lang/Class;"

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4846
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    .line 4847
    .local v1, isNumberLabel:I
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xa5

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4848
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v2

    .line 4849
    .local v2, stack:S
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4850
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 4851
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 4852
    .local v0, beyond:I
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4853
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 4854
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 4855
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4856
    return-void
.end method

.method private dcpLoadAsObject(I)V
    .locals 8
    .parameter "dcp_register"

    .prologue
    .line 4860
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4861
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xb2

    const-string v5, "java/lang/Void"

    const-string v6, "TYPE"

    const-string v7, "Ljava/lang/Class;"

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4865
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    .line 4866
    .local v1, isNumberLabel:I
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xa5

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4867
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v2

    .line 4868
    .local v2, stack:S
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4869
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 4870
    .local v0, beyond:I
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4871
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 4872
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 4873
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 4874
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4875
    return-void
.end method

.method private decReferenceWordLocal(S)V
    .locals 3
    .parameter "local"

    .prologue
    .line 5041
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput v1, v0, p1

    .line 5042
    return-void
.end method

.method private genSimpleCompare(III)V
    .locals 4
    .parameter "type"
    .parameter "trueGOTO"
    .parameter "falseGOTO"

    .prologue
    const/16 v3, 0x98

    const/16 v1, 0x97

    const/4 v2, -0x1

    .line 4238
    if-ne p2, v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4239
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4257
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4241
    :pswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4242
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4260
    :goto_0
    if-eq p3, v2, :cond_1

    .line 4261
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4262
    :cond_1
    return-void

    .line 4245
    :pswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4246
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    .line 4249
    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4250
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    .line 4253
    :pswitch_3
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4254
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x9d

    invoke-virtual {v0, v1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    .line 4239
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private generateActivationExit()V
    .locals 2

    .prologue
    .line 1944
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1945
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1946
    const-string v0, "exitActivationFunction"

    const-string v1, "(Lorg/mozilla/javascript/Context;)V"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    return-void
.end method

.method private generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 10
    .parameter "node"
    .parameter "argChild"
    .parameter "directCall"

    .prologue
    const/16 v9, 0x59

    .line 3567
    const/4 v0, 0x0

    .line 3568
    .local v0, argCount:I
    move-object v1, p2

    .local v1, child:Lorg/mozilla/javascript/Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 3569
    add-int/lit8 v0, v0, 0x1

    .line 3568
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0

    .line 3572
    :cond_0
    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:S

    if-ltz v6, :cond_4

    .line 3573
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:S

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3578
    :goto_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-eq v4, v0, :cond_7

    .line 3582
    iget-boolean v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    if-nez v6, :cond_1

    .line 3583
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3584
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3587
    :cond_1
    if-nez p3, :cond_5

    .line 3588
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3611
    :cond_2
    :goto_3
    iget-boolean v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    if-eqz v6, :cond_3

    .line 3612
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v5

    .line 3613
    .local v5, tempLocal:S
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 3614
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0xc0

    const-string v8, "[Ljava/lang/Object;"

    invoke-virtual {v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 3615
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3616
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3617
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3618
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(S)V

    .line 3621
    .end local v5           #tempLocal:S
    :cond_3
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0x53

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3623
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 3578
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3575
    .end local v4           #i:I
    :cond_4
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    goto :goto_1

    .line 3595
    .restart local v4       #i:I
    :cond_5
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    move-result v3

    .line 3596
    .local v3, dcp_register:I
    if-ltz v3, :cond_6

    .line 3597
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsObject(I)V

    goto :goto_3

    .line 3599
    :cond_6
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3600
    const/16 v6, 0x8

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v2

    .line 3602
    .local v2, childNumberFlag:I
    if-nez v2, :cond_2

    .line 3603
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    goto :goto_3

    .line 3625
    .end local v2           #childNumberFlag:I
    .end local v3           #dcp_register:I
    :cond_7
    return-void
.end method

.method private generateCatchBlock(ISIII)V
    .locals 4
    .parameter "exceptionType"
    .parameter "savedVariableObject"
    .parameter "catchLabel"
    .parameter "startLabel"
    .parameter "exceptionLocal"

    .prologue
    .line 3832
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    .line 3833
    .local v1, handler:I
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markHandler(I)V

    .line 3836
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 3839
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3840
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 3843
    if-nez p1, :cond_0

    .line 3844
    const-string v0, "org/mozilla/javascript/JavaScriptException"

    .line 3856
    .local v0, exceptionName:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p4, p3, v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(IIILjava/lang/String;)V

    .line 3859
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xa7

    invoke-virtual {v2, v3, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3860
    return-void

    .line 3845
    .end local v0           #exceptionName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3846
    const-string v0, "org/mozilla/javascript/EvaluatorException"

    .restart local v0       #exceptionName:Ljava/lang/String;
    goto :goto_0

    .line 3847
    .end local v0           #exceptionName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3848
    const-string v0, "org/mozilla/javascript/EcmaError"

    .restart local v0       #exceptionName:Ljava/lang/String;
    goto :goto_0

    .line 3849
    .end local v0           #exceptionName:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 3850
    const-string v0, "java/lang/Throwable"

    .restart local v0       #exceptionName:Ljava/lang/String;
    goto :goto_0

    .line 3852
    .end local v0           #exceptionName:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private generateCheckForThrowOrClose(IZI)V
    .locals 6
    .parameter "label"
    .parameter "hasLocals"
    .parameter "nextState"

    .prologue
    const/16 v5, 0x9f

    .line 2956
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    .line 2957
    .local v1, throwLabel:I
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 2960
    .local v0, closeLabel:I
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 2961
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2962
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateThrowJavaScriptException()V

    .line 2965
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 2966
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2967
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xc0

    const-string v4, "java/lang/Throwable"

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 2968
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xbf

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2972
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 2973
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 2974
    :cond_0
    if-nez p2, :cond_1

    .line 2976
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorSwitch:I

    invoke-virtual {v2, v3, p3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    .line 2980
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->operationLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 2981
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 2982
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 2983
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->operationLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 2984
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 2985
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 2986
    return-void
.end method

.method private generateEpilogue()V
    .locals 22

    .prologue
    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1833
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 1834
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object v5, v0

    check-cast v5, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getLiveLocals()Ljava/util/Map;

    move-result-object v12

    .line 1837
    .local v12, liveLocals:Ljava/util/Map;,"Ljava/util/Map<Lorg/mozilla/javascript/Node;[I>;"
    if-eqz v12, :cond_3

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object v5, v0

    check-cast v5, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    move-result-object v15

    .line 1839
    .local v15, nodes:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/Node;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 1840
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/mozilla/javascript/Node;

    .line 1841
    .local v14, node:Lorg/mozilla/javascript/Node;
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    .line 1842
    .local v11, live:[I
    if-eqz v11, :cond_2

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorSwitch:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNextGeneratorState(Lorg/mozilla/javascript/Node;)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    .line 1845
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorLocalsState()V

    .line 1846
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    move-object v0, v11

    array-length v0, v0

    move/from16 v18, v0

    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0x59

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0x32

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    aget v19, v11, v10

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1846
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1852
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0x57

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0xa7

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1839
    .end local v10           #j:I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1859
    .end local v8           #i:I
    .end local v11           #live:[I
    .end local v14           #node:Lorg/mozilla/javascript/Node;
    .end local v15           #nodes:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/Node;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mozilla/javascript/Node;

    .line 1861
    .local v13, n:Lorg/mozilla/javascript/Node;
    invoke-virtual {v13}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v18

    const/16 v19, 0x7d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;

    .line 1864
    .local v16, ret:Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->tableLabel:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v17

    .line 1869
    .local v17, startSwitch:I
    const/4 v5, 0x0

    .line 1870
    .local v5, c:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 1871
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(II)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0xa7

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1876
    add-int/lit8 v5, v5, 0x1

    .line 1871
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1883
    .end local v5           #c:I
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #liveLocals:Ljava/util/Map;,"Ljava/util/Map<Lorg/mozilla/javascript/Node;[I>;"
    .end local v13           #n:Lorg/mozilla/javascript/Node;
    .end local v16           #ret:Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    .end local v17           #startSwitch:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1887
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0xb0

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1934
    :goto_3
    return-void

    .line 1890
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object v5, v0

    check-cast v5, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorSwitch:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 1896
    :cond_8
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateSetGeneratorResumptionPoint(I)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1900
    const-string v18, "throwStopIteration"

    const-string v19, "(Ljava/lang/Object;)V"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0xb0

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_3

    .line 1906
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0xb0

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_3

    .line 1910
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateActivationExit()V

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0xb0

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v7

    .line 1917
    .local v7, finallyHandler:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markHandler(I)V

    .line 1918
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v6

    .line 1919
    .local v6, exceptionObject:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1923
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateActivationExit()V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1926
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(S)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    const/16 v19, 0xbf

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->enterAreaStartLabel:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move v3, v7

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(IIILjava/lang/String;)V

    goto/16 :goto_3
.end method

.method private generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 42
    .parameter "node"
    .parameter "parent"

    .prologue
    .line 2257
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v35

    .line 2258
    .local v35, type:I
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 2259
    .local v7, child:Lorg/mozilla/javascript/Node;
    packed-switch v35, :pswitch_data_0

    .line 2895
    :pswitch_0
    new-instance v37, Ljava/lang/RuntimeException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unexpected node type "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 2264
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v37, v0

    if-nez v37, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v37

    const/16 v38, 0x88

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_2

    .line 2265
    :cond_0
    const/16 v37, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v13

    .line 2266
    .local v13, fnIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move v1, v13

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v25

    .line 2268
    .local v25, ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v31

    .line 2269
    .local v31, t:I
    const/16 v37, 0x2

    move/from16 v0, v31

    move/from16 v1, v37

    if-eq v0, v1, :cond_1

    .line 2270
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v37

    throw v37

    .line 2272
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    .line 2898
    .end local v13           #fnIndex:I
    .end local v25           #ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    .end local v31           #t:I
    :cond_2
    :goto_0
    :pswitch_2
    return-void

    .line 2278
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 2281
    const-string v37, "name"

    const-string v38, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2293
    :pswitch_4
    const/16 v37, 0xa

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v29

    .line 2295
    .local v29, specialType:I
    if-nez v29, :cond_5

    .line 2297
    const/16 v37, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 2300
    .local v32, target:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    if-eqz v32, :cond_3

    .line 2301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move/from16 v3, v35

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitOptimizedCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/optimizer/OptFunctionNode;ILorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 2302
    :cond_3
    const/16 v37, 0x26

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 2303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitStandardCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 2305
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitStandardNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 2308
    .end local v32           #target:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v29

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSpecialCall(Lorg/mozilla/javascript/Node;IILorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2314
    .end local v29           #specialType:I
    :pswitch_5
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2316
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 2317
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2319
    const-string v37, "callRef"

    const-string v38, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2330
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v23

    .line 2331
    .local v23, num:D
    const/16 v37, 0x8

    const/16 v38, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v37

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_6

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    goto/16 :goto_0

    .line 2334
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->pushNumberAsObject(Lorg/mozilla/classfile/ClassFileWriter;D)V

    goto/16 :goto_0

    .line 2340
    .end local v23           #num:D
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2344
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto/16 :goto_0

    .line 2348
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x2a

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_0

    .line 2352
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_0

    .line 2356
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0xb2

    const-string v39, "java/lang/Boolean"

    const-string v40, "TRUE"

    const-string v41, "Ljava/lang/Boolean;"

    invoke-virtual/range {v37 .. v41}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2361
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0xb2

    const-string v39, "java/lang/Boolean"

    const-string v40, "FALSE"

    const-string v41, "Ljava/lang/Boolean;"

    invoke-virtual/range {v37 .. v41}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2367
    :pswitch_d
    const/16 v37, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v14

    .line 2373
    .local v14, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v37, v0

    if-nez v37, :cond_7

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptRegexpLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2381
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x32

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_0

    .line 2376
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0xb4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    move-object/from16 v39, v0

    const-string v40, "_re"

    const-string v41, "[Ljava/lang/Object;"

    invoke-virtual/range {v37 .. v41}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2387
    .end local v14           #i:I
    :pswitch_e
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v22

    .line 2388
    .local v22, next:Lorg/mozilla/javascript/Node;
    :goto_2
    if-eqz v22, :cond_8

    .line 2389
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x57

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2391
    move-object/from16 v7, v22

    .line 2392
    invoke-virtual/range {v22 .. v22}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v22

    goto :goto_2

    .line 2394
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2400
    .end local v22           #next:Lorg/mozilla/javascript/Node;
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    move-result v19

    .line 2401
    .local v19, local:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2402
    const/16 v37, 0x3d

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_9

    .line 2403
    const-string v37, "enumNext"

    const-string v38, "(Ljava/lang/Object;)Ljava/lang/Boolean;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2406
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2407
    const-string v37, "enumId"

    const-string v38, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2416
    .end local v19           #local:I
    :pswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2420
    :pswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2424
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v34

    .line 2425
    .local v34, trueTarget:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v12

    .line 2426
    .local v12, falseTarget:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v6

    .line 2427
    .local v6, beyond:I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, v34

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0xb2

    const-string v39, "java/lang/Boolean"

    const-string v40, "FALSE"

    const-string v41, "Ljava/lang/Boolean;"

    invoke-virtual/range {v37 .. v41}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0xa7

    move-object/from16 v0, v37

    move/from16 v1, v38

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0xb2

    const-string v39, "java/lang/Boolean"

    const-string v40, "TRUE"

    const-string v41, "Ljava/lang/Boolean;"

    invoke-virtual/range {v37 .. v41}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop(I)V

    goto/16 :goto_0

    .line 2442
    .end local v6           #beyond:I
    .end local v12           #falseTarget:I
    .end local v34           #trueTarget:I
    :pswitch_13
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2443
    const-string v37, "toInt32"

    const-string v38, "(Ljava/lang/Object;)I"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x82

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x87

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2447
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    goto/16 :goto_0

    .line 2451
    :pswitch_14
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x57

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto/16 :goto_0

    .line 2457
    :pswitch_15
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2458
    const-string v37, "typeof"

    const-string v38, "(Ljava/lang/Object;)Ljava/lang/String;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2464
    :pswitch_16
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitTypeofname(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2469
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIncDec(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2474
    :pswitch_18
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x59

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2476
    const-string v37, "toBoolean"

    const-string v38, "(Ljava/lang/Object;)Z"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v12

    .line 2479
    .restart local v12       #falseTarget:I
    const/16 v37, 0x69

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_a

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x99

    move-object/from16 v0, v37

    move/from16 v1, v38

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 2483
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x57

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2484
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto/16 :goto_0

    .line 2482
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x9a

    move-object/from16 v0, v37

    move/from16 v1, v38

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_3

    .line 2490
    .end local v12           #falseTarget:I
    :pswitch_19
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v16

    .line 2491
    .local v16, ifThen:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v15

    .line 2492
    .local v15, ifElse:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2493
    const-string v37, "toBoolean"

    const-string v38, "(Ljava/lang/Object;)Z"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v8

    .line 2496
    .local v8, elseTarget:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x99

    move-object/from16 v0, v37

    move/from16 v1, v38

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v30

    .line 2498
    .local v30, stack:S
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v5

    .line 2500
    .local v5, afterHook:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0xa7

    move-object/from16 v0, v37

    move/from16 v1, v38

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move v1, v8

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 2502
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto/16 :goto_0

    .line 2508
    .end local v5           #afterHook:I
    .end local v8           #elseTarget:I
    .end local v15           #ifElse:Lorg/mozilla/javascript/Node;
    .end local v16           #ifThen:Lorg/mozilla/javascript/Node;
    .end local v30           #stack:S
    :pswitch_1a
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2509
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2510
    const/16 v37, 0x8

    const/16 v38, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v37

    packed-switch v37, :pswitch_data_1

    .line 2523
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v37

    const/16 v38, 0x29

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    .line 2524
    const-string v37, "add"

    const-string v38, "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2512
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x63

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_0

    .line 2515
    :pswitch_1c
    const-string v37, "add"

    const-string v38, "(DLjava/lang/Object;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2519
    :pswitch_1d
    const-string v37, "add"

    const-string v38, "(Ljava/lang/Object;D)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2528
    :cond_b
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v37

    const/16 v38, 0x29

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    .line 2529
    const-string v37, "add"

    const-string v38, "(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2534
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2535
    const-string v37, "add"

    const-string v38, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2546
    :pswitch_1e
    const/16 v37, 0x6b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    move-object v3, v7

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitArithmetic(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2550
    :pswitch_1f
    const/16 v37, 0x67

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    move-object v3, v7

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitArithmetic(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2555
    :pswitch_20
    const/16 v37, 0x18

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_d

    const/16 v37, 0x6f

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    move-object v3, v7

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitArithmetic(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    :cond_d
    const/16 v37, 0x73

    goto :goto_4

    .line 2566
    :pswitch_21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitBitOp(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2571
    :pswitch_22
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2572
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 2573
    const/16 v37, 0x1d

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_e

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x77

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2576
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    goto/16 :goto_0

    .line 2581
    :pswitch_23
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2582
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    goto/16 :goto_0

    .line 2587
    :pswitch_24
    const/16 v26, -0x1

    .line 2588
    .local v26, prop:I
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v37

    const/16 v38, 0x28

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    .line 2589
    const/16 v37, 0x8

    const/16 v38, -0x1

    move-object v0, v7

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v26

    .line 2591
    :cond_f
    const/16 v37, -0x1

    move/from16 v0, v26

    move/from16 v1, v37

    if-eq v0, v1, :cond_10

    .line 2592
    const/16 v37, 0x8

    move-object v0, v7

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 2593
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2594
    const/16 v37, 0x8

    move-object v0, v7

    move/from16 v1, v37

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto/16 :goto_0

    .line 2596
    :cond_10
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2597
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    goto/16 :goto_0

    .line 2608
    .end local v26           #prop:I
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v33

    .line 2609
    .local v33, trueGOTO:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v11

    .line 2610
    .local v11, falseGOTO:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v33

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIfJumpRelOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 2611
    move-object/from16 v0, p0

    move/from16 v1, v33

    move v2, v11

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addJumpedBooleanWrap(II)V

    goto/16 :goto_0

    .line 2619
    .end local v11           #falseGOTO:I
    .end local v33           #trueGOTO:I
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v33

    .line 2620
    .restart local v33       #trueGOTO:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v11

    .line 2621
    .restart local v11       #falseGOTO:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v33

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIfJumpEqOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 2622
    move-object/from16 v0, p0

    move/from16 v1, v33

    move v2, v11

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addJumpedBooleanWrap(II)V

    goto/16 :goto_0

    .line 2628
    .end local v11           #falseGOTO:I
    .end local v33           #trueGOTO:I
    :pswitch_27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitGetProp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2632
    :pswitch_28
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2633
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2635
    const/16 v37, 0x8

    const/16 v38, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v37

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_11

    .line 2636
    const-string v37, "getObjectIndex"

    const-string v38, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2643
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2644
    const-string v37, "getObjectElem"

    const-string v38, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2655
    :pswitch_29
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2656
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2657
    const-string v37, "refGet"

    const-string v38, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2665
    :pswitch_2a
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitGetVar(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2669
    :pswitch_2b
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_0

    .line 2673
    :pswitch_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetName(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2677
    :pswitch_2d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitStrictSetName(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2681
    :pswitch_2e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetConst(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2685
    :pswitch_2f
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetConstVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_0

    .line 2690
    :pswitch_30
    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, p1

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetProp(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2695
    :pswitch_31
    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, p1

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetElem(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2701
    :pswitch_32
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2702
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 2703
    const/16 v37, 0x8e

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_12

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    const/16 v38, 0x59

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2706
    const-string v37, "refGet"

    const-string v38, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    :cond_12
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2714
    const-string v37, "refSet"

    const-string v38, "(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2724
    :pswitch_33
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2726
    const-string v37, "refDel"

    const-string v38, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2733
    :pswitch_34
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2734
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 2735
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2736
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2737
    const-string v37, "delete"

    const-string v38, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2746
    :goto_5
    :pswitch_35
    if-eqz v7, :cond_13

    .line 2747
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2748
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    goto :goto_5

    .line 2751
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 2754
    const-string v37, "bind"

    const-string v38, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2764
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto/16 :goto_0

    .line 2769
    :pswitch_37
    const/16 v37, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 2770
    .local v28, special:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2773
    const-string v37, "specialRef"

    const-string v38, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2787
    .end local v28           #special:Ljava/lang/String;
    :pswitch_38
    const/16 v37, 0x10

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v20

    .line 2791
    .local v20, memberTypeFlags:I
    :cond_14
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2792
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 2793
    if-nez v7, :cond_14

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2796
    packed-switch v35, :pswitch_data_2

    .line 2834
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v37

    throw v37

    .line 2798
    :pswitch_39
    const-string v21, "memberRef"

    .line 2799
    .local v21, methodName:Ljava/lang/String;
    const-string v27, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;"

    .line 2836
    .local v27, signature:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 2837
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2806
    .end local v21           #methodName:Ljava/lang/String;
    .end local v27           #signature:Ljava/lang/String;
    :pswitch_3a
    const-string v21, "memberRef"

    .line 2807
    .restart local v21       #methodName:Ljava/lang/String;
    const-string v27, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;"

    .line 2813
    .restart local v27       #signature:Ljava/lang/String;
    goto :goto_6

    .line 2815
    .end local v21           #methodName:Ljava/lang/String;
    .end local v27           #signature:Ljava/lang/String;
    :pswitch_3b
    const-string v21, "nameRef"

    .line 2816
    .restart local v21       #methodName:Ljava/lang/String;
    const-string v27, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;"

    .line 2821
    .restart local v27       #signature:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_6

    .line 2824
    .end local v21           #methodName:Ljava/lang/String;
    .end local v27           #signature:Ljava/lang/String;
    :pswitch_3c
    const-string v21, "nameRef"

    .line 2825
    .restart local v21       #methodName:Ljava/lang/String;
    const-string v27, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;"

    .line 2831
    .restart local v27       #signature:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_6

    .line 2842
    .end local v20           #memberTypeFlags:I
    .end local v21           #methodName:Ljava/lang/String;
    .end local v27           #signature:Ljava/lang/String;
    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitDotQuery(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2846
    :pswitch_3e
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2848
    const-string v37, "escapeAttributeValue"

    const-string v38, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2855
    :pswitch_3f
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2857
    const-string v37, "escapeTextValue"

    const-string v38, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2864
    :pswitch_40
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2866
    const-string v37, "setDefaultNamespace"

    const-string v38, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2873
    :pswitch_41
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateYieldPoint(Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_0

    .line 2877
    :pswitch_42
    move-object v9, v7

    .line 2878
    .local v9, enterWith:Lorg/mozilla/javascript/Node;
    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v36

    .line 2879
    .local v36, with:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v36 .. v36}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v18

    .line 2880
    .local v18, leaveWith:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 2881
    invoke-virtual/range {v36 .. v36}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2882
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2887
    .end local v9           #enterWith:Lorg/mozilla/javascript/Node;
    .end local v18           #leaveWith:Lorg/mozilla/javascript/Node;
    .end local v36           #with:Lorg/mozilla/javascript/Node;
    :pswitch_43
    move-object/from16 v17, v7

    .line 2888
    .local v17, initStmt:Lorg/mozilla/javascript/Node;
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 2889
    .local v10, expr:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 2890
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2259
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2c
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_1a
        :pswitch_1f
        :pswitch_1e
        :pswitch_20
        :pswitch_20
        :pswitch_12
        :pswitch_13
        :pswitch_22
        :pswitch_22
        :pswitch_4
        :pswitch_34
        :pswitch_15
        :pswitch_27
        :pswitch_27
        :pswitch_30
        :pswitch_28
        :pswitch_31
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_26
        :pswitch_26
        :pswitch_d
        :pswitch_35
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_25
        :pswitch_36
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_29
        :pswitch_32
        :pswitch_33
        :pswitch_5
        :pswitch_37
        :pswitch_41
        :pswitch_2d
        :pswitch_40
        :pswitch_3e
        :pswitch_3f
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
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
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_0
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
        :pswitch_14
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
        :pswitch_16
        :pswitch_2
        :pswitch_30
        :pswitch_31
        :pswitch_0
        :pswitch_32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_43
        :pswitch_0
        :pswitch_42
    .end packed-switch

    .line 2510
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 2796
    :pswitch_data_2
    .packed-switch 0x4d
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
    .end packed-switch
.end method

.method private generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 7
    .parameter "node"
    .parameter "parent"

    .prologue
    const/4 v6, -0x1

    .line 3630
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    .line 3631
    .local v4, type:I
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3683
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3684
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3685
    const-string v5, "getValueFunctionAndThis"

    const-string v6, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    :goto_0
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3694
    const-string v5, "lastStoredScriptable"

    const-string v6, "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    return-void

    .line 3633
    :pswitch_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 3637
    :pswitch_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 3638
    .local v3, target:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3639
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 3640
    .local v0, id:Lorg/mozilla/javascript/Node;
    const/16 v5, 0x21

    if-ne v4, v5, :cond_0

    .line 3641
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    .line 3642
    .local v2, property:Ljava/lang/String;
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3643
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3644
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3645
    const-string v5, "getPropFunctionAndThis"

    const-string v6, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3654
    .end local v2           #property:Ljava/lang/String;
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {p1, v5, v6}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 3655
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 3656
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3657
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3658
    const-string v5, "getElemFunctionAndThis"

    const-string v6, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3669
    .end local v0           #id:Lorg/mozilla/javascript/Node;
    .end local v3           #target:Lorg/mozilla/javascript/Node;
    :pswitch_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    .line 3670
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3671
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3672
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3673
    const-string v5, "getNameFunctionAndThis"

    const-string v6, "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3631
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private generateGenerator()V
    .locals 7

    .prologue
    const/16 v5, 0x59

    const-string v6, "_dcp"

    .line 1411
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 1416
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->initBodyGeneration()V

    .line 1417
    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    .line 1418
    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    iput-short v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    .line 1421
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isUseDynamicScope()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getIgnoreDynamicScope()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1428
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb9

    const-string v2, "org/mozilla/javascript/Scriptable"

    const-string v3, "getParentScope"

    const-string v4, "()Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1436
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1437
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1438
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1439
    const-string v0, "createFunctionActivation"

    const-string v1, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1447
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xbb

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1450
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1451
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1452
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFnIndex:I

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1453
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb7

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v3, "<init>"

    const-string v4, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1458
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isTopLevel:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1459
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1460
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb4

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v3, "_dcp"

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v6, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb5

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v3, "_dcp"

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v6, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateNestedFunctionInits()V

    .line 1472
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1473
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1474
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 1475
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 1476
    const-string v0, "createNativeGenerator"

    const-string v1, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/Scriptable;"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1483
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 1484
    return-void
.end method

.method private generateGetGeneratorLocalsState()V
    .locals 2

    .prologue
    .line 1937
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1938
    const-string v0, "getGeneratorLocalsState"

    const-string v1, "(Ljava/lang/Object;)[Ljava/lang/Object;"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    return-void
.end method

.method private generateGetGeneratorResumptionPoint()V
    .locals 5

    .prologue
    .line 1806
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1807
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb4

    const-string v2, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    const-string v3, "resumptionPoint"

    const-string v4, "I"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    return-void
.end method

.method private generateGetGeneratorStackState()V
    .locals 2

    .prologue
    .line 1825
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1826
    const-string v0, "getGeneratorStackState"

    const-string v1, "(Ljava/lang/Object;)[Ljava/lang/Object;"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    return-void
.end method

.method private generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 5
    .parameter "node"
    .parameter "parent"
    .parameter "trueLabel"
    .parameter "falseLabel"

    .prologue
    .line 2993
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    .line 2994
    .local v2, type:I
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 2996
    .local v0, child:Lorg/mozilla/javascript/Node;
    sparse-switch v2, :sswitch_data_0

    .line 3034
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3035
    const-string v3, "toBoolean"

    const-string v4, "(Ljava/lang/Object;)Z"

    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3036
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0x9a

    invoke-virtual {v3, v4, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3037
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4, p4}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3039
    :goto_0
    return-void

    .line 2998
    :sswitch_0
    invoke-direct {p0, v0, p1, p4, p3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_0

    .line 3003
    :sswitch_1
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    .line 3004
    .local v1, interLabel:I
    const/16 v3, 0x69

    if-ne v2, v3, :cond_0

    .line 3005
    invoke-direct {p0, v0, p1, v1, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 3010
    :goto_1
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 3011
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 3012
    invoke-direct {p0, v0, p1, p3, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_0

    .line 3008
    :cond_0
    invoke-direct {p0, v0, p1, p3, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_1

    .line 3022
    .end local v1           #interLabel:I
    :sswitch_2
    invoke-direct {p0, p1, v0, p3, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIfJumpRelOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_0

    .line 3029
    :sswitch_3
    invoke-direct {p0, p1, v0, p3, p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitIfJumpEqOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_0

    .line 2996
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x1a -> :sswitch_0
        0x2e -> :sswitch_3
        0x2f -> :sswitch_3
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method private generateIntegerUnwrap()V
    .locals 5

    .prologue
    .line 2227
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb6

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    const-string v4, "()I"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    return-void
.end method

.method private generateIntegerWrap()V
    .locals 5

    .prologue
    .line 2220
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb8

    const-string v2, "java/lang/Integer"

    const-string v3, "valueOf"

    const-string v4, "(I)Ljava/lang/Integer;"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    return-void
.end method

.method private generateNestedFunctionInits()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1488
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    .line 1489
    .local v0, functionCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v0, :cond_1

    .line 1490
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-static {v3, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v2

    .line 1491
    .local v2, ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    iget-object v3, v2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1494
    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    .line 1489
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1497
    .end local v2           #ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    :cond_1
    return-void
.end method

.method private generatePrologue()V
    .locals 26

    .prologue
    .line 1545
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v7

    .line 1551
    .local v7, directParameterCount:I
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1552
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-eq v9, v7, :cond_1

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v22, v0

    aput-short v22, v21, v9

    .line 1555
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    .line 1552
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1557
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getParameterNumberContext()Z

    move-result v21

    if-nez v21, :cond_2

    .line 1559
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsForcedObjectParameters:Z

    .line 1560
    const/4 v9, 0x0

    :goto_1
    if-eq v9, v7, :cond_2

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    move-object/from16 v21, v0

    aget-short v16, v21, v9

    .line 1562
    .local v16, reg:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xb2

    const-string v23, "java/lang/Void"

    const-string v24, "TYPE"

    const-string v25, "Ljava/lang/Class;"

    invoke-virtual/range {v21 .. v25}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v10

    .line 1568
    .local v10, isObjectLabel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xa6

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    add-int/lit8 v22, v16, 0x1

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 1570
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1560
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1577
    .end local v7           #directParameterCount:I
    .end local v9           #i:I
    .end local v10           #isObjectLabel:I
    .end local v16           #reg:S
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/CompilerEnvirons;->isUseDynamicScope()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/FunctionNode;->getIgnoreDynamicScope()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1583
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xb9

    const-string v23, "org/mozilla/javascript/Scriptable"

    const-string v24, "getParentScope"

    const-string v25, "()Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual/range {v21 .. v25}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1592
    :cond_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v21, v0

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    .line 1593
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    .line 1596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 1599
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v21, v0

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->operationLocal:S

    .line 1600
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1607
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v21, v0

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:S

    .line 1608
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xc0

    const-string v23, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    invoke-virtual/range {v21 .. v23}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0x59

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xb4

    const-string v23, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    const-string v24, "thisObj"

    const-string v25, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual/range {v21 .. v25}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1618
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 1622
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object v5, v0

    check-cast v5, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    move-result-object v18

    .line 1623
    .local v18, targets:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/Node;>;"
    if-eqz v18, :cond_6

    .line 1625
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorResumptionPoint()V

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorSwitch:I

    .line 1630
    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCheckForThrowOrClose(IZI)V

    .line 1634
    .end local v18           #targets:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/Node;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v21

    if-eqz v21, :cond_7

    .line 1637
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptRegexpLocal:S

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Lorg/mozilla/javascript/optimizer/Codegen;->pushRegExpArray(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/ast/ScriptNode;II)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptRegexpLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1644
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1645
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->saveCurrentCodeOffset()V

    .line 1647
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v15

    .line 1650
    .local v15, parmCount:I
    if-lez v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xbe

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v11

    .line 1657
    .local v11, label:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xa2

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1660
    const-string v21, "padArguments"

    const-string v22, "([Ljava/lang/Object;I)[Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v11

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1667
    .end local v11           #label:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamCount()I

    move-result v14

    .line 1668
    .local v14, paramCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamAndVarCount()I

    move-result v20

    .line 1669
    .local v20, varCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamAndVarConst()[Z

    move-result-object v5

    .line 1673
    .local v5, constDeclarations:[Z
    const/4 v8, -0x1

    .line 1674
    .local v8, firstUndefVar:S
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    move v0, v9

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    .line 1675
    const/16 v16, -0x1

    .line 1676
    .restart local v16       #reg:S
    if-ge v9, v14, :cond_f

    .line 1677
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 1678
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v16

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0x32

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1698
    :cond_a
    :goto_3
    if-ltz v16, :cond_c

    .line 1699
    aget-boolean v21, v5, v9

    if-eqz v21, :cond_b

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v22

    if-eqz v22, :cond_12

    const/16 v22, 0x2

    :goto_4
    add-int v22, v22, v16

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addIStore(I)V

    .line 1703
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    move-object/from16 v21, v0

    aput-short v16, v21, v9

    .line 1707
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v13

    .line 1709
    .local v13, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v21

    if-eqz v21, :cond_13

    const-string v21, "D"

    move-object/from16 v19, v21

    .line 1711
    .local v19, type:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result v17

    .line 1712
    .local v17, startPC:I
    if-gez v16, :cond_d

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    move-object/from16 v21, v0

    aget-short v16, v21, v9

    .line 1715
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v13

    move-object/from16 v2, v19

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addVariableDescriptor(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1674
    .end local v13           #name:Ljava/lang/String;
    .end local v17           #startPC:I
    .end local v19           #type:Ljava/lang/String;
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1684
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1685
    aget-boolean v21, v5, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordPairLocal(Z)S

    move-result v16

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    goto/16 :goto_3

    .line 1689
    :cond_10
    aget-boolean v21, v5, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal(Z)S

    move-result v16

    .line 1690
    const/16 v21, -0x1

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 1692
    move/from16 v8, v16

    .line 1696
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_3

    .line 1694
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_6

    .line 1701
    :cond_12
    const/16 v22, 0x1

    goto/16 :goto_4

    .line 1709
    .restart local v13       #name:Ljava/lang/String;
    :cond_13
    const-string v21, "Ljava/lang/Object;"

    move-object/from16 v19, v21

    goto/16 :goto_5

    .line 1726
    .end local v5           #constDeclarations:[Z
    .end local v8           #firstUndefVar:S
    .end local v9           #i:I
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #paramCount:I
    .end local v15           #parmCount:I
    .end local v16           #reg:S
    .end local v20           #varCount:I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 1802
    :cond_15
    :goto_7
    return-void

    .line 1731
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    .line 1732
    const-string v6, "activation"

    .line 1733
    .local v6, debugVariableName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1736
    const-string v21, "createFunctionActivation"

    const-string v22, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1744
    const-string v21, "enterActivationFunction"

    const-string v22, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->enterAreaStartLabel:I

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->enterAreaStartLabel:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1768
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateNestedFunctionInits()V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v21

    if-eqz v21, :cond_17

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const-string v22, "Lorg/mozilla/javascript/Scriptable;"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result v23

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object v1, v6

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addVariableDescriptor(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1777
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    if-nez v21, :cond_19

    .line 1779
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/ast/ScriptNode;->getEndLineno()I

    move-result v12

    .line 1784
    .local v12, linenum:I
    const/16 v21, -0x1

    move v0, v12

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move v0, v12

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addLineNumberEntry(S)V

    goto/16 :goto_7

    .line 1749
    .end local v6           #debugVariableName:Ljava/lang/String;
    .end local v12           #linenum:I
    :cond_18
    const-string v6, "global"

    .line 1750
    .restart local v6       #debugVariableName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1755
    const-string v21, "initScript"

    const-string v22, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1788
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->itsContainsCalls0:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 1789
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:S

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xb2

    const-string v23, "org/mozilla/javascript/ScriptRuntime"

    const-string v24, "emptyArgs"

    const-string v25, "[Ljava/lang/Object;"

    invoke-virtual/range {v21 .. v25}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1795
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->itsContainsCalls1:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    .line 1796
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:S

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    const/16 v22, 0xbd

    const-string v23, "java/lang/Object"

    invoke-virtual/range {v21 .. v23}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:S

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_7
.end method

.method private generateSaveLocals(Lorg/mozilla/javascript/Node;)Z
    .locals 6
    .parameter "node"

    .prologue
    .line 3865
    const/4 v0, 0x0

    .line 3866
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    if-ge v1, v4, :cond_1

    .line 3867
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aget v4, v4, v1

    if-eqz v4, :cond_0

    .line 3868
    add-int/lit8 v0, v0, 0x1

    .line 3866
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3871
    :cond_1
    if-nez v0, :cond_2

    .line 3872
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lorg/mozilla/javascript/ast/FunctionNode;->addLiveLocals(Lorg/mozilla/javascript/Node;[I)V

    .line 3873
    const/4 v4, 0x0

    .line 3903
    :goto_1
    return v4

    .line 3877
    .restart local p0
    :cond_2
    iget v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    if-le v4, v0, :cond_4

    iget v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    :goto_2
    iput v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxLocals:I

    .line 3880
    new-array v2, v0, [I

    .line 3881
    .local v2, ls:[I
    const/4 v3, 0x0

    .line 3882
    .local v3, s:I
    const/4 v1, 0x0

    :goto_3
    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    if-ge v1, v4, :cond_5

    .line 3883
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aget v4, v4, v1

    if-eqz v4, :cond_3

    .line 3884
    aput v1, v2, v3

    .line 3885
    add-int/lit8 v3, v3, 0x1

    .line 3882
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v2           #ls:[I
    .end local v3           #s:I
    :cond_4
    move v4, v0

    .line 3877
    goto :goto_2

    .line 3890
    .restart local v2       #ls:[I
    .restart local v3       #s:I
    :cond_5
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v4, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v4, p1, v2}, Lorg/mozilla/javascript/ast/FunctionNode;->addLiveLocals(Lorg/mozilla/javascript/Node;[I)V

    .line 3893
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorLocalsState()V

    .line 3894
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_6

    .line 3895
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0x59

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3896
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 3897
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3898
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0x53

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3894
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3901
    :cond_6
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v5, 0x57

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3903
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private generateSetGeneratorResumptionPoint(I)V
    .locals 5
    .parameter "nextState"

    .prologue
    .line 1815
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1816
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 1817
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb5

    const-string v2, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState"

    const-string v3, "resumptionPoint"

    const-string v4, "I"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    return-void
.end method

.method private generateStatement(Lorg/mozilla/javascript/Node;)V
    .locals 19
    .parameter "node"

    .prologue
    .line 1952
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 1953
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v15

    .line 1954
    .local v15, type:I
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1955
    .local v4, child:Lorg/mozilla/javascript/Node;
    sparse-switch v15, :sswitch_data_0

    .line 2213
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v16

    throw v16

    .line 1963
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1966
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount(I)V

    .line 1968
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    .line 1969
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 1970
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_0

    .line 1975
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v9

    .line 1976
    .local v9, local:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 1980
    :cond_1
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1981
    :goto_1
    if-eqz v4, :cond_2

    .line 1982
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 1983
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_1

    .line 1985
    :cond_2
    move v0, v9

    int-to-short v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(S)V

    .line 1986
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 2216
    .end local v9           #local:I
    .end local p1
    :cond_3
    :goto_2
    :sswitch_2
    return-void

    .line 1991
    .restart local p1
    :sswitch_3
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v7

    .line 1992
    .local v7, fnIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v11

    .line 1993
    .local v11, ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    move-object v0, v11

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v14

    .line 1994
    .local v14, t:I
    const/16 v16, 0x3

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 1995
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v14

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V

    goto :goto_2

    .line 1997
    :cond_4
    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 1998
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v16

    throw v16

    .line 2005
    .end local v7           #fnIndex:I
    .end local v11           #ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    .end local v14           #t:I
    :sswitch_4
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .end local p1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitTryCatchFinally(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 2011
    .restart local p1
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->setStackTop(S)V

    .line 2013
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    move-result v9

    .line 2014
    .restart local v9       #local:I
    const/16 v16, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v13

    .line 2017
    .local v13, scopeIndex:I
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v10

    .line 2018
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 2019
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2020
    if-nez v13, :cond_5

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2026
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2030
    const-string v16, "newCatchScope"

    const-string v17, "(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_2

    .line 2024
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_3

    .line 2043
    .end local v9           #local:I
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #scopeIndex:I
    :sswitch_6
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2045
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 2046
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateThrowJavaScriptException()V

    goto/16 :goto_2

    .line 2050
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2051
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 2052
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0xbf

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_2

    .line 2058
    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    .line 2059
    if-eqz v4, :cond_a

    .line 2060
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2068
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 2069
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 2070
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 2071
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    move/from16 v16, v0

    if-nez v16, :cond_d

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v16

    throw v16

    .line 2061
    :cond_a
    const/16 v16, 0x4

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto :goto_4

    .line 2064
    :cond_b
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    move/from16 v16, v0

    if-gez v16, :cond_c

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v16

    throw v16

    .line 2065
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_4

    .line 2072
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 2074
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0xa7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto/16 :goto_2

    .line 2078
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 2079
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 2080
    :cond_f
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .end local p1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSwitch(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_2

    .line 2084
    .restart local p1
    :sswitch_a
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2087
    const-string v16, "enterWith"

    const-string v17, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 2094
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->incReferenceWordLocal(S)V

    goto/16 :goto_2

    .line 2098
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2099
    const-string v16, "leaveWith"

    const-string v17, "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 2104
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->decReferenceWordLocal(S)V

    goto/16 :goto_2

    .line 2110
    :sswitch_c
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2112
    const/16 v16, 0x3a

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_10

    const/16 v16, 0x0

    move/from16 v5, v16

    .line 2117
    .local v5, enumType:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 2118
    const-string v16, "enumInit"

    const-string v17, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_2

    .line 2112
    .end local v5           #enumType:I
    :cond_10
    const/16 v16, 0x3b

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_11

    const/16 v16, 0x1

    move/from16 v5, v16

    goto :goto_5

    :cond_11
    const/16 v16, 0x2

    move/from16 v5, v16

    goto :goto_5

    .line 2127
    :sswitch_d
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v16

    const/16 v17, 0x38

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 2130
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_2

    .line 2132
    :cond_12
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v16

    const/16 v17, 0x9c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 2135
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitSetConstVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_2

    .line 2137
    :cond_13
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v16

    const/16 v17, 0x48

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 2138
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateYieldPoint(Lorg/mozilla/javascript/Node;Z)V

    goto/16 :goto_2

    .line 2141
    :cond_14
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2142
    const/16 v16, 0x8

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0x58

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_2

    .line 2145
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0x57

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_2

    .line 2150
    :sswitch_e
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2151
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    move/from16 v16, v0

    if-gez v16, :cond_16

    .line 2152
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    .line 2154
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_2

    .line 2159
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_17

    .line 2160
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 2161
    :cond_17
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v8

    .line 2162
    .local v8, label:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2164
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->saveCurrentCodeOffset()V

    goto/16 :goto_2

    .line 2172
    .end local v8           #label:I
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 2173
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addInstructionCount()V

    .line 2174
    :cond_18
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .end local p1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->visitGoto(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_2

    .line 2179
    .restart local p1
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateObserverCount()Z

    move-result v16

    if-eqz v16, :cond_19

    .line 2180
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->saveCurrentCodeOffset()V

    .line 2183
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->setStackTop(S)V

    .line 2186
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v6

    .line 2187
    .local v6, finallyRegister:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1a

    .line 2188
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIntegerWrap()V

    .line 2189
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 2191
    :goto_6
    if-eqz v4, :cond_1b

    .line 2192
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 2193
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_6

    .line 2195
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1c

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0xc0

    const-string v18, "java/lang/Integer"

    invoke-virtual/range {v16 .. v18}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 2198
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIntegerUnwrap()V

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;

    .line 2200
    .local v12, ret:Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v12

    iput v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->tableLabel:I

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0xa7

    move-object v0, v12

    iget v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->tableLabel:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 2205
    .end local v12           #ret:Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    :goto_7
    move v0, v6

    int-to-short v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(S)V

    goto/16 :goto_2

    .line 2203
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v16, v0

    const/16 v17, 0xa9

    move-object/from16 v0, v16

    move/from16 v1, v17

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_7

    .line 1955
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_a
        0x3 -> :sswitch_b
        0x4 -> :sswitch_8
        0x5 -> :sswitch_10
        0x6 -> :sswitch_10
        0x7 -> :sswitch_10
        0x32 -> :sswitch_6
        0x33 -> :sswitch_7
        0x39 -> :sswitch_5
        0x3a -> :sswitch_c
        0x3b -> :sswitch_c
        0x3c -> :sswitch_c
        0x40 -> :sswitch_8
        0x51 -> :sswitch_4
        0x6d -> :sswitch_3
        0x72 -> :sswitch_9
        0x7b -> :sswitch_0
        0x7d -> :sswitch_11
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x83 -> :sswitch_f
        0x84 -> :sswitch_0
        0x85 -> :sswitch_d
        0x86 -> :sswitch_e
        0x87 -> :sswitch_10
        0x88 -> :sswitch_0
        0x8d -> :sswitch_1
        0xa0 -> :sswitch_2
    .end sparse-switch
.end method

.method private generateThrowJavaScriptException()V
    .locals 5

    .prologue
    const-string v4, "org/mozilla/javascript/JavaScriptException"

    .line 2234
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xbb

    const-string v2, "org/mozilla/javascript/JavaScriptException"

    invoke-virtual {v0, v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 2236
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2237
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2238
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 2239
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsLineNumber:I

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 2240
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xb7

    const-string v2, "org/mozilla/javascript/JavaScriptException"

    const-string v2, "<init>"

    const-string v3, "(Ljava/lang/Object;Ljava/lang/String;I)V"

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2246
    return-void
.end method

.method private generateYieldPoint(Lorg/mozilla/javascript/Node;Z)V
    .locals 10
    .parameter "node"
    .parameter "exprContext"

    .prologue
    const/16 v9, 0x57

    const/16 v8, 0x5f

    .line 2902
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v4

    .line 2903
    .local v4, top:I
    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    if-le v5, v4, :cond_0

    iget v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    :goto_0
    iput v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->maxStack:I

    .line 2904
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v5

    if-eqz v5, :cond_2

    .line 2905
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorStackState()V

    .line 2906
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 2907
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x5a

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2908
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2909
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 2910
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2911
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x53

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2906
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    :cond_0
    move v5, v4

    .line 2903
    goto :goto_0

    .line 2914
    .restart local v2       #i:I
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2918
    .end local v2           #i:I
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 2919
    .local v0, child:Lorg/mozilla/javascript/Node;
    if-eqz v0, :cond_3

    .line 2920
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2925
    :goto_2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNextGeneratorState(Lorg/mozilla/javascript/Node;)I

    move-result v3

    .line 2926
    .local v3, nextState:I
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateSetGeneratorResumptionPoint(I)V

    .line 2928
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateSaveLocals(Lorg/mozilla/javascript/Node;)Z

    move-result v1

    .line 2930
    .local v1, hasLocals:Z
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0xb0

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2932
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v5

    invoke-direct {p0, v5, v1, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCheckForThrowOrClose(IZI)V

    .line 2936
    if-eqz v4, :cond_5

    .line 2937
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGetGeneratorStackState()V

    .line 2938
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 2939
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x59

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2940
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    sub-int v6, v4, v2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    .line 2941
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2942
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2938
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2922
    .end local v1           #hasLocals:Z
    .end local v2           #i:I
    .end local v3           #nextState:I
    :cond_3
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v5}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto :goto_2

    .line 2944
    .restart local v1       #hasLocals:Z
    .restart local v2       #i:I
    .restart local v3       #nextState:I
    :cond_4
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 2948
    .end local v2           #i:I
    :cond_5
    if-eqz p2, :cond_6

    .line 2949
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 2951
    :cond_6
    return-void
.end method

.method private getConsecutiveSlots(IZ)S
    .locals 4
    .parameter "count"
    .parameter "isConst"

    .prologue
    .line 5015
    if-eqz p2, :cond_0

    .line 5016
    add-int/lit8 p1, p1, 0x1

    .line 5017
    :cond_0
    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    .line 5019
    .local v1, result:S
    :goto_0
    const/16 v2, 0xff

    if-lt v1, v2, :cond_2

    .line 5029
    :cond_1
    return v1

    .line 5022
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 5023
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    add-int v3, v1, v0

    aget v2, v2, v3

    if-eqz v2, :cond_4

    .line 5025
    :cond_3
    if-ge v0, p1, :cond_1

    .line 5027
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 5028
    goto :goto_0

    .line 5022
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I
    .locals 3
    .parameter "node"

    .prologue
    .line 4834
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Node;

    .line 4835
    .local v0, localBlock:Lorg/mozilla/javascript/Node;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v1

    .line 4836
    .local v1, localSlot:I
    return v1
.end method

.method private getNewWordLocal()S
    .locals 4

    .prologue
    .line 5000
    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    .line 5001
    .local v1, result:S
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    .line 5002
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    add-int/lit8 v0, v2, 0x1

    .local v0, i:I
    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_2

    .line 5003
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aget v2, v2, v0

    if-nez v2, :cond_1

    .line 5004
    int-to-short v2, v0

    iput-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    .line 5005
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    if-ge v2, v3, :cond_0

    .line 5006
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    iput-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    .line 5007
    :cond_0
    return v1

    .line 5002
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5010
    :cond_2
    const-string v2, "Program too complex (out of locals)"

    invoke-static {v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    throw v2
.end method

.method private getNewWordLocal(Z)S
    .locals 5
    .parameter "isConst"

    .prologue
    const/4 v4, 0x1

    .line 4975
    invoke-direct {p0, v4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getConsecutiveSlots(IZ)S

    move-result v1

    .line 4976
    .local v1, result:S
    const/16 v2, 0xff

    if-ge v1, v2, :cond_3

    .line 4977
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aput v4, v2, v1

    .line 4978
    if-eqz p1, :cond_0

    .line 4979
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    add-int/lit8 v3, v1, 0x1

    aput v4, v2, v3

    .line 4980
    :cond_0
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    if-ne v1, v2, :cond_1

    .line 4981
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    add-int/lit8 v0, v2, 0x2

    .local v0, i:I
    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_3

    .line 4982
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aget v2, v2, v0

    if-nez v2, :cond_2

    .line 4983
    int-to-short v2, v0

    iput-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    .line 4984
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    if-ge v2, v3, :cond_1

    .line 4985
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    iput-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    .line 4991
    .end local v0           #i:I
    :cond_1
    return v1

    .line 4981
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4994
    .end local v0           #i:I
    :cond_3
    const-string v2, "Program too complex (out of locals)"

    invoke-static {v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    throw v2
.end method

.method private getNewWordPairLocal(Z)S
    .locals 5
    .parameter "isConst"

    .prologue
    const/4 v4, 0x1

    .line 4949
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getConsecutiveSlots(IZ)S

    move-result v1

    .line 4950
    .local v1, result:S
    const/16 v2, 0xff

    if-ge v1, v2, :cond_3

    .line 4951
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aput v4, v2, v1

    .line 4952
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    add-int/lit8 v3, v1, 0x1

    aput v4, v2, v3

    .line 4953
    if-eqz p1, :cond_0

    .line 4954
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    add-int/lit8 v3, v1, 0x2

    aput v4, v2, v3

    .line 4955
    :cond_0
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    if-ne v1, v2, :cond_1

    .line 4956
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    add-int/lit8 v0, v2, 0x2

    .local v0, i:I
    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_3

    .line 4957
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aget v2, v2, v0

    if-nez v2, :cond_2

    .line 4958
    int-to-short v2, v0

    iput-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    .line 4959
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    if-ge v2, v3, :cond_1

    .line 4960
    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    iput-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    .line 4966
    .end local v0           #i:I
    :cond_1
    return v1

    .line 4956
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4969
    .end local v0           #i:I
    :cond_3
    const-string v2, "Program too complex (out of locals)"

    invoke-static {v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    throw v2
.end method

.method private getNextGeneratorState(Lorg/mozilla/javascript/Node;)I
    .locals 2
    .parameter "node"

    .prologue
    .line 2250
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getResumptionPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2252
    .local v0, nodeIndex:I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getTargetLabel(Lorg/mozilla/javascript/Node;)I
    .locals 2
    .parameter "target"

    .prologue
    .line 3106
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v0

    .line 3107
    .local v0, labelId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3108
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 3109
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    .line 3111
    :cond_0
    return v0
.end method

.method private incReferenceWordLocal(S)V
    .locals 2
    .parameter "local"

    .prologue
    .line 5035
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 5036
    return-void
.end method

.method private initBodyGeneration()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1501
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v2, v2, v4

    if-ne v1, v2, :cond_2

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isTopLevel:Z

    .line 1503
    iput-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    .line 1504
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_4

    .line 1505
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-static {v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 1506
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v5

    :goto_1
    iput-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 1507
    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    if-eqz v1, :cond_0

    .line 1508
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamAndVarCount()I

    move-result v0

    .line 1509
    .local v0, n:I
    if-eqz v0, :cond_0

    .line 1510
    new-array v1, v0, [S

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    .line 1513
    .end local v0           #n:I
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v1

    iput-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    .line 1514
    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    if-nez v1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 1521
    :cond_1
    :goto_2
    const/16 v1, 0x100

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    .line 1523
    iput-short v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->funObjLocal:S

    .line 1524
    iput-short v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    .line 1525
    const/4 v1, 0x2

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    .line 1526
    const/4 v1, 0x3

    iput-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:S

    .line 1527
    iput-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    .line 1528
    iput-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    .line 1530
    iput-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->popvLocal:S

    .line 1531
    iput-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->argsLocal:S

    .line 1532
    iput-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsZeroArgArray:S

    .line 1533
    iput-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsOneArgArray:S

    .line 1534
    iput-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptRegexpLocal:S

    .line 1535
    iput v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->epilogueLabel:I

    .line 1536
    iput v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->enterAreaStartLabel:I

    .line 1537
    iput-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatorStateLocal:S

    .line 1538
    return-void

    :cond_2
    move v1, v4

    .line 1501
    goto :goto_0

    :cond_3
    move v1, v4

    .line 1506
    goto :goto_1

    .line 1516
    :cond_4
    iput-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 1517
    iput-boolean v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    .line 1518
    iput-boolean v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    goto :goto_2
.end method

.method private static isArithmeticNode(Lorg/mozilla/javascript/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 4130
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    .line 4131
    .local v0, type:I
    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I
    .locals 3
    .parameter "node"

    .prologue
    .line 4219
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsForcedObjectParameters:Z

    if-nez v1, :cond_0

    .line 4222
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 4223
    .local v0, varIndex:I
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4224
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    aget-short v1, v1, v0

    .line 4227
    .end local v0           #varIndex:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private releaseWordLocal(S)V
    .locals 2
    .parameter "local"

    .prologue
    .line 5046
    iget-short v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    if-ge p1, v0, :cond_0

    .line 5047
    iput-short p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->firstFreeLocal:S

    .line 5048
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->locals:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 5049
    return-void
.end method

.method private saveCurrentCodeOffset()V
    .locals 1

    .prologue
    .line 3981
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->getCurrentCodeOffset()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->savedCodeOffset:I

    .line 3982
    return-void
.end method

.method private updateLineNumber(Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 3702
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsLineNumber:I

    .line 3703
    iget v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsLineNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3706
    :goto_0
    return-void

    .line 3705
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsLineNumber:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addLineNumberEntry(S)V

    goto :goto_0
.end method

.method private varIsDirectCallParameter(I)Z
    .locals 1
    .parameter "varIndex"

    .prologue
    .line 4232
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->inDirectCallFunction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsForcedObjectParameters:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private visitArithmetic(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4
    .parameter "node"
    .parameter "opCode"
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v3, -0x1

    .line 4140
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    .line 4141
    .local v0, childNumberFlag:I
    if-eq v0, v3, :cond_1

    .line 4142
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4143
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4144
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4159
    :cond_0
    :goto_0
    return-void

    .line 4147
    :cond_1
    invoke-static {p4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isArithmeticNode(Lorg/mozilla/javascript/Node;)Z

    move-result v1

    .line 4148
    .local v1, childOfArithmetic:Z
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4149
    invoke-static {p3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isArithmeticNode(Lorg/mozilla/javascript/Node;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4150
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 4151
    :cond_2
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4152
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isArithmeticNode(Lorg/mozilla/javascript/Node;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4153
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 4154
    :cond_3
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4155
    if-nez v1, :cond_0

    .line 4156
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    goto :goto_0
.end method

.method private visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 7
    .parameter "node"
    .parameter "child"

    .prologue
    .line 3150
    const/4 v1, 0x0

    .line 3151
    .local v1, count:I
    move-object v2, p2

    .local v2, cursor:Lorg/mozilla/javascript/Node;
    :goto_0
    if-eqz v2, :cond_0

    .line 3152
    add-int/lit8 v1, v1, 0x1

    .line 3151
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_0

    .line 3155
    :cond_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 3156
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-eq v3, v1, :cond_1

    .line 3157
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x59

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3158
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3159
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3160
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0x53

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3161
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 3156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3163
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0

    .line 3164
    .local v4, skipIndexes:[I
    if-nez v4, :cond_2

    .line 3165
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3166
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3171
    :goto_2
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3172
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3173
    const-string v5, "newArrayLiteral"

    const-string v6, "([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    return-void

    .line 3168
    :cond_2
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-static {v4}, Lorg/mozilla/javascript/optimizer/OptRuntime;->encodeIntArray([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3169
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    array-length v6, v4

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    goto :goto_2
.end method

.method private visitBitOp(Lorg/mozilla/javascript/Node;ILorg/mozilla/javascript/Node;)V
    .locals 7
    .parameter "node"
    .parameter "type"
    .parameter "child"

    .prologue
    const/16 v6, 0x7e

    const/4 v4, -0x1

    const-string v2, "(D)I"

    const-string v5, "(Ljava/lang/Object;)I"

    const-string v3, "toInt32"

    .line 4163
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    .line 4164
    .local v0, childNumberFlag:I
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4169
    const/16 v1, 0x14

    if-ne p2, v1, :cond_1

    .line 4170
    const-string v1, "toUint32"

    const-string v2, "(Ljava/lang/Object;)J"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4171
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4172
    const-string v1, "toInt32"

    const-string v1, "(Ljava/lang/Object;)I"

    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4175
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4176
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4177
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4178
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4179
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 4215
    :cond_0
    :goto_0
    return-void

    .line 4182
    :cond_1
    if-ne v0, v4, :cond_2

    .line 4183
    const-string v1, "toInt32"

    const-string v1, "(Ljava/lang/Object;)I"

    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4185
    const-string v1, "toInt32"

    const-string v1, "(Ljava/lang/Object;)I"

    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 4209
    :pswitch_0
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4188
    :cond_2
    const-string v1, "toInt32"

    const-string v1, "(D)I"

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4189
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4190
    const-string v1, "toInt32"

    const-string v1, "(D)I"

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4194
    :pswitch_1
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4211
    :goto_2
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x87

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4212
    if-ne v0, v4, :cond_0

    .line 4213
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    goto :goto_0

    .line 4197
    :pswitch_2
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    .line 4200
    :pswitch_3
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    .line 4203
    :pswitch_4
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    .line 4206
    :pswitch_5
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    .line 4192
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private visitDotQuery(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "node"
    .parameter "child"

    .prologue
    .line 4798
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 4799
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4800
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4801
    const-string v1, "enterDotQuery"

    const-string v2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4805
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 4810
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4811
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 4812
    .local v0, queryLoopStart:I
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4813
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4815
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4816
    const-string v1, "toBoolean"

    const-string v2, "(Ljava/lang/Object;)Z"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4817
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4818
    const-string v1, "updateDotQuery"

    const-string v2, "(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4822
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4823
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0xc6

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4825
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4826
    const-string v1, "leaveDotQuery"

    const-string v2, "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4829
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 4830
    return-void
.end method

.method private visitFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;I)V
    .locals 12
    .parameter "ofn"
    .parameter "functionType"

    .prologue
    const/16 v11, 0xb5

    const/16 v10, 0xb4

    const/16 v8, 0x59

    const/16 v7, 0x2a

    const-string v9, "_dcp"

    .line 3043
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result v1

    .line 3044
    .local v1, fnIndex:I
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xbb

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v4, v4, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 3046
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3047
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3048
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3049
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3050
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0xb7

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v4, v4, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v5, "<init>"

    const-string v6, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3055
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isTopLevel:Z

    if-eqz v2, :cond_1

    .line 3056
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3064
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v4, "_dcp"

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v4, v4, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v2, v11, v3, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getDirectTargetIndex()I

    move-result v0

    .line 3070
    .local v0, directTargetIndex:I
    if-ltz v0, :cond_0

    .line 3071
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3072
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isTopLevel:Z

    if-eqz v2, :cond_2

    .line 3073
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3081
    :goto_1
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3082
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectTargetFieldName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v5, v5, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v2, v11, v3, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 3102
    :goto_2
    return-void

    .line 3058
    .end local v0           #directTargetIndex:I
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3059
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v4, "_dcp"

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v4, v4, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v2, v10, v3, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3075
    .restart local v0       #directTargetIndex:I
    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3076
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v4, "_dcp"

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v4, v4, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v2, v10, v3, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3093
    :cond_3
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3094
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3095
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3096
    const-string v2, "initFunction"

    const-string v3, "(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V"

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private visitGetProp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 5
    .parameter "node"
    .parameter "child"

    .prologue
    const-string v4, "getObjectProp"

    .line 4655
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4656
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 4657
    .local v1, nameChild:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4658
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 4659
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4660
    const-string v2, "getObjectPropNoWarn"

    const-string v3, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4692
    :goto_0
    return-void

    .line 4672
    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    .line 4673
    .local v0, childType:I
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 4674
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4675
    const-string v2, "getObjectProp"

    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4682
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4683
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4684
    const-string v2, "getObjectProp"

    const-string v2, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private visitGetVar(Lorg/mozilla/javascript/Node;)V
    .locals 4
    .parameter "node"

    .prologue
    const/4 v3, -0x1

    .line 4529
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 4530
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    .line 4531
    .local v1, varIndex:I
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    aget-short v0, v2, v1

    .line 4532
    .local v0, reg:S
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4537
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 4538
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsNumber(I)V

    .line 4547
    :goto_0
    return-void

    .line 4540
    :cond_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsObject(I)V

    goto :goto_0

    .line 4542
    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4543
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    goto :goto_0

    .line 4545
    :cond_3
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto :goto_0
.end method

.method private visitGoto(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;)V
    .locals 5
    .parameter "node"
    .parameter "type"
    .parameter "child"

    .prologue
    const/4 v4, 0x6

    .line 3116
    iget-object v1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 3117
    .local v1, target:Lorg/mozilla/javascript/Node;
    if-eq p2, v4, :cond_0

    const/4 v3, 0x7

    if-ne p2, v3, :cond_3

    .line 3118
    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 3119
    :cond_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v2

    .line 3120
    .local v2, targetLabel:I
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 3121
    .local v0, fallThruLabel:I
    if-ne p2, v4, :cond_2

    .line 3122
    invoke-direct {p0, p3, p1, v2, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    .line 3125
    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 3137
    .end local v0           #fallThruLabel:I
    .end local v2           #targetLabel:I
    :goto_1
    return-void

    .line 3124
    .restart local v0       #fallThruLabel:I
    .restart local v2       #targetLabel:I
    :cond_2
    invoke-direct {p0, p3, p1, v0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateIfJump(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    goto :goto_0

    .line 3127
    .end local v0           #fallThruLabel:I
    .end local v2           #targetLabel:I
    :cond_3
    const/16 v3, 0x87

    if-ne p2, v3, :cond_5

    .line 3128
    iget-boolean v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    if-eqz v3, :cond_4

    .line 3129
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGotoWithReturn(Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    .line 3131
    :cond_4
    const/16 v3, 0xa8

    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto :goto_1

    .line 3134
    :cond_5
    const/16 v3, 0xa7

    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto :goto_1
.end method

.method private visitIfJumpEqOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 19
    .parameter "node"
    .parameter "child"
    .parameter "trueGOTO"
    .parameter "falseGOTO"

    .prologue
    .line 4371
    const/4 v14, -0x1

    move/from16 v0, p3

    move v1, v14

    if-eq v0, v1, :cond_0

    const/4 v14, -0x1

    move/from16 v0, p4

    move v1, v14

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 4373
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v9

    .line 4374
    .local v9, stackInitial:S
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    .line 4375
    .local v12, type:I
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 4378
    .local v7, rChild:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v14

    const/16 v15, 0x2a

    if-eq v14, v15, :cond_2

    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v14

    const/16 v15, 0x2a

    if-ne v14, v15, :cond_9

    .line 4380
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v14

    const/16 v15, 0x2a

    if-ne v14, v15, :cond_3

    .line 4381
    move-object/from16 p2, v7

    .line 4383
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4384
    const/16 v14, 0x2e

    if-eq v12, v14, :cond_4

    const/16 v14, 0x2f

    if-ne v12, v14, :cond_6

    .line 4385
    :cond_4
    const/16 v14, 0x2e

    if-ne v12, v14, :cond_5

    const/16 v14, 0xc6

    move v10, v14

    .line 4387
    .local v10, testCode:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    move-object v0, v14

    move v1, v10

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4406
    .end local v10           #testCode:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0xa7

    move-object v0, v14

    move v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4466
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v14

    if-eq v9, v14, :cond_c

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 4385
    :cond_5
    const/16 v14, 0xc7

    move v10, v14

    goto :goto_0

    .line 4389
    :cond_6
    const/16 v14, 0xc

    if-eq v12, v14, :cond_8

    .line 4391
    const/16 v14, 0xd

    if-eq v12, v14, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 4392
    :cond_7
    move/from16 v11, p3

    .line 4393
    .local v11, tmp:I
    move/from16 p3, p4

    .line 4394
    move/from16 p4, v11

    .line 4396
    .end local v11           #tmp:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0x59

    invoke-virtual {v14, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v13

    .line 4398
    .local v13, undefCheckLabel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0xc7

    invoke-virtual {v14, v15, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v8

    .line 4400
    .local v8, stack:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0x57

    invoke-virtual {v14, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4401
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0xa7

    move-object v0, v14

    move v1, v15

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v14, v13, v8}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 4403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-static {v14}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 4404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0xa5

    move-object v0, v14

    move v1, v15

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto/16 :goto_1

    .line 4408
    .end local v8           #stack:S
    .end local v13           #undefCheckLabel:I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    move-result v3

    .line 4409
    .local v3, child_dcp_register:I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_a

    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v14

    const/16 v15, 0x95

    if-ne v14, v15, :cond_a

    .line 4412
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 4413
    .local v4, convertChild:Lorg/mozilla/javascript/Node;
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v14

    const/16 v15, 0x28

    if-ne v14, v15, :cond_a

    .line 4414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v14, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0xb2

    const-string v16, "java/lang/Void"

    const-string v17, "TYPE"

    const-string v18, "Ljava/lang/Class;"

    invoke-virtual/range {v14 .. v18}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v6

    .line 4420
    .local v6, notNumbersLabel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0xa6

    invoke-virtual {v14, v15, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v14, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 4422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 4423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0x97

    invoke-virtual {v14, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4424
    const/16 v14, 0xc

    if-ne v12, v14, :cond_b

    .line 4425
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0x99

    move-object v0, v14

    move v1, v15

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4428
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0xa7

    move-object v0, v14

    move v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    invoke-virtual {v14, v6}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4434
    .end local v4           #convertChild:Lorg/mozilla/javascript/Node;
    .end local v6           #notNumbersLabel:I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4435
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4439
    sparse-switch v12, :sswitch_data_0

    .line 4457
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 4427
    .restart local v4       #convertChild:Lorg/mozilla/javascript/Node;
    .restart local v6       #notNumbersLabel:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0x9a

    move-object v0, v14

    move v1, v15

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_3

    .line 4441
    .end local v4           #convertChild:Lorg/mozilla/javascript/Node;
    .end local v6           #notNumbersLabel:I
    :sswitch_0
    const-string v5, "eq"

    .line 4442
    .local v5, name:Ljava/lang/String;
    const/16 v10, 0x9a

    .line 4459
    .restart local v10       #testCode:I
    :goto_4
    const-string v14, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    move-object v0, v14

    move v1, v10

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v14, v0

    const/16 v15, 0xa7

    move-object v0, v14

    move v1, v15

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto/16 :goto_2

    .line 4445
    .end local v5           #name:Ljava/lang/String;
    .end local v10           #testCode:I
    :sswitch_1
    const-string v5, "eq"

    .line 4446
    .restart local v5       #name:Ljava/lang/String;
    const/16 v10, 0x99

    .line 4447
    .restart local v10       #testCode:I
    goto :goto_4

    .line 4449
    .end local v5           #name:Ljava/lang/String;
    .end local v10           #testCode:I
    :sswitch_2
    const-string v5, "shallowEq"

    .line 4450
    .restart local v5       #name:Ljava/lang/String;
    const/16 v10, 0x9a

    .line 4451
    .restart local v10       #testCode:I
    goto :goto_4

    .line 4453
    .end local v5           #name:Ljava/lang/String;
    .end local v10           #testCode:I
    :sswitch_3
    const-string v5, "shallowEq"

    .line 4454
    .restart local v5       #name:Ljava/lang/String;
    const/16 v10, 0x99

    .line 4455
    .restart local v10       #testCode:I
    goto :goto_4

    .line 4467
    .end local v3           #child_dcp_register:I
    .end local v5           #name:Ljava/lang/String;
    .end local v10           #testCode:I
    :cond_c
    return-void

    .line 4439
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private visitIfJumpRelOp(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 18
    .parameter "node"
    .parameter "child"
    .parameter "trueGOTO"
    .parameter "falseGOTO"

    .prologue
    .line 4267
    const/4 v13, -0x1

    move/from16 v0, p3

    move v1, v13

    if-eq v0, v1, :cond_0

    const/4 v13, -0x1

    move/from16 v0, p4

    move v1, v13

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v13

    throw v13

    .line 4268
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    .line 4269
    .local v12, type:I
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 4270
    .local v7, rChild:Lorg/mozilla/javascript/Node;
    const/16 v13, 0x35

    if-eq v12, v13, :cond_2

    const/16 v13, 0x34

    if-ne v12, v13, :cond_4

    .line 4271
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4272
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move v14, v0

    invoke-virtual {v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4274
    const/16 v13, 0x35

    if-ne v12, v13, :cond_3

    const-string v13, "instanceOf"

    :goto_0
    const-string v14, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0x9a

    move-object v0, v13

    move v1, v14

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0xa7

    move-object v0, v13

    move v1, v14

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4366
    :goto_1
    return-void

    .line 4274
    :cond_3
    const-string v13, "in"

    goto :goto_0

    .line 4284
    :cond_4
    const/16 v13, 0x8

    const/4 v14, -0x1

    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v4

    .line 4285
    .local v4, childNumberFlag:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    move-result v6

    .line 4286
    .local v6, left_dcp_register:I
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    move-result v9

    .line 4287
    .local v9, right_dcp_register:I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_9

    .line 4291
    const/4 v13, 0x2

    if-eq v4, v13, :cond_5

    .line 4293
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4301
    :goto_2
    const/4 v13, 0x1

    if-eq v4, v13, :cond_7

    .line 4303
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4311
    :goto_3
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->genSimpleCompare(III)V

    goto :goto_1

    .line 4294
    :cond_5
    const/4 v13, -0x1

    if-eq v6, v13, :cond_6

    .line 4295
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsNumber(I)V

    goto :goto_2

    .line 4297
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4298
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    goto :goto_2

    .line 4304
    :cond_7
    const/4 v13, -0x1

    if-eq v9, v13, :cond_8

    .line 4305
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsNumber(I)V

    goto :goto_3

    .line 4307
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4308
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    goto :goto_3

    .line 4314
    :cond_9
    const/4 v13, -0x1

    if-eq v6, v13, :cond_f

    const/4 v13, -0x1

    if-eq v9, v13, :cond_f

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v11

    .line 4318
    .local v11, stack:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v5

    .line 4319
    .local v5, leftIsNotNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0xb2

    const-string v15, "java/lang/Void"

    const-string v16, "TYPE"

    const-string v17, "Ljava/lang/Class;"

    invoke-virtual/range {v13 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0xa6

    invoke-virtual {v13, v14, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 4326
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->dcpLoadAsNumber(I)V

    .line 4327
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->genSimpleCompare(III)V

    .line 4328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v13

    if-eq v11, v13, :cond_a

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v13

    throw v13

    .line 4330
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v8

    .line 4332
    .local v8, rightIsNotNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0xb2

    const-string v15, "java/lang/Void"

    const-string v16, "TYPE"

    const-string v17, "Ljava/lang/Class;"

    invoke-virtual/range {v13 .. v17}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0xa6

    invoke-virtual {v13, v14, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4339
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 4340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 4341
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->genSimpleCompare(III)V

    .line 4342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v13

    if-eq v11, v13, :cond_b

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v13

    throw v13

    .line 4344
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13, v8}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    invoke-virtual {v13, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4354
    .end local v5           #leftIsNotNumber:I
    .end local v8           #rightIsNotNumber:I
    .end local v11           #stack:S
    :goto_4
    const/16 v13, 0x11

    if-eq v12, v13, :cond_c

    const/16 v13, 0x10

    if-ne v12, v13, :cond_d

    .line 4355
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0x5f

    invoke-virtual {v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4357
    :cond_d
    const/16 v13, 0xe

    if-eq v12, v13, :cond_e

    const/16 v13, 0x10

    if-ne v12, v13, :cond_10

    :cond_e
    const-string v13, "cmp_LT"

    move-object v10, v13

    .line 4359
    .local v10, routine:Ljava/lang/String;
    :goto_5
    const-string v13, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0x9a

    move-object v0, v13

    move v1, v14

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v13, v0

    const/16 v14, 0xa7

    move-object v0, v13

    move v1, v14

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto/16 :goto_1

    .line 4350
    .end local v10           #routine:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4351
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_4

    .line 4357
    :cond_10
    const-string v13, "cmp_LE"

    move-object v10, v13

    goto :goto_5
.end method

.method private visitIncDec(Lorg/mozilla/javascript/Node;)V
    .locals 12
    .parameter "node"

    .prologue
    .line 4015
    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v3

    .line 4016
    .local v3, incrDecrMask:I
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 4017
    .local v0, child:Lorg/mozilla/javascript/Node;
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 4124
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    .line 4126
    :goto_0
    return-void

    .line 4019
    :sswitch_0
    iget-boolean v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    if-nez v9, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 4020
    :cond_0
    const/16 v9, 0x8

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 4021
    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    move v5, v9

    .line 4022
    .local v5, post:Z
    :goto_1
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v9, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v8

    .line 4023
    .local v8, varIndex:I
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    aget-short v7, v9, v8

    .line 4024
    .local v7, reg:S
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    move v4, v9

    .line 4025
    .local v4, offset:I
    :goto_2
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int v10, v7, v4

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 4026
    if-eqz v5, :cond_1

    .line 4027
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x5c

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4029
    :cond_1
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const-wide/high16 v10, 0x3ff0

    invoke-virtual {v9, v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 4030
    and-int/lit8 v9, v3, 0x1

    if-nez v9, :cond_5

    .line 4031
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x63

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4035
    :goto_3
    if-nez v5, :cond_2

    .line 4036
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x5c

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4038
    :cond_2
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int v10, v7, v4

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    goto :goto_0

    .line 4021
    .end local v4           #offset:I
    .end local v5           #post:Z
    .end local v7           #reg:S
    .end local v8           #varIndex:I
    :cond_3
    const/4 v9, 0x0

    move v5, v9

    goto :goto_1

    .line 4024
    .restart local v5       #post:Z
    .restart local v7       #reg:S
    .restart local v8       #varIndex:I
    :cond_4
    const/4 v9, 0x0

    move v4, v9

    goto :goto_2

    .line 4033
    .restart local v4       #offset:I
    :cond_5
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x67

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_3

    .line 4040
    .end local v4           #offset:I
    .end local v5           #post:Z
    .end local v7           #reg:S
    .end local v8           #varIndex:I
    :cond_6
    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    move v5, v9

    .line 4041
    .restart local v5       #post:Z
    :goto_4
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v9, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v8

    .line 4042
    .restart local v8       #varIndex:I
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    aget-short v7, v9, v8

    .line 4043
    .restart local v7       #reg:S
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4044
    if-eqz v5, :cond_7

    .line 4045
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x59

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4047
    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addObjectToDouble()V

    .line 4048
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const-wide/high16 v10, 0x3ff0

    invoke-virtual {v9, v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 4049
    and-int/lit8 v9, v3, 0x1

    if-nez v9, :cond_a

    .line 4050
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x63

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4054
    :goto_5
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 4055
    if-nez v5, :cond_8

    .line 4056
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x59

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4058
    :cond_8
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_0

    .line 4040
    .end local v5           #post:Z
    .end local v7           #reg:S
    .end local v8           #varIndex:I
    :cond_9
    const/4 v9, 0x0

    move v5, v9

    goto :goto_4

    .line 4052
    .restart local v5       #post:Z
    .restart local v7       #reg:S
    .restart local v8       #varIndex:I
    :cond_a
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v10, 0x67

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_5

    .line 4063
    .end local v5           #post:Z
    .end local v7           #reg:S
    .end local v8           #varIndex:I
    :sswitch_1
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4064
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 4065
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4066
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4067
    const-string v9, "nameIncrDecr"

    const-string v10, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4074
    :sswitch_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9

    .line 4076
    :sswitch_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 4077
    .local v2, getPropChild:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4078
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v9

    invoke-direct {p0, v9, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4079
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4080
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4081
    const-string v9, "propIncrDecr"

    const-string v10, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4089
    .end local v2           #getPropChild:Lorg/mozilla/javascript/Node;
    :sswitch_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 4090
    .local v1, elemChild:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4091
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v9

    invoke-direct {p0, v9, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4092
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4093
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4094
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    .line 4095
    const-string v9, "elemIncrDecr"

    const-string v10, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;I)Ljava/lang/Object;"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4102
    :cond_b
    const-string v9, "elemIncrDecr"

    const-string v10, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4112
    .end local v1           #elemChild:Lorg/mozilla/javascript/Node;
    :sswitch_5
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 4113
    .local v6, refChild:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v6, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4114
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4115
    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4116
    const-string v9, "refIncrDecr"

    const-string v10, "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;"

    invoke-direct {p0, v9, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4017
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_3
        0x22 -> :sswitch_2
        0x24 -> :sswitch_4
        0x27 -> :sswitch_1
        0x37 -> :sswitch_0
        0x43 -> :sswitch_5
    .end sparse-switch
.end method

.method private visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 13
    .parameter "node"
    .parameter "child"

    .prologue
    const/16 v12, 0x98

    const/16 v11, 0x97

    const/16 v9, 0x53

    const/16 v10, 0x59

    .line 3184
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    .line 3185
    .local v6, properties:[Ljava/lang/Object;
    array-length v3, v6

    .line 3188
    .local v3, count:I
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 3189
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-eq v4, v3, :cond_1

    .line 3190
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3191
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3192
    aget-object v5, v6, v4

    .line 3193
    .local v5, id:Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 3194
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    check-cast v5, Ljava/lang/String;

    .end local v5           #id:Ljava/lang/Object;
    invoke-virtual {v7, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3199
    :goto_1
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3189
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3196
    .restart local v5       #id:Ljava/lang/Object;
    :cond_0
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    check-cast v5, Ljava/lang/Integer;

    .end local v5           #id:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3197
    const-string v7, "wrapInt"

    const-string v8, "(I)Ljava/lang/Integer;"

    invoke-direct {p0, v7, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3202
    :cond_1
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addNewObjectArray(I)V

    .line 3203
    move-object v1, p2

    .line 3204
    .local v1, child2:Lorg/mozilla/javascript/Node;
    const/4 v4, 0x0

    :goto_2
    if-eq v4, v3, :cond_4

    .line 3205
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3206
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3207
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    .line 3208
    .local v2, childType:I
    if-ne v2, v11, :cond_2

    .line 3209
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3215
    :goto_3
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3216
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 3204
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3210
    :cond_2
    if-ne v2, v12, :cond_3

    .line 3211
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    .line 3213
    :cond_3
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    .line 3219
    .end local v2           #childType:I
    :cond_4
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3220
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v8, 0xbc

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3221
    const/4 v4, 0x0

    :goto_4
    if-eq v4, v3, :cond_7

    .line 3222
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3223
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3224
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    .line 3225
    .restart local v2       #childType:I
    if-ne v2, v11, :cond_5

    .line 3226
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3232
    :goto_5
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v8, 0x4f

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3233
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 3221
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3227
    :cond_5
    if-ne v2, v12, :cond_6

    .line 3228
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_5

    .line 3230
    :cond_6
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_5

    .line 3236
    .end local v2           #childType:I
    :cond_7
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3237
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3238
    const-string v7, "newObjectLiteral"

    const-string v8, "([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-direct {p0, v7, v8}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    return-void
.end method

.method private visitOptimizedCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/optimizer/OptFunctionNode;ILorg/mozilla/javascript/Node;)V
    .locals 18
    .parameter "node"
    .parameter "target"
    .parameter "type"
    .parameter "child"

    .prologue
    .line 3427
    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 3429
    .local v8, firstArgChild:Lorg/mozilla/javascript/Node;
    const/4 v11, 0x0

    .line 3430
    .local v11, thisObjLocal:S
    const/16 v12, 0x1e

    move/from16 v0, p3

    move v1, v12

    if-ne v0, v1, :cond_0

    .line 3431
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3439
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v5

    .line 3441
    .local v5, beyond:I
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getDirectTargetIndex()I

    move-result v7

    .line 3442
    .local v7, directTargetIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isTopLevel:Z

    move v12, v0

    if-eqz v12, :cond_1

    .line 3443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0x2a

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3450
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xb4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object v14, v0

    iget-object v14, v14, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-static {v7}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectTargetFieldName(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0x5c

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v9

    .line 3458
    .local v9, regularCall:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xa6

    invoke-virtual {v12, v13, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v10

    .line 3462
    .local v10, stackHeight:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0x5f

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0x57

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/mozilla/javascript/CompilerEnvirons;->isUseDynamicScope()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move v13, v0

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move v13, v0

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3482
    :goto_2
    const/16 v12, 0x1e

    move/from16 v0, p3

    move v1, v12

    if-ne v0, v1, :cond_3

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3495
    :goto_3
    move-object v4, v8

    .line 3496
    .local v4, argChild:Lorg/mozilla/javascript/Node;
    :goto_4
    if-eqz v4, :cond_6

    .line 3497
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->nodeIsDirectCallParameter(Lorg/mozilla/javascript/Node;)I

    move-result v6

    .line 3498
    .local v6, dcp_register:I
    if-ltz v6, :cond_4

    .line 3499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 3513
    :goto_5
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 3514
    goto :goto_4

    .line 3433
    .end local v4           #argChild:Lorg/mozilla/javascript/Node;
    .end local v5           #beyond:I
    .end local v6           #dcp_register:I
    .end local v7           #directTargetIndex:I
    .end local v9           #regularCall:I
    .end local v10           #stackHeight:S
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3434
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v11

    .line 3435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_0

    .line 3445
    .restart local v5       #beyond:I
    .restart local v7       #directTargetIndex:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0x2a

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xb4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object v14, v0

    iget-object v14, v14, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v15, "_dcp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3469
    .restart local v9       #regularCall:I
    .restart local v10       #stackHeight:S
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0x59

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xb9

    const-string v14, "org/mozilla/javascript/Scriptable"

    const-string v15, "getParentScope"

    const-string v16, "()Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual/range {v12 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move v13, v0

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3478
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0x5f

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_2

    .line 3485
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto/16 :goto_3

    .line 3501
    .restart local v4       #argChild:Lorg/mozilla/javascript/Node;
    .restart local v6       #dcp_register:I
    :cond_4
    const/16 v12, 0x8

    const/4 v13, -0x1

    invoke-virtual {v4, v12, v13}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v12

    if-nez v12, :cond_5

    .line 3504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xb2

    const-string v14, "java/lang/Void"

    const-string v15, "TYPE"

    const-string v16, "Ljava/lang/Class;"

    invoke-virtual/range {v12 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_5

    .line 3510
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    goto/16 :goto_5

    .line 3516
    .end local v6           #dcp_register:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xb2

    const-string v14, "org/mozilla/javascript/ScriptRuntime"

    const-string v15, "emptyArgs"

    const-string v16, "[Ljava/lang/Object;"

    invoke-virtual/range {v12 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xb8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object v14, v0

    iget-object v14, v14, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const/16 v15, 0x1e

    move/from16 v0, p3

    move v1, v15

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object v15, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v15

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xa7

    invoke-virtual {v12, v13, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12, v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 3530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0x57

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    move v13, v0

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    move v13, v0

    invoke-virtual {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3534
    const/16 v12, 0x1e

    move/from16 v0, p3

    move v1, v12

    if-eq v0, v1, :cond_7

    .line 3535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3536
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(S)V

    .line 3541
    :cond_7
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 3543
    const/16 v12, 0x1e

    move/from16 v0, p3

    move v1, v12

    if-ne v0, v1, :cond_9

    .line 3544
    const-string v12, "newObject"

    const-string v13, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3562
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    invoke-virtual {v12, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 3563
    return-void

    .line 3519
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    move-object v15, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_6

    .line 3552
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v12, v0

    const/16 v13, 0xb9

    const-string v14, "org/mozilla/javascript/Callable"

    const-string v15, "call"

    const-string v16, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual/range {v12 .. v16}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private visitSetConst(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "node"
    .parameter "child"

    .prologue
    .line 4511
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 4512
    .local v0, name:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    .line 4513
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4514
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    .line 4516
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4517
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 4518
    const-string v1, "setConst"

    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4525
    return-void
.end method

.method private visitSetConstVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 11
    .parameter "node"
    .parameter "child"
    .parameter "needValue"

    .prologue
    const/16 v10, 0xa7

    const/16 v9, 0x9a

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 4611
    iget-boolean v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    if-nez v6, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 4612
    :cond_0
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v6, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v5

    .line 4613
    .local v5, varIndex:I
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4614
    const/16 v6, 0x8

    invoke-virtual {p1, v6, v7}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v6

    if-eq v6, v7, :cond_1

    move v1, v8

    .line 4615
    .local v1, isNumber:Z
    :goto_0
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    aget-short v3, v6, v5

    .line 4616
    .local v3, reg:S
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 4617
    .local v0, beyond:I
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    .line 4618
    .local v2, noAssign:I
    if-eqz v1, :cond_3

    .line 4619
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 4620
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v9, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4621
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v4

    .line 4622
    .local v4, stack:S
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4623
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addIStore(I)V

    .line 4624
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    .line 4625
    if-eqz p3, :cond_2

    .line 4626
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 4627
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 4650
    :goto_1
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 4651
    return-void

    .line 4614
    .end local v0           #beyond:I
    .end local v1           #isNumber:Z
    .end local v2           #noAssign:I
    .end local v3           #reg:S
    .end local v4           #stack:S
    :cond_1
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 4629
    .restart local v0       #beyond:I
    .restart local v1       #isNumber:Z
    .restart local v2       #noAssign:I
    .restart local v3       #reg:S
    .restart local v4       #stack:S
    :cond_2
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v10, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4630
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 4631
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0x58

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    .line 4635
    .end local v4           #stack:S
    :cond_3
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 4636
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v9, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4637
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v4

    .line 4638
    .restart local v4       #stack:S
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 4639
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addIStore(I)V

    .line 4640
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 4641
    if-eqz p3, :cond_4

    .line 4642
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4643
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    goto :goto_1

    .line 4645
    :cond_4
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v10, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4646
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v6, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 4647
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v7, 0x57

    invoke-virtual {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1
.end method

.method private visitSetElem(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 5
    .parameter "type"
    .parameter "node"
    .parameter "child"

    .prologue
    const/16 v4, 0x8c

    const/4 v3, -0x1

    .line 4743
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4744
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    .line 4745
    if-ne p1, v4, :cond_0

    .line 4746
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4748
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4749
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    .line 4750
    const/16 v1, 0x8

    invoke-virtual {p2, v1, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v1

    if-eq v1, v3, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 4751
    .local v0, indexIsNumber:Z
    :goto_0
    if-ne p1, v4, :cond_1

    .line 4752
    if-eqz v0, :cond_3

    .line 4755
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4756
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4757
    const-string v1, "getObjectIndex"

    const-string v2, "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4775
    :cond_1
    :goto_1
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4776
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4777
    if-eqz v0, :cond_4

    .line 4778
    const-string v1, "setObjectIndex"

    const-string v2, "(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4794
    :goto_2
    return-void

    .line 4750
    .end local v0           #indexIsNumber:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 4765
    .restart local v0       #indexIsNumber:Z
    :cond_3
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4766
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4767
    const-string v1, "getObjectElem"

    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4786
    :cond_4
    const-string v1, "setObjectElem"

    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private visitSetName(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "node"
    .parameter "child"

    .prologue
    .line 4471
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 4472
    .local v0, name:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    .line 4473
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4474
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    .line 4476
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4477
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4478
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 4479
    const-string v1, "setName"

    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4487
    return-void
.end method

.method private visitSetProp(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 6
    .parameter "type"
    .parameter "node"
    .parameter "child"

    .prologue
    const/16 v4, 0x8b

    const-string v5, "getObjectProp"

    .line 4696
    move-object v1, p3

    .line 4697
    .local v1, objectChild:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4698
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    .line 4699
    if-ne p1, v4, :cond_0

    .line 4700
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4702
    :cond_0
    move-object v0, p3

    .line 4703
    .local v0, nameChild:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4704
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p3

    .line 4705
    if-ne p1, v4, :cond_1

    .line 4707
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4710
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_2

    .line 4713
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4714
    const-string v2, "getObjectProp"

    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v5, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4731
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4732
    const-string v2, "setObjectProp"

    const-string v3, "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4739
    return-void

    .line 4721
    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4722
    const-string v2, "getObjectProp"

    const-string v2, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;"

    invoke-direct {p0, v5, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private visitSetVar(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V
    .locals 13
    .parameter "node"
    .parameter "child"
    .parameter "needValue"

    .prologue
    .line 4551
    iget-boolean v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    if-nez v8, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 4552
    :cond_0
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v8, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v7

    .line 4553
    .local v7, varIndex:I
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4554
    const/16 v8, 0x8

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    move v2, v8

    .line 4555
    .local v2, isNumber:Z
    :goto_0
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    aget-short v5, v8, v7

    .line 4556
    .local v5, reg:S
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v8, v8, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamAndVarConst()[Z

    move-result-object v1

    .line 4557
    .local v1, constDeclarations:[Z
    aget-boolean v8, v1, v7

    if-eqz v8, :cond_4

    .line 4558
    if-nez p3, :cond_1

    .line 4559
    if-eqz v2, :cond_3

    .line 4560
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x58

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4607
    :cond_1
    :goto_1
    return-void

    .line 4554
    .end local v1           #constDeclarations:[Z
    .end local v2           #isNumber:Z
    .end local v5           #reg:S
    :cond_2
    const/4 v8, 0x0

    move v2, v8

    goto :goto_0

    .line 4562
    .restart local v1       #constDeclarations:[Z
    .restart local v2       #isNumber:Z
    .restart local v5       #reg:S
    :cond_3
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x57

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1

    .line 4565
    :cond_4
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4566
    if-eqz v2, :cond_6

    .line 4567
    if-eqz p3, :cond_5

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x5c

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4568
    :cond_5
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4569
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0xb2

    const-string v10, "java/lang/Void"

    const-string v11, "TYPE"

    const-string v12, "Ljava/lang/Class;"

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    .line 4574
    .local v3, isNumberLabel:I
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 4575
    .local v0, beyond:I
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0xa5

    invoke-virtual {v8, v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4576
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v6

    .line 4577
    .local v6, stack:S
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 4578
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 4579
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0xa7

    invoke-virtual {v8, v9, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 4580
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v3, v6}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 4581
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    .line 4582
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto :goto_1

    .line 4585
    .end local v0           #beyond:I
    .end local v3           #isNumberLabel:I
    .end local v6           #stack:S
    :cond_6
    if-eqz p3, :cond_7

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x59

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4586
    :cond_7
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto :goto_1

    .line 4589
    :cond_8
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v4

    .line 4590
    .local v4, isNumberVar:Z
    if-eqz v2, :cond_b

    .line 4591
    if-eqz v4, :cond_9

    .line 4592
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addDStore(I)V

    .line 4593
    if-eqz p3, :cond_1

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    goto/16 :goto_1

    .line 4595
    :cond_9
    if-eqz p3, :cond_a

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v9, 0x5c

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 4598
    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addDoubleWrap()V

    .line 4599
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    goto/16 :goto_1

    .line 4602
    :cond_b
    if-eqz v4, :cond_c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 4603
    :cond_c
    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 4604
    if-eqz p3, :cond_1

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    goto/16 :goto_1
.end method

.method private visitSpecialCall(Lorg/mozilla/javascript/Node;IILorg/mozilla/javascript/Node;)V
    .locals 6
    .parameter "node"
    .parameter "type"
    .parameter "specialType"
    .parameter "child"

    .prologue
    const/16 v5, 0x1e

    .line 3250
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3252
    if-ne p2, v5, :cond_0

    .line 3253
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3259
    :goto_0
    invoke-virtual {p4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p4

    .line 3261
    const/4 v3, 0x0

    invoke-direct {p0, p1, p4, v3}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 3266
    if-ne p2, v5, :cond_1

    .line 3267
    const-string v1, "newObjectSpecial"

    .line 3268
    .local v1, methodName:Ljava/lang/String;
    const-string v0, "(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;"

    .line 3275
    .local v0, callSignature:Ljava/lang/String;
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3276
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:S

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3277
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3297
    :goto_1
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    return-void

    .line 3256
    .end local v0           #callSignature:Ljava/lang/String;
    .end local v1           #methodName:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 3279
    :cond_1
    const-string v1, "callSpecial"

    .line 3280
    .restart local v1       #methodName:Ljava/lang/String;
    const-string v0, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;"

    .line 3289
    .restart local v0       #callSignature:Ljava/lang/String;
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3290
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->thisObjLocal:S

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3291
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 3292
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v2

    .line 3293
    .local v2, sourceName:Ljava/lang/String;
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    if-nez v2, :cond_2

    const-string v4, ""

    :goto_2
    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3294
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->itsLineNumber:I

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 3293
    goto :goto_2
.end method

.method private visitStandardCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 12
    .parameter "node"
    .parameter "child"

    .prologue
    .line 3302
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v10

    const/16 v11, 0x26

    if-eq v10, v11, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v10

    throw v10

    .line 3304
    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 3305
    .local v3, firstArgChild:Lorg/mozilla/javascript/Node;
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    .line 3310
    .local v2, childType:I
    if-nez v3, :cond_4

    .line 3311
    const/16 v10, 0x27

    if-ne v2, v10, :cond_1

    .line 3313
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    .line 3314
    .local v6, name:Ljava/lang/String;
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v10, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3315
    const-string v5, "callName0"

    .line 3316
    .local v5, methodName:Ljava/lang/String;
    const-string v9, "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 3398
    .end local v6           #name:Ljava/lang/String;
    .local v9, signature:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v11, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3399
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v11, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3400
    invoke-direct {p0, v5, v9}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addOptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    return-void

    .line 3320
    .end local v5           #methodName:Ljava/lang/String;
    .end local v9           #signature:Ljava/lang/String;
    :cond_1
    const/16 v10, 0x21

    if-ne v2, v10, :cond_2

    .line 3322
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 3323
    .local v7, propTarget:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v7, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3324
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 3325
    .local v4, id:Lorg/mozilla/javascript/Node;
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v8

    .line 3326
    .local v8, property:Ljava/lang/String;
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v10, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3327
    const-string v5, "callProp0"

    .line 3328
    .restart local v5       #methodName:Ljava/lang/String;
    const-string v9, "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 3333
    .restart local v9       #signature:Ljava/lang/String;
    goto :goto_0

    .end local v4           #id:Lorg/mozilla/javascript/Node;
    .end local v5           #methodName:Ljava/lang/String;
    .end local v7           #propTarget:Lorg/mozilla/javascript/Node;
    .end local v8           #property:Ljava/lang/String;
    .end local v9           #signature:Ljava/lang/String;
    :cond_2
    const/16 v10, 0x22

    if-ne v2, v10, :cond_3

    .line 3334
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v10

    throw v10

    .line 3336
    :cond_3
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3337
    const-string v5, "call0"

    .line 3338
    .restart local v5       #methodName:Ljava/lang/String;
    const-string v9, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .restart local v9       #signature:Ljava/lang/String;
    goto :goto_0

    .line 3345
    .end local v5           #methodName:Ljava/lang/String;
    .end local v9           #signature:Ljava/lang/String;
    :cond_4
    const/16 v10, 0x27

    if-ne v2, v10, :cond_5

    .line 3350
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    .line 3351
    .restart local v6       #name:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-direct {p0, p1, v3, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 3352
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v10, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3353
    const-string v5, "callName"

    .line 3354
    .restart local v5       #methodName:Ljava/lang/String;
    const-string v9, "([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .line 3359
    .restart local v9       #signature:Ljava/lang/String;
    goto :goto_0

    .line 3360
    .end local v5           #methodName:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #signature:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .line 3361
    .local v1, argCount:I
    move-object v0, v3

    .local v0, arg:Lorg/mozilla/javascript/Node;
    :goto_1
    if-eqz v0, :cond_6

    .line 3362
    add-int/lit8 v1, v1, 0x1

    .line 3361
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_1

    .line 3364
    :cond_6
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateFunctionAndThisObj(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3366
    const/4 v10, 0x1

    if-ne v1, v10, :cond_7

    .line 3367
    invoke-direct {p0, v3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3368
    const-string v5, "call1"

    .line 3369
    .restart local v5       #methodName:Ljava/lang/String;
    const-string v9, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .restart local v9       #signature:Ljava/lang/String;
    goto :goto_0

    .line 3375
    .end local v5           #methodName:Ljava/lang/String;
    .end local v9           #signature:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x2

    if-ne v1, v10, :cond_8

    .line 3376
    invoke-direct {p0, v3, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3377
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    invoke-direct {p0, v10, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3378
    const-string v5, "call2"

    .line 3379
    .restart local v5       #methodName:Ljava/lang/String;
    const-string v9, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .restart local v9       #signature:Ljava/lang/String;
    goto :goto_0

    .line 3387
    .end local v5           #methodName:Ljava/lang/String;
    .end local v9           #signature:Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    invoke-direct {p0, p1, v3, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 3388
    const-string v5, "callN"

    .line 3389
    .restart local v5       #methodName:Ljava/lang/String;
    const-string v9, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    .restart local v9       #signature:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private visitStandardNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "node"
    .parameter "child"

    .prologue
    .line 3405
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3407
    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 3409
    .local v0, firstArgChild:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3411
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3412
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3414
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCallArgArray(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)V

    .line 3415
    const-string v1, "newObject"

    const-string v2, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    return-void
.end method

.method private visitStrictSetName(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "node"
    .parameter "child"

    .prologue
    .line 4491
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 4492
    .local v0, name:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    .line 4493
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 4494
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    .line 4496
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->contextLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4497
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 4498
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 4499
    const-string v1, "strictSetName"

    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    return-void
.end method

.method private visitSwitch(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V
    .locals 5
    .parameter "switchNode"
    .parameter "child"

    .prologue
    .line 3911
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3913
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v1

    .line 3914
    .local v1, selector:S
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 3916
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    .line 3917
    .local v0, caseNode:Lorg/mozilla/javascript/ast/Jump;
    :goto_0
    if-eqz v0, :cond_1

    .line 3920
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getType()I

    move-result v3

    const/16 v4, 0x73

    if-eq v3, v4, :cond_0

    .line 3921
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 3922
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 3923
    .local v2, test:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v2, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateExpression(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 3924
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3925
    const-string v3, "shallowEq"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;)Z"

    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3929
    iget-object v3, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/16 v4, 0x9a

    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 3918
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .end local v0           #caseNode:Lorg/mozilla/javascript/ast/Jump;
    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    .restart local v0       #caseNode:Lorg/mozilla/javascript/ast/Jump;
    goto :goto_0

    .line 3931
    .end local v2           #test:Lorg/mozilla/javascript/Node;
    :cond_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(S)V

    .line 3932
    return-void
.end method

.method private visitTryCatchFinally(Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V
    .locals 13
    .parameter "node"
    .parameter "child"

    .prologue
    .line 3722
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getNewWordLocal()S

    move-result v2

    .line 3723
    .local v2, savedVariableObject:S
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3724
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 3731
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v4

    .line 3732
    .local v4, startLabel:I
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 3734
    iget-object v6, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 3735
    .local v6, catchTarget:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 3738
    .local v10, finallyTarget:Lorg/mozilla/javascript/Node;
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    if-eqz v0, :cond_1

    if-eqz v10, :cond_1

    .line 3739
    new-instance v12, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;

    invoke-direct {v12}, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;-><init>()V

    .line 3740
    .local v12, ret:Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    .line 3744
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->finallys:Ljava/util/Map;

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    .end local v12           #ret:Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 3750
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 3751
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_0

    .line 3755
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v11

    .line 3756
    .local v11, realEnd:I
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3758
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->getLocalBlockRegister(Lorg/mozilla/javascript/Node;)I

    move-result v5

    .line 3761
    .local v5, exceptionLocal:I
    if-eqz v6, :cond_3

    .line 3763
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v3

    .line 3765
    .local v3, catchLabel:I
    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCatchBlock(ISIII)V

    .line 3771
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCatchBlock(ISIII)V

    .line 3778
    const/4 v1, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCatchBlock(ISIII)V

    .line 3781
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v7

    .line 3782
    .local v7, cx:Lorg/mozilla/javascript/Context;
    if-eqz v7, :cond_3

    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3785
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateCatchBlock(ISIII)V

    .line 3792
    .end local v3           #catchLabel:I
    .end local v7           #cx:Lorg/mozilla/javascript/Context;
    :cond_3
    if-eqz v10, :cond_5

    .line 3793
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v8

    .line 3794
    .local v8, finallyHandler:I
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter;->markHandler(I)V

    .line 3795
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 3798
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3799
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 3802
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v9

    .line 3803
    .local v9, finallyLabel:I
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    if-eqz v0, :cond_6

    .line 3804
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addGotoWithReturn(Lorg/mozilla/javascript/Node;)V

    .line 3809
    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3810
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    if-eqz v0, :cond_4

    .line 3811
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xc0

    const-string v3, "java/lang/Throwable"

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 3812
    :cond_4
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 3815
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v9, v8, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(IIILjava/lang/String;)V

    .line 3818
    .end local v8           #finallyHandler:I
    .end local v9           #finallyLabel:I
    :cond_5
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->releaseWordLocal(S)V

    .line 3819
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 3820
    return-void

    .line 3806
    .restart local v8       #finallyHandler:I
    .restart local v9       #finallyLabel:I
    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_1
.end method

.method private visitTypeofname(Lorg/mozilla/javascript/Node;)V
    .locals 13
    .parameter "node"

    .prologue
    const-string v12, "typeof"

    const-string v11, "number"

    const-string v10, "(Ljava/lang/Object;)Ljava/lang/String;"

    .line 3936
    iget-boolean v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->hasVarsInRegs:Z

    if-eqz v5, :cond_2

    .line 3937
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    iget-object v5, v5, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v4

    .line 3938
    .local v4, varIndex:I
    if-ltz v4, :cond_2

    .line 3939
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3940
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v6, "number"

    invoke-virtual {v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3973
    .end local v4           #varIndex:I
    :goto_0
    return-void

    .line 3941
    .restart local v4       #varIndex:I
    :cond_0
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varIsDirectCallParameter(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3942
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    aget-short v1, v5, v4

    .line 3943
    .local v1, dcp_register:I
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3944
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0xb2

    const-string v7, "java/lang/Void"

    const-string v8, "TYPE"

    const-string v9, "Ljava/lang/Class;"

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3946
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    .line 3947
    .local v2, isNumberLabel:I
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0xa5

    invoke-virtual {v5, v6, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3948
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v3

    .line 3949
    .local v3, stack:S
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3950
    const-string v5, "typeof"

    const-string v5, "(Ljava/lang/Object;)Ljava/lang/String;"

    invoke-direct {p0, v12, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 3953
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 3954
    .local v0, beyond:I
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const/16 v6, 0xa7

    invoke-virtual {v5, v6, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 3955
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(IS)V

    .line 3956
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    const-string v6, "number"

    invoke-virtual {v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3957
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    goto :goto_0

    .line 3959
    .end local v0           #beyond:I
    .end local v1           #dcp_register:I
    .end local v2           #isNumberLabel:I
    .end local v3           #stack:S
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->varRegisters:[S

    aget-short v6, v6, v4

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3960
    const-string v5, "typeof"

    const-string v5, "(Ljava/lang/Object;)Ljava/lang/String;"

    invoke-direct {p0, v12, v10}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3967
    .end local v4           #varIndex:I
    :cond_2
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v6, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->variableObjectLocal:S

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 3968
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 3969
    const-string v5, "typeofName"

    const-string v6, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;"

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->addScriptRuntimeInvoke(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method generateBodyCode()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 1362
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-static {v2}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    .line 1365
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->initBodyGeneration()V

    .line 1367
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    if-eqz v2, :cond_1

    .line 1371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, v3, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Lorg/mozilla/javascript/Context;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, type:Ljava/lang/String;
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_gen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 1388
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generatePrologue()V

    .line 1390
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->fnCurrent:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v2, :cond_2

    .line 1391
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1395
    .local v0, treeTop:Lorg/mozilla/javascript/Node;
    :goto_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateStatement(Lorg/mozilla/javascript/Node;)V

    .line 1396
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateEpilogue()V

    .line 1398
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-short v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->localsMax:S

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 1400
    iget-boolean v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->isGenerator:Z

    if-eqz v2, :cond_0

    .line 1403
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateGenerator()V

    .line 1405
    :cond_0
    return-void

    .line 1382
    .end local v0           #treeTop:Lorg/mozilla/javascript/Node;
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_0

    .line 1393
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .restart local v0       #treeTop:Lorg/mozilla/javascript/Node;
    goto :goto_1
.end method
