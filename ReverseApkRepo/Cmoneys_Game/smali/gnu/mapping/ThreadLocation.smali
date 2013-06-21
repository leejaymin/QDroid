.class public Lgnu/mapping/ThreadLocation;
.super Lgnu/mapping/Location;
.source "ThreadLocation.java"

# interfaces
.implements Lgnu/mapping/Named;


# static fields
.field public static final ANONYMOUS:Ljava/lang/String;

.field static counter:I

.field static env:Lgnu/mapping/SimpleEnvironment;


# instance fields
.field global:Lgnu/mapping/Location;

.field final name:Lgnu/mapping/Symbol;

.field final property:Ljava/lang/Object;

.field thLocal:Ljava/lang/ThreadLocal;

.field unlink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/String;

    const-string v1, "(dynamic)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lgnu/mapping/ThreadLocation;->nextCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 25
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    .line 48
    iput-object p1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    .line 49
    if-nez p1, :cond_0

    move-object v0, v4

    .line 50
    .local v0, str:Ljava/lang/String;
    :goto_0
    sget-object v1, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    iput-object v1, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgnu/mapping/ThreadLocation;->unlink:Z

    .line 52
    new-instance v1, Lgnu/mapping/SharedLocation;

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v1, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    .line 53
    return-void

    .line 49
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V
    .locals 1
    .parameter "name"
    .parameter "property"
    .parameter "global"

    .prologue
    .line 56
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    .line 57
    iput-object p1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    .line 58
    iput-object p2, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    .line 59
    iput-object p3, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 39
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    .line 40
    invoke-static {p1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    .line 41
    sget-object v0, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/mapping/ThreadLocation;->unlink:Z

    .line 43
    new-instance v0, Lgnu/mapping/SharedLocation;

    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;
    .locals 5
    .parameter "name"
    .parameter "property"

    .prologue
    .line 174
    const-class v2, Lgnu/mapping/ThreadLocation;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    if-nez v3, :cond_0

    .line 175
    new-instance v3, Lgnu/mapping/SimpleEnvironment;

    const-string v4, "[thread-locations]"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    sput-object v3, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    .line 176
    :cond_0
    sget-object v3, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v3, p0, p1}, Lgnu/mapping/SimpleEnvironment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    check-cast v0, Lgnu/mapping/IndirectableLocation;

    .line 178
    .local v0, loc:Lgnu/mapping/IndirectableLocation;
    iget-object v3, v0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v3, :cond_1

    .line 179
    iget-object p0, v0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .end local p0
    check-cast p0, Lgnu/mapping/ThreadLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p0

    .line 182
    :goto_0
    monitor-exit v2

    return-object v3

    .line 180
    .restart local p0
    :cond_1
    :try_start_1
    new-instance v1, Lgnu/mapping/ThreadLocation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lgnu/mapping/ThreadLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 181
    .local v1, tloc:Lgnu/mapping/ThreadLocation;
    iput-object v1, v0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 182
    goto :goto_0

    .line 174
    .end local v0           #loc:Lgnu/mapping/IndirectableLocation;
    .end local v1           #tloc:Lgnu/mapping/ThreadLocation;
    .end local p0
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static makePrivate(Lgnu/mapping/Symbol;)Lgnu/mapping/ThreadLocation;
    .locals 1
    .parameter "name"

    .prologue
    .line 73
    new-instance v0, Lgnu/mapping/ThreadLocation;

    invoke-direct {v0, p0}, Lgnu/mapping/ThreadLocation;-><init>(Lgnu/mapping/Symbol;)V

    return-object v0
.end method

.method public static makePrivate(Ljava/lang/String;)Lgnu/mapping/ThreadLocation;
    .locals 1
    .parameter "name"

    .prologue
    .line 68
    new-instance v0, Lgnu/mapping/ThreadLocation;

    invoke-direct {v0, p0}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized nextCounter()I
    .locals 2

    .prologue
    .line 15
    const-class v0, Lgnu/mapping/ThreadLocation;

    monitor-enter v0

    :try_start_0
    sget v1, Lgnu/mapping/ThreadLocation;->counter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/mapping/ThreadLocation;->counter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 132
    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    return-object v0
