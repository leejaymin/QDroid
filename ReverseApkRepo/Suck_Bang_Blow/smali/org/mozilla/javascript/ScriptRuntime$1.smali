.class final Lorg/mozilla/javascript/ScriptRuntime$1;
.super Lorg/mozilla/javascript/BaseFunction;
.source "ScriptRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/ScriptRuntime;->typeErrorThrower()Lorg/mozilla/javascript/BaseFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 86
    const-string v0, "msg.op.not.allowed"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
