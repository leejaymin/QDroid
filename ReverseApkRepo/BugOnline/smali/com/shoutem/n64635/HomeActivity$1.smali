.class Lcom/shoutem/n64635/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shoutem/n64635/HomeActivity;->startPushNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shoutem/n64635/HomeActivity;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/shoutem/n64635/HomeActivity;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/shoutem/n64635/HomeActivity$1;->this$0:Lcom/shoutem/n64635/HomeActivity;

    iput-object p2, p0, Lcom/shoutem/n64635/HomeActivity$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushEnabled"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    invoke-static {}, Lcom/urbanairship/push/PushManager;->enablePush()V

    .line 455
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    return-void
.end method