.end method

.method public getLocation()Lgnu/mapping/Location;
    .locals 7

    .prologue
    .line 92
    iget-object v4, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, entry:Ljava/lang/Object;
    if-nez v0, :cond_4

    .line 98
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 99
    .local v1, env:Lgnu/mapping/Environment;
    iget-object v4, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    iget-object v5, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v2

    .line 100
    .local v2, loc:Lgnu/mapping/NamedLocation;
    iget-object v4, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    if-eqz v4, :cond_1

    .line 102
    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v4, v2, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    if-nez v4, :cond_0

    iget-object v4, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v5, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 105
    iget-object v4, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    invoke-virtual {v2, v4}, Lgnu/mapping/NamedLocation;->setBase(Lgnu/mapping/Location;)V

    .line 106
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    iget-boolean v4, p0, Lgnu/mapping/ThreadLocation;->unlink:Z

    if-eqz v4, :cond_2

    .line 111
    new-instance v3, Lgnu/mapping/LocationRef;

    invoke-direct {v3}, Lgnu/mapping/LocationRef;-><init>()V

    .line 112
    .local v3, lref:Lgnu/mapping/LocationRef;
    iput-object v1, v3, Lgnu/mapping/LocationRef;->env:Lgnu/mapping/Environment;

    .line 113
    iput-object v2, v3, Lgnu/mapping/LocationRef;->loc:Lgnu/mapping/Location;

    .line 114
    move-object v0, v3

    .line 119
    .end local v0           #entry:Ljava/lang/Object;
    .end local v3           #lref:Lgnu/mapping/LocationRef;
    :goto_0
    iget-object v4, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object p0, v0

    .line 124
    .end local v1           #env:Lgnu/mapping/Environment;
    .end local v2           #loc:Lgnu/mapping/NamedLocation;
    .end local p0
    :goto_1
    instance-of v4, p0, Lgnu/mapping/LocationRef;

    if-eqz v4, :cond_3

    .line 125
    check-cast p0, Lgnu/mapping/LocationRef;

    iget-object v4, p0, Lgnu/mapping/LocationRef;->loc:Lgnu/mapping/Location;

    .line 127
    :goto_2
    return-object v4

    .line 106
    .restart local v0       #entry:Ljava/lang/Object;
    .restart local v1       #env:Lgnu/mapping/Environment;
    .restart local v2       #loc:Lgnu/mapping/NamedLocation;
    .restart local p0
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 117
    :cond_2
    move-object v0, v2

    .local v0, entry:Lgnu/mapping/NamedLocation;
    goto :goto_0

    .line 127
    .end local v0           #entry:Lgnu/mapping/NamedLocation;
    .end local v1           #env:Lgnu/mapping/Environment;
    .end local v2           #loc:Lgnu/mapping/NamedLocation;
    .end local p0
    :cond_3
    check-cast p0, Lgnu/mapping/Location;

    move-object v4, p0

    goto :goto_2

    .local v0, entry:Ljava/lang/Object;
    .restart local p0
    :cond_4
    move-object p0, v0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    check-cast v0, Lgnu/mapping/SharedLocation;

    invoke-virtual {v0}, Lgnu/mapping/SharedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public setGlobal(Ljava/lang/Object;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 79
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lgnu/mapping/SharedLocation;

    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    .line 83
    :cond_0
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setName not allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRestore(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "oldValue"
    .parameter "ctx"

    .prologue
    .line 147
    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/Location;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 148
    return-void
.end method

.method public setWithSave(Ljava/lang/Object;Lgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 1
    .parameter "newValue"
    .parameter "ctx"

    .prologue
    .line 142
    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/Location;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
