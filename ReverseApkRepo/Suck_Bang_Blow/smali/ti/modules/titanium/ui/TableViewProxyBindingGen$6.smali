.class Lti/modules/titanium/ui/TableViewProxyBindingGen$6;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "TableViewProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TableViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TableViewProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 277
    iput-object p1, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen$6;->this$0:Lti/modules/titanium/ui/TableViewProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 284
    .local v0, __getSections_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()Ljava/util/ArrayList;

    move-result-object v1

    .line 289
    .local v1, __retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
