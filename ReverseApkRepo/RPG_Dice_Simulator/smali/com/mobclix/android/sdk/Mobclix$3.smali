.class Lcom/mobclix/android/sdk/Mobclix$3;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/Mobclix;->notifyUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$3;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 491
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->database:Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$7(Lcom/mobclix/android/sdk/Mobclix;)Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->purge()Z

    .line 492
    const-string v0, ".MCConfig"

    const-string v1, "AnalyticsEnabled"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$3;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v1, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 494
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$3;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v1, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$44(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 495
    return-void
.end method
