.class public Lcom/garageapps/android/spacetracks/states/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# instance fields
.field final STATE_GAME:I

.field final STATE_INTRO:I

.field final STATE_LOADER:I

.field final STATE_TITLE:I

.field private mState:I

.field private statesGame:Lcom/garageapps/android/spacetracks/states/StatesGame;

.field private statesIntro:Lcom/garageapps/android/spacetracks/states/StatesIntro;

.field private statesLoader:Lcom/garageapps/android/spacetracks/states/StatesLoader;

.field private statesTitle:Lcom/garageapps/android/spacetracks/states/StatesTitle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->STATE_LOADER:I

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->STATE_INTRO:I

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->STATE_TITLE:I

    .line 20
    const/4 v0, 0x4

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->STATE_GAME:I

    .line 29
    new-instance v0, Lcom/garageapps/android/spacetracks/states/StatesLoader;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/states/StatesLoader;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesLoader:Lcom/garageapps/android/spacetracks/states/StatesLoader;

    .line 30
    new-instance v0, Lcom/garageapps/android/spacetracks/states/StatesIntro;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/states/StatesIntro;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesIntro:Lcom/garageapps/android/spacetracks/states/StatesIntro;

    .line 31
    new-instance v0, Lcom/garageapps/android/spacetracks/states/StatesTitle;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/states/StatesTitle;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesTitle:Lcom/garageapps/android/spacetracks/states/StatesTitle;

    .line 32
    new-instance v0, Lcom/garageapps/android/spacetracks/states/StatesGame;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/states/StatesGame;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesGame:Lcom/garageapps/android/spacetracks/states/StatesGame;

    .line 33
    invoke-virtual {p0, v1}, Lcom/garageapps/android/spacetracks/states/StateManager;->setState(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->mState:I

    return v0
.end method

.method public resetStates()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesLoader:Lcom/garageapps/android/spacetracks/states/StatesLoader;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesLoader;->reset()V

    .line 49
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesIntro:Lcom/garageapps/android/spacetracks/states/StatesIntro;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesIntro;->reset()V

    .line 50
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesTitle:Lcom/garageapps/android/spacetracks/states/StatesTitle;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->reset()V

    .line 51
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesGame:Lcom/garageapps/android/spacetracks/states/StatesGame;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesGame;->reset()V

    .line 52
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 38
    iput p1, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->mState:I

    .line 39
    return-void
.end method

.method public updateState(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x3

    .line 56
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesLoader:Lcom/garageapps/android/spacetracks/states/StatesLoader;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/states/StatesLoader;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 60
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesLoader:Lcom/garageapps/android/spacetracks/states/StatesLoader;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesLoader;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->mState:I

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesIntro:Lcom/garageapps/android/spacetracks/states/StatesIntro;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/states/StatesIntro;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 66
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesIntro:Lcom/garageapps/android/spacetracks/states/StatesIntro;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesIntro;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->mState:I

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesTitle:Lcom/garageapps/android/spacetracks/states/StatesTitle;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 72
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesTitle:Lcom/garageapps/android/spacetracks/states/StatesTitle;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesTitle:Lcom/garageapps/android/spacetracks/states/StatesTitle;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->reset()V

    .line 74
    const/4 v0, 0x4

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->mState:I

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesGame:Lcom/garageapps/android/spacetracks/states/StatesGame;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/states/StatesGame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 80
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesGame:Lcom/garageapps/android/spacetracks/states/StatesGame;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesGame;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->statesGame:Lcom/garageapps/android/spacetracks/states/StatesGame;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/states/StatesGame;->reset()V

    .line 82
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StateManager;->mState:I

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
