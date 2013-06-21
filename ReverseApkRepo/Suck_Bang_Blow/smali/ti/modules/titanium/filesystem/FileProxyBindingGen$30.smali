.class Lti/modules/titanium/filesystem/FileProxyBindingGen$30;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "FileProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/filesystem/FileProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/filesystem/FileProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 879
    iput-object p1, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen$30;->this$0:Lti/modules/titanium/filesystem/FileProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-class v7, Ljava/lang/Object;

    .line 883
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    .line 884
    .local v1, __createDirectory_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "arg"

    invoke-direct {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 886
    .local v0, __arg_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v5}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 887
    array-length v4, p2

    if-lt v4, v5, :cond_0

    .line 889
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p2, v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, p1, v5, v7}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 896
    .local v3, arg:Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 897
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 900
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p0, v3}, Lti/modules/titanium/filesystem/FileProxy;->createDirectory(Ljava/lang/Object;)Z

    move-result v2

    .line 906
    .local v2, __retVal:Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 892
    .end local v2           #__retVal:Z
    .end local v3           #arg:Ljava/lang/Object;
    .restart local p0
    :cond_0
    invoke-virtual {v0, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 893
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #arg:Ljava/lang/Object;
    goto :goto_0
.end method
