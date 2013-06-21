.class public abstract Lgnu/mapping/Location;
.super Ljava/lang/Object;
.source "Location.java"


# static fields
.field public static final UNBOUND:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/String;

    const-string v1, "(unbound)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 170
    new-instance v0, Lgnu/mapping/PlainLocation;

    invoke-direct {v0, p0, v1}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 171
    .local v0, loc:Lgnu/mapping/PlainLocation;
    iput-object v1, v0, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    .line 172
    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object v1, v0, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    .line 173
    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/mapping/IndirectableLocation;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 161
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 162
    .local v1, sym:Lgnu/mapping/Symbol;
    new-instance v0, Lgnu/mapping/PlainLocation;

    invoke-direct {v0, v1, v4}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 163
    .local v0, loc:Lgnu/mapping/PlainLocation;
    iput-object v4, v0, Lgnu/mapping/PlainLocation;->base:Lgnu/mapping/Location;

    .line 164
    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object v2, v0, Lgnu/mapping/PlainLocation;->value:Ljava/lang/Object;

    .line 165
    return-object v0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Location;
    .locals 1
    .parameter "init"
    .parameter "name"

    .prologue
    .line 153
    new-instance v0, Lgnu/mapping/ThreadLocation;

    invoke-direct {v0, p1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, loc:Lgnu/mapping/ThreadLocation;
    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 155
    return-object v0
.end method


# virtual methods
.method public entered()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 65
    .local v0, unb:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, val:Ljava/lang/Object;
    if-ne v1, v0, :cond_0

    .line 67
    new-instance v2, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v2, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Lgnu/mapping/Location;)V

    throw v2

    .line 68
    :cond_0
    return-object v1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getBase()Lgnu/mapping/Location;
    .locals 0

    .prologue
    .line 111
    return-object p0
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 101
    .local v0, unb:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConstant()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "ps"

    .prologue
    .line 134
    const-string v3, "#<location "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 136
    .local v0, name:Lgnu/mapping/Symbol;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 138
    :cond_0
    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 139
    .local v1, unb:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 140
    .local v2, value:Ljava/lang/Object;
    if-eq v2, v1, :cond_1

    .line 142
    const-string v3, " -> "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 147
    :goto_0
    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 148
    return-void

    .line 146
    :cond_1
    const-string v3, "(unbound)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract set(Ljava/lang/Object;)V
.end method

.method public setRestore(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 0
    .parameter "oldValue"
    .parameter "ctx"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->popFluid()V

    .line 96
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "newValue"

    .prologue
    .line 121
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, value:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 123
    return-object v0
.end method

.method public setWithSave(Ljava/lang/Object;Lgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 2
    .parameter "newValue"
    .parameter "ctx"

    .prologue
    .line 83
    invoke-virtual {p2, p0}, Lgnu/mapping/CallContext;->pushFluid(Lgnu/mapping/Location;)V

    .line 84
    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, old:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 86
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    .local v1, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p0}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v2

    .line 34
    .local v2, sym:Lgnu/mapping/Symbol;
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {p0}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, property:Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 43
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 51
    .end local v0           #property:Ljava/lang/Object;
    :cond_0
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public undefine()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
