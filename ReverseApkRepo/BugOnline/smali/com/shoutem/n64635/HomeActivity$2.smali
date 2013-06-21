.class Lcom/shoutem/n64635/HomeActivity$2;
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
    .line 459
    iput-object p1, p0, Lcom/shoutem/n64635/HomeActivity$2;->this$0:Lcom/shoutem/n64635/HomeActivity;

    iput-object p2, p0, Lcom/shoutem/n64635/HomeActivity$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pushEnabled"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-static {}, Lcom/urbanairship/push/PushManager;->disablePush()V

    .line 463
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    return-void
.end method
