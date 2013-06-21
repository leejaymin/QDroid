.class public Lti/modules/titanium/network/HTTPClientProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "HTTPClientProxyBindingGen.java"


# static fields
.field private static final CONST_DONE:Ljava/lang/String; = "DONE"

.field private static final CONST_HEADERS_RECEIVED:Ljava/lang/String; = "HEADERS_RECEIVED"

.field private static final CONST_LOADING:Ljava/lang/String; = "LOADING"

.field private static final CONST_OPENED:Ljava/lang/String; = "OPENED"

.field private static final CONST_UNSENT:Ljava/lang/String; = "UNSENT"

.field private static final DYNPROP_allResponseHeaders:Ljava/lang/String; = "allResponseHeaders"

.field private static final DYNPROP_autoEncodeUrl:Ljava/lang/String; = "autoEncodeUrl"

.field private static final DYNPROP_connected:Ljava/lang/String; = "connected"

.field private static final DYNPROP_connectionType:Ljava/lang/String; = "connectionType"

.field private static final DYNPROP_location:Ljava/lang/String; = "location"

.field private static final DYNPROP_readyState:Ljava/lang/String; = "readyState"

.field private static final DYNPROP_responseData:Ljava/lang/String; = "responseData"

.field private static final DYNPROP_responseText:Ljava/lang/String; = "responseText"

.field private static final DYNPROP_responseXML:Ljava/lang/String; = "responseXML"

.field private static final DYNPROP_status:Ljava/lang/String; = "status"

.field private static final DYNPROP_statusText:Ljava/lang/String; = "statusText"

.field private static final DYNPROP_timeout:Ljava/lang/String; = "timeout"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Network.HTTPClient"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.network.HTTPClientProxy"

.field private static final METHOD_abort:Ljava/lang/String; = "abort"

.field private static final METHOD_getAllResponseHeaders:Ljava/lang/String; = "getAllResponseHeaders"

.field private static final METHOD_getAutoEncodeUrl:Ljava/lang/String; = "getAutoEncodeUrl"

.field private static final METHOD_getConnected:Ljava/lang/String; = "getConnected"

.field private static final METHOD_getConnectionType:Ljava/lang/String; = "getConnectionType"

.field private static final METHOD_getLocation:Ljava/lang/String; = "getLocation"

.field private static final METHOD_getReadyState:Ljava/lang/String; = "getReadyState"

.field private static final METHOD_getResponseData:Ljava/lang/String; = "getResponseData"

.field private static final METHOD_getResponseHeader:Ljava/lang/String; = "getResponseHeader"

.field private static final METHOD_getResponseText:Ljava/lang/String; = "getResponseText"

.field private static final METHOD_getResponseXML:Ljava/lang/String; = "getResponseXML"

.field private static final METHOD_getStatus:Ljava/lang/String; = "getStatus"

.field private static final METHOD_getStatusText:Ljava/lang/String; = "getStatusText"

.field private static final METHOD_open:Ljava/lang/String; = "open"

.field private static final METHOD_send:Ljava/lang/String; = "send"

.field private static final METHOD_setAutoEncodeUrl:Ljava/lang/String; = "setAutoEncodeUrl"

.field private static final METHOD_setRequestHeader:Ljava/lang/String; = "setRequestHeader"

.field private static final METHOD_setTimeout:Ljava/lang/String; = "setTimeout"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "HTTPClient"

