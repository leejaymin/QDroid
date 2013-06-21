.class Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;
.super Ljava/lang/Object;
.source "TiUISearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

.field final synthetic val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "value"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->set(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "cancel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 57
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method
