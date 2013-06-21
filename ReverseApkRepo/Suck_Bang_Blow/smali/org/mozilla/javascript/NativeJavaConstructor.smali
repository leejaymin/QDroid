.class public Lorg/mozilla/javascript/NativeJavaConstructor;
.super Lorg/mozilla/javascript/BaseFunction;
.source "NativeJavaConstructor.java"


# static fields
.field static final serialVersionUID:J = -0x7117f69fecc379afL


# instance fields
.field ctor:Lorg/mozilla/javascript/MemberBox;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/MemberBox;)V
    .locals 0
    .parameter "ctor"

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaConstructor;->ctor:Lorg/mozilla/javascript/MemberBox;

    .line 66
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
    .line 72
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaConstructor;->ctor:Lorg/mozilla/javascript/MemberBox;

    invoke-static {p1, p2, p4, v0}, Lorg/mozilla/javascript/NativeJavaClass;->constructSpecific(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaConstructor;->ctor:Lorg/mozilla/javascript/MemberBox;

    iget-object v1, v1, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, sig:Ljava/lang/String;
    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaConstructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaConstructor;->ctor:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v1}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
