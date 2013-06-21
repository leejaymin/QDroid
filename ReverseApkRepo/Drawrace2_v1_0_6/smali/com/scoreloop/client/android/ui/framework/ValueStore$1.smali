.class Lcom/scoreloop/client/android/ui/framework/ValueStore$1;
.super Ljava/lang/Object;
.source "ValueStore.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/framework/ValueStore;->invokeChangedObservers(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/model/Continuation",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$newValue:Ljava/lang/Object;

.field final synthetic val$oldValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->this$0:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->val$oldValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;Ljava/lang/Exception;)V
    .locals 4
    .parameter "observer"
    .parameter "error"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->this$0:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->val$oldValue:Ljava/lang/Object;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->val$newValue:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;->onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    check-cast p1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;->withValue(Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;Ljava/lang/Exception;)V

    return-void
.end method
