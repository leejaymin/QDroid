.class Lti/modules/titanium/ui/TiUIWindow$1;
.super Ljava/lang/Object;
.source "TiUIWindow.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TiUIWindow;->handleBooted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TiUIWindow;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TiUIWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lti/modules/titanium/ui/TiUIWindow$1;->this$0:Lti/modules/titanium/ui/TiUIWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 269
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow$1;->this$0:Lti/modules/titanium/ui/TiUIWindow;

    #getter for: Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v0}, Lti/modules/titanium/ui/TiUIWindow;->access$000(Lti/modules/titanium/ui/TiUIWindow;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "focus"

    :goto_0
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 270
    return-void

    .line 269
    :cond_0
    const-string v1, "blur"

    goto :goto_0
.end method
