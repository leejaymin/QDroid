.class Lti/modules/titanium/network/NetworkModuleBindingGen$1;
.super Ljava/lang/Object;
.source "NetworkModuleBindingGen.java"

# interfaces
.implements Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/network/NetworkModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/NetworkModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/network/NetworkModuleBindingGen;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lti/modules/titanium/network/NetworkModuleBindingGen$1;->this$0:Lti/modules/titanium/network/NetworkModuleBindingGen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    new-instance v0, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-direct {v0, p1}, Lti/modules/titanium/network/HTTPClientProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method