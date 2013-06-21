.class Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;
.super Ljava/lang/Object;
.source "ScriptRuntime.java"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoSuchMethodShim"
.end annotation


# instance fields
.field methodName:Ljava/lang/String;

.field noSuchMethodMethod:Lorg/mozilla/javascript/Callable;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Callable;Ljava/lang/String;)V
    .locals 0
    .parameter "noSuchMethodMethod"
    .parameter "methodName"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    .line 107
    iput-object p2, p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 121
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 123
    .local v0, nestedArgs:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 124
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p4, v2, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    invoke-interface {v1, p1, p2, p3, v0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
