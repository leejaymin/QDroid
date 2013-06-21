.class public final Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;
.super Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;
.source "ObjectReferenceParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->set(Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<TT;>;"
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->value:Ljava/lang/Object;

    .line 41
    return-void
.end method
