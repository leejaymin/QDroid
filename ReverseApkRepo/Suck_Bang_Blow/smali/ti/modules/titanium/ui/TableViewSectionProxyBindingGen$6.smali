.class Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$6;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "TableViewSectionProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 248
    iput-object p1, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$6;->this$0:Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;

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
    .line 252
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 255
    .local v0, __getRows_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/TableViewSectionProxy;

    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 260
    .local v1, __retVal:[Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method