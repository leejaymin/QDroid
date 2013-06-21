.class final Lorg/mozilla/javascript/InterpreterData;
.super Ljava/lang/Object;
.source "InterpreterData.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/debug/DebuggableScript;


# static fields
.field static final INITIAL_MAX_ICODE_LENGTH:I = 0x400

.field static final INITIAL_NUMBERTABLE_SIZE:I = 0x40

.field static final INITIAL_STRINGTABLE_SIZE:I = 0x40

.field static final serialVersionUID:J = 0x465401b399c4b69aL


# instance fields
.field argCount:I

.field argIsConst:[Z

.field argNames:[Ljava/lang/String;

.field encodedSource:Ljava/lang/String;

.field encodedSourceEnd:I

.field encodedSourceStart:I

.field evalScriptFlag:Z

.field firstLinePC:I

.field isStrict:Z

.field itsDoubleTable:[D

.field itsExceptionTable:[I

.field itsFunctionType:I

.field itsICode:[B

.field itsMaxCalleeArgs:I

.field itsMaxFrameArray:I

.field itsMaxLocals:I

.field itsMaxStack:I

.field itsMaxVars:I

.field itsName:Ljava/lang/String;

.field itsNeedsActivation:Z

.field itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

.field itsRegExpLiterals:[Ljava/lang/Object;

.field itsSourceFile:Ljava/lang/String;

.field itsStringTable:[Ljava/lang/String;

.field languageVersion:I

.field literalIds:[Ljava/lang/Object;

.field longJumps:Lorg/mozilla/javascript/UintMap;

.field parentData:Lorg/mozilla/javascript/InterpreterData;

.field topLevel:Z

.field useDynamicScope:Z


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "languageVersion"
    .parameter "sourceFile"
    .parameter "encodedSource"
    .parameter "isStrict"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    .line 58
    iput p1, p0, Lorg/mozilla/javascript/InterpreterData;->languageVersion:I

    .line 59
    iput-object p2, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    .line 61
    iput-boolean p4, p0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    .line 62
    invoke-direct {p0}, Lorg/mozilla/javascript/InterpreterData;->init()V

    .line 63
    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/InterpreterData;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    .line 67
    iput-object p1, p0, Lorg/mozilla/javascript/InterpreterData;->parentData:Lorg/mozilla/javascript/InterpreterData;

    .line 68
    iget v0, p1, Lorg/mozilla/javascript/InterpreterData;->languageVersion:I

    iput v0, p0, Lorg/mozilla/javascript/InterpreterData;->languageVersion:I

    .line 69
    iget-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lorg/mozilla/javascript/InterpreterData;->init()V

    .line 73
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 78
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getFunction(I)Lorg/mozilla/javascript/debug/DebuggableScript;
    .locals 1
    .parameter "index"

    .prologue
    .line 184
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFunctionCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    array-length v0, v0

    goto :goto_0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumbers()[I
    .locals 1

    .prologue
    .line 174
    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I

    move-result-object v0

    return-object v0
.end method

.method public getParamAndVarCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getParamCount()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    return v0
.end method

.method public getParamOrVarConst(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 159
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 154
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParent()Lorg/mozilla/javascript/debug/DebuggableScript;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->parentData:Lorg/mozilla/javascript/InterpreterData;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public isFunction()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGeneratedScript()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isGeneratedScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTopLevel()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/mozilla/javascript/InterpreterData;->topLevel:Z

    return v0
.end method
