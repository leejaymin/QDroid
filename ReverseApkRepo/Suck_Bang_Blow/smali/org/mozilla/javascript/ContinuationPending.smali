.class public Lorg/mozilla/javascript/ContinuationPending;
.super Ljava/lang/RuntimeException;
.source "ContinuationPending.java"


# static fields
.field private static final serialVersionUID:J = 0x44c7471fc8185f08L


# instance fields
.field private applicationState:Ljava/lang/Object;

.field private continuationState:Lorg/mozilla/javascript/NativeContinuation;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeContinuation;)V
    .locals 0
    .parameter "continuationState"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    .line 65
    return-void
.end method


# virtual methods
.method public getApplicationState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mozilla/javascript/ContinuationPending;->applicationState:Ljava/lang/Object;

    return-object v0
.end method

.method public getContinuation()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    return-object v0
.end method

.method getContinuationState()Lorg/mozilla/javascript/NativeContinuation;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    return-object v0
.end method

.method public setApplicationState(Ljava/lang/Object;)V
    .locals 0
    .parameter "applicationState"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/mozilla/javascript/ContinuationPending;->applicationState:Ljava/lang/Object;

    .line 91
    return-void
.end method