.field private static final TAG:Ljava/lang/String; = "HTTPClientProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 80
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "LOADING"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DONE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "UNSENT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "HEADERS_RECEIVED"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "OPENED"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "responseData"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "allResponseHeaders"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "responseXML"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "status"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "location"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "connected"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "autoEncodeUrl"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "connectionType"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "readyState"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "responseText"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "statusText"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "timeout"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getStatus"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getResponseText"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAllResponseHeaders"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAutoEncodeUrl"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "send"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getReadyState"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getResponseXML"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getConnectionType"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getResponseData"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLocation"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "open"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getStatusText"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setRequestHeader"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getResponseHeader"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTimeout"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getConnected"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setAutoEncodeUrl"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "abort"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 120
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    const-string v0, "Network.HTTPClient"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 39
    .parameter "name"

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .line 125
    .local v38, value:Ljava/lang/Object;
    if-eqz v38, :cond_0

    move-object/from16 v15, v38

    .line 949
    :goto_0
    return-object v15

    .line 134
    :cond_0
    const-string v15, "responseData"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 135
    new-instance v3, Lti/modules/titanium/network/HTTPClientProxyBindingGen$1;

    const-string v5, "responseData"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$1;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 158
    .local v3, responseData_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 159
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "responseData"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v3

    .line 161
    goto :goto_0

    .line 164
    .end local v3           #responseData_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v15, "allResponseHeaders"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 165
    new-instance v4, Lti/modules/titanium/network/HTTPClientProxyBindingGen$2;

    const-string v6, "allResponseHeaders"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$2;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 188
    .local v4, allResponseHeaders_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 189
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "allResponseHeaders"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v4

    .line 191
    goto :goto_0

    .line 194
    .end local v4           #allResponseHeaders_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v15, "responseXML"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 195
    new-instance v5, Lti/modules/titanium/network/HTTPClientProxyBindingGen$3;

    const-string v7, "responseXML"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$3;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 218
    .local v5, responseXML_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 219
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "responseXML"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v5

    .line 221
    goto/16 :goto_0

    .line 224
    .end local v5           #responseXML_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v15, "status"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 225
    new-instance v6, Lti/modules/titanium/network/HTTPClientProxyBindingGen$4;

    const-string v8, "status"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$4;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 248
    .local v6, status_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 249
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "status"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v6

    .line 251
    goto/16 :goto_0

    .line 254
    .end local v6           #status_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v15, "location"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 255
    new-instance v7, Lti/modules/titanium/network/HTTPClientProxyBindingGen$5;

    const-string v9, "location"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$5;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 278
    .local v7, location_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 279
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "location"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v7

    .line 281
    goto/16 :goto_0

    .line 284
    .end local v7           #location_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v15, "connected"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 285
    new-instance v8, Lti/modules/titanium/network/HTTPClientProxyBindingGen$6;

    const-string v10, "connected"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$6;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 308
    .local v8, connected_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 309
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "connected"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v8

    .line 311
    goto/16 :goto_0

    .line 314
    .end local v8           #connected_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v15, "autoEncodeUrl"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 315
    new-instance v9, Lti/modules/titanium/network/HTTPClientProxyBindingGen$7;

    const-string v11, "autoEncodeUrl"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$7;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 353
    .local v9, autoEncodeUrl_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 354
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "autoEncodeUrl"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v9

    .line 356
    goto/16 :goto_0

    .line 359
    .end local v9           #autoEncodeUrl_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v15, "connectionType"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 360
    new-instance v10, Lti/modules/titanium/network/HTTPClientProxyBindingGen$8;

    const-string v12, "connectionType"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$8;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 383
    .local v10, connectionType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 384
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "connectionType"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v10

    .line 386
    goto/16 :goto_0

    .line 389
    .end local v10           #connectionType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_8
    const-string v15, "readyState"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 390
    new-instance v11, Lti/modules/titanium/network/HTTPClientProxyBindingGen$9;

    const-string v13, "readyState"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$9;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 413
    .local v11, readyState_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 414
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "readyState"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v11

    .line 416
    goto/16 :goto_0

    .line 419
    .end local v11           #readyState_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_9
    const-string v15, "responseText"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 420
    new-instance v12, Lti/modules/titanium/network/HTTPClientProxyBindingGen$10;

    const-string v14, "responseText"

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$10;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 443
    .local v12, responseText_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v12, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 444
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v12, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "responseText"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v12

    .line 446
    goto/16 :goto_0

    .line 449
    .end local v12           #responseText_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_a
    const-string v15, "statusText"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 450
    new-instance v13, Lti/modules/titanium/network/HTTPClientProxyBindingGen$11;

    const-string v15, "statusText"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$11;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 473
    .local v13, statusText_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 474
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "statusText"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v13

    .line 476
    goto/16 :goto_0

    .line 479
    .end local v13           #statusText_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_b
    const-string v15, "timeout"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 480
    new-instance v14, Lti/modules/titanium/network/HTTPClientProxyBindingGen$12;

    const-string v16, "timeout"

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$12;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 510
    .local v14, timeout_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 511
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "timeout"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v14

    .line 513
    goto/16 :goto_0

    .line 517
    .end local v14           #timeout_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_c
    const-string v15, "getStatus"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 518
    new-instance v32, Lti/modules/titanium/network/HTTPClientProxyBindingGen$13;

    const-string v15, "getStatus"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$13;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 533
    .local v32, getStatus_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getStatus"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v32

    .line 534
    goto/16 :goto_0

    .line 537
    .end local v32           #getStatus_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v15, "getResponseText"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 538
    new-instance v29, Lti/modules/titanium/network/HTTPClientProxyBindingGen$14;

    const-string v15, "getResponseText"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$14;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 553
    .local v29, getResponseText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getResponseText"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v29

    .line 554
    goto/16 :goto_0

    .line 557
    .end local v29           #getResponseText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v15, "getAllResponseHeaders"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 558
    new-instance v21, Lti/modules/titanium/network/HTTPClientProxyBindingGen$15;

    const-string v15, "getAllResponseHeaders"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$15;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 573
    .local v21, getAllResponseHeaders_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getAllResponseHeaders"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v21

    .line 574
    goto/16 :goto_0

    .line 577
    .end local v21           #getAllResponseHeaders_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v15, "getAutoEncodeUrl"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 578
    new-instance v22, Lti/modules/titanium/network/HTTPClientProxyBindingGen$16;

    const-string v15, "getAutoEncodeUrl"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$16;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 593
    .local v22, getAutoEncodeUrl_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getAutoEncodeUrl"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v22

    .line 594
    goto/16 :goto_0

    .line 597
    .end local v22           #getAutoEncodeUrl_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v15, "send"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 598
    new-instance v34, Lti/modules/titanium/network/HTTPClientProxyBindingGen$17;

    const-string v15, "send"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$17;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 626
    .local v34, send_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "send"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v34

    .line 627
    goto/16 :goto_0

    .line 630
    .end local v34           #send_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v15, "getReadyState"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 631
    new-instance v26, Lti/modules/titanium/network/HTTPClientProxyBindingGen$18;

    const-string v15, "getReadyState"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$18;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 646
    .local v26, getReadyState_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getReadyState"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v26

    .line 647
    goto/16 :goto_0

    .line 650
    .end local v26           #getReadyState_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v15, "getResponseXML"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 651
    new-instance v30, Lti/modules/titanium/network/HTTPClientProxyBindingGen$19;

    const-string v15, "getResponseXML"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$19;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 666
    .local v30, getResponseXML_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getResponseXML"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v30

    .line 667
    goto/16 :goto_0

    .line 670
    .end local v30           #getResponseXML_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v15, "getConnectionType"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 671
    new-instance v24, Lti/modules/titanium/network/HTTPClientProxyBindingGen$20;

    const-string v15, "getConnectionType"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$20;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 686
    .local v24, getConnectionType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getConnectionType"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v24

    .line 687
    goto/16 :goto_0

    .line 690
    .end local v24           #getConnectionType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    const-string v15, "getResponseData"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 691
    new-instance v27, Lti/modules/titanium/network/HTTPClientProxyBindingGen$21;

    const-string v15, "getResponseData"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$21;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 706
    .local v27, getResponseData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getResponseData"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v27

    .line 707
    goto/16 :goto_0

    .line 710
    .end local v27           #getResponseData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_15
    const-string v15, "getLocation"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 711
    new-instance v25, Lti/modules/titanium/network/HTTPClientProxyBindingGen$22;

    const-string v15, "getLocation"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$22;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 726
    .local v25, getLocation_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getLocation"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v25

    .line 727
    goto/16 :goto_0

    .line 730
    .end local v25           #getLocation_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_16
    const-string v15, "open"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 731
    new-instance v33, Lti/modules/titanium/network/HTTPClientProxyBindingGen$23;

    const-string v15, "open"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$23;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 763
    .local v33, open_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "open"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v33

    .line 764
    goto/16 :goto_0

    .line 767
    .end local v33           #open_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_17
    const-string v15, "getStatusText"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 768
    new-instance v31, Lti/modules/titanium/network/HTTPClientProxyBindingGen$24;

    const-string v15, "getStatusText"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$24;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 783
    .local v31, getStatusText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getStatusText"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v31

    .line 784
    goto/16 :goto_0

    .line 787
    .end local v31           #getStatusText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_18
    const-string v15, "setRequestHeader"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 788
    new-instance v36, Lti/modules/titanium/network/HTTPClientProxyBindingGen$25;

    const-string v15, "setRequestHeader"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$25;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 820
    .local v36, setRequestHeader_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "setRequestHeader"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v36

    .line 821
    goto/16 :goto_0

    .line 824
    .end local v36           #setRequestHeader_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_19
    const-string v15, "getResponseHeader"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 825
    new-instance v28, Lti/modules/titanium/network/HTTPClientProxyBindingGen$26;

    const-string v15, "getResponseHeader"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$26;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 850
    .local v28, getResponseHeader_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getResponseHeader"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v28

    .line 851
    goto/16 :goto_0

    .line 854
    .end local v28           #getResponseHeader_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1a
    const-string v15, "setTimeout"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 855
    new-instance v37, Lti/modules/titanium/network/HTTPClientProxyBindingGen$27;

    const-string v15, "setTimeout"

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$27;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 878
    .local v37, setTimeout_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "setTimeout"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v37

    .line 879
    goto/16 :goto_0

    .line 882
    .end local v37           #setTimeout_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1b
    const-string v15, "getConnected"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 883
    new-instance v23, Lti/modules/titanium/network/HTTPClientProxyBindingGen$28;

    const-string v15, "getConnected"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$28;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 898
    .local v23, getConnected_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "getConnected"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v23

    .line 899
    goto/16 :goto_0

    .line 902
    .end local v23           #getConnected_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1c
    const-string v15, "setAutoEncodeUrl"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 903
    new-instance v35, Lti/modules/titanium/network/HTTPClientProxyBindingGen$29;

    const-string v15, "setAutoEncodeUrl"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$29;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 926
    .local v35, setAutoEncodeUrl_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "setAutoEncodeUrl"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v35

    .line 927
    goto/16 :goto_0

    .line 930
    .end local v35           #setAutoEncodeUrl_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1d
    const-string v15, "abort"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 931
    new-instance v20, Lti/modules/titanium/network/HTTPClientProxyBindingGen$30;

    const-string v15, "abort"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/HTTPClientProxyBindingGen$30;-><init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V

    .line 944
    .local v20, abort_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/HTTPClientProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v15, v0

    const-string v16, "abort"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v20

    .line 945
    goto/16 :goto_0

    .line 949
    .end local v20           #abort_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1e
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    const-string v0, "ti.modules.titanium.network.HTTPClientProxy"

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
    .line 973
    const-class v0, Lti/modules/titanium/network/HTTPClientProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    const-string v0, "HTTPClient"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 969
    const/4 v0, 0x0

    return-object v0
.end method
