.class Lcom/adfonic/android/ormma/js/JsOrmmaBridge$1;
.super Ljava/lang/Object;
.source "JsOrmmaBridge.java"

# interfaces
.implements Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/ormma/js/JsOrmmaBridge;-><init>(Lcom/adfonic/android/ormma/OrmmaView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/ormma/js/JsOrmmaBridge;


# direct methods
.method constructor <init>(Lcom/adfonic/android/ormma/js/JsOrmmaBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge$1;->this$0:Lcom/adfonic/android/ormma/js/JsOrmmaBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/adfonic/android/ormma/js/StateMachine$State;Lcom/adfonic/android/ormma/js/StateMachine$State;)V
    .locals 1
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge$1;->this$0:Lcom/adfonic/android/ormma/js/JsOrmmaBridge;

    #calls: Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->fireStateChangeEvent(Lcom/adfonic/android/ormma/js/StateMachine$State;)V
    invoke-static {v0, p2}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->access$000(Lcom/adfonic/android/ormma/js/JsOrmmaBridge;Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    .line 48
    invoke-virtual {p1}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge$1;->this$0:Lcom/adfonic/android/ormma/js/JsOrmmaBridge;

    #getter for: Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;
    invoke-static {v0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->access$100(Lcom/adfonic/android/ormma/js/JsOrmmaBridge;)Lcom/adfonic/android/ormma/OrmmaView;

    move-result-object v0

    invoke-interface {v0}, Lcom/adfonic/android/ormma/OrmmaView;->showDefaultSize()V

    .line 51
    :cond_0
    return-void
.end method
