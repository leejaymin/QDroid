.class Lorg/mozilla/javascript/Interpreter$CallFrame;
.super Ljava/lang/Object;
.source "Interpreter.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallFrame"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x27772e38498fb682L


# instance fields
.field debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

.field emptyStackTop:I

.field fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

.field frameIndex:I

.field frozen:Z

.field idata:Lorg/mozilla/javascript/InterpreterData;

.field isContinuationsTopFrame:Z

.field localShift:I

.field parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field pc:I

.field pcPrevBranch:I

.field pcSourceLineStart:I

.field result:Ljava/lang/Object;

.field resultDbl:D

.field sDbl:[D

.field savedCallOp:I

.field savedStackTop:I

.field scope:Lorg/mozilla/javascript/Scriptable;

.field scriptRegExps:[Lorg/mozilla/javascript/Scriptable;

.field stack:[Ljava/lang/Object;

.field stackAttributes:[I

.field thisObj:Lorg/mozilla/javascript/Scriptable;

.field throwable:Ljava/lang/Object;

.field useActivation:Z

.field varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/Interpreter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>()V

    return-void
.end method


# virtual methods
.method cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 3

    .prologue
    .line 125
    iget-boolean v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .local v0, copy:Lorg/mozilla/javascript/Interpreter$CallFrame;
    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    .line 139
    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [D

    iput-object p0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 141
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 142
    return-object v0

    .line 130
    .end local v0           #copy:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .restart local p0
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 131
    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method
