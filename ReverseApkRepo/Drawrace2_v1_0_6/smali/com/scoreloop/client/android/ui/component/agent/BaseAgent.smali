.class public abstract Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;
.super Ljava/lang/Object;
.source "BaseAgent.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;
    }
.end annotation


# instance fields
.field private final _delegate:Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;

.field private _isRetrieving:Z

.field private final _keys:[Ljava/lang/String;

.field private _valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;


# direct methods
.method protected varargs constructor <init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;[Ljava/lang/String;)V
    .locals 0
    .parameter "delegate"
    .parameter "keys"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_delegate:Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;

    .line 45
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_keys:[Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public isRetrieving()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_isRetrieving:Z

    return v0
.end method

.method protected abstract onFinishRetrieve(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
.end method

.method protected abstract onStartRetrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
.end method

.method protected putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-virtual {v0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 1
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_isRetrieving:Z

    .line 64
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_delegate:Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;->onAgentDidFail(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 65
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_isRetrieving:Z

    .line 70
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->onFinishRetrieve(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/ui/framework/ValueStore;)V

    .line 71
    return-void
.end method

.method public retrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 1
    .parameter "valueStore"

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_isRetrieving:Z

    .line 76
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 77
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->onStartRetrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V

    .line 78
    return-void
.end method

.method public supportedKeys(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->_keys:[Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
