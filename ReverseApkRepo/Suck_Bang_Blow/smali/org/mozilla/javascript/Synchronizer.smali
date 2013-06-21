.class public Lorg/mozilla/javascript/Synchronizer;
.super Lorg/mozilla/javascript/Delegator;
.source "Synchronizer.java"


# instance fields
.field private syncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Delegator;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"
    .parameter "syncObject"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Delegator;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    .line 82
    iput-object p2, p0, Lorg/mozilla/javascript/Synchronizer;->syncObject:Ljava/lang/Object;

    .line 83
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
    .line 92
    iget-object v1, p0, Lorg/mozilla/javascript/Synchronizer;->syncObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Synchronizer;->syncObject:Ljava/lang/Object;

    move-object v0, v1

    .line 93
    .local v0, sync:Ljava/lang/Object;
    :goto_0
    instance-of v1, v0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    .end local v0           #sync:Ljava/lang/Object;
    invoke-interface {v0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    monitor-enter v1

    .line 94
    :try_start_0
    iget-object p0, p0, Lorg/mozilla/javascript/Synchronizer;->obj:Lorg/mozilla/javascript/Scriptable;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Function;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .restart local p0
    :cond_0
    move-object v0, p3

    .line 92
    goto :goto_0

    .restart local v0       #sync:Ljava/lang/Object;
    :cond_1
    move-object v1, v0

    .line 93
    goto :goto_1

    .line 95
    .end local v0           #sync:Ljava/lang/Object;
    .end local p0
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
