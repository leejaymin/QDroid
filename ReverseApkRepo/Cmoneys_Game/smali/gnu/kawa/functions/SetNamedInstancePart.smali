.class Lgnu/kawa/functions/SetNamedInstancePart;
.super Lgnu/mapping/Procedure2;
.source "GetNamedInstancePart.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/CanInline;


# instance fields
.field pname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 135
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 136
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/SetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "instance"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 149
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 150
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v3, 0x3

    new-array v2, v3, [Lgnu/expr/Expression;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    new-instance v3, Lgnu/expr/QuoteExp;

    iget-object v4, p0, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aget-object v4, v0, v5

    aput-object v4, v2, v3

    .line 152
    .local v2, xargs:[Lgnu/expr/Expression;
    sget-object v1, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 153
    .local v1, proc:Lgnu/mapping/Procedure;
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v3}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/kawa/functions/SetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setPartName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set-instance-part:."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/functions/SetNamedInstancePart;->setName(Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 167
    return-void
.end method
