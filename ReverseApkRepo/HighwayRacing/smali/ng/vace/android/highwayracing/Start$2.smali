.class Lng/vace/android/highwayracing/Start$2;
.super Ljava/lang/Object;
.source "Start.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lng/vace/android/highwayracing/Start;->setupCarButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lng/vace/android/highwayracing/Start;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lng/vace/android/highwayracing/Start;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lng/vace/android/highwayracing/Start$2;->this$0:Lng/vace/android/highwayracing/Start;

    iput-object p2, p0, Lng/vace/android/highwayracing/Start$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 98
    iget-object v1, p0, Lng/vace/android/highwayracing/Start$2;->this$0:Lng/vace/android/highwayracing/Start;

    #calls: Lng/vace/android/highwayracing/Start;->saveConfig()V
    invoke-static {v1}, Lng/vace/android/highwayracing/Start;->access$000(Lng/vace/android/highwayracing/Start;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lng/vace/android/highwayracing/Start$2;->val$context:Landroid/content/Context;

    const-class v2, Lng/vace/android/highwayracing/SelectCar;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, carSelectorIntent:Landroid/content/Intent;
    const-string v1, "selectedCar"

    iget-object v2, p0, Lng/vace/android/highwayracing/Start$2;->this$0:Lng/vace/android/highwayracing/Start;

    iget-object v2, v2, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/GameSettings;->getCar()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v1, "unlockLevel"

    iget-object v2, p0, Lng/vace/android/highwayracing/Start$2;->this$0:Lng/vace/android/highwayracing/Start;

    iget-object v2, v2, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/GameSettings;->getUnlockLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lng/vace/android/highwayracing/Start$2;->this$0:Lng/vace/android/highwayracing/Start;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lng/vace/android/highwayracing/Start;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    return-void
.end method
