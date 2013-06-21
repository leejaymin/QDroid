.class public Lti/modules/titanium/ui/AlertDialogProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "AlertDialogProxyBindingGen.java"


# static fields
.field private static final ACCESSOR_buttonNames:Ljava/lang/String; = "buttonNames"

.field private static final ACCESSOR_cancel:Ljava/lang/String; = "cancel"

.field private static final ACCESSOR_message:Ljava/lang/String; = "message"

.field private static final ACCESSOR_messageid:Ljava/lang/String; = "messageid"

.field private static final ACCESSOR_title:Ljava/lang/String; = "title"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.AlertDialog"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.AlertDialogProxy"

.field private static final PROP_GET_buttonNames:Ljava/lang/String; = "getButtonNames"

.field private static final PROP_GET_cancel:Ljava/lang/String; = "getCancel"

.field private static final PROP_GET_message:Ljava/lang/String; = "getMessage"

.field private static final PROP_GET_messageid:Ljava/lang/String; = "getMessageid"

.field private static final PROP_GET_title:Ljava/lang/String; = "getTitle"

.field private static final PROP_SET_buttonNames:Ljava/lang/String; = "setButtonNames"

.field private static final PROP_SET_cancel:Ljava/lang/String; = "setCancel"

.field private static final PROP_SET_message:Ljava/lang/String; = "setMessage"

.field private static final PROP_SET_messageid:Ljava/lang/String; = "setMessageid"

.field private static final PROP_SET_title:Ljava/lang/String; = "setTitle"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "AlertDialog"

.field private static final TAG:Ljava/lang/String; = "AlertDialogProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getButtonNames"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setButtonNames"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setCancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getMessageid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setMessageid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 75
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "UI.AlertDialog"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "name"

    .prologue
    .line 79
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 80
    .local v10, value:Ljava/lang/Object;
    if-eqz v10, :cond_0

    move-object v11, v10

    .line 136
    :goto_0
    return-object v11

    .line 90
    :cond_0
    const-string v11, "setButtonNames"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 91
    const-string v11, "buttonNames"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    .line 92
    .local v1, buttonNames_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "setButtonNames"

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v1

    .line 93
    goto :goto_0

    .line 94
    .end local v1           #buttonNames_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v11, "getButtonNames"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 95
    const-string v11, "buttonNames"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    .line 96
    .local v0, buttonNames_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "getButtonNames"

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v0

    .line 97
    goto :goto_0

    .line 99
    .end local v0           #buttonNames_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v11, "setCancel"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 100
    const-string v11, "cancel"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v3

    .line 101
    .local v3, cancel_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "setCancel"

    invoke-virtual {v11, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v3

    .line 102
    goto :goto_0

    .line 103
    .end local v3           #cancel_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v11, "getCancel"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 104
    const-string v11, "cancel"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v2

    .line 105
    .local v2, cancel_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "getCancel"

    invoke-virtual {v11, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v2

    .line 106
    goto :goto_0

    .line 108
    .end local v2           #cancel_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v11, "setMessage"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 109
    const-string v11, "message"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v5

    .line 110
    .local v5, message_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "setMessage"

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v5

    .line 111
    goto :goto_0

    .line 112
    .end local v5           #message_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v11, "getMessage"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 113
    const-string v11, "message"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v4

    .line 114
    .local v4, message_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "getMessage"

    invoke-virtual {v11, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v4

    .line 115
    goto/16 :goto_0

    .line 117
    .end local v4           #message_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v11, "setMessageid"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 118
    const-string v11, "messageid"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v7

    .line 119
    .local v7, messageid_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "setMessageid"

    invoke-virtual {v11, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v7

    .line 120
    goto/16 :goto_0

    .line 121
    .end local v7           #messageid_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v11, "getMessageid"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 122
    const-string v11, "messageid"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v6

    .line 123
    .local v6, messageid_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "getMessageid"

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v6

    .line 124
    goto/16 :goto_0

    .line 126
    .end local v6           #messageid_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v11, "setTitle"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 127
    const-string v11, "title"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v9

    .line 128
    .local v9, title_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "setTitle"

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v9

    .line 129
    goto/16 :goto_0

    .line 130
    .end local v9           #title_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v11, "getTitle"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 131
    const-string v11, "title"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v8

    .line 132
    .local v8, title_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/ui/AlertDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "getTitle"

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v8

    .line 133
    goto/16 :goto_0

    .line 136
    .end local v8           #title_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "ti.modules.titanium.ui.AlertDialogProxy"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const-class v0, Lti/modules/titanium/ui/AlertDialogProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "AlertDialog"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method
