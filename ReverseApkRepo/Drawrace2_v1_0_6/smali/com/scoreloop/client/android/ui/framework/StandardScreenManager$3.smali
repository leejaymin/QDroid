.class Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$3;
.super Ljava/lang/Object;
.source "StandardScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->finishDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$3;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$3;->this$0:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    #calls: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->doFinishDisplay()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->access$800(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)V

    .line 247
    return-void
.end method
