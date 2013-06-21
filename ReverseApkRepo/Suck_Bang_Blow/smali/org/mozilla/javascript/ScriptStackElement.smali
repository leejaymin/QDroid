.class public final Lorg/mozilla/javascript/ScriptStackElement;
.super Ljava/lang/Object;
.source "ScriptStackElement.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final fileName:Ljava/lang/String;

.field public final functionName:Ljava/lang/String;

.field public final lineNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "fileName"
    .parameter "functionName"
    .parameter "lineNumber"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptStackElement;->fileName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    .line 20
    iput p3, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    .line 21
    return-void
.end method


# virtual methods
.method public renderJavaStyle(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 35
    const-string v0, "\tat "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptStackElement;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 37
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 40
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_1
    return-void
.end method

.method public renderMozillaStyle(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptStackElement;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v0, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 55
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptStackElement;->renderMozillaStyle(Ljava/lang/StringBuilder;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
