.class Lti/modules/titanium/media/MediaModuleBindingGen$8;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "MediaModuleBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/MediaModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/MediaModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModuleBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 251
    iput-object p1, p0, Lti/modules/titanium/media/MediaModuleBindingGen$8;->this$0:Lti/modules/titanium/media/MediaModuleBindingGen;

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
    const/4 v4, 0x1

    const-class v6, [J

    .line 255
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v3, "pattern"

    invoke-direct {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, __pattern_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 258
    array-length v3, p2

    if-lt v3, v4, :cond_0

    .line 260
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-class v5, [J

    invoke-virtual {v3, p1, v4, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [J

    move-object v0, p0

    check-cast v0, [J

    move-object v2, v0

    .line 267
    .local v2, pattern:[J
    :goto_0
    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 273
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lti/modules/titanium/media/MediaModule;

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/MediaModule;->vibrate([J)V

    .line 276
    sget-object v3, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v3

    .line 263
    .end local v2           #pattern:[J
    .restart local p0
    :cond_0
    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 264
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    const-class v4, [J

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [J

    move-object v0, p0

    check-cast v0, [J

    move-object v2, v0

    .restart local v2       #pattern:[J
    goto :goto_0
.end method
