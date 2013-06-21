.class Lgnu/mapping/LocationRef;
.super Ljava/lang/Object;
.source "ThreadLocation.java"


# instance fields
.field env:Lgnu/mapping/Environment;

.field loc:Lgnu/mapping/Location;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 5

    .prologue
    .line 193
    iget-object v3, p0, Lgnu/mapping/LocationRef;->loc:Lgnu/mapping/Location;

    invoke-virtual {v3}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v2

    .line 194
    .local v2, symbol:Lgnu/mapping/Symbol;
    iget-object v3, p0, Lgnu/mapping/LocationRef;->loc:Lgnu/mapping/Location;

    invoke-virtual {v3}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, property:Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v3

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    xor-int v0, v3, v4

    .line 196
    .local v0, hash:I
    iget-object v3, p0, Lgnu/mapping/LocationRef;->env:Lgnu/mapping/Environment;

    invoke-virtual {v3, v2, v1, v0}, Lgnu/mapping/Environment;->unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;

    .line 197
    return-void
.end method
