.class Lcom/scoreloop/client/android/ui/framework/ValueStore$2;
.super Ljava/lang/Object;
.source "ValueStore.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/framework/ValueStore;->invokeSetDirtyObservers(Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$2;->this$0:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;Ljava/lang/Exception;)V
    .locals 2
    .parameter "observer"
    .parameter "error"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$2;->this$0:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore$2;->val$key:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;->onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    check-cast p1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore$2;->withValue(Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;Ljava/lang/Exception;)V

    return-void
.end method
