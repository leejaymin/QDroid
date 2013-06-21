.class public Lcom/adfonic/android/ormma/js/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;,
        Lcom/adfonic/android/ormma/js/StateMachine$State;
    }
.end annotation


# instance fields
.field private state:Lcom/adfonic/android/ormma/js/StateMachine$State;

.field private stateChangeListener:Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->LOADING:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-direct {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine;-><init>(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/adfonic/android/ormma/js/StateMachine$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lcom/adfonic/android/ormma/js/StateMachine;->changeState(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 50
    return-void
.end method

.method private changeState(Lcom/adfonic/android/ormma/js/StateMachine$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->stateChangeListener:Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->stateChangeListener:Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-interface {v0, v1, p1}, Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;->onStateChanged(Lcom/adfonic/android/ormma/js/StateMachine$State;Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    .line 95
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->HIDDEN:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-direct {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine;->changeState(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isResized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :cond_2
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->DEFAULT:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-direct {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine;->changeState(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    goto :goto_0
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isResized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->EXPANDED:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-direct {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine;->changeState(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 62
    :cond_1
    return-void
.end method

.method public getState()Lcom/adfonic/android/ormma/js/StateMachine$State;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    return-object v0
.end method

.method public ready()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->DEFAULT:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-direct {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine;->changeState(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 56
    :cond_0
    return-void
.end method

.method public resize()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->RESIZED:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-direct {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine;->changeState(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 68
    :cond_1
    return-void
.end method

.method public setStateChangeListener(Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;)V
    .locals 0
    .parameter "stateChangeListener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adfonic/android/ormma/js/StateMachine;->stateChangeListener:Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;

    .line 99
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/StateMachine;->state:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->DEFAULT:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-direct {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine;->changeState(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 84
    :cond_0
    return-void
.end method
