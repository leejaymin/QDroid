.class Lti/modules/titanium/ui/WindowProxy$1;
.super Ljava/lang/Object;
.source "WindowProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiActivityWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/WindowProxy;->fillIntentForTab(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/WindowProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/WindowProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lti/modules/titanium/ui/WindowProxy$1;->this$0:Lti/modules/titanium/ui/WindowProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy$1;->this$0:Lti/modules/titanium/ui/WindowProxy;

    new-instance v1, Lti/modules/titanium/ui/TiUIWindow;

    iget-object v2, p0, Lti/modules/titanium/ui/WindowProxy$1;->this$0:Lti/modules/titanium/ui/WindowProxy;

    invoke-direct {v1, v2, p1}, Lti/modules/titanium/ui/TiUIWindow;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    #setter for: Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-static {v0, v1}, Lti/modules/titanium/ui/WindowProxy;->access$002(Lti/modules/titanium/ui/WindowProxy;Lorg/appcelerator/titanium/view/TiUIView;)Lorg/appcelerator/titanium/view/TiUIView;

    .line 109
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy$1;->this$0:Lti/modules/titanium/ui/WindowProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/WindowProxy$1;->this$0:Lti/modules/titanium/ui/WindowProxy;

    #getter for: Lti/modules/titanium/ui/WindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-static {v1}, Lti/modules/titanium/ui/WindowProxy;->access$100(Lti/modules/titanium/ui/WindowProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lti/modules/titanium/ui/WindowProxy;->realizeViews(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 110
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy$1;->this$0:Lti/modules/titanium/ui/WindowProxy;

    const/4 v1, 0x1

    #setter for: Lti/modules/titanium/ui/WindowProxy;->opened:Z
    invoke-static {v0, v1}, Lti/modules/titanium/ui/WindowProxy;->access$202(Lti/modules/titanium/ui/WindowProxy;Z)Z

    .line 111
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxy$1;->this$0:Lti/modules/titanium/ui/WindowProxy;

    const-string v1, "open"

    invoke-virtual {v0, v1, v3}, Lti/modules/titanium/ui/WindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 112
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMainMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiMessageQueue;->stopBlocking()V

    .line 113
    return-void
.end method
