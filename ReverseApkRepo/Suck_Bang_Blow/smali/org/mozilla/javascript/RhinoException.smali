.class public abstract Lorg/mozilla/javascript/RhinoException;
.super Ljava/lang/RuntimeException;
.source "RhinoException.java"


# static fields
.field private static useMozillaStackStyle:Z


# instance fields
.field private columnNumber:I

.field interpreterLineData:[I

.field interpreterStackInfo:Ljava/lang/Object;

.field private lineNumber:I

.field private lineSource:Ljava/lang/String;

.field private sourceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    sput-boolean v0, Lorg/mozilla/javascript/RhinoException;->useMozillaStackStyle:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 62
    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v0

    .line 63
    .local v0, e:Lorg/mozilla/javascript/Evaluator;
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p0}, Lorg/mozilla/javascript/Evaluator;->captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V

    .line 65
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "details"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v0

    .line 71
    .local v0, e:Lorg/mozilla/javascript/Evaluator;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0}, Lorg/mozilla/javascript/Evaluator;->captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V

    .line 73
    :cond_0
    return-void
.end method

.method private generateStackTrace()Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 220
    .local v2, writer:Ljava/io/CharArrayWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-super {p0, v3}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 221
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, origStackTrace:Ljava/lang/String;
    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v0

    .line 223
    .local v0, e:Lorg/mozilla/javascript/Evaluator;
    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p0, v1}, Lorg/mozilla/javascript/Evaluator;->getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static useMozillaStackStyle(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 360
    sput-boolean p0, Lorg/mozilla/javascript/RhinoException;->useMozillaStackStyle:Z

    .line 361
    return-void
.end method

.method public static usesMozillaStackStyle()Z
    .locals 1

    .prologue
    .line 346
    sget-boolean v0, Lorg/mozilla/javascript/RhinoException;->useMozillaStackStyle:Z

    return v0
.end method


# virtual methods
.method public final columnNumber()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/mozilla/javascript/RhinoException;->columnNumber:I

    return v0
.end method

.method public details()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->details()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, details:Ljava/lang/String;
    iget-object v2, p0, Lorg/mozilla/javascript/RhinoException;->sourceName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/mozilla/javascript/RhinoException;->lineNumber:I

    if-gtz v2, :cond_1

    :cond_0
    move-object v2, v1

    .line 92
    :goto_0
    return-object v2

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v2, p0, Lorg/mozilla/javascript/RhinoException;->sourceName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lorg/mozilla/javascript/RhinoException;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_2
    iget v2, p0, Lorg/mozilla/javascript/RhinoException;->lineNumber:I

    if-lez v2, :cond_3

    .line 88
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    iget v2, p0, Lorg/mozilla/javascript/RhinoException;->lineNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 91
    :cond_3
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getScriptStack()[Lorg/mozilla/javascript/ScriptStackElement;
    .locals 24

    .prologue
    .line 276
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v17, list:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ScriptStackElement;>;"
    const/4 v12, 0x0

    check-cast v12, [[Lorg/mozilla/javascript/ScriptStackElement;

    .line 278
    .local v12, interpreterStack:[[Lorg/mozilla/javascript/ScriptStackElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 279
    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v11

    .line 280
    .local v11, interpreter:Lorg/mozilla/javascript/Evaluator;
    move-object v0, v11

    instance-of v0, v0, Lorg/mozilla/javascript/Interpreter;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 281
    check-cast v11, Lorg/mozilla/javascript/Interpreter;

    .end local v11           #interpreter:Lorg/mozilla/javascript/Evaluator;
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object v12

    .line 283
    :cond_0
    const/4 v13, 0x0

    .line 284
    .local v13, interpreterStackIndex:I
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/RhinoException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v21

    .line 288
    .local v21, stack:[Ljava/lang/StackTraceElement;
    const-string v22, "_c_(.*)_\\d+"

    invoke-static/range {v22 .. v22}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 289
    .local v20, pattern:Ljava/util/regex/Pattern;
    move-object/from16 v4, v21

    .local v4, arr$:[Ljava/lang/StackTraceElement;
    array-length v15, v4

    .local v15, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v9           #i$:I
    .local v10, i$:I
    move v14, v13

    .end local v4           #arr$:[Ljava/lang/StackTraceElement;
    .end local v13           #interpreterStackIndex:I
    .end local v15           #len$:I
    .local v14, interpreterStackIndex:I
    :goto_0
    if-ge v10, v15, :cond_4

    aget-object v6, v4, v10

    .line 290
    .local v6, e:Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, fileName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "_c_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    if-eqz v8, :cond_3

    const-string v22, ".java"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 295
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v19

    .line 296
    .local v19, methodName:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 299
    .local v18, match:Ljava/util/regex/Matcher;
    const-string v22, "_c_script_0"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v22

    .line 301
    :goto_1
    new-instance v22, Lorg/mozilla/javascript/ScriptStackElement;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v23

    move-object/from16 v0, v22

    move-object v1, v8

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptStackElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v14

    .line 289
    .end local v10           #i$:I
    .end local v14           #interpreterStackIndex:I
    .end local v18           #match:Ljava/util/regex/Matcher;
    .end local v19           #methodName:Ljava/lang/String;
    .restart local v13       #interpreterStackIndex:I
    :cond_1
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .restart local v9       #i$:I
    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    move v14, v13

    .end local v13           #interpreterStackIndex:I
    .restart local v14       #interpreterStackIndex:I
    goto :goto_0

    .line 299
    .restart local v18       #match:Ljava/util/regex/Matcher;
    .restart local v19       #methodName:Ljava/lang/String;
    :cond_2
    const/16 v22, 0x0

    move-object/from16 v19, v22

    goto :goto_1

    .line 302
    .end local v18           #match:Ljava/util/regex/Matcher;
    .end local v19           #methodName:Ljava/lang/String;
    :cond_3
    const-string v22, "org.mozilla.javascript.Interpreter"

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string v22, "interpretLoop"

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    if-eqz v12, :cond_5

    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move v1, v14

    if-le v0, v1, :cond_5

    .line 306
    add-int/lit8 v13, v14, 0x1

    .end local v14           #interpreterStackIndex:I
    .restart local v13       #interpreterStackIndex:I
    aget-object v5, v12, v14

    .local v5, arr$:[Lorg/mozilla/javascript/ScriptStackElement;
    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_3
    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    aget-object v7, v5, v9

    .line 307
    .local v7, elem:Lorg/mozilla/javascript/ScriptStackElement;
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 311
    .end local v5           #arr$:[Lorg/mozilla/javascript/ScriptStackElement;
    .end local v6           #e:Ljava/lang/StackTraceElement;
    .end local v7           #elem:Lorg/mozilla/javascript/ScriptStackElement;
    .end local v8           #fileName:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v13           #interpreterStackIndex:I
    .end local v16           #len$:I
    .restart local v10       #i$:I
    .restart local v14       #interpreterStackIndex:I
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lorg/mozilla/javascript/ScriptStackElement;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lorg/mozilla/javascript/ScriptStackElement;

    return-object p0

    .restart local v6       #e:Ljava/lang/StackTraceElement;
    .restart local v8       #fileName:Ljava/lang/String;
    .restart local p0
    :cond_5
    move v13, v14

    .end local v14           #interpreterStackIndex:I
    .restart local v13       #interpreterStackIndex:I
    goto :goto_2
.end method

.method public getScriptStackTrace()Ljava/lang/String;
    .locals 8

    .prologue
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v1, buffer:Ljava/lang/StringBuilder;
    const-string v7, "line.separator"

    invoke-static {v7}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, lineSeparator:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getScriptStack()[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object v6

    .line 241
    .local v6, stack:[Lorg/mozilla/javascript/ScriptStackElement;
    move-object v0, v6

    .local v0, arr$:[Lorg/mozilla/javascript/ScriptStackElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 242
    .local v2, elem:Lorg/mozilla/javascript/ScriptStackElement;
    sget-boolean v7, Lorg/mozilla/javascript/RhinoException;->useMozillaStackStyle:Z

    if-eqz v7, :cond_0

    .line 243
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ScriptStackElement;->renderMozillaStyle(Ljava/lang/StringBuilder;)V

    .line 247
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 249
    .end local v2           #elem:Lorg/mozilla/javascript/ScriptStackElement;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getScriptStackTrace(Ljava/io/FilenameFilter;)Ljava/lang/String;
    .locals 1
    .parameter "filter"

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getScriptStackTrace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final initColumnNumber(I)V
    .locals 2
    .parameter "columnNumber"

    .prologue
    .line 166
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/RhinoException;->columnNumber:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 168
    :cond_1
    iput p1, p0, Lorg/mozilla/javascript/RhinoException;->columnNumber:I

    .line 169
    return-void
.end method

.method public final initLineNumber(I)V
    .locals 2
    .parameter "lineNumber"

    .prologue
    .line 143
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/RhinoException;->lineNumber:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 145
    :cond_1
    iput p1, p0, Lorg/mozilla/javascript/RhinoException;->lineNumber:I

    .line 146
    return-void
.end method

.method public final initLineSource(Ljava/lang/String;)V
    .locals 1
    .parameter "lineSource"

    .prologue
    .line 189
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/RhinoException;->lineSource:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 191
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/RhinoException;->lineSource:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public final initSourceName(Ljava/lang/String;)V
    .locals 1
    .parameter "sourceName"

    .prologue
    .line 119
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/RhinoException;->sourceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 121
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/RhinoException;->sourceName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public final lineNumber()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/mozilla/javascript/RhinoException;->lineNumber:I

    return v0
.end method

.method public final lineSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/mozilla/javascript/RhinoException;->lineSource:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 328
    iget-object v0, p0, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 329
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/RhinoException;->generateStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 318
    iget-object v0, p0, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 319
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/RhinoException;->generateStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final recordErrorOrigin(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "sourceName"
    .parameter "lineNumber"
    .parameter "lineSource"
    .parameter "columnNumber"

    .prologue
    .line 198
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 199
    const/4 p2, 0x0

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/RhinoException;->initSourceName(Ljava/lang/String;)V

    .line 205
    :cond_1
    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/RhinoException;->initLineNumber(I)V

    .line 208
    :cond_2
    if-eqz p3, :cond_3

    .line 209
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/RhinoException;->initLineSource(Ljava/lang/String;)V

    .line 211
    :cond_3
    if-eqz p4, :cond_4

    .line 212
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/RhinoException;->initColumnNumber(I)V

    .line 214
    :cond_4
    return-void
.end method

.method public final sourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/javascript/RhinoException;->sourceName:Ljava/lang/String;

    return-object v0
.end method
