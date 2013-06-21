.class Lair/com/adobe/pstouch/AppEntry$4;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/adobe/pstouch/AppEntry;->launchAIRService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/adobe/pstouch/AppEntry;


# direct methods
.method constructor <init>(Lair/com/adobe/pstouch/AppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lair/com/adobe/pstouch/AppEntry$4;->this$0:Lair/com/adobe/pstouch/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 282
    iget-object v0, p0, Lair/com/adobe/pstouch/AppEntry$4;->this$0:Lair/com/adobe/pstouch/AppEntry;

    invoke-virtual {v0, p0}, Lair/com/adobe/pstouch/AppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    .line 285
    iget-object v0, p0, Lair/com/adobe/pstouch/AppEntry$4;->this$0:Lair/com/adobe/pstouch/AppEntry;

    #calls: Lair/com/adobe/pstouch/AppEntry;->loadSharedRuntimeDex()V
    invoke-static {v0}, Lair/com/adobe/pstouch/AppEntry;->access$100(Lair/com/adobe/pstouch/AppEntry;)V

    .line 286
    iget-object v0, p0, Lair/com/adobe/pstouch/AppEntry$4;->this$0:Lair/com/adobe/pstouch/AppEntry;

    const/4 v1, 0x0

    #calls: Lair/com/adobe/pstouch/AppEntry;->createActivityWrapper(Z)V
    invoke-static {v0, v1}, Lair/com/adobe/pstouch/AppEntry;->access$200(Lair/com/adobe/pstouch/AppEntry;Z)V

    .line 288
    invoke-static {}, Lair/com/adobe/pstouch/AppEntry;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lair/com/adobe/pstouch/AppEntry$4;->this$0:Lair/com/adobe/pstouch/AppEntry;

    #calls: Lair/com/adobe/pstouch/AppEntry;->InvokeWrapperOnCreate()V
    invoke-static {v0}, Lair/com/adobe/pstouch/AppEntry;->access$400(Lair/com/adobe/pstouch/AppEntry;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    #calls: Lair/com/adobe/pstouch/AppEntry;->KillSelf()V
    invoke-static {}, Lair/com/adobe/pstouch/AppEntry;->access$500()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 302
    return-void
.end method
