.class public Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;
.super Ljava/lang/Object;
.source "ManageBuddiesTask.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$1;,
        Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;
    }
.end annotation


# instance fields
.field private final _activity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

.field private final _continuation:Lcom/scoreloop/client/android/core/model/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _controller:Lcom/scoreloop/client/android/core/controller/UserController;

.field private _count:I

.field private final _mode:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

.field private final _sessionUserValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field private final _users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;Ljava/util/List;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 1
    .parameter "activity"
    .parameter "mode"
    .parameter
    .parameter "valueStore"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/BaseActivity;",
            "Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, users:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    .local p5, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_users:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_activity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    .line 72
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_mode:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    .line 73
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_users:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iput-object p4, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_sessionUserValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 75
    iput-object p5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    .line 76
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_controller:Lcom/scoreloop/client/android/core/controller/UserController;

    .line 78
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->processNextOrFinish()V

    .line 79
    return-void
.end method

.method public static addBuddies(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Ljava/util/List;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 6
    .parameter "activity"
    .parameter
    .parameter "valueStore"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/BaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    .local p3, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;

    sget-object v2, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;->ADD:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;-><init>(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;Ljava/util/List;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 49
    return-void
.end method

.method public static addBuddy(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 6
    .parameter "activity"
    .parameter "user"
    .parameter "valueStore"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/BaseActivity;",
            "Lcom/scoreloop/client/android/core/model/User;",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;

    sget-object v2, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;->ADD:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;-><init>(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;Ljava/util/List;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 54
    return-void
.end method

.method private popUser()Lcom/scoreloop/client/android/core/model/User;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_users:Ljava/util/List;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_users:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_users:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    goto :goto_0
.end method

.method private processNextOrFinish()V
    .locals 8

    .prologue
    .line 92
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    .line 93
    .local v2, sessionUser:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getBuddyUsers()Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, sessionUserBuddies:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->popUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    .line 98
    .local v4, user:Lcom/scoreloop/client/android/core/model/User;
    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_mode:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    sget-object v6, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;->ADD:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    if-ne v5, v6, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_mode:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    sget-object v6, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;->REMOVE:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    if-ne v5, v6, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    :cond_2
    if-eqz v4, :cond_4

    .line 102
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_controller:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v5, v4}, Lcom/scoreloop/client/android/core/controller/UserController;->setUser(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 103
    sget-object v5, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$1;->$SwitchMap$com$scoreloop$client$android$ui$component$agent$ManageBuddiesTask$Mode:[I

    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_mode:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 128
    :cond_3
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_controller:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/UserController;->addAsBuddy()V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_controller:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/UserController;->removeAsBuddy()V

    goto :goto_0

    .line 117
    :cond_4
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_sessionUserValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v6, "numberBuddies"

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 118
    .local v1, oldNumber:Ljava/lang/Integer;
    if-eqz v1, :cond_5

    .line 119
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_mode:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    sget-object v6, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;->ADD:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    if-ne v5, v6, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_count:I

    add-int v0, v5, v6

    .line 120
    .local v0, newNumber:I
    :goto_1
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_sessionUserValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v6, "numberBuddies"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .end local v0           #newNumber:I
    :cond_5
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_sessionUserValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setAllDirty()V

    .line 125
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    if-eqz v5, :cond_3

    .line 126
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    iget v6, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 119
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_count:I

    sub-int v0, v5, v6

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static removeBuddy(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 6
    .parameter "activity"
    .parameter "user"
    .parameter "valueStore"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/BaseActivity;",
            "Lcom/scoreloop/client/android/core/model/User;",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;

    sget-object v2, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;->REMOVE:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;-><init>(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;Ljava/util/List;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 59
    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 7
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 133
    instance-of v2, p2, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 134
    check-cast v1, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    .line 135
    .local v1, exception:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->getErrorCode()I

    move-result v0

    .line 136
    .local v0, code:I
    sget-object v2, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$1;->$SwitchMap$com$scoreloop$client$android$ui$component$agent$ManageBuddiesTask$Mode:[I

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_mode:Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 151
    .end local v0           #code:I
    .end local v1           #exception:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->processNextOrFinish()V

    .line 152
    return-void

    .line 138
    .restart local v0       #code:I
    .restart local v1       #exception:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    :pswitch_0
    const/16 v2, 0x28

    if-ne v0, v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_activity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_activity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    const v4, 0x7f0802a0

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_controller:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_1
    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_activity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_activity:Lcom/scoreloop/client/android/ui/framework/BaseActivity;

    const v4, 0x7f0802a1

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_controller:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 156
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->_count:I

    .line 157
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->processNextOrFinish()V

    .line 158
    return-void
.end method
