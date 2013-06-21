.class Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$4;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "PropertiesModuleBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 204
    iput-object p1, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$4;->this$0:Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Integer;

    .line 208
    const-string v6, "getInt"

    invoke-static {p2, v9, v6}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 209
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    .line 210
    .local v1, __getInt_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "key"

    invoke-direct {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, __key_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 214
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    aget-object v7, p2, v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 218
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "defaultValue"

    invoke-direct {v0, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, __defaultValue_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 221
    array-length v6, p2

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 223
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    aget-object v7, p2, v9

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v6, p1, v7, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 230
    .local v4, defaultValue:Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 234
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/app/properties/PropertiesModule;

    invoke-virtual {p0, v5, v4}, Lti/modules/titanium/app/properties/PropertiesModule;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, __retVal:Ljava/lang/Object;
    invoke-virtual {v1, p1, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 226
    .end local v3           #__retVal:Ljava/lang/Object;
    .end local v4           #defaultValue:Ljava/lang/Integer;
    .restart local p0
    :cond_0
    invoke-virtual {v0, v9}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 227
    invoke-static {}, Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;->getInstance()Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v6, v10}, Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .restart local v4       #defaultValue:Ljava/lang/Integer;
    goto :goto_0
.end method
