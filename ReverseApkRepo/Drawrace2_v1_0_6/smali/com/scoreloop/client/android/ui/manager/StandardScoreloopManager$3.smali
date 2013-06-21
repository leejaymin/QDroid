.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$3;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$3;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->get()Lcom/scoreloop/client/android/ui/util/LocalImageStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->tryPurge(Landroid/content/Context;)V

    .line 705
    return-void
.end method
