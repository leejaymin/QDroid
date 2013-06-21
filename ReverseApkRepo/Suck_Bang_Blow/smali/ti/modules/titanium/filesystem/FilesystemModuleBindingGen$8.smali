.class Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$8;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "FilesystemModuleBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 316
    iput-object p1, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$8;->this$0:Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 321
    .local v0, __getFile_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "parts"

    invoke-direct {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, __parts_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v4, 0x0

    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-static {p1, p2, v4, v5, v6}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->getVarArgs(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;ILorg/appcelerator/kroll/KrollJavascriptConverter;Lorg/appcelerator/kroll/KrollDefaultValueProvider;)[Ljava/lang/Object;

    move-result-object v3

    .line 324
    .local v3, parts:[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 328
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/filesystem/FilesystemModule;

    invoke-virtual {p0, v3}, Lti/modules/titanium/filesystem/FilesystemModule;->getFile([Ljava/lang/Object;)Lti/modules/titanium/filesystem/FileProxy;

    move-result-object v2

    .line 334
    .local v2, __retVal:Lti/modules/titanium/filesystem/FileProxy;
    invoke-virtual {v0, p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
