.class Lti/modules/titanium/ui/TiTabActivity$1;
.super Ljava/lang/Object;
.source "TiTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TiTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TiTabActivity;

.field final synthetic val$fMessageId:I

.field final synthetic val$fMessenger:Landroid/os/Messenger;

.field final synthetic val$me:Lti/modules/titanium/ui/TiTabActivity;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TiTabActivity;Landroid/os/Messenger;ILti/modules/titanium/ui/TiTabActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lti/modules/titanium/ui/TiTabActivity$1;->this$0:Lti/modules/titanium/ui/TiTabActivity;

    iput-object p2, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$fMessenger:Landroid/os/Messenger;

    iput p3, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$fMessageId:I

    iput-object p4, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$me:Lti/modules/titanium/ui/TiTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "TiTabActivity"

    .line 108
    iget-object v2, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$fMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 110
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 111
    .local v1, msg:Landroid/os/Message;
    iget v2, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$fMessageId:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 112
    iget-object v2, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$me:Lti/modules/titanium/ui/TiTabActivity;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v2, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$fMessenger:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$fMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 115
    const-string v2, "TiTabActivity"

    const-string v3, "Notifying TiTabGroup, activity is created"

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v1       #msg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$me:Lti/modules/titanium/ui/TiTabActivity;

    invoke-virtual {v2}, Lti/modules/titanium/ui/TiTabActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 119
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TiTabActivity"

    const-string v2, "Unable to message creator. finishing."

    invoke-static {v4, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lti/modules/titanium/ui/TiTabActivity$1;->val$me:Lti/modules/titanium/ui/TiTabActivity;

    invoke-virtual {v2}, Lti/modules/titanium/ui/TiTabActivity;->finish()V

    goto :goto_0

    .line 122
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 123
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "TiTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run-time exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
