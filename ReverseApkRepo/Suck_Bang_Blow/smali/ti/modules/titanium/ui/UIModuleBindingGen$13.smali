.class Lti/modules/titanium/ui/UIModuleBindingGen$13;
.super Ljava/lang/Object;
.source "UIModuleBindingGen.java"

# interfaces
.implements Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/UIModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/UIModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/UIModuleBindingGen;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lti/modules/titanium/ui/UIModuleBindingGen$13;->this$0:Lti/modules/titanium/ui/UIModuleBindingGen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 401
    new-instance v0, Lti/modules/titanium/ui/PickerProxy;

    invoke-direct {v0, p1}, Lti/modules/titanium/ui/PickerProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
