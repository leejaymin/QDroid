.class Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$7;
.super Lorg/appcelerator/kroll/KrollDynamicProperty;
.source "DocumentTypeProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 275
    iput-object p1, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$7;->this$0:Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/appcelerator/kroll/KrollDynamicProperty;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;
    .locals 3
    .parameter "__invocation"

    .prologue
    .line 280
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 283
    .local v0, __getEntities_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/DocumentTypeProxy;

    invoke-virtual {p0}, Lti/modules/titanium/xml/DocumentTypeProxy;->getEntities()Lti/modules/titanium/xml/NamedNodeMapProxy;

    move-result-object v1

    .line 288
    .local v1, __retVal:Lti/modules/titanium/xml/NamedNodeMapProxy;
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
    .locals 2
    .parameter "__invocation"
    .parameter "__value"

    .prologue
    .line 293
    const-string v0, "DocumentTypeProxyBindingGen"

    const-string v1, "Property DocumentType.entities isn\'t writable"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method
